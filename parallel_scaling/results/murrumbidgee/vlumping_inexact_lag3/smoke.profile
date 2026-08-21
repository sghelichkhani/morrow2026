****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0026.gadi.nci.org.au with 104 processes, by sg8812 on Thu Aug 20 22:19:09 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           4.988e+02     1.000   4.988e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                5.749e+11     1.127   5.469e+11  5.688e+13
Flops/sec:            1.153e+09     1.127   1.096e+09  1.140e+11
MPI Msg Count:        8.531e+04     3.034   5.836e+04  6.069e+06
MPI Msg Len (bytes):  4.636e+09     2.539   5.585e+04  3.389e+11
MPI Reductions:       1.144e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 4.9878e+02 100.0%  5.6877e+13 100.0%  6.069e+06 100.0%  5.585e+04      100.0%  1.142e+04  99.8%

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

BuildTwoSided       1311 1.0 1.8684e+01 4.2 0.00e+00 0.0 2.0e+05 4.0e+00 1.3e+03  2  0  3  0 11   2  0  3  0 11    -0
BuildTwoSidedF      1061 1.0 1.8904e+01 3.4 0.00e+00 0.0 1.1e+05 6.6e+05 1.1e+03  3  0  2 22  9   3  0  2 22  9    -0
SFSetGraph           253 1.0 1.0711e-02 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              250 1.0 3.8854e-02 1.5 0.00e+00 0.0 2.9e+05 3.2e+02 2.5e+02  0  0  5  0  2   0  0  5  0  2    -0
SFBcastBegin         691 1.0 1.4201e-01 2.2 0.00e+00 0.0 3.5e+05 4.8e+04 0.0e+00  0  0  6  5  0   0  0  6  5  0    -0
SFBcastEnd           691 1.0 7.2428e+00 81.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFReduceBegin        297 1.0 3.6641e-02 10.4 0.00e+00 0.0 1.6e+05 5.3e+04 0.0e+00  0  0  3  2  0   0  0  3  2  0    -0
SFReduceEnd          297 1.0 1.0361e+00 33.8 1.44e+07 2.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1016
SFFetchOpBegin         2 1.0 1.7629e-05 8.3 0.00e+00 0.0 8.1e+02 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 2.6794e-04 12.5 0.00e+00 0.0 8.1e+02 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 1.0214e-03 1.8 0.00e+00 0.0 6.4e+02 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         21 1.0 8.7781e-03 1.3 0.00e+00 0.0 2.1e+04 2.8e+02 2.4e+01  0  0  0  0  0   0  0  0  0  0    -0
SFSectionSF           21 1.0 3.5835e-03 3.2 0.00e+00 0.0 9.9e+03 1.6e+02 2.1e+01  0  0  0  0  0   0  0  0  0  0    -0
SFPack             11479 1.0 1.2193e+00 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           11481 1.0 7.4275e-02 5.2 1.44e+07 2.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 14174
VecDot               211 1.0 3.3865e-01 5.9 8.51e+07 1.1 0.0e+00 0.0e+00 2.1e+02  0  0  0  0  2   0  0  0  0  2 24972
VecMDot             3131 1.0 2.0911e+01 3.8 5.90e+09 1.1 0.0e+00 0.0e+00 3.1e+03  2  1  0  0 27   2  1  0  0 27 28063
VecNorm             4050 1.0 6.0048e+00 2.9 1.63e+09 1.1 0.0e+00 0.0e+00 4.0e+03  1  0  0  0 35   1  0  0  0 35 27033
VecScale            3553 1.0 2.0472e-01 1.3 7.16e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 347807
VecCopy             4765 1.0 2.0812e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              4927 1.0 6.8166e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              422 1.0 2.1218e-01 1.3 1.70e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 79715
VecAYPX             6126 1.0 2.8679e+00 1.7 1.65e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 57076
VecAXPBYCZ          2042 1.0 1.4499e+00 1.5 2.06e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 141120
VecWAXPY             211 1.0 1.7599e-01 1.1 4.25e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 24027
VecMAXPY            3553 1.0 7.5958e+00 1.1 7.17e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   1  1  0  0  0 93777
VecScatterBegin    10489 1.0 1.3679e+00 2.4 0.00e+00 0.0 4.6e+06 4.7e+04 0.0e+00  0  0 76 65  0   0  0 76 65  0    -0
VecScatterEnd      10489 1.0 2.5293e+01 23.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
VecReduceArith       422 1.0 9.0676e-02 1.5 1.70e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 186531
VecReduceComm        211 1.0 1.0994e-01 5.3 0.00e+00 0.0 0.0e+00 0.0e+00 2.1e+02  0  0  0  0  2   0  0  0  0  2    -0
VecNormalize        2321 1.0 4.2351e+00 3.1 1.40e+09 1.1 0.0e+00 0.0e+00 2.3e+03  0  0  0  0 20   0  0  0  0 20 32948
MatMult             7426 1.0 1.6014e+02 1.2 1.06e+11 1.1 4.0e+06 5.5e+04 0.0e+00 28 18 66 65  0  28 18 66 65  0 65626
MatMultAdd          1021 1.0 2.7095e+00 1.3 1.24e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 45310
MatMultTranspose    1021 1.0 1.9920e+00 2.0 1.24e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 61629
MatSolve            7426 1.0 1.3552e+02 1.4 8.85e+10 1.1 1.3e+06 5.4e+02 1.1e+03 25 15 22  0  9  25 15 22  0  9 64923
MatLUFactorSym         1 1.0 2.9043e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum       422 1.0 2.2781e+01 1.1 2.65e+10 1.1 0.0e+00 0.0e+00 0.0e+00  4  5  0  0  0   4  5  0  0  0 114199
MatILUFactorSym        1 1.0 6.0999e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatResidual         1021 1.0 2.5171e+01 1.4 1.47e+10 1.1 5.5e+05 5.5e+04 0.0e+00  4  3  9  9  0   4  3  9  9  0 58219
MatAssemblyBegin    1488 1.0 2.1202e+01 3.3 0.00e+00 0.0 1.1e+05 6.6e+05 1.1e+03  3  0  2 22  9   3  0  2 22  9    -0
MatAssemblyEnd      1488 1.0 8.5903e+00 4.8 1.07e+08 0.0 2.1e+03 6.9e+03 1.7e+01  1  0  0  0  0   1  0  0  0  0   542
MatGetRowIJ            1 1.0 3.7210e-06 30.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         1 1.0 1.8655e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       422 1.0 3.3792e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
MatTranspose           2 1.0 5.8032e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 5.7564e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        422 1.0 1.8473e+00 1.1 3.04e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   0  1  0  0  0 164144
MatPtAPSymbolic        1 1.0 8.9147e-02 1.0 0.00e+00 0.0 1.6e+03 9.2e+04 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       211 1.0 1.1300e+01 1.0 1.22e+10 1.1 1.1e+05 1.6e+05 2.2e+02  2  2  2  5  2   2  2  2  5  2 107243
MatGetLocalMat       211 1.0 7.7129e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        211 1.0 4.0828e-01 1.9 0.00e+00 0.0 1.1e+05 1.6e+05 0.0e+00  0  0  2  6  0   0  0  2  6  0    -0
PCSetUp              211 1.0 1.3184e+02 1.0 1.12e+11 1.1 1.2e+06 6.5e+04 4.9e+03 26 20 21 24 43  26 20 21 24 43 84529
PCSetUpOnBlocks     2042 1.0 1.8343e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply             1021 1.0 2.5749e+02 1.0 1.93e+11 1.1 4.3e+06 4.0e+04 5.2e+03 51 34 71 51 45  51 34 71 51 46 74538
PCApplyOnBlocks     6405 1.0 1.3150e+02 1.4 8.84e+10 1.1 0.0e+00 0.0e+00 0.0e+00 24 15  0  0  0  24 15  0  0  0 66780
KSPSetUp             211 1.0 1.0950e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             211 1.0 2.7860e+02 1.0 2.11e+11 1.1 4.9e+06 4.2e+04 7.5e+03 56 37 80 60 65  56 37 80 60 65 75394
KSPGMRESOrthog      3131 1.0 2.7062e+01 2.3 1.18e+10 1.1 0.0e+00 0.0e+00 3.1e+03  3  2  0  0 27   3  2  0  0 27 43368
DMPlexCreateGmsh       1 1.0 5.3849e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 4.8839e+00 89.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Partition         2 1.0 7.5869e-02 1.0 0.00e+00 0.0 6.7e+03 2.9e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         2 1.0 2.2017e-02 1.1 0.00e+00 0.0 2.4e+04 3.7e+02 1.1e+02  0  0  0  0  1   0  0  0  0  1    -0
DMPlexPartSelf         1 1.0 7.5648e-03 3336.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 1.1219e-02 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 3.8069e-03 1.1 0.00e+00 0.0 1.3e+03 2.8e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 1.2499e-03 2.0 0.00e+00 0.0 6.4e+02 1.1e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 5.8523e-03 1.3 0.00e+00 0.0 7.5e+02 2.1e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp           1 1.0 2.6562e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 9.8580e-02 1.0 0.00e+00 0.0 4.4e+03 2.2e+03 6.3e+01  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistCones        2 1.0 2.7608e-03 1.0 0.00e+00 0.0 3.8e+03 7.1e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 1.2625e-02 1.0 0.00e+00 0.0 1.3e+04 3.9e+02 7.6e+01  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistOvrlp        1 1.0 4.7839e-03 1.1 0.00e+00 0.0 2.7e+04 9.9e+01 8.0e+01  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistField        3 1.0 3.3316e-03 1.2 0.00e+00 0.0 5.8e+03 1.4e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         4 1.0 2.2719e-02 17.5 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       4 1.0 2.1130e-03 77.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             75 1.0 4.4204e+02 1.0 5.75e+11 1.1 6.0e+06 5.6e+04 1.1e+04 89 100 99 100 96  89 100 99 100 96 128662
SNESSetUp              1 1.0 3.7595e-05 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     286 1.0 1.9794e+01 1.1 1.27e+11 1.1 3.5e+05 5.5e+04 0.0e+00  4 22  6  6  0   4 22  6  6  0 625815
SNESJacobianEval     211 1.0 9.0541e+01 1.0 1.96e+11 1.1 2.3e+05 3.6e+05 8.4e+02 18 34  4 24  7  18 34  4 24  7 211752
SNESLineSearch       211 1.0 1.1977e+01 1.0 9.68e+10 1.1 3.4e+05 5.5e+04 8.4e+02  2 17  6  5  7   2 17  6  5  7 791832
firedrake              1 1.0 4.9662e+02 1.0 5.75e+11 1.1 6.1e+06 5.6e+04 1.1e+04 100 100 100 100 100 100 100 100 100 100 114528
firedrake.__init__       1 1.0 1.1624e+01 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
CreateMesh             1 1.0 5.0225e+00 26.0 0.00e+00 0.0 5.6e+04 2.7e+02 2.0e+02  0  0  1  0  2   0  0  1  0  2    -0
firedrake.mesh._from_gmsh       1 1.0 4.8844e+00 89.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 9.2500e-04 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 1.5800e-06 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 3.0935e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 6.1995e-04 4.9 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       9 1.0 2.5142e-02 1.1 0.00e+00 0.0 1.1e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      11 1.0 1.1160e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       9 1.0 2.3424e-02 1.1 0.00e+00 0.0 1.1e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       8 1.0 2.2214e-02 1.1 0.00e+00 0.0 1.1e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       8 1.0 2.2139e-02 1.1 0.00e+00 0.0 1.1e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      16 1.0 1.2030e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 2.2536e-03 1.1 0.00e+00 0.0 1.1e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 5.1211e-04 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 8.8608e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      55 1.0 1.1569e-02 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 1.8429e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 1.6730e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       2 1.0 3.8092e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       3 1.0 7.8879e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 1.8383e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     634 1.0 9.3636e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      2286 1.0 9.9388e+01 1.1 3.22e+11 1.1 3.2e+05 5.4e+04 1.5e+01 19 55  5  5  0  19 55  5  5  0 317520
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 1.8072e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    4572 1.0 2.4282e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  5  0  0  0  0   5  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      16 1.0 1.0301e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
GlobalKernel: generate loopy      16 0.0 1.5011e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      16 0.0 8.3676e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      16 1.0 1.3821e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   3  0  0  0  0    -0
pyop2.compilation.load      16 1.0 1.3820e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   3  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      16 1.0 8.8252e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.make_so      16 1.0 8.6864e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
ParLoopRednBegin    2286 1.0 6.0305e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      2286 1.0 5.6997e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 5.8789e-04 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 4.7434e+00 1.0 3.41e+07 1.1 9.7e+03 2.3e+04 1.2e+01  1  0  0  0  0   1  0  0  0  0   714
firedrake.interpolation.interpolate      11 1.0 4.0800e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      11 1.0 5.6730e+00 1.0 3.53e+07 1.1 1.1e+04 2.1e+04 3.4e+01  1  0  0  0  0   1  0  0  0  0   618
firedrake.formmanipulation.split_form      12 1.0 3.7058e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      12 1.0 1.8075e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      11 1.0 1.5928e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       6 1.0 1.0114e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     586 1.0 1.7831e-01 1.9 0.00e+00 0.0 3.2e+05 5.4e+04 2.0e+00  0  0  5  5  0   0  0  5  5  0    -0
Parloop_Cells_wrap_expression_kernel      22 1.0 5.3571e+00 1.0 3.53e+07 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0   655
firedrake.halo.Halo.global_to_local_end     586 1.0 7.0487e+00 104.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.assign     314 1.0 8.6030e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     313 1.0 7.8558e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.6214e-04 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate     154 1.0 1.4530e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 4.0631e-05 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.1830e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.8925e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 2.9423e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 4.8548e+00 1.0 0.00e+00 0.0 3.2e+03 2.2e+05 2.3e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 5.9918e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.2098e-04 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 4.9641e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 4.9641e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateSparsity         2 1.0 1.8213e+00 1.2 0.00e+00 0.0 2.7e+03 1.3e+05 1.8e+01  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         2 1.0 2.5425e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      75 1.0 4.4218e+02 1.0 5.75e+11 1.1 6.0e+06 5.6e+04 1.1e+04 89 100 99 100 97  89 100 99 100 97 128622
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 2.5965e-01 810.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 8.2080e-06 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 2.5959e-01 961.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 2.5956e-01 1080.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     572 1.0 4.4377e+00 1.2 3.28e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   1  6  0  0  0 734253
Parloop_Cells_wrap_form0_exterior_facet_top_integral     572 1.0 9.7924e-01 1.0 8.52e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   865
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral     572 1.0 1.3362e+00 1.0 3.10e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  4328
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     572 1.0 3.2644e+00 1.1 3.14e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  5  0  0  0   1  5  0  0  0 955453
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     572 1.0 6.5407e+00 1.1 6.33e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1 11  0  0  0   1 11  0  0  0 917698
firedrake.halo.Halo.local_to_global_begin     286 1.0 4.3426e-02 4.7 0.00e+00 0.0 1.5e+05 5.5e+04 0.0e+00  0  0  3  2  0   0  0  3  2  0    -0
firedrake.halo.Halo.local_to_global_end     286 1.0 1.0376e+00 34.0 1.44e+07 2.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1015
Parloop_Cells_wrap_form00_cell_integral     422 1.0 1.5816e+01 1.3 4.51e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3  8  0  0  0   3  8  0  0  0 283618
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     422 1.0 1.5440e+00 1.4 2.33e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2814
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     422 1.0 1.8879e+01 1.2 5.95e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3 10  0  0  0   3 10  0  0  0 313290
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     422 1.0 3.9970e+01 1.4 9.24e+10 1.2 0.0e+00 0.0e+00 0.0e+00  7 15  0  0  0   7 15  0  0  0 219236
firedrake.dmhooks.get_function_space       1 1.0 1.0043e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 5.8675e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.assign      75 1.0 3.2910e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   160            160
              Viewer     3              3
           Index Set   909            909
   IS L to G Mapping     7              7
             Section    90             90
   Star Forest Graph   293            293
              Vector  1144           1144
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
========================================================================================================================
Average time to get PetscTime(): 2.7e-08
Average time for MPI_Barrier(): 4.2104e-06
Average time for zero size MPI_Send(): 1.9327e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murrumbidgee/vlumping_inexact_lag3/smoke.profile # (source: code)
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

