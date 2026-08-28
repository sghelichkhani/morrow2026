****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0080.gadi.nci.org.au with 208 processes, by sg8812 on Fri Aug 28 05:18:53 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           1.305e+03     1.000   1.305e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                1.707e+12     1.139   1.628e+12  3.387e+14
Flops/sec:            1.308e+09     1.139   1.248e+09  2.595e+11
MPI Msg Count:        1.473e+05     3.326   9.017e+04  1.876e+07
MPI Msg Len (bytes):  1.708e+10     3.590   1.113e+05  2.088e+12
MPI Reductions:       1.966e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 9.3420e+02  71.6%  2.9783e+14  87.9%  9.102e+06  48.5%  1.687e+05       73.5%  1.587e+04  80.7%
 1:        MG Apply: 3.7089e+02  28.4%  4.0875e+13  12.1%  9.653e+06  51.5%  5.722e+04       26.5%  3.765e+03  19.2%

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

BuildTwoSided       1923 1.0 8.5799e+01 3.0 0.00e+00 0.0 2.5e+05 4.0e+00 1.7e+03  4  0  1  0  9   6  0  3  0 11    -0
BuildTwoSidedF      1601 1.0 8.5635e+01 2.9 0.00e+00 0.0 3.5e+05 1.4e+06 1.6e+03  5  0  2 23  8   6  0  4 32 10    -0
SFSetGraph           329 1.1 1.6015e-02 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              322 1.1 4.5075e+00 130.8 0.00e+00 0.0 1.4e+05 1.1e+03 9.8e+01  0  0  1  0  0   0  0  2  0  1    -0
SFBcastBegin        1273 1.0 7.0530e-01 3.7 0.00e+00 0.0 1.3e+06 9.5e+04 0.0e+00  0  0  7  6  0   0  0 15  8  0    -0
SFBcastEnd          1273 1.0 2.1421e+01 107.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        674 1.0 2.0993e-01 6.0 0.00e+00 0.0 7.3e+05 1.1e+05 0.0e+00  0  0  4  4  0   0  0  8  5  0    -0
SFReduceEnd          674 1.0 6.3959e+00 45.6 8.20e+07 3.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1566
SFFetchOpBegin         6 1.0 3.2614e-05 4.8 0.00e+00 0.0 5.3e+03 7.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           6 1.0 7.6960e-04 18.5 0.00e+00 0.0 5.3e+03 7.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          4 1.0 1.2443e-03 2.2 0.00e+00 0.0 2.6e+03 1.1e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         49 1.0 6.8265e-03 1.4 0.00e+00 0.0 1.2e+05 7.8e+01 5.8e+01  0  0  1  0  0   0  0  1  0  0    -0
SFSectionSF           51 1.0 4.6642e-03 2.7 0.00e+00 0.0 5.9e+04 3.7e+01 5.1e+01  0  0  0  0  0   0  0  1  0  0    -0
SFRemoteOff            2 1.0 9.7763e-05 2.9 0.00e+00 0.0 2.3e+03 1.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack           1586682 1.1 3.1319e+00 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack         1586688 1.1 4.5149e-01 3.3 8.20e+07 3.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 22188
VecDot               319 1.0 1.4000e+00 7.0 2.57e+08 1.1 0.0e+00 0.0e+00 3.2e+02  0  0  0  0  2   0  0  0  0  2 37353
VecMDot             5360 1.0 7.2763e+01 3.1 2.16e+10 1.1 0.0e+00 0.0e+00 5.4e+03  4  1  0  0 27   5  1  0  0 34 60218
VecNorm             6950 1.0 2.4091e+01 2.9 5.60e+09 1.1 0.0e+00 0.0e+00 7.0e+03  1  0  0  0 35   2  0  0  0 44 47291
VecScale            5998 1.0 1.8362e+00 1.2 2.42e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 267739
VecCopy             2896 1.0 4.0059e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              8294 1.0 6.9796e+00 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecAXPY              638 1.0 1.0670e+00 1.2 5.14e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 98020
VecWAXPY             600 1.0 1.2600e+00 1.2 3.55e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 57311
VecMAXPY            5998 1.0 3.3427e+01 1.1 2.59e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  2  0  0  0   3  2  0  0  0 157369
VecScatterBegin  1584729 1.1 2.0365e+01 1.4 0.00e+00 0.0 6.2e+06 1.2e+05 0.0e+00  1  0 33 34  0   2  0 68 47  0    -0
VecScatterEnd    1584729 1.1 3.4836e+01 11.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecReduceArith       638 1.0 5.3322e-01 1.8 5.14e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 196142
VecReduceComm        319 1.0 3.2579e-01 17.8 0.00e+00 0.0 0.0e+00 0.0e+00 3.2e+02  0  0  0  0  2   0  0  0  0  2    -0
VecNormalize        3509 1.0 1.5852e+01 2.9 4.24e+09 1.1 0.0e+00 0.0e+00 3.5e+03  1  0  0  0 18   1  0  0  0 22 54432
MatMult             5679 1.0 2.3500e+02 1.1 1.62e+11 1.1 6.2e+06 1.2e+05 0.0e+00 17 10 33 34  0  24 11 68 47  0 140170
MatSolve          786016 1.1 9.3262e+01 1.5 4.94e+10 1.1 0.0e+00 0.0e+00 0.0e+00  6  3  0  0  0   8  3  0  0  0 107691
MatLUFactorSym       225 1.1 6.7216e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum     71775 1.1 3.8854e+01 1.1 2.07e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3  1  0  0  0   4  1  0  0  0 107206
MatAssemblyBegin   73744 1.1 9.2108e+01 2.6 0.00e+00 0.0 3.5e+05 1.4e+06 1.6e+03  5  0  2 23  8   7  0  4 32 10    -0
MatAssemblyEnd     73744 1.1 2.4207e+01 3.9 3.55e+08 0.0 4.4e+03 1.5e+04 1.7e+01  1  0  0  0  0   1  0  0  0  0  1254
MatGetRowIJ          224 1.1 3.5811e-05 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats     319 1.0 4.1757e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 2.2e+02  3  0  0  0  1   4  0  0  0  1    -0
MatGetOrdering       224 1.1 4.0168e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       638 1.0 1.2370e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
MatTranspose           2 1.0 1.5886e-02 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 1.2469e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        638 1.0 5.8489e+00 1.2 9.26e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  1  0  0  0 320924
MatPtAPSymbolic        1 1.0 2.2999e-01 1.0 0.00e+00 0.0 3.3e+03 1.9e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       319 1.0 4.1268e+01 1.0 3.70e+10 1.1 3.5e+05 3.5e+05 3.2e+02  3  2  2  6  2   4  3  4  8  2 181907
MatGetLocalMat       319 1.0 2.5353e+00 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        319 1.0 1.3789e+00 2.3 0.00e+00 0.0 3.5e+05 3.5e+05 0.0e+00  0  0  2  6  0   0  0  4  8  0    -0
MatSetPreallCOO       32 1.0 6.3015e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       32 1.0 3.4297e-05 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp              319 1.0 4.0765e+02 1.0 2.34e+11 1.1 3.8e+06 1.4e+05 7.6e+03 31 14 20 25 39  44 16 42 34 48 116299
PCApply             2170 1.0 3.9189e+02 1.1 2.04e+11 1.1 9.7e+06 5.7e+04 3.8e+03 28 12 51 26 19 Multiple stages 104303
PCApplyOnBlocks   786016 1.1 1.1236e+02 1.4 6.99e+10 1.1 0.0e+00 0.0e+00 0.0e+00  7  4  0  0  0  10  5  0  0  0 126396
KSPSetUp             319 1.0 1.3300e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             319 1.0 4.8996e+02 1.0 2.85e+11 1.1 1.2e+07 6.9e+04 8.4e+03 38 17 64 40 43 Multiple stages 117341
KSPGMRESOrthog      5360 1.0 9.8003e+01 2.0 4.31e+10 1.1 0.0e+00 0.0e+00 5.4e+03  6  3  0  0 27   8  3  0  0 34 89419
DMRefine               2 1.0 2.3809e-01 1.0 2.09e+03 1.0 1.6e+04 3.3e+01 6.3e+01  0  0  0  0  0   0  0  0  0  0     2
DMPlexCreateGmsh       1 1.0 1.9940e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 5.2012e+00 248.8 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Partition         4 1.0 7.6992e-02 1.0 0.00e+00 0.0 3.8e+04 6.1e+01 5.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         4 1.0 1.7656e-02 1.1 0.00e+00 0.0 1.4e+05 7.1e+01 2.4e+02  0  0  1  0  1   0  0  2  0  1    -0
DMPlexPartSelf         1 1.0 2.0953e-03 861.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       4 1.0 1.4101e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        4 1.0 4.9638e-03 1.2 0.00e+00 0.0 7.5e+03 4.8e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       4 1.0 1.9262e-03 1.6 0.00e+00 0.0 3.7e+03 1.9e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          4 1.0 1.9293e-03 3.9 0.00e+00 0.0 3.9e+03 2.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          29 1.0 8.0318e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 8.1226e-02 1.0 0.00e+00 0.0 8.6e+03 1.8e+02 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        4 1.0 2.0448e-03 1.1 0.00e+00 0.0 2.2e+04 1.1e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       4 1.0 7.2508e-03 1.0 0.00e+00 0.0 7.1e+04 6.8e+01 1.5e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistOvrlp        3 1.0 1.5414e-02 1.0 0.00e+00 0.0 1.7e+05 6.7e+01 2.4e+02  0  0  1  0  1   0  0  2  0  2    -0
DMPlexDistField        7 1.0 3.5800e-03 1.3 0.00e+00 0.0 3.2e+04 5.5e+01 2.0e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify        41 1.0 5.9502e-03 5.7 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      41 1.0 3.2300e-04 5.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          2 1.0 1.1345e-04 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          2 1.0 3.3886e-03 1.5 0.00e+00 0.0 8.6e+03 2.8e+01 1.9e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          2 1.0 1.1038e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          2 1.0 3.4033e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             2 1.0 3.6580e-04 1.9 0.00e+00 0.0 6.9e+03 2.6e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         2 1.0 8.7992e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         2 1.0 7.8703e-04 2.0 0.00e+00 0.0 1.7e+03 3.5e+01 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             33 1.0 1.2367e+03 1.0 1.71e+12 1.1 1.8e+07 1.1e+05 1.9e+04 95 100 98 100 96 Multiple stages 273855
SNESSetUp              1 1.0 5.4745e-05 4.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     633 1.0 5.5306e+01 1.2 5.74e+11 1.2 1.4e+06 1.2e+05 0.0e+00  4 33  8  8  0   6 38 16 11  0 2036423
SNESJacobianEval     319 1.0 2.6792e+02 1.0 6.05e+11 1.2 7.0e+05 7.6e+05 1.3e+03 21 35  4 25  6  29 40  8 34  8 443885
SNESLineSearch       319 1.0 5.8576e+01 1.0 5.55e+11 1.2 1.7e+06 1.2e+05 1.6e+03  4 32  9  9  8   6 37 18 13 10 1860560
DualSpaceSetUp         8 1.0 5.3537e-03 1.2 1.08e+02 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     4
FESetUp                8 1.0 2.0245e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 1.3028e+03 1.0 1.71e+12 1.1 1.9e+07 1.1e+05 2.0e+04 100 100 100 100 100 Multiple stages 259978
firedrake.__init__       1 1.0 1.1764e+01 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateMesh             3 1.0 5.3449e+00 33.0 0.00e+00 0.0 3.4e+05 7.2e+01 4.4e+02  0  0  2  0  2   0  0  4  0  3    -0
firedrake.mesh._from_gmsh       1 1.0 5.2020e+00 248.4 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       3 1.0 1.1798e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       3 1.0 6.5020e-06 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        3 1.0 4.8054e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          3 1.0 1.0402e-03 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      16 1.0 3.4009e-02 1.1 0.00e+00 0.0 7.1e+03 8.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      20 1.0 1.9083e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      20 1.0 3.1839e-02 1.1 0.00e+00 0.0 7.1e+03 8.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      19 1.0 2.9572e-02 1.1 0.00e+00 0.0 7.1e+03 8.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      19 1.0 2.9449e-02 1.1 0.00e+00 0.0 7.1e+03 8.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      38 1.0 1.3194e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       6 1.0 5.8181e-03 1.2 0.00e+00 0.0 7.1e+03 8.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__      12 1.0 7.5966e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      12 1.0 2.9541e-04 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      65 1.0 3.3653e-02 3.5 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          3 1.0 2.2269e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       3 1.0 2.4562e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       4 1.0 5.9920e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       5 1.0 1.2880e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       3 1.0 2.2205e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     394 1.0 5.9678e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      4461 1.0 2.6326e+02 1.2 1.18e+12 1.2 1.1e+06 1.1e+05 3.2e+01 18 68  6  6  0  26 78 12  8  0 879445
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       6 1.0 2.1774e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    8922 1.0 2.7143e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      17 1.0 1.1753e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
GlobalKernel: generate loopy      17 0.0 1.4812e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      17 0.0 9.2581e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      17 1.0 1.5140e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.load      17 1.0 1.5139e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      17 1.0 9.9091e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.make_so      17 1.0 9.6210e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
ParLoopRednBegin    4461 1.0 1.3112e-02 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      4461 1.0 1.1889e-02 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       3 1.0 1.0036e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong       4 1.0 9.7774e+00 1.0 1.36e+07 1.1 1.9e+04 1.3e+04 1.3e+01  1  0  0  0  0   1  0  0  0  0   283
firedrake.interpolation.interpolate      13 1.0 4.5743e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      13 1.0 5.9446e+00 1.0 8.46e+07 1.1 2.8e+04 4.0e+04 3.7e+01  0  0  0  0  0   1  0  0  0  0  2892
firedrake.formmanipulation.split_form      14 1.0 4.6591e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      14 1.0 2.5562e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      13 1.0 1.6306e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       6 1.0 1.0114e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin    1006 1.0 5.8379e+00 13.2 0.00e+00 0.0 1.1e+06 1.1e+05 4.0e+00  0  0  6  6  0   0  0 12  8  0    -0
Parloop_Cells_wrap_expression_kernel      26 1.0 5.4532e+00 1.0 8.46e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  3153
firedrake.halo.Halo.global_to_local_end    1006 1.0 2.1023e+01 103.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       1 1.0 5.9085e+00 93.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152fdf1fd390_wrap_pyop2_kernel_prolong       4 0.0 7.3693e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152fdf208590_wrap_pyop2_kernel_prolong       4 0.0 4.8330e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 3.9554e+00 1.0 6.85e+07 1.1 1.7e+04 5.8e+04 1.1e+01  0  0  0  0  0   0  0  0  0  0  3523
firedrake.function.Function.assign     146 1.0 8.8912e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     145 1.0 8.4816e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.1988e-04 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      70 1.0 8.3685e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 6.6452e-05 3.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.4743e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.9597e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.2142e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 7.6122e+00 1.0 0.00e+00 0.0 6.7e+03 4.7e+05 2.3e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 6.6727e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.8445e-04 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.1574e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.1574e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
CreateSparsity         2 1.0 4.1744e+00 1.1 0.00e+00 0.0 5.7e+03 2.7e+05 1.8e+01  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         2 1.0 5.6568e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      33 1.0 1.2369e+03 1.0 1.71e+12 1.1 1.8e+07 1.1e+05 1.9e+04 95 100 98 100 96 Multiple stages 273828
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 3.2015e-01 1171.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 8.2310e-06 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 3.2010e-01 1412.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 3.2006e-01 1634.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral    1266 1.0 1.5160e+01 1.4 1.47e+11 1.1 0.0e+00 0.0e+00 0.0e+00  1  9  0  0  0   1 10  0  0  0 1966188
Parloop_Cells_wrap_form0_exterior_facet_top_integral    1266 1.0 1.3489e+00 1.1 1.89e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2842
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral    1266 1.0 1.4168e+00 1.1 1.51e+09 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 25987
Parloop_Cells_wrap_form0_interior_facet_horiz_integral    1266 1.0 9.5344e+00 1.2 1.39e+11 1.1 0.0e+00 0.0e+00 0.0e+00  1  8  0  0  0   1 10  0  0  0 2971232
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral    1266 1.0 2.1741e+01 1.3 2.88e+11 1.3 0.0e+00 0.0e+00 0.0e+00  1 16  0  0  0   2 18  0  0  0 2504001
firedrake.halo.Halo.local_to_global_begin     633 1.0 2.3708e-01 4.8 0.00e+00 0.0 6.9e+05 1.2e+05 0.0e+00  0  0  4  4  0   0  0  8  5  0    -0
firedrake.halo.Halo.local_to_global_end     633 1.0 6.4028e+00 43.3 8.20e+07 3.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1565
Parloop_Cells_wrap_form00_cell_integral     638 1.0 4.2193e+01 1.5 1.37e+11 1.1 0.0e+00 0.0e+00 0.0e+00  3  8  0  0  0   4  9  0  0  0 661112
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     638 1.0 2.3623e+00 2.1 7.67e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  7902
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     638 1.0 5.0976e+01 1.2 1.81e+11 1.1 0.0e+00 0.0e+00 0.0e+00  4 11  0  0  0   5 12  0  0  0 719877
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     638 1.0 1.1785e+02 1.4 2.87e+11 1.3 0.0e+00 0.0e+00 0.0e+00  8 16  0  0  0  11 18  0  0  0 460645
firedrake.dmhooks.get_function_space       2 1.0 2.3720e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 5.5834e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0      319 1.0 2.2671e+01 1.0 2.00e+08 21.8 0.0e+00 0.0e+00 2.0e+00  2  0  0  0  0   2  0  0  0  0   311
MGSetup Level 1      319 1.0 3.4286e+02 1.0 1.96e+11 1.1 3.5e+06 1.2e+05 6.9e+03 26 12 19 19 35  37 13 38 26 44 116360
firedrake.constant.Constant.assign      33 1.0 1.5888e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153ffbd778d0_wrap_pyop2_kernel_prolong       4 0.0 7.3696e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153ffbd4dc10_wrap_pyop2_kernel_prolong       4 0.0 4.8069e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a318b1ebd0_wrap_pyop2_kernel_prolong       4 0.0 7.3768e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a318b1c0d0_wrap_pyop2_kernel_prolong       4 0.0 6.4267e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1465b2c65690_wrap_pyop2_kernel_prolong       4 0.0 7.4524e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1465b2c64f50_wrap_pyop2_kernel_prolong       4 0.0 5.7668e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14605e8c8990_wrap_pyop2_kernel_prolong       4 0.0 7.4870e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14605eb6ac50_wrap_pyop2_kernel_prolong       4 0.0 6.9413e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1543877e8fd0_wrap_pyop2_kernel_prolong       4 0.0 7.4720e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1543877e6bd0_wrap_pyop2_kernel_prolong       4 0.0 6.1942e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152200d77cd0_wrap_pyop2_kernel_prolong       4 0.0 7.3709e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152200d94510_wrap_pyop2_kernel_prolong       4 0.0 5.2587e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e10b2a97d0_wrap_pyop2_kernel_prolong       4 0.0 7.4787e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e10b2a9c50_wrap_pyop2_kernel_prolong       4 0.0 5.2547e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14982e71d6d0_wrap_pyop2_kernel_prolong       4 0.0 7.4174e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14982e5d5b50_wrap_pyop2_kernel_prolong       4 0.0 5.4702e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c760743890_wrap_pyop2_kernel_prolong       4 0.0 7.4490e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c7607695d0_wrap_pyop2_kernel_prolong       4 0.0 5.5265e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f239ee4d0_wrap_pyop2_kernel_prolong       4 0.0 7.4791e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f239ed990_wrap_pyop2_kernel_prolong       4 0.0 6.4232e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd7ee96b10_wrap_pyop2_kernel_prolong       4 0.0 7.4266e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd7e6a0590_wrap_pyop2_kernel_prolong       4 0.0 6.0339e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455dddcfa10_wrap_pyop2_kernel_prolong       4 0.0 7.4688e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455dddcc890_wrap_pyop2_kernel_prolong       4 0.0 6.6249e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1548cc615b10_wrap_pyop2_kernel_prolong       4 0.0 7.4123e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1548cc8f2dd0_wrap_pyop2_kernel_prolong       4 0.0 5.6184e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145b39ad3410_wrap_pyop2_kernel_prolong       4 0.0 7.4370e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145b39ad3250_wrap_pyop2_kernel_prolong       4 0.0 6.2015e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eafa944bd0_wrap_pyop2_kernel_prolong       4 0.0 7.4548e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eafa93d2d0_wrap_pyop2_kernel_prolong       4 0.0 7.6109e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14705e76bd50_wrap_pyop2_kernel_prolong       4 0.0 7.4433e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14705e769dd0_wrap_pyop2_kernel_prolong       4 0.0 5.0184e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a918935690_wrap_pyop2_kernel_prolong       4 0.0 7.3647e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a9188cd850_wrap_pyop2_kernel_prolong       4 0.0 5.9025e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1542c8204dd0_wrap_pyop2_kernel_prolong       4 0.0 7.3748e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1542c3b41210_wrap_pyop2_kernel_prolong       4 0.0 7.3654e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14faa80de750_wrap_pyop2_kernel_prolong       4 0.0 7.3699e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14faa3b59050_wrap_pyop2_kernel_prolong       4 0.0 5.6425e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1463d99ad1d0_wrap_pyop2_kernel_prolong       4 0.0 7.3662e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1463d9714750_wrap_pyop2_kernel_prolong       4 0.0 5.1233e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1507b602c410_wrap_pyop2_kernel_prolong       4 0.0 7.4853e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1507b602d650_wrap_pyop2_kernel_prolong       4 0.0 5.5227e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1487c8ceb410_wrap_pyop2_kernel_prolong       4 0.0 7.3718e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1487c8ceb5d0_wrap_pyop2_kernel_prolong       4 0.0 6.2150e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153046668790_wrap_pyop2_kernel_prolong       4 0.0 7.4571e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153045a31090_wrap_pyop2_kernel_prolong       4 0.0 7.0949e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1113ae650_wrap_pyop2_kernel_prolong       4 0.0 7.3723e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f11134df90_wrap_pyop2_kernel_prolong       4 0.0 5.9518e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145e66dc2410_wrap_pyop2_kernel_prolong       4 0.0 7.3883e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145e66dc1bd0_wrap_pyop2_kernel_prolong       4 0.0 7.3225e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1479eced53d0_wrap_pyop2_kernel_prolong       4 0.0 7.4547e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1479ece56290_wrap_pyop2_kernel_prolong       4 0.0 5.5417e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f9fd737ed0_wrap_pyop2_kernel_prolong       4 0.0 7.3704e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f9fd734110_wrap_pyop2_kernel_prolong       4 0.0 5.3527e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146fb9f3ed90_wrap_pyop2_kernel_prolong       4 0.0 7.3686e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146fb9efd350_wrap_pyop2_kernel_prolong       4 0.0 6.0446e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15543e7da990_wrap_pyop2_kernel_prolong       4 0.0 7.3749e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15543e7d9bd0_wrap_pyop2_kernel_prolong       4 0.0 5.9984e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151d357a77d0_wrap_pyop2_kernel_prolong       4 0.0 7.3665e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151d357a52d0_wrap_pyop2_kernel_prolong       4 0.0 6.2743e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac5e9a0310_wrap_pyop2_kernel_prolong       4 0.0 7.3703e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac5e961bd0_wrap_pyop2_kernel_prolong       4 0.0 5.5897e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c2c527f9d0_wrap_pyop2_kernel_prolong       4 0.0 7.4384e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c2c5529550_wrap_pyop2_kernel_prolong       4 0.0 5.6083e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b41554f50_wrap_pyop2_kernel_prolong       4 0.0 7.4328e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b4155fe10_wrap_pyop2_kernel_prolong       4 0.0 6.0036e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d9f8636610_wrap_pyop2_kernel_prolong       4 0.0 7.3916e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d9f86afd50_wrap_pyop2_kernel_prolong       4 0.0 6.5306e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e008a0fd90_wrap_pyop2_kernel_prolong       4 0.0 7.3721e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e008a0d890_wrap_pyop2_kernel_prolong       4 0.0 5.3680e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce1eb62d10_wrap_pyop2_kernel_prolong       4 0.0 7.4125e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce1e8d5710_wrap_pyop2_kernel_prolong       4 0.0 6.6716e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145f77aab910_wrap_pyop2_kernel_prolong       4 0.0 7.4371e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145f77a7f150_wrap_pyop2_kernel_prolong       4 0.0 6.1508e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15088df61790_wrap_pyop2_kernel_prolong       4 0.0 7.4742e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15088df55f90_wrap_pyop2_kernel_prolong       4 0.0 7.6429e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1544da01bed0_wrap_pyop2_kernel_prolong       4 0.0 7.4541e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1544da031010_wrap_pyop2_kernel_prolong       4 0.0 5.7253e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5e9948bd0_wrap_pyop2_kernel_prolong       4 0.0 7.4302e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5e99753d0_wrap_pyop2_kernel_prolong       4 0.0 6.2476e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d33dc6e410_wrap_pyop2_kernel_prolong       4 0.0 7.4402e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d33dc75c10_wrap_pyop2_kernel_prolong       4 0.0 6.2631e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151158ed6d10_wrap_pyop2_kernel_prolong       4 0.0 7.4611e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151158c9ec90_wrap_pyop2_kernel_prolong       4 0.0 6.3074e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f9bc0df2d0_wrap_pyop2_kernel_prolong       4 0.0 7.4181e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f9bc229c90_wrap_pyop2_kernel_prolong       4 0.0 5.4958e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cfc8cf65d0_wrap_pyop2_kernel_prolong       4 0.0 7.4651e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cfc8cf5750_wrap_pyop2_kernel_prolong       4 0.0 7.3840e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f53bca550_wrap_pyop2_kernel_prolong       4 0.0 7.3717e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f53bcb550_wrap_pyop2_kernel_prolong       4 0.0 5.8422e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f0908cf90_wrap_pyop2_kernel_prolong       4 0.0 7.4704e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f090b8250_wrap_pyop2_kernel_prolong       4 0.0 7.1759e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f3d41aac50_wrap_pyop2_kernel_prolong       4 0.0 7.4248e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f3cf6e9350_wrap_pyop2_kernel_prolong       4 0.0 6.6774e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac7a8ae410_wrap_pyop2_kernel_prolong       4 0.0 7.4447e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac7a8addd0_wrap_pyop2_kernel_prolong       4 0.0 6.0949e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b7fa786d0_wrap_pyop2_kernel_prolong       4 0.0 7.3763e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b7fa7ae50_wrap_pyop2_kernel_prolong       4 0.0 7.1030e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14703700e790_wrap_pyop2_kernel_prolong       4 0.0 7.4006e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14703700da50_wrap_pyop2_kernel_prolong       4 0.0 6.3990e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154fdd003650_wrap_pyop2_kernel_prolong       4 0.0 7.4456e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154fdc692bd0_wrap_pyop2_kernel_prolong       4 0.0 7.6417e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155058d944d0_wrap_pyop2_kernel_prolong       4 0.0 7.3637e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155058d97d10_wrap_pyop2_kernel_prolong       4 0.0 5.2164e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14792b38e750_wrap_pyop2_kernel_prolong       4 0.0 7.3653e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14792b37e250_wrap_pyop2_kernel_prolong       4 0.0 5.2247e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c0ac44e6d0_wrap_pyop2_kernel_prolong       4 0.0 7.3643e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c0ac3b7a10_wrap_pyop2_kernel_prolong       4 0.0 5.4590e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f69535b790_wrap_pyop2_kernel_prolong       4 0.0 7.3639e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f6948484d0_wrap_pyop2_kernel_prolong       4 0.0 4.8948e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493a12efd50_wrap_pyop2_kernel_prolong       4 0.0 7.3646e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493a12ed090_wrap_pyop2_kernel_prolong       4 0.0 5.9239e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1472665ce890_wrap_pyop2_kernel_prolong       4 0.0 7.3684e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14726673d390_wrap_pyop2_kernel_prolong       4 0.0 6.0198e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14650a99f410_wrap_pyop2_kernel_prolong       4 0.0 7.3643e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14650aa41b90_wrap_pyop2_kernel_prolong       4 0.0 4.2924e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be7ef37210_wrap_pyop2_kernel_prolong       4 0.0 7.3673e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be7ef348d0_wrap_pyop2_kernel_prolong       4 0.0 5.8492e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f0b50e2e90_wrap_pyop2_kernel_prolong       4 0.0 7.3682e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f0b50e1790_wrap_pyop2_kernel_prolong       4 0.0 5.8369e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1483a459c390_wrap_pyop2_kernel_prolong       4 0.0 7.3645e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1483a459db90_wrap_pyop2_kernel_prolong       4 0.0 5.6425e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c7367dc90_wrap_pyop2_kernel_prolong       4 0.0 7.3663e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c7367e0d0_wrap_pyop2_kernel_prolong       4 0.0 6.2211e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f34e2d0d0_wrap_pyop2_kernel_prolong       4 0.0 7.3717e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f34e7f150_wrap_pyop2_kernel_prolong       4 0.0 6.8355e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d7f1f1b310_wrap_pyop2_kernel_prolong       4 0.0 7.3740e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d7f1f190d0_wrap_pyop2_kernel_prolong       4 0.0 6.9104e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145c55fb8e50_wrap_pyop2_kernel_prolong       4 0.0 7.4417e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145c55d29e50_wrap_pyop2_kernel_prolong       4 0.0 5.3748e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15484f33a950_wrap_pyop2_kernel_prolong       4 0.0 7.3669e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15484fc7f890_wrap_pyop2_kernel_prolong       4 0.0 5.9105e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee2e41d090_wrap_pyop2_kernel_prolong       4 0.0 7.3673e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee2e449b10_wrap_pyop2_kernel_prolong       4 0.0 6.6960e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b8495af610_wrap_pyop2_kernel_prolong       4 0.0 7.3664e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b8495ad6d0_wrap_pyop2_kernel_prolong       4 0.0 5.9552e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15082de97210_wrap_pyop2_kernel_prolong       4 0.0 7.3950e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15082d64ed90_wrap_pyop2_kernel_prolong       4 0.0 6.1123e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f6bb798b10_wrap_pyop2_kernel_prolong       4 0.0 7.3907e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f6bb72bfd0_wrap_pyop2_kernel_prolong       4 0.0 7.5711e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a308105710_wrap_pyop2_kernel_prolong       4 0.0 7.3986e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a308107050_wrap_pyop2_kernel_prolong       4 0.0 6.2174e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f306533d0_wrap_pyop2_kernel_prolong       4 0.0 7.3644e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f3090a550_wrap_pyop2_kernel_prolong       4 0.0 5.3335e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151968514a10_wrap_pyop2_kernel_prolong       4 0.0 7.3737e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151968516150_wrap_pyop2_kernel_prolong       4 0.0 6.8339e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151264664dd0_wrap_pyop2_kernel_prolong       4 0.0 7.3663e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1512646424d0_wrap_pyop2_kernel_prolong       4 0.0 5.5577e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eb42030490_wrap_pyop2_kernel_prolong       4 0.0 7.4195e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eb41f33350_wrap_pyop2_kernel_prolong       4 0.0 6.3106e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d8b25e4210_wrap_pyop2_kernel_prolong       4 0.0 7.4103e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d8b287df50_wrap_pyop2_kernel_prolong       4 0.0 7.0093e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151112dbe8d0_wrap_pyop2_kernel_prolong       4 0.0 7.4400e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151112e0fb10_wrap_pyop2_kernel_prolong       4 0.0 7.4023e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f17fe34c90_wrap_pyop2_kernel_prolong       4 0.0 7.3718e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f17f607750_wrap_pyop2_kernel_prolong       4 0.0 6.0905e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c481867950_wrap_pyop2_kernel_prolong       4 0.0 7.4069e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c4818642d0_wrap_pyop2_kernel_prolong       4 0.0 6.0240e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152915e0bdd0_wrap_pyop2_kernel_prolong       4 0.0 7.4006e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152915e08190_wrap_pyop2_kernel_prolong       4 0.0 6.1559e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1465c43da450_wrap_pyop2_kernel_prolong       4 0.0 7.3711e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1465c417a2d0_wrap_pyop2_kernel_prolong       4 0.0 6.1898e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15378762f590_wrap_pyop2_kernel_prolong       4 0.0 7.3836e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15378792fe90_wrap_pyop2_kernel_prolong       4 0.0 5.4069e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a9b7d4e950_wrap_pyop2_kernel_prolong       4 0.0 7.3742e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a9b7ec5750_wrap_pyop2_kernel_prolong       4 0.0 7.3451e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145f40314210_wrap_pyop2_kernel_prolong       4 0.0 7.3610e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145f40314cd0_wrap_pyop2_kernel_prolong       4 0.0 5.2019e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e6d82f3550_wrap_pyop2_kernel_prolong       4 0.0 7.3703e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e6d82f0250_wrap_pyop2_kernel_prolong       4 0.0 5.6247e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154a60891b90_wrap_pyop2_kernel_prolong       4 0.0 7.3657e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154a5bec6150_wrap_pyop2_kernel_prolong       4 0.0 5.8227e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1454fca03290_wrap_pyop2_kernel_prolong       4 0.0 7.3746e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1454fcc5f990_wrap_pyop2_kernel_prolong       4 0.0 6.7089e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff6c2ef8d0_wrap_pyop2_kernel_prolong       4 0.0 7.3784e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff6c2ed6d0_wrap_pyop2_kernel_prolong       4 0.0 5.7608e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150c710c0e10_wrap_pyop2_kernel_prolong       4 0.0 7.4111e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150c719c9150_wrap_pyop2_kernel_prolong       4 0.0 6.6081e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1465589e4ed0_wrap_pyop2_kernel_prolong       4 0.0 7.4014e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146558a09f90_wrap_pyop2_kernel_prolong       4 0.0 7.0903e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da8d296110_wrap_pyop2_kernel_prolong       4 0.0 7.3902e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da8ca08310_wrap_pyop2_kernel_prolong       4 0.0 6.2932e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1476f65e11d0_wrap_pyop2_kernel_prolong       4 0.0 7.3752e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1476f6651b10_wrap_pyop2_kernel_prolong       4 0.0 5.6608e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f33fdc2290_wrap_pyop2_kernel_prolong       4 0.0 7.3964e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f33fdc1410_wrap_pyop2_kernel_prolong       4 0.0 6.9230e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a458242610_wrap_pyop2_kernel_prolong       4 0.0 7.3697e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a458240ed0_wrap_pyop2_kernel_prolong       4 0.0 5.3191e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b56e0f710_wrap_pyop2_kernel_prolong       4 0.0 7.3897e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b56e50b90_wrap_pyop2_kernel_prolong       4 0.0 6.9422e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1473bb2d5cd0_wrap_pyop2_kernel_prolong       4 0.0 7.4119e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1473bb2cdc10_wrap_pyop2_kernel_prolong       4 0.0 7.0537e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1520727c3810_wrap_pyop2_kernel_prolong       4 0.0 7.4122e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1520727c2750_wrap_pyop2_kernel_prolong       4 0.0 6.0687e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149079a1cd10_wrap_pyop2_kernel_prolong       4 0.0 7.4148e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1490797fff50_wrap_pyop2_kernel_prolong       4 0.0 6.3311e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1459c4a3a4d0_wrap_pyop2_kernel_prolong       4 0.0 7.4333e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1459c4a31d50_wrap_pyop2_kernel_prolong       4 0.0 6.6899e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152af23d3150_wrap_pyop2_kernel_prolong       4 0.0 7.4297e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152af18c1810_wrap_pyop2_kernel_prolong       4 0.0 6.6733e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15364b14b690_wrap_pyop2_kernel_prolong       4 0.0 7.4184e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15364b1c86d0_wrap_pyop2_kernel_prolong       4 0.0 6.4159e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150e0d0a3a10_wrap_pyop2_kernel_prolong       4 0.0 7.4230e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150e0dd68cd0_wrap_pyop2_kernel_prolong       4 0.0 6.4104e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f312c8b90_wrap_pyop2_kernel_prolong       4 0.0 7.4092e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f312cb9d0_wrap_pyop2_kernel_prolong       4 0.0 7.3697e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14575eeb3490_wrap_pyop2_kernel_prolong       4 0.0 7.5976e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14575ee88890_wrap_pyop2_kernel_prolong       4 0.0 5.2776e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c206c69f10_wrap_pyop2_kernel_prolong       4 0.0 7.5532e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c206c37510_wrap_pyop2_kernel_prolong       4 0.0 5.4240e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145fe4e9c2d0_wrap_pyop2_kernel_prolong       4 0.0 7.5194e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145fe4eac150_wrap_pyop2_kernel_prolong       4 0.0 5.4004e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f8d0b77f10_wrap_pyop2_kernel_prolong       4 0.0 7.5452e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f8d0bbe250_wrap_pyop2_kernel_prolong       4 0.0 6.2772e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ae97185690_wrap_pyop2_kernel_prolong       4 0.0 7.5059e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ae97440a10_wrap_pyop2_kernel_prolong       4 0.0 6.2016e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1486925ab910_wrap_pyop2_kernel_prolong       4 0.0 7.5175e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1486925a8210_wrap_pyop2_kernel_prolong       4 0.0 7.4039e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b520bbed90_wrap_pyop2_kernel_prolong       4 0.0 7.5119e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b520bf1790_wrap_pyop2_kernel_prolong       4 0.0 5.6034e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14603e2dd850_wrap_pyop2_kernel_prolong       4 0.0 7.4789e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14603e0d2bd0_wrap_pyop2_kernel_prolong       4 0.0 6.0147e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14615eb265d0_wrap_pyop2_kernel_prolong       4 0.0 7.4962e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14615eaebed0_wrap_pyop2_kernel_prolong       4 0.0 5.8261e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1521d130d4d0_wrap_pyop2_kernel_prolong       4 0.0 7.5029e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1521d130eb50_wrap_pyop2_kernel_prolong       4 0.0 5.9411e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c4d722510_wrap_pyop2_kernel_prolong       4 0.0 7.5428e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c4d721510_wrap_pyop2_kernel_prolong       4 0.0 6.3665e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1517d40d32d0_wrap_pyop2_kernel_prolong       4 0.0 7.5210e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1517d4880c90_wrap_pyop2_kernel_prolong       4 0.0 6.6965e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f46243b8d0_wrap_pyop2_kernel_prolong       4 0.0 7.5130e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f462439010_wrap_pyop2_kernel_prolong       4 0.0 6.6814e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dce30d99d0_wrap_pyop2_kernel_prolong       4 0.0 7.4735e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dce30d2950_wrap_pyop2_kernel_prolong       4 0.0 4.8006e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f68424e810_wrap_pyop2_kernel_prolong       4 0.0 7.5224e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f6840d3ed0_wrap_pyop2_kernel_prolong       4 0.0 5.8927e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148711375610_wrap_pyop2_kernel_prolong       4 0.0 7.4951e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1487113770d0_wrap_pyop2_kernel_prolong       4 0.0 6.5639e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ca034c350_wrap_pyop2_kernel_prolong       4 0.0 7.4767e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ca05962d0_wrap_pyop2_kernel_prolong       4 0.0 5.6190e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a074cdb90_wrap_pyop2_kernel_prolong       4 0.0 7.4773e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a06bd5b90_wrap_pyop2_kernel_prolong       4 0.0 5.8071e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ec72d23410_wrap_pyop2_kernel_prolong       4 0.0 7.4984e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ec72cda210_wrap_pyop2_kernel_prolong       4 0.0 6.3991e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146ff3f5b290_wrap_pyop2_kernel_prolong       4 0.0 7.4729e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146ff81b7110_wrap_pyop2_kernel_prolong       4 0.0 5.3595e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e05f98310_wrap_pyop2_kernel_prolong       4 0.0 7.4726e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e05e387d0_wrap_pyop2_kernel_prolong       4 0.0 4.9308e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1502d947a990_wrap_pyop2_kernel_prolong       4 0.0 7.4901e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1502d947b2d0_wrap_pyop2_kernel_prolong       4 0.0 5.9848e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f0197e210_wrap_pyop2_kernel_prolong       4 0.0 7.4760e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f019a0690_wrap_pyop2_kernel_prolong       4 0.0 5.6735e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1463a0868c50_wrap_pyop2_kernel_prolong       4 0.0 7.4781e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1463a09c2f50_wrap_pyop2_kernel_prolong       4 0.0 6.8207e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b925c31990_wrap_pyop2_kernel_prolong       4 0.0 7.4735e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b925a76850_wrap_pyop2_kernel_prolong       4 0.0 5.4730e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d243baf990_wrap_pyop2_kernel_prolong       4 0.0 7.4793e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d243bae550_wrap_pyop2_kernel_prolong       4 0.0 7.1042e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd771e2110_wrap_pyop2_kernel_prolong       4 0.0 7.4784e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd773edd10_wrap_pyop2_kernel_prolong       4 0.0 5.2971e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ba74b3d450_wrap_pyop2_kernel_prolong       4 0.0 7.4763e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ba7418cc50_wrap_pyop2_kernel_prolong       4 0.0 5.8075e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1530c863f510_wrap_pyop2_kernel_prolong       4 0.0 7.4784e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1530c8631dd0_wrap_pyop2_kernel_prolong       4 0.0 6.7144e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d420a7190_wrap_pyop2_kernel_prolong       4 0.0 7.4760e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d420a52d0_wrap_pyop2_kernel_prolong       4 0.0 5.6453e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151eeb3cc150_wrap_pyop2_kernel_prolong       4 0.0 7.4776e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151eeb3cf050_wrap_pyop2_kernel_prolong       4 0.0 6.5476e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c8b3951590_wrap_pyop2_kernel_prolong       4 0.0 7.4801e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c8b3809690_wrap_pyop2_kernel_prolong       4 0.0 6.5886e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de93eef810_wrap_pyop2_kernel_prolong       4 0.0 7.4744e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de9363a510_wrap_pyop2_kernel_prolong       4 0.0 5.2457e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150023618f50_wrap_pyop2_kernel_prolong       4 0.0 7.4786e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150023809550_wrap_pyop2_kernel_prolong       4 0.0 6.6105e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f424dce710_wrap_pyop2_kernel_prolong       4 0.0 7.5137e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f424dce650_wrap_pyop2_kernel_prolong       4 0.0 5.5229e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf886c3fd0_wrap_pyop2_kernel_prolong       4 0.0 7.5420e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf880ae890_wrap_pyop2_kernel_prolong       4 0.0 6.0756e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b4408030d0_wrap_pyop2_kernel_prolong       4 0.0 7.5047e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b440801dd0_wrap_pyop2_kernel_prolong       4 0.0 6.8529e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c05a1dfbd0_wrap_pyop2_kernel_prolong       4 0.0 7.4771e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c05391fcd0_wrap_pyop2_kernel_prolong       4 0.0 6.1791e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148936b19b50_wrap_pyop2_kernel_prolong       4 0.0 7.4782e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148936af8450_wrap_pyop2_kernel_prolong       4 0.0 6.4804e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1454f8231810_wrap_pyop2_kernel_prolong       4 0.0 7.4787e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1454f8130a10_wrap_pyop2_kernel_prolong       4 0.0 6.0521e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15463f243790_wrap_pyop2_kernel_prolong       4 0.0 7.5143e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15463f2b5a90_wrap_pyop2_kernel_prolong       4 0.0 6.4568e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15037d10dd10_wrap_pyop2_kernel_prolong       4 0.0 7.5351e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15037d10cc10_wrap_pyop2_kernel_prolong       4 0.0 5.7609e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a3d34ce650_wrap_pyop2_kernel_prolong       4 0.0 7.5306e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a3d2b067d0_wrap_pyop2_kernel_prolong       4 0.0 5.9578e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1542538af5d0_wrap_pyop2_kernel_prolong       4 0.0 7.5329e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1542538ae290_wrap_pyop2_kernel_prolong       4 0.0 6.3604e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1550605c18d0_wrap_pyop2_kernel_prolong       4 0.0 7.4987e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15505b739d90_wrap_pyop2_kernel_prolong       4 0.0 7.1113e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149649030d90_wrap_pyop2_kernel_prolong       4 0.0 7.5068e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149649025a10_wrap_pyop2_kernel_prolong       4 0.0 5.9649e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1743a3010_wrap_pyop2_kernel_prolong       4 0.0 7.4814e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1743b48d0_wrap_pyop2_kernel_prolong       4 0.0 6.3955e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a497e99610_wrap_pyop2_kernel_prolong       4 0.0 7.5261e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a497e89450_wrap_pyop2_kernel_prolong       4 0.0 5.9272e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df234427d0_wrap_pyop2_kernel_prolong       4 0.0 7.4874e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df23442190_wrap_pyop2_kernel_prolong       4 0.0 5.9786e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14704bb36d90_wrap_pyop2_kernel_prolong       4 0.0 7.4796e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14704bd8e4d0_wrap_pyop2_kernel_prolong       4 0.0 7.3868e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146506046550_wrap_pyop2_kernel_prolong       4 0.0 7.4793e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146506a45890_wrap_pyop2_kernel_prolong       4 0.0 6.8959e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b7164b5d0_wrap_pyop2_kernel_prolong       4 0.0 7.4821e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b71649250_wrap_pyop2_kernel_prolong       4 0.0 7.1066e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fbf07cf3d0_wrap_pyop2_kernel_prolong       4 0.0 7.4766e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fbf07cf350_wrap_pyop2_kernel_prolong       4 0.0 5.6342e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d7b70eb610_wrap_pyop2_kernel_prolong       4 0.0 7.5340e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d7b70d0450_wrap_pyop2_kernel_prolong       4 0.0 6.2650e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14718be09510_wrap_pyop2_kernel_prolong       4 0.0 7.4994e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14718b541c90_wrap_pyop2_kernel_prolong       4 0.0 6.6783e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152a7976e8d0_wrap_pyop2_kernel_prolong       4 0.0 7.5672e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152a78e16a50_wrap_pyop2_kernel_prolong       4 0.0 5.7002e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1505bb0e2cd0_wrap_pyop2_kernel_prolong       4 0.0 7.5051e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1505b9da28d0_wrap_pyop2_kernel_prolong       4 0.0 6.0390e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15450347f5d0_wrap_pyop2_kernel_prolong       4 0.0 7.6000e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15450347f850_wrap_pyop2_kernel_prolong       4 0.0 5.3124e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15340d7aa250_wrap_pyop2_kernel_prolong       4 0.0 7.5896e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15340cdae210_wrap_pyop2_kernel_prolong       4 0.0 4.6809e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e8a11a3010_wrap_pyop2_kernel_prolong       4 0.0 7.5615e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e8a1199950_wrap_pyop2_kernel_prolong       4 0.0 5.6018e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14823c2301d0_wrap_pyop2_kernel_prolong       4 0.0 7.5833e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148237946750_wrap_pyop2_kernel_prolong       4 0.0 6.3874e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155012bc4a50_wrap_pyop2_kernel_prolong       4 0.0 7.5493e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155012bc3810_wrap_pyop2_kernel_prolong       4 0.0 6.1338e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153fb091eb10_wrap_pyop2_kernel_prolong       4 0.0 7.6007e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153fb0a1c450_wrap_pyop2_kernel_prolong       4 0.0 7.0986e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d10893f7d0_wrap_pyop2_kernel_prolong       4 0.0 7.5720e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d10893f1d0_wrap_pyop2_kernel_prolong       4 0.0 5.7728e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1485a897b6d0_wrap_pyop2_kernel_prolong       4 0.0 7.5843e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1485a8952710_wrap_pyop2_kernel_prolong       4 0.0 7.1681e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1461d88dd2d0_wrap_pyop2_kernel_prolong       4 0.0 7.5462e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1461d8892410_wrap_pyop2_kernel_prolong       4 0.0 6.0142e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152847ebfcd0_wrap_pyop2_kernel_prolong       4 0.0 7.5550e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152847ef09d0_wrap_pyop2_kernel_prolong       4 0.0 5.7350e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15506298c150_wrap_pyop2_kernel_prolong       4 0.0 7.6000e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15506299f690_wrap_pyop2_kernel_prolong       4 0.0 6.9406e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d413a3c50_wrap_pyop2_kernel_prolong       4 0.0 7.4860e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d401178d0_wrap_pyop2_kernel_prolong       4 0.0 6.6865e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493a902c410_wrap_pyop2_kernel_prolong       4 0.0 7.5837e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493a8e8c490_wrap_pyop2_kernel_prolong       4 0.0 6.1770e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493017310d0_wrap_pyop2_kernel_prolong       4 0.0 7.5984e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149301733ad0_wrap_pyop2_kernel_prolong       4 0.0 7.4108e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1506fcb6ebd0_wrap_pyop2_kernel_prolong       4 0.0 7.5460e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1506fcb1d110_wrap_pyop2_kernel_prolong       4 0.0 4.9182e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154fc59da6d0_wrap_pyop2_kernel_prolong       4 0.0 7.5966e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154fc59d9e10_wrap_pyop2_kernel_prolong       4 0.0 6.0354e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1523b95ca5d0_wrap_pyop2_kernel_prolong       4 0.0 7.5391e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1523b9601050_wrap_pyop2_kernel_prolong       4 0.0 6.4340e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f0de5730d0_wrap_pyop2_kernel_prolong       4 0.0 7.5861e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f0de570050_wrap_pyop2_kernel_prolong       4 0.0 5.4851e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15111d51b0d0_wrap_pyop2_kernel_prolong       4 0.0 7.5748e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15111d523b10_wrap_pyop2_kernel_prolong       4 0.0 7.0468e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153d685ad610_wrap_pyop2_kernel_prolong       4 0.0 7.4881e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153d685a9f10_wrap_pyop2_kernel_prolong       4 0.0 6.3754e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f9dc79a450_wrap_pyop2_kernel_prolong       4 0.0 7.5738e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f9dc0dd9d0_wrap_pyop2_kernel_prolong       4 0.0 7.6415e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c4b429af50_wrap_pyop2_kernel_prolong       4 0.0 7.4770e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c4b43ed010_wrap_pyop2_kernel_prolong       4 0.0 6.0370e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ea3c687310_wrap_pyop2_kernel_prolong       4 0.0 7.4711e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ea3c12d7d0_wrap_pyop2_kernel_prolong       4 0.0 5.2272e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1462d3ecb950_wrap_pyop2_kernel_prolong       4 0.0 7.5874e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1462d3ec8d50_wrap_pyop2_kernel_prolong       4 0.0 5.7821e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ada6b7ec50_wrap_pyop2_kernel_prolong       4 0.0 7.5953e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ada6ba5d90_wrap_pyop2_kernel_prolong       4 0.0 5.4422e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1463472ce290_wrap_pyop2_kernel_prolong       4 0.0 7.5031e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1463472cd9d0_wrap_pyop2_kernel_prolong       4 0.0 6.2304e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455390d9610_wrap_pyop2_kernel_prolong       4 0.0 7.4841e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145539067bd0_wrap_pyop2_kernel_prolong       4 0.0 7.0632e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148401ed7310_wrap_pyop2_kernel_prolong       4 0.0 7.5772e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148401ecf210_wrap_pyop2_kernel_prolong       4 0.0 5.5837e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151241fa69d0_wrap_pyop2_kernel_prolong       4 0.0 7.5580e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1512420fd890_wrap_pyop2_kernel_prolong       4 0.0 6.4213e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1518db418e10_wrap_pyop2_kernel_prolong       4 0.0 7.5515e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1518db59ef50_wrap_pyop2_kernel_prolong       4 0.0 6.6335e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153d629a2690_wrap_pyop2_kernel_prolong       4 0.0 7.4861e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153d6204f2d0_wrap_pyop2_kernel_prolong       4 0.0 6.4361e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1495880b1110_wrap_pyop2_kernel_prolong       4 0.0 7.5764e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1495880b1010_wrap_pyop2_kernel_prolong       4 0.0 7.3954e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f473bd1850_wrap_pyop2_kernel_prolong       4 0.0 7.5609e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f47322a510_wrap_pyop2_kernel_prolong       4 0.0 6.2051e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145afc99f450_wrap_pyop2_kernel_prolong       4 0.0 7.5529e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145afc99c9d0_wrap_pyop2_kernel_prolong       4 0.0 7.5634e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15305812bc90_wrap_pyop2_kernel_prolong       4 0.0 7.5822e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1530583e1c90_wrap_pyop2_kernel_prolong       4 0.0 5.6463e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b87f43990_wrap_pyop2_kernel_prolong       4 0.0 7.5245e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b87f40750_wrap_pyop2_kernel_prolong       4 0.0 5.6908e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1471ce455e90_wrap_pyop2_kernel_prolong       4 0.0 7.5338e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1471ce3f2450_wrap_pyop2_kernel_prolong       4 0.0 7.0937e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15165f948b90_wrap_pyop2_kernel_prolong       4 0.0 7.6032e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15165f943510_wrap_pyop2_kernel_prolong       4 0.0 6.5292e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145ccbed1390_wrap_pyop2_kernel_prolong       4 0.0 7.5365e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145ccbed1f50_wrap_pyop2_kernel_prolong       4 0.0 6.6379e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e108abb610_wrap_pyop2_kernel_prolong       4 0.0 7.5675e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e108ab9890_wrap_pyop2_kernel_prolong       4 0.0 6.6672e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148cf8aca450_wrap_pyop2_kernel_prolong       4 0.0 7.5719e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148cf8b1a6d0_wrap_pyop2_kernel_prolong       4 0.0 5.8929e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1549a3d87950_wrap_pyop2_kernel_prolong       4 0.0 7.5160e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1549a3e74290_wrap_pyop2_kernel_prolong       4 0.0 6.0145e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a715ceb650_wrap_pyop2_kernel_prolong       4 0.0 7.5286e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a715fff6d0_wrap_pyop2_kernel_prolong       4 0.0 7.0997e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154094599a90_wrap_pyop2_kernel_prolong       4 0.0 7.5591e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154072c0b590_wrap_pyop2_kernel_prolong       4 0.0 6.1599e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ec24516490_wrap_pyop2_kernel_prolong       4 0.0 7.5649e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ec24515dd0_wrap_pyop2_kernel_prolong       4 0.0 6.9388e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f2fbaaaad0_wrap_pyop2_kernel_prolong       4 0.0 7.5560e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f2fbaa9850_wrap_pyop2_kernel_prolong       4 0.0 7.0093e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15110f7b96d0_wrap_pyop2_kernel_prolong       4 0.0 7.5838e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151115294e90_wrap_pyop2_kernel_prolong       4 0.0 7.4134e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided        319 1.0 4.7065e-02 4.3 0.00e+00 0.0 4.2e+05 4.0e+00 3.2e+02  0  0  2  0  2   0  0  4  0  8    -0
SFSetGraph           319 1.0 1.3609e-02 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              319 1.0 6.7192e-02 2.2 0.00e+00 0.0 8.3e+05 2.1e+02 3.2e+02  0  0  4  0  2   0  0  9  0  8    -0
SFPack           1963850 1.1 2.1405e+00 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack         1963850 1.1 1.0497e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             6510 1.0 7.5157e+00 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   2  0  0  0  0    -0
VecSet             17359 1.0 9.3359e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecAYPX             8680 1.0 1.2188e+01 1.9 5.25e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  3  0  0  0 87560
VecScatterBegin  1963850 1.1 2.5223e+01 1.3 0.00e+00 0.0 7.6e+06 7.3e+04 0.0e+00  2  0 40 26  0   6  0 78 100  0    -0
VecScatterEnd    1963850 1.1 3.2817e+01 13.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
MatMult             4340 1.0 1.8641e+02 1.2 1.24e+11 1.1 4.7e+06 1.2e+05 0.0e+00 13  7 25 26  0  46 62 49 99  0 135044
MatMultAdd          2170 1.0 1.1266e+01 1.2 5.25e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  3  0  0  0 94729
MatMultTranspose    2170 1.0 8.5983e+00 2.0 5.25e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   2  3  0  0  0 124115
MatSolve          974330 1.1 1.6773e+02 1.5 6.37e+10 1.1 4.9e+06 5.9e+02 1.6e+03 10  4 26  0  8  36 31 51  1 42 74525
MatResidual         2170 1.0 1.0447e+02 1.3 6.29e+10 1.1 2.4e+06 1.2e+05 0.0e+00  7  4 13 13  0  24 31 25 50  0 122182
PCApply             6510 1.0 1.9949e+02 1.4 6.37e+10 1.1 4.9e+06 5.9e+02 1.6e+03 13  4 26  0  8  45 31 51  1 42 62662
PCApplyOnBlocks   972160 1.1 1.4972e+02 1.8 6.11e+10 1.1 0.0e+00 0.0e+00 0.0e+00  8  4  0  0  0  29 30  0  0  0 82966
KSPSolve            6510 1.0 2.9587e+02 1.3 1.30e+11 1.1 7.3e+06 3.8e+04 3.8e+03 20  8 39 13 19  71 64 75 50 100 87796
MGSmooth Level 0    2170 1.0 3.7524e+01 1.9 2.63e+09 29.8 4.9e+06 5.9e+02 3.8e+03  2  0 26  0 19   7  0 51  1 100  2083
MGSmooth Level 1    4340 1.0 2.7523e+02 1.3 1.28e+11 1.1 2.4e+06 1.2e+05 0.0e+00 18  8 13 13  0  63 63 25 50  0 94096
MGResid Level 1     2170 1.0 1.0448e+02 1.3 6.29e+10 1.1 2.4e+06 1.2e+05 0.0e+00  7  4 13 13  0  24 31 25 50  0 122171
MGInterp Level 1    4340 1.0 1.9067e+01 1.4 1.05e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   4  5  0  0  0 111937
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   145            145
              Viewer     3              3
           Index Set  3833           3833
   IS L to G Mapping   431            431
             Section   472            472
   Star Forest Graph   594            913
              Vector  2139           2139
              Matrix  1248           1248
      Preconditioner   230            230
       Krylov Solver   228            228
     DMKSP interface     1              1
                SNES     1              1
              DMSNES     1              1
      SNESLineSearch     1              1
    Distributed Mesh   110            110
            DM Label   333            333
          Quadrature   144            144
      Mesh Transform     2              2
    GraphPartitioner    41             41
     Discrete System   165            165
           Weak Form   165            165
        Linear Space    12             12
          Dual Space    52             52
            FE Space     8              8

--- Event Stage 1: MG Apply

           Index Set   638            638
   Star Forest Graph   319              0
              Vector   319            319
========================================================================================================================
Average time to get PetscTime(): 2.55e-08
Average time for MPI_Barrier(): 7.165e-06
Average time for zero size MPI_Send(): 2.45044e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murr_monthly3/vlumping_linesmooth/h2.profile # (source: code)
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

