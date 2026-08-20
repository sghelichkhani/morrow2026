****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026-profile-stage2-20260820T053301Z/source/morrow/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0539.gadi.nci.org.au with 104 processes, by sg8812 on Thu Aug 20 16:08:28 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           8.671e+02     1.000   8.671e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                1.056e+12     1.130   1.003e+12  1.043e+14
Flops/sec:            1.218e+09     1.130   1.157e+09  1.203e+11
MPI Msg Count:        1.023e+05     3.054   6.116e+04  6.361e+06
MPI Msg Len (bytes):  9.268e+09     2.541   1.065e+05  6.772e+11
MPI Reductions:       1.382e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 6.1635e+02  71.1%  8.9888e+13  86.2%  2.969e+06  46.7%  1.657e+05       72.6%  1.111e+04  80.4%
 1:        MG Apply: 2.5074e+02  28.9%  1.4404e+13  13.8%  3.392e+06  53.3%  5.465e+04       27.4%  2.690e+03  19.5%

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

BuildTwoSided       1395 1.0 4.1027e+01 19.9 0.00e+00 0.0 7.3e+04 4.0e+00 1.2e+03  3  0  1  0  8   5  0  2  0 11    -0
BuildTwoSidedF      1131 1.0 4.1019e+01 17.0 0.00e+00 0.0 1.2e+05 1.3e+06 1.1e+03  3  0  2 24  8   5  0  4 33 10    -0
SFSetGraph           267 1.1 1.2580e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              264 1.1 3.8409e-02 1.5 0.00e+00 0.0 2.5e+04 2.8e+03 4.0e+01  0  0  0  0  0   0  0  1  0  0    -0
SFBcastBegin         719 1.0 3.4011e-01 2.7 0.00e+00 0.0 3.7e+05 9.7e+04 0.0e+00  0  0  6  5  0   0  0 12  7  0    -0
SFBcastEnd           719 1.0 1.4775e+01 115.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        311 1.0 7.5475e-02 19.3 0.00e+00 0.0 1.7e+05 1.1e+05 0.0e+00  0  0  3  3  0   0  0  6  4  0    -0
SFReduceEnd          311 1.0 2.2113e+00 41.3 3.02e+07 2.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   999
SFFetchOpBegin         2 1.0 2.0167e-05 5.8 0.00e+00 0.0 8.1e+02 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 2.9662e-04 22.6 0.00e+00 0.0 8.1e+02 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 1.0918e-03 1.8 0.00e+00 0.0 6.4e+02 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         21 1.0 9.3345e-03 1.3 0.00e+00 0.0 2.1e+04 2.8e+02 2.4e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           21 1.0 4.0912e-03 3.4 0.00e+00 0.0 9.9e+03 1.6e+02 2.1e+01  0  0  0  0  0   0  0  0  0  0    -0
SFPack           1118822 1.1 1.6733e+00 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack         1118824 1.1 1.9246e-01 3.4 3.02e+07 2.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 11476
VecDot               225 1.0 6.2086e-01 5.3 1.81e+08 1.1 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  2   0  0  0  0  2 29050
VecMDot             3815 1.0 3.6659e+01 3.9 1.53e+10 1.1 0.0e+00 0.0e+00 3.8e+03  3  1  0  0 28   5  2  0  0 34 41553
VecNorm             4790 1.0 1.1297e+01 2.4 3.86e+09 1.1 0.0e+00 0.0e+00 4.8e+03  1  0  0  0 35   1  0  0  0 43 33988
VecScale            4265 1.0 1.3249e+00 1.3 1.72e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 129021
VecCopy             1800 1.0 2.4088e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              5850 1.0 4.7922e+00 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecAXPY              450 1.0 7.3408e-01 1.1 3.63e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 49140
VecWAXPY             225 1.0 4.2381e-01 1.1 9.07e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 21279
VecMAXPY            4265 1.0 2.3560e+01 1.1 1.84e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3  2  0  0  0   4  2  0  0  0 77637
VecScatterBegin  1117790 1.1 1.4747e+01 1.3 0.00e+00 0.0 2.2e+06 1.1e+05 0.0e+00  2  0 34 35  0   2  0 73 48  0    -0
VecScatterEnd    1117790 1.1 1.5069e+01 18.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecReduceArith       450 1.0 3.0717e-01 1.5 3.63e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 117434
VecReduceComm        225 1.0 1.6472e-01 15.4 0.00e+00 0.0 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  2   0  0  0  0  2    -0
VecNormalize        2475 1.0 8.8366e+00 2.7 2.99e+09 1.1 0.0e+00 0.0e+00 2.5e+03  1  0  0  0 18   1  0  0  0 22 33678
MatMult             4040 1.0 1.5618e+02 1.1 1.15e+11 1.1 2.2e+06 1.1e+05 0.0e+00 17 11 34 35  0  24 13 73 48  0 73301
MatSolve          554400 1.1 6.3938e+01 1.4 3.48e+10 1.1 0.0e+00 0.0e+00 0.0e+00  6  3  0  0  0   9  4  0  0  0 54178
MatLUFactorSym       225 1.1 3.1310e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum     50625 1.1 2.0230e+01 1.1 1.44e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  1  0  0  0   3  2  0  0  0 70999
MatAssemblyBegin   51986 1.1 4.2512e+01 3.4 0.00e+00 0.0 1.2e+05 1.3e+06 1.1e+03  4  0  2 24  8   5  0  4 33 10    -0
MatAssemblyEnd     51986 1.1 1.0714e+01 11.8 2.28e+08 0.0 2.1e+03 1.4e+04 1.7e+01  1  0  0  0  0   1  0  0  0  0   928
MatGetRowIJ          224 1.1 4.9565e-05 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats     225 1.0 2.7854e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.2e+02  3  0  0  0  2   4  0  0  0  2    -0
MatGetOrdering       224 1.1 3.8138e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       450 1.0 7.5115e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
MatTranspose           2 1.0 1.5303e-02 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 1.2318e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        450 1.0 4.1168e+00 1.2 6.49e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  1  0  0  0 157038
MatPtAPSymbolic        1 1.0 2.3090e-01 1.0 0.00e+00 0.0 1.6e+03 1.8e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       225 1.0 2.9566e+01 1.0 2.60e+10 1.1 1.2e+05 3.3e+05 2.3e+02  3  2  2  6  2   5  3  4  8  2 87480
MatGetLocalMat       225 1.0 1.6734e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        225 1.0 9.0237e-01 2.2 0.00e+00 0.0 1.2e+05 3.3e+05 0.0e+00  0  0  2  6  0   0  0  4  8  0    -0
PCSetUp              225 1.0 2.7152e+02 1.0 1.64e+11 1.1 1.3e+06 1.3e+05 5.4e+03 31 16 21 25 39  44 18 45 35 49 60189
PCApply             1565 1.0 2.6126e+02 1.1 1.45e+11 1.1 3.4e+06 5.5e+04 2.7e+03 29 14 53 27 19 Multiple stages 55135
PCApplyOnBlocks   554400 1.1 7.7338e+01 1.3 4.93e+10 1.1 0.0e+00 0.0e+00 0.0e+00  8  5  0  0  0  11  5  0  0  0 63336
KSPSetUp             225 1.0 1.3434e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             225 1.0 3.3104e+02 1.0 2.04e+11 1.1 4.2e+06 6.6e+04 6.0e+03 38 19 67 41 44 Multiple stages 61202
KSPGMRESOrthog      3815 1.0 5.5365e+01 2.0 3.06e+10 1.1 0.0e+00 0.0e+00 3.8e+03  5  3  0  0 28   8  3  0  0 34 55028
DMPlexCreateGmsh       1 1.0 5.5996e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 1.9707e-01 3.5 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Partition         2 1.0 7.7604e-02 1.0 0.00e+00 0.0 6.7e+03 2.9e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         2 1.0 2.2924e-02 1.1 0.00e+00 0.0 2.4e+04 3.7e+02 1.1e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 7.9300e-03 3337.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 1.1675e-02 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 3.2752e-03 1.2 0.00e+00 0.0 1.3e+03 2.8e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 1.2356e-03 2.4 0.00e+00 0.0 6.4e+02 1.1e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 5.9585e-03 1.2 0.00e+00 0.0 7.5e+02 2.1e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp           1 1.0 2.7797e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 1.0135e-01 1.0 0.00e+00 0.0 4.4e+03 2.2e+03 6.3e+01  0  0  0  0  0   0  0  0  0  1    -0
DMPlexDistCones        2 1.0 2.9558e-03 1.0 0.00e+00 0.0 3.8e+03 7.1e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 1.3049e-02 1.0 0.00e+00 0.0 1.3e+04 3.9e+02 7.6e+01  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistOvrlp        1 1.0 4.8500e-03 1.1 0.00e+00 0.0 2.7e+04 9.9e+01 8.0e+01  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistField        3 1.0 3.3520e-03 1.1 0.00e+00 0.0 5.8e+03 1.4e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         4 1.0 2.4027e-02 18.2 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       4 1.0 2.0792e-03 76.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             75 1.0 8.1197e+02 1.0 1.06e+12 1.1 6.3e+06 1.1e+05 1.3e+04 94 100 99 100 97 Multiple stages 128436
SNESSetUp              1 1.0 5.1992e-05 4.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     300 1.0 3.0630e+01 1.1 2.66e+11 1.1 3.6e+05 1.1e+05 0.0e+00  3 25  6  6  0   5 29 12  8  0 849138
SNESJacobianEval     225 1.0 1.6829e+02 1.0 4.17e+11 1.1 2.4e+05 7.1e+05 9.0e+02 19 39  4 25  7  27 46  8 35  8 243211
SNESLineSearch       225 1.0 2.5758e+01 1.0 2.07e+11 1.1 3.6e+05 1.1e+05 9.0e+02  3 19  6  6  7   4 23 12  8  8 785905
firedrake              1 1.0 8.6490e+02 1.0 1.06e+12 1.1 6.4e+06 1.1e+05 1.4e+04 100 100 100 100 100 Multiple stages 120583
firedrake.__init__       1 1.0 6.8181e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateMesh             1 1.0 3.4100e-01 1.7 0.00e+00 0.0 5.6e+04 2.7e+02 2.0e+02  0  0  1  0  1   0  0  2  0  2    -0
firedrake.mesh._from_gmsh       1 1.0 1.9814e-01 3.5 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 8.5223e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 1.5810e-06 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 2.9782e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 5.7411e-04 3.9 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      10 1.0 2.6657e-02 1.2 0.00e+00 0.0 1.1e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      12 1.0 1.4078e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      10 1.0 2.4808e-02 1.2 0.00e+00 0.0 1.1e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       9 1.0 2.3458e-02 1.2 0.00e+00 0.0 1.1e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       9 1.0 2.3379e-02 1.2 0.00e+00 0.0 1.1e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      18 1.0 1.1898e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 2.6317e-03 1.1 0.00e+00 0.0 1.1e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 3.0681e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       8 1.0 1.4381e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      55 1.0 2.7952e-02 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 1.8353e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 1.3467e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       2 1.0 3.8159e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       3 1.0 7.4184e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 1.8309e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     634 1.0 8.9483e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      2412 1.0 1.7278e+02 1.1 6.83e+11 1.1 3.3e+05 1.1e+05 1.5e+01 19 64  5  5  0  26 74 11  7  0 387391
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 1.7994e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    4824 1.0 2.4440e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   4  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      16 1.0 1.0301e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
GlobalKernel: generate loopy      16 0.0 1.2339e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      16 0.0 8.6088e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      16 1.0 1.3954e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.load      16 1.0 1.3953e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      16 1.0 8.7971e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.make_so      16 1.0 8.6161e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
ParLoopRednBegin    2412 1.0 9.1098e-03 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      2412 1.0 6.8406e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 6.4205e-04 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 4.8862e+00 1.0 6.81e+07 1.1 9.7e+03 4.6e+04 1.2e+01  1  0  0  0  0   1  0  0  0  0  1386
firedrake.interpolation.interpolate      11 1.0 3.8318e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      11 1.0 5.9134e+00 1.0 7.06e+07 1.1 1.1e+04 4.2e+04 3.4e+01  1  0  0  0  0   1  0  0  0  0  1186
firedrake.formmanipulation.split_form      12 1.0 3.8884e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      12 1.0 1.9125e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      11 1.0 1.5851e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       6 1.0 9.9842e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     614 1.0 3.9080e-01 2.3 0.00e+00 0.0 3.3e+05 1.1e+05 2.0e+00  0  0  5  5  0   0  0 11  7  0    -0
Parloop_Cells_wrap_expression_kernel      22 1.0 5.4589e+00 1.0 7.06e+07 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0  1285
firedrake.halo.Halo.global_to_local_end     614 1.0 1.4602e+01 135.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.function.Function.assign     314 1.0 1.7559e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     313 1.0 1.6773e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.1436e-04 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate     154 1.0 1.6431e-03 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 5.8122e-05 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.3389e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 2.0107e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.0746e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 7.2882e+00 1.0 0.00e+00 0.0 3.2e+03 4.5e+05 2.3e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 6.4726e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.4422e-04 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.0357e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.0357e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateSparsity         2 1.0 3.9934e+00 1.1 0.00e+00 0.0 2.7e+03 2.6e+05 1.8e+01  0  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         2 1.0 5.4049e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      75 1.0 8.1224e+02 1.0 1.06e+12 1.1 6.3e+06 1.1e+05 1.4e+04 94 100 99 100 98 Multiple stages 128393
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 2.7689e-01 861.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 7.6230e-06 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 2.7684e-01 1022.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 2.7681e-01 1142.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     600 1.0 7.6543e+00 1.3 6.88e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  7  0  0  0   1  8  0  0  0 893062
Parloop_Cells_wrap_form0_exterior_facet_top_integral     600 1.0 1.0059e+00 1.0 8.94e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   883
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral     600 1.0 1.2312e+00 1.1 6.49e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  9854
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     600 1.0 5.4107e+00 1.1 6.60e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   1  7  0  0  0 1213400
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     600 1.0 1.1049e+01 1.2 1.33e+11 1.2 0.0e+00 0.0e+00 0.0e+00  1 12  0  0  0   2 14  0  0  0 1139656
firedrake.halo.Halo.local_to_global_begin     300 1.0 8.6774e-02 8.3 0.00e+00 0.0 1.6e+05 1.1e+05 0.0e+00  0  0  3  3  0   0  0  5  4  0    -0
firedrake.halo.Halo.local_to_global_end     300 1.0 2.2136e+00 40.4 3.02e+07 2.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   998
Parloop_Cells_wrap_form00_cell_integral     450 1.0 2.8735e+01 1.3 9.62e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3  9  0  0  0   4 11  0  0  0 332931
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     450 1.0 1.9892e+00 1.8 4.96e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  4658
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     450 1.0 3.4731e+01 1.1 1.27e+11 1.1 0.0e+00 0.0e+00 0.0e+00  4 12  0  0  0   5 14  0  0  0 364416
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     450 1.0 7.9378e+01 1.3 1.97e+11 1.2 0.0e+00 0.0e+00 0.0e+00  8 18  0  0  0  11 21  0  0  0 235437
firedrake.dmhooks.get_function_space       2 1.0 2.0366e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 5.3644e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0      225 1.0 8.4928e+00 1.0 7.00e+07 9.7 0.0e+00 0.0e+00 2.0e+00  1  0  0  0  0   1  0  0  0  0   242
MGSetup Level 1      225 1.0 2.3244e+02 1.0 1.38e+11 1.1 1.2e+06 1.1e+05 5.0e+03 27 13 19 20 36  38 15 41 27 45 59173
firedrake.constant.Constant.assign      75 1.0 3.4500e-03 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided        225 1.0 1.4427e-02 4.1 0.00e+00 0.0 1.4e+05 4.0e+00 2.2e+02  0  0  2  0  2   0  0  4  0  8    -0
SFSetGraph           225 1.0 9.2470e-03 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              225 1.0 1.9555e-02 1.8 0.00e+00 0.0 2.9e+05 2.1e+02 2.2e+02  0  0  4  0  2   0  0  8  0  8    -0
SFPack           1416325 1.1 1.2146e+00 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack         1416325 1.1 7.2613e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             4695 1.0 5.5320e+00 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecSet             12519 1.0 6.4624e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecAYPX             6260 1.0 9.9177e+00 1.5 3.79e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  3  0  0  0 37948
VecScatterBegin  1416325 1.1 1.8860e+01 1.2 0.00e+00 0.0 2.7e+06 6.9e+04 0.0e+00  2  0 42 27  0   7  0 79 100  0    -0
VecScatterEnd    1416325 1.1 1.3944e+01 16.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
MatMult             3130 1.0 1.2336e+02 1.1 8.91e+10 1.1 1.7e+06 1.1e+05 0.0e+00 13  9 26 27  0  46 62 49 99  0 71897
MatMultAdd          1565 1.0 7.6243e+00 1.2 3.79e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  3  0  0  0 49363
MatMultTranspose    1565 1.0 6.7730e+00 2.0 3.79e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  3  0  0  0 55567
MatSolve          702685 1.1 9.6459e+01 1.3 4.42e+10 1.1 1.7e+06 5.9e+02 1.1e+03  9  4 27  0  8  33 31 51  1 42 45678
MatResidual         1565 1.0 6.7052e+01 1.2 4.52e+10 1.1 8.4e+05 1.1e+05 0.0e+00  7  4 13 14  0  24 31 25 50  0 67073
PCApply             4695 1.0 1.2003e+02 1.2 4.42e+10 1.1 1.7e+06 5.9e+02 1.1e+03 12  4 27  0  8  43 31 51  1 42 36707
PCApplyOnBlocks   701120 1.1 9.3038e+01 1.4 4.41e+10 1.1 0.0e+00 0.0e+00 0.0e+00  8  4  0  0  0  29 30  0  0  0 47086
KSPSolve            4695 1.0 1.8992e+02 1.1 9.19e+10 1.1 2.6e+06 3.6e+04 2.7e+03 20  9 40 14 19  70 64 75 50 100 48200
MGSmooth Level 0    1565 1.0 1.2826e+01 2.4 9.26e+08 13.9 1.7e+06 5.9e+02 2.7e+03  1  0 27  0 19   4  0 51  1 100  1969
MGSmooth Level 1    3130 1.0 1.8460e+02 1.2 9.18e+10 1.1 8.4e+05 1.1e+05 0.0e+00 19  9 13 14  0  66 63 25 50  0 49453
MGResid Level 1     1565 1.0 6.7059e+01 1.2 4.52e+10 1.1 8.4e+05 1.1e+05 0.0e+00  7  4 13 14  0  24 31 25 50  0 67066
MGInterp Level 1    3130 1.0 1.3985e+01 1.3 7.57e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   5  5  0  0  0 53825
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   160            160
              Viewer     3              3
           Index Set  2375           2375
   IS L to G Mapping   217            217
             Section    90             90
   Star Forest Graph   294            519
              Vector  1640           1640
              Matrix  1084           1084
      Preconditioner   216            216
       Krylov Solver   214            214
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
Average time for MPI_Barrier(): 4.4424e-06
Average time for zero size MPI_Send(): 2.06317e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026-profile-stage2-20260820T053301Z/stage2/results/vlumping_linesmooth/h1.profile # (source: code)
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

