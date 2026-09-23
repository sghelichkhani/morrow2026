****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0105.gadi.nci.org.au with 104 processes, by sg8812 on Thu Aug 27 13:10:22 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           7.005e+02     1.000   7.005e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                5.371e+11     1.189   5.081e+11  5.284e+13
Flops/sec:            7.667e+08     1.189   7.253e+08  7.543e+10
MPI Msg Count:        1.380e+05     3.499   9.923e+04  1.032e+07
MPI Msg Len (bytes):  8.473e+09     3.000   6.010e+04  6.202e+11
MPI Reductions:       2.578e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 7.0052e+02 100.0%  5.2842e+13 100.0%  1.032e+07 100.0%  6.010e+04      100.0%  2.576e+04  99.9%

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

BuildTwoSided        837 1.0 2.2962e+01 6.0 0.00e+00 0.0 8.6e+04 4.0e+00 8.4e+02  2  0  1  0  3   2  0  1  0  3    -0
BuildTwoSidedF       738 1.0 2.2733e+01 4.4 0.00e+00 0.0 9.9e+04 8.5e+05 7.4e+02  2  0  1 14  3   2  0  1 14  3    -0
SFSetGraph           106 1.0 1.0939e-02 4.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               99 1.0 9.5670e-01 20.3 0.00e+00 0.0 7.3e+04 1.7e+03 9.9e+01  0  0  1  0  0   0  0  1  0  0    -0
SFBcastBegin        2415 1.0 3.6414e-01 2.7 0.00e+00 0.0 1.2e+06 4.9e+04 0.0e+00  0  0 12 10  0   0  0 12 10  0    -0
SFBcastEnd          2415 1.0 1.1492e+01 19.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin       2105 1.0 2.3029e-01 8.1 0.00e+00 0.0 1.1e+06 4.7e+04 0.0e+00  0  0 11  8  0   0  0 11  8  0    -0
SFReduceEnd         2105 1.0 1.4015e+01 17.3 8.91e+07 3.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0   465
SFFetchOpBegin         6 1.0 2.5679e-05 3.6 0.00e+00 0.0 2.5e+03 7.3e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           6 1.0 3.4018e-04 8.3 0.00e+00 0.0 2.5e+03 7.3e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          4 1.0 6.3111e-04 1.2 0.00e+00 0.0 1.2e+03 1.2e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         49 1.0 4.6699e-03 1.3 0.00e+00 0.0 5.9e+04 8.2e+01 5.8e+01  0  0  1  0  0   0  0  1  0  0    -0
SFSectionSF           51 1.0 2.9933e-03 2.0 0.00e+00 0.0 2.9e+04 3.8e+01 5.1e+01  0  0  0  0  0   0  0  0  0  0    -0
SFRemoteOff            2 1.0 8.4681e-05 2.2 0.00e+00 0.0 1.1e+03 1.6e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack             19422 1.0 2.4757e+00 3.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           19428 1.0 3.6374e-01 10.5 8.91e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 17920
VecDot                61 1.0 2.3068e-01 5.2 5.27e+07 1.2 0.0e+00 0.0e+00 6.1e+01  0  0  0  0  0   0  0  0  0  0 22908
VecMDot            11463 1.0 3.3924e+01 3.1 1.34e+10 1.2 0.0e+00 0.0e+00 1.1e+04  3  3  0  0 44   3  3  0  0 44 39648
VecNorm            12632 1.0 1.3454e+01 4.2 2.18e+09 1.2 0.0e+00 0.0e+00 1.3e+04  1  0  0  0 49   1  0  0  0 49 16265
VecScale           12489 1.0 6.4912e-01 1.3 1.03e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 159010
VecCopy            11802 1.0 5.7186e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecSet              3748 1.0 1.2142e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY             2712 1.0 1.6503e+00 2.5 1.07e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 65285
VecAYPX             6744 1.0 5.6119e+00 1.8 2.73e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   1  1  0  0  0 48800
VecWAXPY              61 1.0 1.2762e-01 1.3 2.64e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 20704
VecMAXPY           12489 1.0 1.4903e+01 1.2 1.53e+10 1.2 0.0e+00 0.0e+00 0.0e+00  2  3  0  0  0   2  3  0  0  0 103003
VecReciprocal          2 1.0 2.6495e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecScatterBegin    14896 1.0 2.3676e+00 2.7 0.00e+00 0.0 7.8e+06 5.4e+04 0.0e+00  0  0 76 68  0   0  0 76 68  0    -0
VecScatterEnd      14896 1.0 4.5663e+01 26.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
VecReduceArith       122 1.0 9.9705e-02 1.9 1.05e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 106002
VecReduceComm         61 1.0 1.6352e-01 131.6 0.00e+00 0.0 0.0e+00 0.0e+00 6.1e+01  0  0  0  0  0   0  0  0  0  0    -0
VecNormalize       11585 1.0 1.1365e+01 4.1 1.92e+09 1.2 0.0e+00 0.0e+00 1.2e+04  1  0  0  0 45   1  0  0  0 45 16909
MatMult            15018 1.0 2.0313e+02 1.2 1.34e+11 1.2 7.9e+06 5.4e+04 4.0e+00 26 25 77 70  0  26 25 77 70  0 65657
MatMultAdd          1686 1.0 6.7880e+01 1.2 9.10e+08 1.2 8.8e+05 4.5e+04 4.0e+00  9  0  9  6  0   9  0  9  6  0  1345
MatMultTranspose    1688 1.0 7.6355e+01 1.1 8.29e+07 2.2 8.8e+05 4.5e+04 1.0e+01 10  0  9  6  0  10  0  9  6  0    85
MatSolve           14957 1.0 1.5303e+02 1.3 1.05e+11 1.2 0.0e+00 0.0e+00 0.0e+00 20 20  0  0  0  20 20  0  0  0 67835
MatLUFactorNum       183 1.0 1.3900e+01 1.4 2.16e+10 1.2 0.0e+00 0.0e+00 0.0e+00  2  4  0  0  0   2  4  0  0  0 150586
MatILUFactorSym        3 1.0 2.2673e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatResidual         1686 1.0 5.3463e+01 1.3 3.27e+10 1.2 8.8e+05 9.1e+04 0.0e+00  7  6  9 13  0   7  6  9 13  0 61184
MatAssemblyBegin     782 1.0 2.2744e+01 2.2 0.00e+00 0.0 9.9e+04 8.5e+05 7.4e+02  2  0  1 14  3   2  0  1 14  3    -0
MatAssemblyEnd       782 1.0 7.3378e+00 4.3 1.20e+08 0.0 3.1e+03 1.8e+04 1.8e+01  1  0  0  0  0   1  0  0  0  0   692
MatGetRowIJ            3 1.0 6.9690e-06 14.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         3 1.0 8.9667e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       183 1.0 3.0276e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetPreallCOO       32 1.0 5.8113e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       32 1.0 2.5616e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp               61 1.0 1.4128e+02 1.0 1.17e+11 1.2 1.0e+06 1.1e+05 3.1e+03 20 22 10 18 12  20 22 10 18 12 81123
PCSetUpOnBlocks     4215 1.0 5.1291e-01 1.4 9.45e+08 1.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 161647
PCApply              843 1.0 3.7065e+02 1.0 1.75e+11 1.2 8.5e+06 4.6e+04 2.0e+04 52 33 82 63 76  52 33 82 63 76 46876
PCApplyOnBlocks    14957 1.0 1.5319e+02 1.3 1.05e+11 1.2 0.0e+00 0.0e+00 0.0e+00 20 20  0  0  0  20 20  0  0  0 67767
KSPSetUp              61 1.0 2.1170e-02 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve              61 1.0 4.1924e+02 1.0 2.16e+11 1.2 8.9e+06 5.0e+04 2.1e+04 60 41 86 71 83  60 41 86 71 83 51227
KSPGMRESOrthog     11463 1.0 4.5262e+01 1.9 2.68e+10 1.2 0.0e+00 0.0e+00 1.1e+04  5  5  0  0 44   5  5  0  0 44 59432
DMCoarsen              2 1.0 3.4092e+00 1.0 4.86e+05 3.0 1.4e+04 3.9e+04 3.2e+01  0  0  0  0  0   0  0  0  0  0    10
DMRefine               2 1.0 2.2696e-01 1.0 2.09e+03 1.0 7.4e+03 3.5e+01 6.3e+01  0  0  0  0  0   0  0  0  0  0     1
DMCreateInterp         2 1.0 8.5305e-04 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMCreateInject         2 1.0 4.0575e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCreateGmsh       1 1.0 1.2330e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 4.9681e+00 373.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Partition         4 1.0 4.5503e-02 1.0 0.00e+00 0.0 1.8e+04 6.4e+01 5.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         4 1.0 1.1757e-02 1.0 0.00e+00 0.0 6.7e+04 7.4e+01 2.4e+02  0  0  1  0  1   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 1.2468e-03 587.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       4 1.0 8.0533e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        4 1.0 4.4345e-03 1.1 0.00e+00 0.0 3.6e+03 5.1e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       4 1.0 1.7968e-03 1.3 0.00e+00 0.0 1.8e+03 1.9e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          4 1.0 1.1047e-03 1.9 0.00e+00 0.0 1.9e+03 2.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          29 1.0 5.1162e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 4.9969e-02 1.0 0.00e+00 0.0 4.3e+03 1.8e+02 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        4 1.0 1.4895e-03 1.0 0.00e+00 0.0 1.1e+04 1.1e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       4 1.0 5.0322e-03 1.0 0.00e+00 0.0 3.5e+04 7.1e+01 1.5e+02  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistOvrlp        3 1.0 8.8115e-03 1.1 0.00e+00 0.0 8.3e+04 7.0e+01 2.4e+02  0  0  1  0  1   0  0  1  0  1    -0
DMPlexDistField        7 1.0 2.2186e-03 1.2 0.00e+00 0.0 1.5e+04 5.8e+01 2.0e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify        41 1.0 4.4576e-03 5.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      41 1.0 2.0425e-04 3.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          2 1.0 1.0631e-04 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          2 1.0 3.0550e-03 1.8 0.00e+00 0.0 4.1e+03 2.9e+01 1.9e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          2 1.0 1.1419e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          2 1.0 3.3936e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             2 1.0 3.1044e-04 1.9 0.00e+00 0.0 3.3e+03 2.7e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         2 1.0 9.1916e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         2 1.0 7.1150e-04 1.9 0.00e+00 0.0 8.2e+02 3.7e+01 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             21 1.0 6.3727e+02 1.0 5.37e+11 1.2 1.0e+07 6.1e+04 2.5e+04 91 100 98 100 97  91 100 98 100 97 82906
SNESSetUp              1 1.0 4.5549e-05 4.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval      82 1.0 1.6611e+01 1.1 7.95e+10 1.2 9.8e+04 1.2e+05 0.0e+00  2 15  1  2  0   2 15  1  2  0 462558
SNESJacobianEval      61 1.0 5.7040e+01 1.0 1.24e+11 1.2 6.4e+04 7.9e+05 2.4e+02  8 23  1  8  1   8 23  1  8  1 210271
SNESLineSearch        61 1.0 7.9841e+00 1.0 6.13e+10 1.2 9.6e+04 1.2e+05 2.4e+02  1 11  1  2  1   1 11  1  2  1 742946
DualSpaceSetUp         8 1.0 5.3498e-03 1.1 1.08e+02 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     2
FESetUp                8 1.0 1.9341e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 6.9791e+02 1.0 5.37e+11 1.2 1.0e+07 6.0e+04 2.6e+04 100 100 100 100 100 100 100 100 100 100 75714
firedrake.__init__       1 1.0 1.1688e+01 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateMesh             3 1.0 5.0661e+00 45.7 0.00e+00 0.0 1.6e+05 7.5e+01 4.4e+02  0  0  2  0  2   0  0  2  0  2    -0
firedrake.mesh._from_gmsh       1 1.0 4.9688e+00 372.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       3 1.0 1.2400e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       3 1.0 6.3980e-06 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        3 1.0 4.3642e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          3 1.0 8.6256e-04 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      15 1.0 3.0073e-02 1.1 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      19 1.0 1.6243e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      29 1.0 3.1205e-02 1.1 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      26 1.0 2.7920e-02 1.1 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      26 1.0 2.7775e-02 1.1 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      52 1.0 1.2587e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       6 1.0 4.5909e-03 1.2 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__      12 1.0 7.3384e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      22 1.0 2.3319e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__     105 1.0 2.1720e-02 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          3 1.0 1.7515e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       3 1.0 2.3455e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       4 1.0 6.0259e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       6 1.0 1.5943e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       3 1.0 1.7450e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map    1062 1.0 1.2675e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      4831 1.0 2.2132e+02 1.1 2.44e+11 1.2 1.2e+06 5.0e+04 4.0e+01 30 44 11 10  0  30 44 11 10  0 105831
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       6 1.0 1.7023e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    9662 1.0 4.2211e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  6  0  0  0  0   6  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      23 1.0 2.1259e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   3  0  0  0  0    -0
GlobalKernel: generate loopy      23 0.0 2.0096e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      23 0.0 1.4378e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      23 1.0 2.0547e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   3  0  0  0  0    -0
pyop2.compilation.load      23 1.0 2.0545e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   3  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      23 1.0 1.3519e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.make_so      23 1.0 1.3284e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
ParLoopRednBegin    4831 1.0 8.1530e-02 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      4831 1.0 1.7793e-02 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       3 1.0 9.6126e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong    1690 1.0 7.1409e+01 1.2 1.46e+07 1.2 8.9e+05 4.5e+04 1.3e+01  9  0  9  6  0   9  0  9  6  0    20
firedrake.interpolation.interpolate      14 1.0 6.2685e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      14 1.0 6.0205e+00 1.0 1.02e+08 1.2 1.2e+04 4.6e+04 2.1e+01  1  0  0  0  0   1  0  0  0  0  1702
firedrake.formmanipulation.split_form      17 1.0 4.8847e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      17 1.0 3.1530e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      15 1.0 5.7425e-01 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       6 1.0 2.6459e-01 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin    2144 1.0 1.8026e+00 6.3 0.00e+00 0.0 1.1e+06 5.4e+04 4.0e+00  0  0 11 10  0   0  0 11 10  0    -0
Parloop_Cells_wrap_expression_kernel      28 1.0 5.5344e+00 1.0 1.02e+08 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0  1851
firedrake.halo.Halo.global_to_local_end    2144 1.0 1.0216e+01 22.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       3 1.0 1.7014e+00 8.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14740de69290_wrap_pyop2_kernel_prolong       4 0.0 7.6807e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14740dc601d0_wrap_pyop2_kernel_prolong       4 0.0 5.5407e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 3.9819e+00 1.0 7.30e+07 1.2 8.1e+03 6.1e+04 1.1e+01  1  0  0  0  0   1  0  0  0  0  1838
firedrake.function.Function.assign     392 1.0 6.4613e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      97 1.0 5.6013e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       4 1.0 2.7909e-04 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      46 1.0 5.5063e-04 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       5 1.0 8.8023e-05 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       3 1.0 2.4533e-01 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       4 1.0 4.2162e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       3 1.0 2.3863e-01 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 7.3437e+00 1.0 0.00e+00 0.0 3.2e+03 4.9e+05 2.3e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       3 1.0 1.8040e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       5 1.0 4.2699e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       5 1.0 8.3813e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       5 1.0 8.3813e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateSparsity         3 1.0 5.5863e+00 1.2 0.00e+00 0.0 4.9e+03 2.7e+05 2.4e+01  1  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         3 1.0 7.5270e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      21 1.0 6.3735e+02 1.0 5.37e+11 1.2 1.0e+07 6.1e+04 2.5e+04 91 100 98 100 97  91 100 98 100 97 82895
firedrake.mesh.AbstractMeshTopology.measure_set      17 1.0 4.0208e-01 636.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       9 1.0 1.8739e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set      13 1.0 4.0200e-01 721.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       4 1.0 4.0195e-01 795.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     164 1.0 3.5906e+00 1.2 2.01e+10 1.2 0.0e+00 0.0e+00 0.0e+00  0  4  0  0  0   0  4  0  0  0 562364
Parloop_Cells_wrap_form0_exterior_facet_top_integral     164 1.0 9.7543e-01 1.0 2.62e+06 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   269
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral     164 1.0 1.2031e+00 1.0 1.94e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2844
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     164 1.0 2.8513e+00 1.1 1.93e+10 1.2 0.0e+00 0.0e+00 0.0e+00  0  4  0  0  0   0  4  0  0  0 680156
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     164 1.0 5.1473e+00 1.2 4.00e+10 1.3 0.0e+00 0.0e+00 0.0e+00  1  7  0  0  0   1  7  0  0  0 722864
firedrake.halo.Halo.local_to_global_begin    2064 1.0 3.1944e-01 3.4 0.00e+00 0.0 1.1e+06 4.8e+04 2.0e+00  0  0 11  8  0   0  0 11  8  0    -0
firedrake.halo.Halo.local_to_global_end    2064 1.0 1.4028e+01 17.0 8.91e+07 3.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0   465
Parloop_Cells_wrap_form00_cell_integral     366 1.0 1.4957e+01 1.3 3.67e+10 1.2 0.0e+00 0.0e+00 0.0e+00  2  7  0  0  0   2  7  0  0  0 245966
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     366 1.0 1.5006e+00 1.4 2.57e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  3022
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     366 1.0 1.7575e+01 1.2 4.85e+10 1.2 0.0e+00 0.0e+00 0.0e+00  2  9  0  0  0   2  9  0  0  0 276935
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     366 1.0 3.6835e+01 1.3 7.90e+10 1.4 0.0e+00 0.0e+00 0.0e+00  5 14  0  0  0   5 14  0  0  0 194737
firedrake.dmhooks.coarsen       2 1.0 3.4076e+00 1.0 4.86e+05 3.0 1.4e+04 3.9e+04 3.2e+01  0  0  0  0  0   0  0  0  0  0    10
firedrake.dmhooks.get_function_space       2 1.0 1.2524e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.embedded.TransferManager.op    2676 1.0 7.4529e+01 1.2 1.19e+07 3.0 1.2e+06 4.8e+04 2.4e+01 10  0 11  9  0  10  0 11  9  0    12
firedrake.mg.interface.inject     336 1.0 7.9354e+00 1.0 1.19e+07 3.0 2.7e+05 5.8e+04 2.0e+00  1  0  3  3  0   1  0  3  3  0   110
firedrake.ufl_expr.TrialFunction       1 1.0 1.2602e-04 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.slate.slac.compiler.compile_expression       1 1.0 2.8096e-01 5.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_pyop2_kernel_injection_dg     588 1.0 6.7936e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
Log_Event_slate_wrapper 3307500 1.2 2.6615e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Log_Event_inits_slate_wrapper 3307500 1.2 1.7405e-01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
solve_memcpy     3307500 1.2 1.7109e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
solve_getrf      3307500 1.2 7.3992e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
solve_getrs      3307500 1.2 4.5362e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.restrict    1688 1.0 7.4734e+01 1.1 8.29e+07 2.2 8.8e+05 4.5e+04 6.0e+00 10  0  9  6  0  10  0  9  6  0    86
firedrake.cofunction.Cofunction.assign    1688 1.0 5.6383e-01 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1473e3e17150_wrap_pyop2_kernel_restrict    1688 0.0 5.2166e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1473e0da5dd0_wrap_pyop2_kernel_restrict    1688 0.0 1.1888e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1473e0da5dd0_wrap_pyop2_kernel_prolong    1686 0.0 1.1925e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1473e3e17150_wrap_pyop2_kernel_prolong    1686 0.0 4.4088e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.assign      21 1.0 1.9979e-03 4.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c4ab8d1c50_wrap_pyop2_kernel_prolong       4 0.0 7.6801e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c4ab8d0110_wrap_pyop2_kernel_prolong       4 0.0 5.1754e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c49ca233d0_wrap_pyop2_kernel_restrict    1688 0.0 5.1082e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c4996526d0_wrap_pyop2_kernel_restrict    1688 0.0 1.1872e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c4996526d0_wrap_pyop2_kernel_prolong    1686 0.0 1.2062e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c49ca233d0_wrap_pyop2_kernel_prolong    1686 0.0 4.3759e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa6bf6d6d0_wrap_pyop2_kernel_prolong       4 0.0 7.6701e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa6bee4110_wrap_pyop2_kernel_prolong       4 0.0 6.5564e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa6be39a50_wrap_pyop2_kernel_restrict    1688 0.0 5.1839e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa5af03010_wrap_pyop2_kernel_restrict    1688 0.0 1.1795e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa5af03010_wrap_pyop2_kernel_prolong    1686 0.0 1.2068e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa6be39a50_wrap_pyop2_kernel_prolong    1686 0.0 4.4013e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146ccc5e44d0_wrap_pyop2_kernel_prolong       4 0.0 7.6822e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146cccf8e2d0_wrap_pyop2_kernel_prolong       4 0.0 6.6216e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146cb9c496d0_wrap_pyop2_kernel_restrict    1688 0.0 5.2167e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146cb7b8b7d0_wrap_pyop2_kernel_restrict    1688 0.0 1.1887e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146cb7b8b7d0_wrap_pyop2_kernel_prolong    1686 0.0 1.1786e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146cb9c496d0_wrap_pyop2_kernel_prolong    1686 0.0 4.3800e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14618ec67c10_wrap_pyop2_kernel_prolong       4 0.0 7.6719e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14618eea1690_wrap_pyop2_kernel_prolong       4 0.0 6.7101e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14618ef758d0_wrap_pyop2_kernel_restrict    1688 0.0 5.2241e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14617abb96d0_wrap_pyop2_kernel_restrict    1688 0.0 1.1884e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14617abb96d0_wrap_pyop2_kernel_prolong    1686 0.0 1.1775e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14618ef758d0_wrap_pyop2_kernel_prolong    1686 0.0 4.3790e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e7191fdd0_wrap_pyop2_kernel_prolong       4 0.0 7.6821e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e71b8ebd0_wrap_pyop2_kernel_prolong       4 0.0 7.2973e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e71c42b90_wrap_pyop2_kernel_restrict    1688 0.0 4.9326e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e561c9810_wrap_pyop2_kernel_restrict    1688 0.0 1.1115e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e561c9810_wrap_pyop2_kernel_prolong    1686 0.0 1.1079e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e71c42b90_wrap_pyop2_kernel_prolong    1686 0.0 4.0977e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1528cf520610_wrap_pyop2_kernel_prolong       4 0.0 7.6841e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1528cf3ff7d0_wrap_pyop2_kernel_prolong       4 0.0 6.0847e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1528cf1f15d0_wrap_pyop2_kernel_restrict    1688 0.0 4.6564e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1528be582810_wrap_pyop2_kernel_restrict    1688 0.0 1.1025e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1528be582810_wrap_pyop2_kernel_prolong    1686 0.0 1.1523e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1528cf1f15d0_wrap_pyop2_kernel_prolong    1686 0.0 4.1089e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fbb34a25d0_wrap_pyop2_kernel_prolong       4 0.0 7.6642e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fbb34a1f10_wrap_pyop2_kernel_prolong       4 0.0 5.0475e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fbb33e71d0_wrap_pyop2_kernel_restrict    1688 0.0 4.8899e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fba15ab850_wrap_pyop2_kernel_restrict    1688 0.0 1.1033e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fba15ab850_wrap_pyop2_kernel_prolong    1686 0.0 1.1462e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fbb33e71d0_wrap_pyop2_kernel_prolong    1686 0.0 4.0899e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd9364ac10_wrap_pyop2_kernel_prolong       4 0.0 7.6755e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd935e4fd0_wrap_pyop2_kernel_prolong       4 0.0 6.7232e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd93f54d50_wrap_pyop2_kernel_restrict    1688 0.0 5.2239e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd828e1e90_wrap_pyop2_kernel_restrict    1688 0.0 1.1891e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd828e1e90_wrap_pyop2_kernel_prolong    1686 0.0 1.2148e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd93f54d50_wrap_pyop2_kernel_prolong    1686 0.0 4.3806e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151c276d7290_wrap_pyop2_kernel_prolong       4 0.0 7.6670e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151c275f53d0_wrap_pyop2_kernel_prolong       4 0.0 5.0556e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151c18b56950_wrap_pyop2_kernel_restrict    1688 0.0 4.7178e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151c15527850_wrap_pyop2_kernel_restrict    1688 0.0 1.1029e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151c15527850_wrap_pyop2_kernel_prolong    1686 0.0 1.2581e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151c18b56950_wrap_pyop2_kernel_prolong    1686 0.0 4.0891e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153856820c10_wrap_pyop2_kernel_prolong       4 0.0 7.6833e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153855ea7c10_wrap_pyop2_kernel_prolong       4 0.0 7.5647e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1538430cfa50_wrap_pyop2_kernel_restrict    1688 0.0 4.9039e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1538409cc2d0_wrap_pyop2_kernel_restrict    1688 0.0 1.1060e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1538409cc2d0_wrap_pyop2_kernel_prolong    1686 0.0 1.1609e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1538430cfa50_wrap_pyop2_kernel_prolong    1686 0.0 4.0957e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c05fa8bc50_wrap_pyop2_kernel_prolong       4 0.0 7.6834e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c05fa2d810_wrap_pyop2_kernel_prolong       4 0.0 6.6415e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c05f944f10_wrap_pyop2_kernel_restrict    1688 0.0 5.5562e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c04ee301d0_wrap_pyop2_kernel_restrict    1688 0.0 1.1879e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c04ee301d0_wrap_pyop2_kernel_prolong    1686 0.0 1.2256e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c05f944f10_wrap_pyop2_kernel_prolong    1686 0.0 4.3765e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1542918d2190_wrap_pyop2_kernel_prolong       4 0.0 7.6859e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1542918d1590_wrap_pyop2_kernel_prolong       4 0.0 6.5608e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15427e133d10_wrap_pyop2_kernel_restrict    1688 0.0 5.0334e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15427b4d8d50_wrap_pyop2_kernel_restrict    1688 0.0 1.1804e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15427b4d8d50_wrap_pyop2_kernel_prolong    1686 0.0 1.3323e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15427e133d10_wrap_pyop2_kernel_prolong    1686 0.0 4.3761e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd8134d0d0_wrap_pyop2_kernel_prolong       4 0.0 7.6568e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd7bf92050_wrap_pyop2_kernel_prolong       4 0.0 5.3349e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd6cd3a9d0_wrap_pyop2_kernel_restrict    1688 0.0 5.0870e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd68cf4e50_wrap_pyop2_kernel_restrict    1688 0.0 1.1884e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd68cf4e50_wrap_pyop2_kernel_prolong    1686 0.0 1.3846e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd6cd3a9d0_wrap_pyop2_kernel_prolong    1686 0.0 4.3769e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d0c697410_wrap_pyop2_kernel_prolong       4 0.0 7.6769e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d0c1d0250_wrap_pyop2_kernel_prolong       4 0.0 6.5080e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d0c2ce7d0_wrap_pyop2_kernel_restrict    1688 0.0 4.7762e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146cf7f79110_wrap_pyop2_kernel_restrict    1688 0.0 1.1096e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146cf7f79110_wrap_pyop2_kernel_prolong    1686 0.0 1.3124e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d0c2ce7d0_wrap_pyop2_kernel_prolong    1686 0.0 4.0878e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d4b5ad5fd0_wrap_pyop2_kernel_prolong       4 0.0 7.6725e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d4b5ad5610_wrap_pyop2_kernel_prolong       4 0.0 6.5924e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d4b5962590_wrap_pyop2_kernel_restrict    1688 0.0 5.0645e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d4a0b01bd0_wrap_pyop2_kernel_restrict    1688 0.0 1.1898e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d4a0b01bd0_wrap_pyop2_kernel_prolong    1686 0.0 1.2044e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d4b5962590_wrap_pyop2_kernel_prolong    1686 0.0 4.3756e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c64844990_wrap_pyop2_kernel_prolong       4 0.0 7.6619e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c64845ed0_wrap_pyop2_kernel_prolong       4 0.0 5.1748e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c64950490_wrap_pyop2_kernel_restrict    1688 0.0 4.7392e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c4e57b910_wrap_pyop2_kernel_restrict    1688 0.0 1.1018e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c4e57b910_wrap_pyop2_kernel_prolong    1686 0.0 1.1517e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c64950490_wrap_pyop2_kernel_prolong    1686 0.0 4.1115e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14558ee37ed0_wrap_pyop2_kernel_prolong       4 0.0 7.6804e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14558ee65cd0_wrap_pyop2_kernel_prolong       4 0.0 6.8136e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14557b3a6790_wrap_pyop2_kernel_restrict    1688 0.0 5.2206e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145578b62dd0_wrap_pyop2_kernel_restrict    1688 0.0 1.1914e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145578b62dd0_wrap_pyop2_kernel_prolong    1686 0.0 1.2080e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14557b3a6790_wrap_pyop2_kernel_prolong    1686 0.0 4.3851e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a432043790_wrap_pyop2_kernel_prolong       4 0.0 7.6846e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a432043010_wrap_pyop2_kernel_prolong       4 0.0 6.4681e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a43215cf50_wrap_pyop2_kernel_restrict    1688 0.0 4.6312e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a41c150a50_wrap_pyop2_kernel_restrict    1688 0.0 1.1040e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a41c150a50_wrap_pyop2_kernel_prolong    1686 0.0 1.3092e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a43215cf50_wrap_pyop2_kernel_prolong    1686 0.0 4.0897e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ef2a90cd0_wrap_pyop2_kernel_prolong       4 0.0 7.6665e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ef34bd010_wrap_pyop2_kernel_prolong       4 0.0 6.2268e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ef2a7b010_wrap_pyop2_kernel_restrict    1688 0.0 4.9379e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147edc2a1550_wrap_pyop2_kernel_restrict    1688 0.0 1.1797e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147edc2a1550_wrap_pyop2_kernel_prolong    1686 0.0 1.2069e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ef2a7b010_wrap_pyop2_kernel_prolong    1686 0.0 4.4041e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153064f89f10_wrap_pyop2_kernel_prolong       4 0.0 7.6636e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153062992e10_wrap_pyop2_kernel_prolong       4 0.0 5.9315e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153062a63110_wrap_pyop2_kernel_restrict    1688 0.0 4.5996e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15304ca7e6d0_wrap_pyop2_kernel_restrict    1688 0.0 1.0294e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15304ca7e6d0_wrap_pyop2_kernel_prolong    1686 0.0 1.0697e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153062a63110_wrap_pyop2_kernel_prolong    1686 0.0 3.8101e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ec76e09c10_wrap_pyop2_kernel_prolong       4 0.0 7.6756e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ec76e09850_wrap_pyop2_kernel_prolong       4 0.0 7.8654e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ec7773c4d0_wrap_pyop2_kernel_restrict    1688 0.0 4.9280e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ec610daf50_wrap_pyop2_kernel_restrict    1688 0.0 1.1812e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ec610daf50_wrap_pyop2_kernel_prolong    1686 0.0 1.2127e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ec7773c4d0_wrap_pyop2_kernel_prolong    1686 0.0 4.3788e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151777449b90_wrap_pyop2_kernel_prolong       4 0.0 7.6809e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1517772e21d0_wrap_pyop2_kernel_prolong       4 0.0 7.3053e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151777308d90_wrap_pyop2_kernel_restrict    1688 0.0 5.1998e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1517665585d0_wrap_pyop2_kernel_restrict    1688 0.0 1.1816e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1517665585d0_wrap_pyop2_kernel_prolong    1686 0.0 1.2060e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151777308d90_wrap_pyop2_kernel_prolong    1686 0.0 4.4031e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c24a86e5d0_wrap_pyop2_kernel_prolong       4 0.0 7.6670e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c24a86df50_wrap_pyop2_kernel_prolong       4 0.0 6.5704e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c2381fbc90_wrap_pyop2_kernel_restrict    1688 0.0 4.8967e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c235702890_wrap_pyop2_kernel_restrict    1688 0.0 1.1040e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c235702890_wrap_pyop2_kernel_prolong    1686 0.0 1.1339e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c2381fbc90_wrap_pyop2_kernel_prolong    1686 0.0 4.1112e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa7582ebd0_wrap_pyop2_kernel_prolong       4 0.0 7.6760e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa755c20d0_wrap_pyop2_kernel_prolong       4 0.0 6.9719e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa75438890_wrap_pyop2_kernel_restrict    1688 0.0 5.0545e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa604ca010_wrap_pyop2_kernel_restrict    1688 0.0 1.1863e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa604ca010_wrap_pyop2_kernel_prolong    1686 0.0 1.1760e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa75438890_wrap_pyop2_kernel_prolong    1686 0.0 4.3755e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15166229a9d0_wrap_pyop2_kernel_prolong       4 0.0 7.6847e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1516622987d0_wrap_pyop2_kernel_prolong       4 0.0 8.1933e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1516620e9490_wrap_pyop2_kernel_restrict    1688 0.0 4.9995e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15164c57a490_wrap_pyop2_kernel_restrict    1688 0.0 1.1913e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15164c57a490_wrap_pyop2_kernel_prolong    1686 0.0 1.2123e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1516620e9490_wrap_pyop2_kernel_prolong    1686 0.0 4.3912e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a1888bcc10_wrap_pyop2_kernel_prolong       4 0.0 7.6684e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a1888e6310_wrap_pyop2_kernel_prolong       4 0.0 5.1393e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a1889edf10_wrap_pyop2_kernel_restrict    1688 0.0 4.6062e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a17475a650_wrap_pyop2_kernel_restrict    1688 0.0 1.0295e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a17475a650_wrap_pyop2_kernel_prolong    1686 0.0 1.0605e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a1889edf10_wrap_pyop2_kernel_prolong    1686 0.0 3.8234e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e83d0e5950_wrap_pyop2_kernel_prolong       4 0.0 7.6702e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e83d2e0c10_wrap_pyop2_kernel_prolong       4 0.0 5.6212e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e829b7e190_wrap_pyop2_kernel_restrict    1688 0.0 5.0022e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e81e096790_wrap_pyop2_kernel_restrict    1688 0.0 1.1885e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e81e096790_wrap_pyop2_kernel_prolong    1686 0.0 1.2041e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e829b7e190_wrap_pyop2_kernel_prolong    1686 0.0 4.3762e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154775b0b710_wrap_pyop2_kernel_prolong       4 0.0 7.6609e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154775900090_wrap_pyop2_kernel_prolong       4 0.0 6.9025e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1547630e4050_wrap_pyop2_kernel_restrict    1688 0.0 5.1245e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15476130e0d0_wrap_pyop2_kernel_restrict    1688 0.0 1.1837e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15476130e0d0_wrap_pyop2_kernel_prolong    1686 0.0 1.2046e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1547630e4050_wrap_pyop2_kernel_prolong    1686 0.0 4.4056e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152877d99790_wrap_pyop2_kernel_prolong       4 0.0 7.6581e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152877dccbd0_wrap_pyop2_kernel_prolong       4 0.0 5.7861e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152877dccf50_wrap_pyop2_kernel_restrict    1688 0.0 4.7593e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152866189910_wrap_pyop2_kernel_restrict    1688 0.0 1.1051e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152866189910_wrap_pyop2_kernel_prolong    1686 0.0 1.1382e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152877dccf50_wrap_pyop2_kernel_prolong    1686 0.0 4.0892e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eb9a433850_wrap_pyop2_kernel_prolong       4 0.0 7.6643e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eb9a4339d0_wrap_pyop2_kernel_prolong       4 0.0 7.3397e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eb9a4c8d50_wrap_pyop2_kernel_restrict    1688 0.0 5.1387e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eb7cdfa350_wrap_pyop2_kernel_restrict    1688 0.0 1.3360e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eb7cdfa350_wrap_pyop2_kernel_prolong    1686 0.0 1.2164e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eb9a4c8d50_wrap_pyop2_kernel_prolong    1686 0.0 4.3946e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd16b587d0_wrap_pyop2_kernel_prolong       4 0.0 7.6594e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd167d3cd0_wrap_pyop2_kernel_prolong       4 0.0 6.2298e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd16a01e90_wrap_pyop2_kernel_restrict    1688 0.0 4.3899e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd01f7f590_wrap_pyop2_kernel_restrict    1688 0.0 1.0347e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd01f7f590_wrap_pyop2_kernel_prolong    1686 0.0 1.0630e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd16a01e90_wrap_pyop2_kernel_prolong    1686 0.0 3.8113e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cdccf6a810_wrap_pyop2_kernel_prolong       4 0.0 7.6805e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cdcce59410_wrap_pyop2_kernel_prolong       4 0.0 5.7662e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cdb9341b90_wrap_pyop2_kernel_restrict    1688 0.0 4.9493e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cdb5b31b90_wrap_pyop2_kernel_restrict    1688 0.0 1.1806e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cdb5b31b90_wrap_pyop2_kernel_prolong    1686 0.0 1.2287e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cdb9341b90_wrap_pyop2_kernel_prolong    1686 0.0 4.3748e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1537f23ea790_wrap_pyop2_kernel_prolong       4 0.0 7.6654e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1537f23ead50_wrap_pyop2_kernel_prolong       4 0.0 5.9335e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1537f240eb90_wrap_pyop2_kernel_restrict    1688 0.0 5.1918e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1537dda6a490_wrap_pyop2_kernel_restrict    1688 0.0 1.1809e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1537dda6a490_wrap_pyop2_kernel_prolong    1686 0.0 1.2290e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1537f240eb90_wrap_pyop2_kernel_prolong    1686 0.0 4.6994e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145890201ad0_wrap_pyop2_kernel_prolong       4 0.0 7.6748e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145890201550_wrap_pyop2_kernel_prolong       4 0.0 5.9857e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14587d5b0090_wrap_pyop2_kernel_restrict    1688 0.0 4.5971e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14587b8ca650_wrap_pyop2_kernel_restrict    1688 0.0 1.0257e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14587b8ca650_wrap_pyop2_kernel_prolong    1686 0.0 1.0797e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14587d5b0090_wrap_pyop2_kernel_prolong    1686 0.0 3.8215e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ceb0107f90_wrap_pyop2_kernel_prolong       4 0.0 7.6838e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ceb036ac90_wrap_pyop2_kernel_prolong       4 0.0 6.7588e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ceb0242ad0_wrap_pyop2_kernel_restrict    1688 0.0 4.9791e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce9aad2c10_wrap_pyop2_kernel_restrict    1688 0.0 1.1884e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce9aad2c10_wrap_pyop2_kernel_prolong    1686 0.0 1.2182e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ceb0242ad0_wrap_pyop2_kernel_prolong    1686 0.0 4.3861e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bedbb43b50_wrap_pyop2_kernel_prolong       4 0.0 7.6830e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bedbd85610_wrap_pyop2_kernel_prolong       4 0.0 7.2652e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bedbc76a10_wrap_pyop2_kernel_restrict    1688 0.0 5.1639e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14beca7dfe50_wrap_pyop2_kernel_restrict    1688 0.0 1.1896e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14beca7dfe50_wrap_pyop2_kernel_prolong    1686 0.0 1.2179e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bedbc76a10_wrap_pyop2_kernel_prolong    1686 0.0 4.3851e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1474667c9c90_wrap_pyop2_kernel_prolong       4 0.0 7.6708e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1474667c8510_wrap_pyop2_kernel_prolong       4 0.0 7.1871e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1474665d49d0_wrap_pyop2_kernel_restrict    1688 0.0 5.2180e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1474504f4650_wrap_pyop2_kernel_restrict    1688 0.0 1.1870e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1474504f4650_wrap_pyop2_kernel_prolong    1686 0.0 1.2042e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1474665d49d0_wrap_pyop2_kernel_prolong    1686 0.0 4.3765e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14731a4ebed0_wrap_pyop2_kernel_prolong       4 0.0 7.6894e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14731a4ebfd0_wrap_pyop2_kernel_prolong       4 0.0 7.6588e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14731a2273d0_wrap_pyop2_kernel_restrict    1688 0.0 5.1467e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1473051702d0_wrap_pyop2_kernel_restrict    1688 0.0 1.1913e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1473051702d0_wrap_pyop2_kernel_prolong    1686 0.0 1.2313e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14731a2273d0_wrap_pyop2_kernel_prolong    1686 0.0 4.3933e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153dab186bd0_wrap_pyop2_kernel_prolong       4 0.0 7.6676e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153dab5d1b90_wrap_pyop2_kernel_prolong       4 0.0 5.0601e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153dab1ee950_wrap_pyop2_kernel_restrict    1688 0.0 4.9176e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153d999bf090_wrap_pyop2_kernel_restrict    1688 0.0 1.1111e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153d999bf090_wrap_pyop2_kernel_prolong    1686 0.0 1.1340e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153dab1ee950_wrap_pyop2_kernel_prolong    1686 0.0 4.0887e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14691b150c50_wrap_pyop2_kernel_prolong       4 0.0 7.6740e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14691a961350_wrap_pyop2_kernel_prolong       4 0.0 5.9650e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14691a7bde90_wrap_pyop2_kernel_restrict    1688 0.0 5.1959e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1469047e98d0_wrap_pyop2_kernel_restrict    1688 0.0 1.1813e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1469047e98d0_wrap_pyop2_kernel_prolong    1686 0.0 1.2111e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14691a7bde90_wrap_pyop2_kernel_prolong    1686 0.0 4.3764e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a896d796d0_wrap_pyop2_kernel_prolong       4 0.0 7.6616e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a896d7b5d0_wrap_pyop2_kernel_prolong       4 0.0 6.8734e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a896bee410_wrap_pyop2_kernel_restrict    1688 0.0 4.7219e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a88264c610_wrap_pyop2_kernel_restrict    1688 0.0 1.1111e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a88264c610_wrap_pyop2_kernel_prolong    1686 0.0 1.2441e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a896bee410_wrap_pyop2_kernel_prolong    1686 0.0 4.0949e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c911a51d0_wrap_pyop2_kernel_prolong       4 0.0 7.6657e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c8bf997d0_wrap_pyop2_kernel_prolong       4 0.0 5.7368e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c8bc22050_wrap_pyop2_kernel_restrict    1688 0.0 4.8147e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c7d01abd0_wrap_pyop2_kernel_restrict    1688 0.0 1.1034e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c7d01abd0_wrap_pyop2_kernel_prolong    1686 0.0 1.1344e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c8bc22050_wrap_pyop2_kernel_prolong    1686 0.0 4.1116e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151911837e90_wrap_pyop2_kernel_prolong       4 0.0 7.6735e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151911887250_wrap_pyop2_kernel_prolong       4 0.0 6.5127e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1518fe1b0b10_wrap_pyop2_kernel_restrict    1688 0.0 5.0379e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1518fcecd810_wrap_pyop2_kernel_restrict    1688 0.0 1.1868e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1518fcecd810_wrap_pyop2_kernel_prolong    1686 0.0 1.2068e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1518fe1b0b10_wrap_pyop2_kernel_prolong    1686 0.0 4.3782e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15119e5bb390_wrap_pyop2_kernel_prolong       4 0.0 7.6669e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15119e43fc10_wrap_pyop2_kernel_prolong       4 0.0 6.7997e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15119e4fbd50_wrap_pyop2_kernel_restrict    1688 0.0 5.2335e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151188866690_wrap_pyop2_kernel_restrict    1688 0.0 1.1870e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151188866690_wrap_pyop2_kernel_prolong    1686 0.0 1.2063e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15119e4fbd50_wrap_pyop2_kernel_prolong    1686 0.0 4.3793e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b06fd36390_wrap_pyop2_kernel_prolong       4 0.0 7.6700e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b06fd60410_wrap_pyop2_kernel_prolong       4 0.0 7.2485e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b06feb6fd0_wrap_pyop2_kernel_restrict    1688 0.0 5.1843e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b0568ed810_wrap_pyop2_kernel_restrict    1688 0.0 1.1841e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b0568ed810_wrap_pyop2_kernel_prolong    1686 0.0 1.3609e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b06feb6fd0_wrap_pyop2_kernel_prolong    1686 0.0 4.4185e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15222b13ee10_wrap_pyop2_kernel_prolong       4 0.0 7.6768e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15222b13d2d0_wrap_pyop2_kernel_prolong       4 0.0 6.7681e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152218880f10_wrap_pyop2_kernel_restrict    1688 0.0 5.2226e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152215342b90_wrap_pyop2_kernel_restrict    1688 0.0 1.1871e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152215342b90_wrap_pyop2_kernel_prolong    1686 0.0 1.2054e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152218880f10_wrap_pyop2_kernel_prolong    1686 0.0 4.3780e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14982d7db510_wrap_pyop2_kernel_prolong       4 0.0 7.6797e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14982d7d83d0_wrap_pyop2_kernel_prolong       4 0.0 6.7631e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14981ada9490_wrap_pyop2_kernel_restrict    1688 0.0 4.8368e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498186e3410_wrap_pyop2_kernel_restrict    1688 0.0 1.1151e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498186e3410_wrap_pyop2_kernel_prolong    1686 0.0 1.1366e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14981ada9490_wrap_pyop2_kernel_prolong    1686 0.0 4.1004e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147aa491b8d0_wrap_pyop2_kernel_prolong       4 0.0 7.6600e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147aa51fde10_wrap_pyop2_kernel_prolong       4 0.0 6.6231e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a91e8e950_wrap_pyop2_kernel_restrict    1688 0.0 5.1854e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a8f5de0d0_wrap_pyop2_kernel_restrict    1688 0.0 1.1812e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a8f5de0d0_wrap_pyop2_kernel_prolong    1686 0.0 1.2054e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a91e8e950_wrap_pyop2_kernel_prolong    1686 0.0 4.4010e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456031bd5d0_wrap_pyop2_kernel_prolong       4 0.0 7.6658e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456031cb650_wrap_pyop2_kernel_prolong       4 0.0 7.1726e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145603153750_wrap_pyop2_kernel_restrict    1688 0.0 4.8192e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455f2a66550_wrap_pyop2_kernel_restrict    1688 0.0 1.1123e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455f2a66550_wrap_pyop2_kernel_prolong    1686 0.0 1.1529e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145603153750_wrap_pyop2_kernel_prolong    1686 0.0 4.0931e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153a47d82010_wrap_pyop2_kernel_prolong       4 0.0 7.6868e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153a4650e490_wrap_pyop2_kernel_prolong       4 0.0 7.1348e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153a46495b90_wrap_pyop2_kernel_restrict    1688 0.0 4.9862e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153a32464810_wrap_pyop2_kernel_restrict    1688 0.0 1.1838e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153a32464810_wrap_pyop2_kernel_prolong    1686 0.0 1.2085e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153a46495b90_wrap_pyop2_kernel_prolong    1686 0.0 4.4100e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1473ae0c1390_wrap_pyop2_kernel_prolong       4 0.0 7.6853e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1473ae0fbc50_wrap_pyop2_kernel_prolong       4 0.0 6.9185e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1473aea5c710_wrap_pyop2_kernel_restrict    1688 0.0 4.3763e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1473992e5990_wrap_pyop2_kernel_restrict    1688 0.0 1.0379e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1473992e5990_wrap_pyop2_kernel_prolong    1686 0.0 1.0654e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1473aea5c710_wrap_pyop2_kernel_prolong    1686 0.0 3.8148e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac726fed90_wrap_pyop2_kernel_prolong       4 0.0 7.6594e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac726fdb50_wrap_pyop2_kernel_prolong       4 0.0 5.3304e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac72687cd0_wrap_pyop2_kernel_restrict    1688 0.0 4.9261e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac5e31f4d0_wrap_pyop2_kernel_restrict    1688 0.0 1.1658e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac5e31f4d0_wrap_pyop2_kernel_prolong    1686 0.0 1.1714e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac72687cd0_wrap_pyop2_kernel_prolong    1686 0.0 4.2683e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1463f6c51150_wrap_pyop2_kernel_prolong       4 0.0 7.6614e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1463f6411110_wrap_pyop2_kernel_prolong       4 0.0 6.3248e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1463f61ee510_wrap_pyop2_kernel_restrict    1688 0.0 5.1117e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1463e0d1e2d0_wrap_pyop2_kernel_restrict    1688 0.0 1.1602e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1463e0d1e2d0_wrap_pyop2_kernel_prolong    1686 0.0 1.1788e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1463f61ee510_wrap_pyop2_kernel_prolong    1686 0.0 4.2678e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145adac646d0_wrap_pyop2_kernel_prolong       4 0.0 7.6816e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145adac79f90_wrap_pyop2_kernel_prolong       4 0.0 7.6495e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145adaa36690_wrap_pyop2_kernel_restrict    1688 0.0 4.9574e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145ac5f574d0_wrap_pyop2_kernel_restrict    1688 0.0 1.1612e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145ac5f574d0_wrap_pyop2_kernel_prolong    1686 0.0 1.1768e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145adaa36690_wrap_pyop2_kernel_prolong    1686 0.0 4.2986e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1509ca1fe690_wrap_pyop2_kernel_prolong       4 0.0 7.6666e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1509ca1082d0_wrap_pyop2_kernel_prolong       4 0.0 6.8942e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1509c985ca10_wrap_pyop2_kernel_restrict    1688 0.0 4.8999e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1509ad398ad0_wrap_pyop2_kernel_restrict    1688 0.0 1.1599e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1509ad398ad0_wrap_pyop2_kernel_prolong    1686 0.0 1.1744e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1509c985ca10_wrap_pyop2_kernel_prolong    1686 0.0 4.2943e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151d76b2b450_wrap_pyop2_kernel_prolong       4 0.0 7.6786e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151d76af4c50_wrap_pyop2_kernel_prolong       4 0.0 6.4981e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151d6390f390_wrap_pyop2_kernel_restrict    1688 0.0 5.1348e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151d617e4a50_wrap_pyop2_kernel_restrict    1688 0.0 1.1597e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151d617e4a50_wrap_pyop2_kernel_prolong    1686 0.0 1.1739e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151d6390f390_wrap_pyop2_kernel_prolong    1686 0.0 4.2908e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493f3e5a390_wrap_pyop2_kernel_prolong       4 0.0 7.6761e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493f3e86050_wrap_pyop2_kernel_prolong       4 0.0 5.8911e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493f3cda090_wrap_pyop2_kernel_restrict    1688 0.0 4.6276e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493e3994a50_wrap_pyop2_kernel_restrict    1688 0.0 1.0912e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493e3994a50_wrap_pyop2_kernel_prolong    1686 0.0 1.1054e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493f3cda090_wrap_pyop2_kernel_prolong    1686 0.0 3.9904e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ecbb708cd0_wrap_pyop2_kernel_prolong       4 0.0 7.6559e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ecbb709790_wrap_pyop2_kernel_prolong       4 0.0 5.4617e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ecc00f0d10_wrap_pyop2_kernel_restrict    1688 0.0 4.8575e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ecaa9e4d10_wrap_pyop2_kernel_restrict    1688 0.0 1.0902e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ecaa9e4d10_wrap_pyop2_kernel_prolong    1686 0.0 1.1233e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ecc00f0d10_wrap_pyop2_kernel_prolong    1686 0.0 3.9892e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e1e8121d50_wrap_pyop2_kernel_prolong       4 0.0 7.6801e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e1e8123d10_wrap_pyop2_kernel_prolong       4 0.0 5.3838e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e1e81f67d0_wrap_pyop2_kernel_restrict    1688 0.0 5.0030e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e1d3a3b610_wrap_pyop2_kernel_restrict    1688 0.0 1.1584e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e1d3a3b610_wrap_pyop2_kernel_prolong    1686 0.0 1.3610e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e1e81f67d0_wrap_pyop2_kernel_prolong    1686 0.0 4.2893e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152475bc3950_wrap_pyop2_kernel_prolong       4 0.0 7.6576e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152476e92890_wrap_pyop2_kernel_prolong       4 0.0 6.1331e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152475d05350_wrap_pyop2_kernel_restrict    1688 0.0 4.5547e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15245fd36990_wrap_pyop2_kernel_restrict    1688 0.0 1.0844e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15245fd36990_wrap_pyop2_kernel_prolong    1686 0.0 1.1694e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152475d05350_wrap_pyop2_kernel_prolong    1686 0.0 3.7120e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d079de7150_wrap_pyop2_kernel_prolong       4 0.0 7.6860e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d079e16990_wrap_pyop2_kernel_prolong       4 0.0 7.2911e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d079f02910_wrap_pyop2_kernel_restrict    1688 0.0 4.9413e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d064c38910_wrap_pyop2_kernel_restrict    1688 0.0 1.1603e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d064c38910_wrap_pyop2_kernel_prolong    1686 0.0 1.2213e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d079f02910_wrap_pyop2_kernel_prolong    1686 0.0 4.2923e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1457a7e6fe90_wrap_pyop2_kernel_prolong       4 0.0 7.6694e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1457a7ec3110_wrap_pyop2_kernel_prolong       4 0.0 6.2936e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1457a7dd5350_wrap_pyop2_kernel_restrict    1688 0.0 4.8363e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1457979b3a10_wrap_pyop2_kernel_restrict    1688 0.0 1.0834e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1457979b3a10_wrap_pyop2_kernel_prolong    1686 0.0 1.1527e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1457a7dd5350_wrap_pyop2_kernel_prolong    1686 0.0 4.0073e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15373eddd890_wrap_pyop2_kernel_prolong       4 0.0 7.6717e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15373e3aadd0_wrap_pyop2_kernel_prolong       4 0.0 7.2827e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15373e30d090_wrap_pyop2_kernel_restrict    1688 0.0 4.8599e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1537287d2690_wrap_pyop2_kernel_restrict    1688 0.0 1.0911e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1537287d2690_wrap_pyop2_kernel_prolong    1686 0.0 1.2160e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15373e30d090_wrap_pyop2_kernel_prolong    1686 0.0 3.9978e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ea8a4eb90_wrap_pyop2_kernel_prolong       4 0.0 7.6675e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ea8b61910_wrap_pyop2_kernel_prolong       4 0.0 8.2249e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e96115990_wrap_pyop2_kernel_restrict    1688 0.0 5.0221e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e941a5950_wrap_pyop2_kernel_restrict    1688 0.0 1.1657e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e941a5950_wrap_pyop2_kernel_prolong    1686 0.0 1.2849e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e96115990_wrap_pyop2_kernel_prolong    1686 0.0 4.6392e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f7f1129c10_wrap_pyop2_kernel_prolong       4 0.0 7.6678e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f7f112a390_wrap_pyop2_kernel_prolong       4 0.0 5.6014e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f7f108c3d0_wrap_pyop2_kernel_restrict    1688 0.0 5.1261e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f7da1c1710_wrap_pyop2_kernel_restrict    1688 0.0 1.1599e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f7da1c1710_wrap_pyop2_kernel_prolong    1686 0.0 1.1776e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f7f108c3d0_wrap_pyop2_kernel_prolong    1686 0.0 4.2680e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e8bcd49a50_wrap_pyop2_kernel_prolong       4 0.0 7.6628e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e8bcd4b810_wrap_pyop2_kernel_prolong       4 0.0 5.9100e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e8a95ad850_wrap_pyop2_kernel_restrict    1688 0.0 5.1257e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e8a614e490_wrap_pyop2_kernel_restrict    1688 0.0 1.1598e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e8a614e490_wrap_pyop2_kernel_prolong    1686 0.0 1.2286e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e8a95ad850_wrap_pyop2_kernel_prolong    1686 0.0 4.2672e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e3a8e7f50_wrap_pyop2_kernel_prolong       4 0.0 7.6737e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e3a8e7690_wrap_pyop2_kernel_prolong       4 0.0 5.1784e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e3a6d9e10_wrap_pyop2_kernel_restrict    1688 0.0 4.7382e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e2563e9d0_wrap_pyop2_kernel_restrict    1688 0.0 1.0883e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e2563e9d0_wrap_pyop2_kernel_prolong    1686 0.0 1.1228e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e3a6d9e10_wrap_pyop2_kernel_prolong    1686 0.0 3.9891e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ae70914bd0_wrap_pyop2_kernel_prolong       4 0.0 7.6837e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ae7073d8d0_wrap_pyop2_kernel_prolong       4 0.0 6.4883e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ae70880f50_wrap_pyop2_kernel_restrict    1688 0.0 4.8577e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ae5b8983d0_wrap_pyop2_kernel_restrict    1688 0.0 1.0861e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ae5b8983d0_wrap_pyop2_kernel_prolong    1686 0.0 1.1300e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ae70880f50_wrap_pyop2_kernel_prolong    1686 0.0 3.9901e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b67a0de5d0_wrap_pyop2_kernel_prolong       4 0.0 7.6619e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b67a050c10_wrap_pyop2_kernel_prolong       4 0.0 6.0811e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b67a1423d0_wrap_pyop2_kernel_restrict    1688 0.0 4.8387e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b664553f50_wrap_pyop2_kernel_restrict    1688 0.0 1.0837e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b664553f50_wrap_pyop2_kernel_prolong    1686 0.0 1.1067e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b67a1423d0_wrap_pyop2_kernel_prolong    1686 0.0 4.0105e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1516e75b1ed0_wrap_pyop2_kernel_prolong       4 0.0 7.6792e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1516e75cb710_wrap_pyop2_kernel_prolong       4 0.0 7.5531e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1516e7872ed0_wrap_pyop2_kernel_restrict    1688 0.0 4.8208e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1516d5353710_wrap_pyop2_kernel_restrict    1688 0.0 1.0858e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1516d5353710_wrap_pyop2_kernel_prolong    1686 0.0 1.1618e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1516e7872ed0_wrap_pyop2_kernel_prolong    1686 0.0 3.9983e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150ff7e71f50_wrap_pyop2_kernel_prolong       4 0.0 7.6734e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150ff7e71a10_wrap_pyop2_kernel_prolong       4 0.0 6.0325e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150fe8ce4650_wrap_pyop2_kernel_restrict    1688 0.0 4.5336e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150fe6618250_wrap_pyop2_kernel_restrict    1688 0.0 1.0107e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150fe6618250_wrap_pyop2_kernel_prolong    1686 0.0 1.0423e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150fe8ce4650_wrap_pyop2_kernel_prolong    1686 0.0 3.7426e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f2e1664590_wrap_pyop2_kernel_prolong       4 0.0 7.6787e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f2e13d9350_wrap_pyop2_kernel_prolong       4 0.0 6.6392e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f2e14e8110_wrap_pyop2_kernel_restrict    1688 0.0 5.1383e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f2cb5dd490_wrap_pyop2_kernel_restrict    1688 0.0 1.1686e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f2cb5dd490_wrap_pyop2_kernel_prolong    1686 0.0 1.1696e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f2e14e8110_wrap_pyop2_kernel_prolong    1686 0.0 4.2701e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd091abd10_wrap_pyop2_kernel_prolong       4 0.0 7.6756e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd08fc44d0_wrap_pyop2_kernel_prolong       4 0.0 7.6004e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dcf5dca090_wrap_pyop2_kernel_restrict    1688 0.0 5.1595e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dcf3730e90_wrap_pyop2_kernel_restrict    1688 0.0 1.1676e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dcf3730e90_wrap_pyop2_kernel_prolong    1686 0.0 1.1775e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dcf5dca090_wrap_pyop2_kernel_prolong    1686 0.0 4.2812e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150cc36477d0_wrap_pyop2_kernel_prolong       4 0.0 7.6572e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150cc2ce8990_wrap_pyop2_kernel_prolong       4 0.0 5.9421e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150cc2c79b90_wrap_pyop2_kernel_restrict    1688 0.0 5.0348e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150cac9ff250_wrap_pyop2_kernel_restrict    1688 0.0 1.1646e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150cac9ff250_wrap_pyop2_kernel_prolong    1686 0.0 1.1749e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150cc2c79b90_wrap_pyop2_kernel_prolong    1686 0.0 4.2694e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d758cbe1d0_wrap_pyop2_kernel_prolong       4 0.0 7.6811e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d7594c0750_wrap_pyop2_kernel_prolong       4 0.0 7.0202e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d745b42990_wrap_pyop2_kernel_restrict    1688 0.0 5.0447e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d742950910_wrap_pyop2_kernel_restrict    1688 0.0 1.1688e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d742950910_wrap_pyop2_kernel_prolong    1686 0.0 1.1743e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d745b42990_wrap_pyop2_kernel_prolong    1686 0.0 4.2837e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bcef057410_wrap_pyop2_kernel_prolong       4 0.0 7.6688e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bcef066450_wrap_pyop2_kernel_prolong       4 0.0 7.2676e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bcdc6a6150_wrap_pyop2_kernel_restrict    1688 0.0 5.0152e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bcd9da70d0_wrap_pyop2_kernel_restrict    1688 0.0 1.1608e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bcd9da70d0_wrap_pyop2_kernel_prolong    1686 0.0 1.1762e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bcdc6a6150_wrap_pyop2_kernel_prolong    1686 0.0 4.2704e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1512c1467b50_wrap_pyop2_kernel_prolong       4 0.0 7.6719e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1512c18d0b10_wrap_pyop2_kernel_prolong       4 0.0 6.4629e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1512c1582850_wrap_pyop2_kernel_restrict    1688 0.0 4.5694e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1512ac7d9610_wrap_pyop2_kernel_restrict    1688 0.0 1.0171e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1512ac7d9610_wrap_pyop2_kernel_prolong    1686 0.0 1.0362e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1512c1582850_wrap_pyop2_kernel_prolong    1686 0.0 3.7196e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15369a596cd0_wrap_pyop2_kernel_prolong       4 0.0 7.6649e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15369a793150_wrap_pyop2_kernel_prolong       4 0.0 5.1350e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15369a6ea8d0_wrap_pyop2_kernel_restrict    1688 0.0 4.3781e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153684cd14d0_wrap_pyop2_kernel_restrict    1688 0.0 1.0147e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153684cd14d0_wrap_pyop2_kernel_prolong    1686 0.0 1.0951e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15369a6ea8d0_wrap_pyop2_kernel_prolong    1686 0.0 3.7064e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be480b6950_wrap_pyop2_kernel_prolong       4 0.0 7.6781e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be45a9ecd0_wrap_pyop2_kernel_prolong       4 0.0 7.0723e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be45b8ec90_wrap_pyop2_kernel_restrict    1688 0.0 5.1556e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be3007b110_wrap_pyop2_kernel_restrict    1688 0.0 1.1707e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be3007b110_wrap_pyop2_kernel_prolong    1686 0.0 1.2383e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be45b8ec90_wrap_pyop2_kernel_prolong    1686 0.0 4.2776e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b7a5fe710_wrap_pyop2_kernel_prolong       4 0.0 7.6614e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b7a5fca90_wrap_pyop2_kernel_prolong       4 0.0 6.8149e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b66f7f450_wrap_pyop2_kernel_restrict    1688 0.0 5.0031e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b650305d0_wrap_pyop2_kernel_restrict    1688 0.0 1.1585e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b650305d0_wrap_pyop2_kernel_prolong    1686 0.0 1.1778e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b66f7f450_wrap_pyop2_kernel_prolong    1686 0.0 4.2902e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ea93586d0_wrap_pyop2_kernel_prolong       4 0.0 7.6765e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ea9108d90_wrap_pyop2_kernel_prolong       4 0.0 6.2934e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ea9224e50_wrap_pyop2_kernel_restrict    1688 0.0 4.8263e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e93850250_wrap_pyop2_kernel_restrict    1688 0.0 1.0926e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e93850250_wrap_pyop2_kernel_prolong    1686 0.0 1.1194e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ea9224e50_wrap_pyop2_kernel_prolong    1686 0.0 3.9892e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e27e35e650_wrap_pyop2_kernel_prolong       4 0.0 7.6643e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e27ecf5fd0_wrap_pyop2_kernel_prolong       4 0.0 6.6169e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e27e3c2fd0_wrap_pyop2_kernel_restrict    1688 0.0 4.5628e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e268d36e50_wrap_pyop2_kernel_restrict    1688 0.0 1.0156e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e268d36e50_wrap_pyop2_kernel_prolong    1686 0.0 1.0578e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e27e3c2fd0_wrap_pyop2_kernel_prolong    1686 0.0 3.7182e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eeabbd0a10_wrap_pyop2_kernel_prolong       4 0.0 7.6828e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eeab2db310_wrap_pyop2_kernel_prolong       4 0.0 6.7433e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eeab1b5390_wrap_pyop2_kernel_restrict    1688 0.0 5.0692e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee9aa654d0_wrap_pyop2_kernel_restrict    1688 0.0 1.1661e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee9aa654d0_wrap_pyop2_kernel_prolong    1686 0.0 1.1949e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eeab1b5390_wrap_pyop2_kernel_prolong    1686 0.0 4.2696e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154508373850_wrap_pyop2_kernel_prolong       4 0.0 7.6701e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15450394a350_wrap_pyop2_kernel_prolong       4 0.0 5.8054e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154503874bd0_wrap_pyop2_kernel_restrict    1688 0.0 4.4480e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1544f1a8b210_wrap_pyop2_kernel_restrict    1688 0.0 1.0093e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1544f1a8b210_wrap_pyop2_kernel_prolong    1686 0.0 1.0881e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154503874bd0_wrap_pyop2_kernel_prolong    1686 0.0 3.7326e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1505c8c23890_wrap_pyop2_kernel_prolong       4 0.0 7.6586e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1505c8ae79d0_wrap_pyop2_kernel_prolong       4 0.0 6.3916e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1505b5317910_wrap_pyop2_kernel_restrict    1688 0.0 4.9474e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1505b23e3790_wrap_pyop2_kernel_restrict    1688 0.0 1.1597e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1505b23e3790_wrap_pyop2_kernel_prolong    1686 0.0 1.2249e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1505b5317910_wrap_pyop2_kernel_prolong    1686 0.0 4.2916e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e6b2a6db10_wrap_pyop2_kernel_prolong       4 0.0 7.6803e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e6b2a6f710_wrap_pyop2_kernel_prolong       4 0.0 6.4143e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e6b2bb5610_wrap_pyop2_kernel_restrict    1688 0.0 5.1367e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e694a039d0_wrap_pyop2_kernel_restrict    1688 0.0 1.1678e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e694a039d0_wrap_pyop2_kernel_prolong    1686 0.0 1.2450e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e6b2bb5610_wrap_pyop2_kernel_prolong    1686 0.0 4.2676e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c47f629750_wrap_pyop2_kernel_prolong       4 0.0 7.6639e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c47f447810_wrap_pyop2_kernel_prolong       4 0.0 6.4539e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c47f5560d0_wrap_pyop2_kernel_restrict    1688 0.0 4.5334e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c46dfce0d0_wrap_pyop2_kernel_restrict    1688 0.0 1.0118e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c46dfce0d0_wrap_pyop2_kernel_prolong    1686 0.0 1.0967e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c47f5560d0_wrap_pyop2_kernel_prolong    1686 0.0 3.7432e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150993137910_wrap_pyop2_kernel_prolong       4 0.0 7.6639e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150993115690_wrap_pyop2_kernel_prolong       4 0.0 7.3486e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15097fb68a10_wrap_pyop2_kernel_restrict    1688 0.0 5.1533e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15097db27dd0_wrap_pyop2_kernel_restrict    1688 0.0 1.1699e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15097db27dd0_wrap_pyop2_kernel_prolong    1686 0.0 1.2392e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15097fb68a10_wrap_pyop2_kernel_prolong    1686 0.0 4.2852e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151684200f50_wrap_pyop2_kernel_prolong       4 0.0 7.6672e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15167f83dd90_wrap_pyop2_kernel_prolong       4 0.0 6.2759e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15167f77b090_wrap_pyop2_kernel_restrict    1688 0.0 4.7409e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15166d5f7b90_wrap_pyop2_kernel_restrict    1688 0.0 1.0888e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15166d5f7b90_wrap_pyop2_kernel_prolong    1686 0.0 1.1747e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15167f77b090_wrap_pyop2_kernel_prolong    1686 0.0 3.9879e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa0b44c410_wrap_pyop2_kernel_prolong       4 0.0 7.6786e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa0ab1d650_wrap_pyop2_kernel_prolong       4 0.0 6.1911e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa0b453990_wrap_pyop2_kernel_restrict    1688 0.0 5.1251e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a9f421f250_wrap_pyop2_kernel_restrict    1688 0.0 1.1611e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a9f421f250_wrap_pyop2_kernel_prolong    1686 0.0 1.1725e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa0b453990_wrap_pyop2_kernel_prolong    1686 0.0 4.2947e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b6c5ddbd0_wrap_pyop2_kernel_prolong       4 0.0 7.6587e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b6c6573d0_wrap_pyop2_kernel_prolong       4 0.0 5.4263e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b591dda50_wrap_pyop2_kernel_restrict    1688 0.0 4.5783e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b57d12110_wrap_pyop2_kernel_restrict    1688 0.0 1.0829e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b57d12110_wrap_pyop2_kernel_prolong    1686 0.0 1.1070e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b591dda50_wrap_pyop2_kernel_prolong    1686 0.0 3.9875e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15506c1a6e10_wrap_pyop2_kernel_prolong       4 0.0 7.6852e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155067b85f10_wrap_pyop2_kernel_prolong       4 0.0 7.4705e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155067a4ab50_wrap_pyop2_kernel_restrict    1688 0.0 5.1411e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155056fd63d0_wrap_pyop2_kernel_restrict    1688 0.0 1.1664e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155056fd63d0_wrap_pyop2_kernel_prolong    1686 0.0 1.1938e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155067a4ab50_wrap_pyop2_kernel_prolong    1686 0.0 4.2882e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149dd6c9fa90_wrap_pyop2_kernel_prolong       4 0.0 7.6857e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149dd6c9fad0_wrap_pyop2_kernel_prolong       4 0.0 6.2401e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149dd6dd3a10_wrap_pyop2_kernel_restrict    1688 0.0 4.8608e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149dc0a06610_wrap_pyop2_kernel_restrict    1688 0.0 1.0190e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149dc0a06610_wrap_pyop2_kernel_prolong    1686 0.0 1.0995e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149dd6dd3a10_wrap_pyop2_kernel_prolong    1686 0.0 3.7199e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1517a0df7d50_wrap_pyop2_kernel_prolong       4 0.0 7.6656e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1517a0de97d0_wrap_pyop2_kernel_prolong       4 0.0 7.2967e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15178dcff050_wrap_pyop2_kernel_restrict    1688 0.0 5.0176e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15178afcb490_wrap_pyop2_kernel_restrict    1688 0.0 1.1648e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15178afcb490_wrap_pyop2_kernel_prolong    1686 0.0 1.2264e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15178dcff050_wrap_pyop2_kernel_prolong    1686 0.0 4.3076e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1483f2048ad0_wrap_pyop2_kernel_prolong       4 0.0 7.6700e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1483f20b7850_wrap_pyop2_kernel_prolong       4 0.0 6.5875e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1483deaa5990_wrap_pyop2_kernel_restrict    1688 0.0 4.4442e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1483dce0c950_wrap_pyop2_kernel_restrict    1688 0.0 1.0086e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1483dce0c950_wrap_pyop2_kernel_prolong    1686 0.0 1.0383e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1483deaa5990_wrap_pyop2_kernel_prolong    1686 0.0 3.7345e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df7bb7f890_wrap_pyop2_kernel_prolong       4 0.0 7.6752e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df7bb7d0d0_wrap_pyop2_kernel_prolong       4 0.0 7.2205e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df7b78be10_wrap_pyop2_kernel_restrict    1688 0.0 5.0529e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df699dca50_wrap_pyop2_kernel_restrict    1688 0.0 1.1698e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df699dca50_wrap_pyop2_kernel_prolong    1686 0.0 1.1762e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df7b78be10_wrap_pyop2_kernel_prolong    1686 0.0 4.2859e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1536dd6ae690_wrap_pyop2_kernel_prolong       4 0.0 7.6846e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1536dd6ace50_wrap_pyop2_kernel_prolong       4 0.0 6.6380e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1536ca4bead0_wrap_pyop2_kernel_restrict    1688 0.0 4.9670e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1536c896cf10_wrap_pyop2_kernel_restrict    1688 0.0 1.1687e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1536c896cf10_wrap_pyop2_kernel_prolong    1686 0.0 1.2220e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1536ca4bead0_wrap_pyop2_kernel_prolong    1686 0.0 4.2695e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14640178c210_wrap_pyop2_kernel_prolong       4 0.0 7.6770e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1464005095d0_wrap_pyop2_kernel_prolong       4 0.0 5.6392e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1463ed1bdc50_wrap_pyop2_kernel_restrict    1688 0.0 4.8286e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1463ea2d0750_wrap_pyop2_kernel_restrict    1688 0.0 1.0839e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1463ea2d0750_wrap_pyop2_kernel_prolong    1686 0.0 1.1591e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1463ed1bdc50_wrap_pyop2_kernel_prolong    1686 0.0 3.9883e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aed0edd810_wrap_pyop2_kernel_prolong       4 0.0 7.6901e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aed0edde90_wrap_pyop2_kernel_prolong       4 0.0 7.7083e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aed0f9fa90_wrap_pyop2_kernel_restrict    1688 0.0 5.0681e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aebbcf07d0_wrap_pyop2_kernel_restrict    1688 0.0 1.1696e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aebbcf07d0_wrap_pyop2_kernel_prolong    1686 0.0 1.2265e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aed0f9fa90_wrap_pyop2_kernel_prolong    1686 0.0 4.2788e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14954660c810_wrap_pyop2_kernel_prolong       4 0.0 7.6637e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149545d36d10_wrap_pyop2_kernel_prolong       4 0.0 6.4795e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14953263e1d0_wrap_pyop2_kernel_restrict    1688 0.0 5.1184e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1495278b54d0_wrap_pyop2_kernel_restrict    1688 0.0 1.1625e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1495278b54d0_wrap_pyop2_kernel_prolong    1686 0.0 1.1760e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14953263e1d0_wrap_pyop2_kernel_prolong    1686 0.0 4.3062e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145be70c7910_wrap_pyop2_kernel_prolong       4 0.0 7.6877e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145be70c66d0_wrap_pyop2_kernel_prolong       4 0.0 7.8589e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145be6e0b5d0_wrap_pyop2_kernel_restrict    1688 0.0 5.1632e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145bd1162010_wrap_pyop2_kernel_restrict    1688 0.0 1.1728e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145bd1162010_wrap_pyop2_kernel_prolong    1686 0.0 1.1779e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145be6e0b5d0_wrap_pyop2_kernel_prolong    1686 0.0 4.2798e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a52c3ebd0_wrap_pyop2_kernel_prolong       4 0.0 7.6757e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a52bcdfd0_wrap_pyop2_kernel_prolong       4 0.0 7.2236e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a3f9aebd0_wrap_pyop2_kernel_restrict    1688 0.0 5.1551e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a3d4459d0_wrap_pyop2_kernel_restrict    1688 0.0 1.1708e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a3d4459d0_wrap_pyop2_kernel_prolong    1686 0.0 1.2283e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a3f9aebd0_wrap_pyop2_kernel_prolong    1686 0.0 4.2775e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147894cef7d0_wrap_pyop2_kernel_prolong       4 0.0 7.6715e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147894df7310_wrap_pyop2_kernel_prolong       4 0.0 7.6753e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147894c0c110_wrap_pyop2_kernel_restrict    1688 0.0 4.7553e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14787fdcdf10_wrap_pyop2_kernel_restrict    1688 0.0 1.0955e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14787fdcdf10_wrap_pyop2_kernel_prolong    1686 0.0 1.2164e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147894c0c110_wrap_pyop2_kernel_prolong    1686 0.0 4.0009e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   117            117
              Viewer     3              3
           Index Set  1528           1528
   IS L to G Mapping   208            208
             Section   476            476
   Star Forest Graph   387            387
              Vector   657            645
              Matrix   136            136
      Preconditioner     9              9
       Krylov Solver     9              9
     DMKSP interface     4              4
                SNES     1              1
              DMSNES     3              3
      SNESLineSearch     1              1
    Distributed Mesh   116            116
            DM Label   333            333
          Quadrature   144            144
      Mesh Transform     2              2
    GraphPartitioner    41             41
     Discrete System   171            171
           Weak Form   171            171
        Linear Space    12             12
          Dual Space    52             52
            FE Space     8              8
========================================================================================================================
Average time to get PetscTime(): 2.58e-08
Average time for MPI_Barrier(): 4.721e-06
Average time for zero size MPI_Send(): 2.6493e-06
#PETSc Option Table entries:
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murr_monthly/gmg/h1.profile # (source: code)
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

