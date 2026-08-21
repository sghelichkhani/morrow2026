****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0645.gadi.nci.org.au with 416 processes, by sg8812 on Thu Aug 20 23:39:40 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           6.003e+02     1.000   6.003e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                5.635e+11     1.187   5.278e+11  2.196e+14
Flops/sec:            9.387e+08     1.187   8.793e+08  3.658e+11
MPI Msg Count:        1.811e+05     4.372   1.105e+05  4.596e+07
MPI Msg Len (bytes):  1.199e+10     2.990   6.855e+04  3.151e+12
MPI Reductions:       2.100e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 4.2175e+02  70.3%  1.8677e+14  85.1%  1.802e+07  39.2%  1.243e+05       71.1%  1.640e+04  78.1%
 1:        MG Apply: 1.7855e+02  29.7%  3.2800e+13  14.9%  2.794e+07  60.8%  3.257e+04       28.9%  4.585e+03  21.8%

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

BuildTwoSided       1499 1.0 6.3609e+01 3.5 0.00e+00 0.0 3.6e+05 4.0e+00 1.4e+03  7  0  1  0  7  10  0  2  0  9    -0
BuildTwoSidedF      1362 1.0 6.0753e+01 2.8 0.00e+00 0.0 5.0e+05 1.4e+06 1.4e+03  7  0  1 23  6  10  0  3 32  8    -0
SFSetGraph           143 1.0 1.1339e-02 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              137 1.0 5.5197e+00 138.2 0.00e+00 0.0 2.2e+05 1.4e+03 8.1e+01  0  0  0  0  0   0  0  1  0  0    -0
SFBcastBegin         818 1.0 3.6381e-01 3.2 0.00e+00 0.0 1.7e+06 9.3e+04 0.0e+00  0  0  4  5  0   0  0 10  7  0    -0
SFBcastEnd           818 1.0 1.5947e+01 97.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        331 1.0 8.4519e-02 17.8 0.00e+00 0.0 7.2e+05 1.1e+05 0.0e+00  0  0  2  2  0   0  0  4  4  0    -0
SFReduceEnd          331 1.0 2.4422e+00 52.7 3.78e+07 3.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  4031
SFFetchOpBegin         4 1.0 2.0461e-05 5.1 0.00e+00 0.0 7.3e+03 4.4e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           4 1.0 9.9622e-04 37.0 0.00e+00 0.0 7.3e+03 4.4e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          3 1.0 1.6451e-03 2.9 0.00e+00 0.0 4.1e+03 1.2e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         36 1.0 9.3366e-03 1.4 0.00e+00 0.0 1.8e+05 5.1e+01 4.2e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           37 1.0 5.2492e-03 3.7 0.00e+00 0.0 8.5e+04 2.5e+01 3.7e+01  0  0  0  0  0   0  0  0  0  0    -0
SFRemoteOff            1 1.0 6.1039e-05 3.8 0.00e+00 0.0 2.4e+03 1.1e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack            289590 1.1 1.8268e+00 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack          289594 1.1 1.9484e-01 6.3 3.78e+07 3.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 50518
VecDot               225 1.0 6.3379e-01 8.6 9.07e+07 1.1 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  1   0  0  0  0  1 58626
VecMDot             6062 1.0 3.1793e+01 3.4 8.21e+09 1.1 0.0e+00 0.0e+00 6.1e+03  4  2  0  0 29   5  2  0  0 37 105738
VecNorm             7262 1.0 8.5309e+00 2.9 2.00e+09 1.1 0.0e+00 0.0e+00 7.3e+03  1  0  0  0 35   1  0  0  0 44 95955
VecScale            6737 1.0 2.2089e-01 1.2 8.93e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 1656681
VecCopy             2026 1.0 1.0195e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              6300 1.0 2.2528e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              675 1.0 2.3074e-01 1.4 1.82e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 322190
VecWAXPY             225 1.0 1.9520e-01 1.2 4.54e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 95177
VecMAXPY            6737 1.0 1.0647e+01 1.1 9.81e+09 1.1 0.0e+00 0.0e+00 0.0e+00  2  2  0  0  0   2  2  0  0  0 377523
VecScatterBegin   288437 1.1 7.2411e+00 1.5 0.00e+00 0.0 1.4e+07 8.0e+04 0.0e+00  1  0 30 35  0   2  0 77 49  0    -0
VecScatterEnd     288437 1.1 1.4811e+01 22.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecReduceArith       450 1.0 1.0749e-01 2.1 1.81e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 691313
VecReduceComm        225 1.0 1.5798e-01 8.7 0.00e+00 0.0 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  1   0  0  0  0  1    -0
VecNormalize        4782 1.0 5.5257e+00 3.5 1.50e+09 1.1 0.0e+00 0.0e+00 4.8e+03  1  0  0  0 23   1  0  0  0 29 111036
MatMult             6287 1.0 9.4652e+01 1.2 6.02e+10 1.1 1.4e+07 8.0e+04 0.0e+00 14 11 30 35  0  20 13 77 49  0 259535
MatSolve          140907 1.1 3.6738e+01 1.6 1.75e+10 1.1 0.0e+00 0.0e+00 0.0e+00  5  3  0  0  0   7  4  0  0  0 194558
MatLUFactorSym        57 1.1 1.8376e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum     12826 1.1 6.2055e+00 1.3 7.23e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   1  2  0  0  0 476980
MatILUFactorSym        1 1.0 6.0406e-05 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin   14898 1.1 6.1371e+01 2.0 0.00e+00 0.0 5.0e+05 1.4e+06 1.4e+03  8  0  1 23  6  11  0  3 32  8    -0
MatAssemblyEnd     14898 1.1 1.7913e+01 12.3 2.72e+08 0.0 1.3e+04 9.9e+03 4.4e+01  1  0  0  0  0   2  0  0  0  0  2488
MatGetRowIJ           57 1.1 3.7337e-05 3.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats     225 1.0 1.4406e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 5.7e+01  2  0  0  0  0   3  0  0  0  0    -0
MatGetOrdering        57 1.1 1.6586e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       675 1.0 3.8852e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
MatTranspose           5 1.0 6.1449e-03 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          5 1.0 8.0807e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        901 1.0 2.2017e+00 1.2 3.27e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   0  1  0  0  0 605213
MatPtAPSymbolic        2 1.0 1.0675e-01 1.0 0.00e+00 0.0 1.3e+04 9.9e+04 1.4e+01  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       450 1.0 2.2129e+01 1.0 1.31e+10 1.1 1.0e+06 1.8e+05 4.6e+02  4  2  2  6  2   5  3  6  8  3 240970
MatGetLocalMat       452 1.0 9.4025e-01 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        452 1.0 1.0505e+00 2.3 0.00e+00 0.0 1.0e+06 1.8e+05 0.0e+00  0  0  2  6  0   0  0  6  8  0    -0
MatSetPreallCOO       16 1.0 4.7485e-05 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       16 1.0 2.4430e-05 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp              225 1.0 1.5249e+02 1.0 8.24e+10 1.1 1.1e+07 7.3e+04 1.0e+04 25 15 23 24 49  36 18 59 34 62 220995
PCApply             1730 1.0 1.8778e+02 1.1 8.05e+10 1.1 2.8e+07 3.3e+04 4.6e+03 30 15 61 29 22 Multiple stages 174670
PCApplyOnBlocks   140907 1.1 4.3251e+01 1.5 2.47e+10 1.1 0.0e+00 0.0e+00 0.0e+00  6  5  0  0  0   8  5  0  0  0 233671
KSPSetUp             225 1.0 6.8576e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             225 1.0 2.2908e+02 1.0 1.14e+11 1.1 3.2e+07 4.3e+04 8.3e+03 38 21 69 43 39 Multiple stages 202314
KSPGMRESOrthog      6062 1.0 4.0030e+01 2.3 1.64e+10 1.1 0.0e+00 0.0e+00 6.1e+03  5  3  0  0 29   7  4  0  0 37 167963
DMRefine               1 1.0 2.9875e-02 1.0 1.04e+03 1.0 1.4e+04 2.3e+01 3.0e+01  0  0  0  0  0   0  0  0  0  0    15
DMPlexCreateGmsh       1 1.0 2.0521e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 6.4247e+00 297.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   1  0  0  0  0    -0
Mesh Partition         3 1.0 1.2906e-01 1.0 0.00e+00 0.0 5.5e+04 4.4e+01 3.8e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         3 1.0 2.4761e-02 1.1 0.00e+00 0.0 2.0e+05 4.9e+01 1.8e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 3.8875e-03 1133.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       3 1.0 2.6544e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        3 1.0 4.2392e-03 1.3 0.00e+00 0.0 1.1e+04 3.5e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       3 1.0 1.2777e-03 5.3 0.00e+00 0.0 5.3e+03 1.3e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          3 1.0 2.5389e-03 2.3 0.00e+00 0.0 5.7e+03 1.7e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          15 1.0 9.9627e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 1.3367e-01 1.0 0.00e+00 0.0 1.7e+04 1.8e+02 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        3 1.0 2.9064e-03 1.1 0.00e+00 0.0 3.1e+04 7.9e+01 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       3 1.0 9.7676e-03 1.0 0.00e+00 0.0 1.0e+05 4.8e+01 1.1e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistOvrlp        2 1.0 2.3431e-02 1.0 0.00e+00 0.0 2.4e+05 4.2e+01 1.6e+02  0  0  1  0  1   0  0  1  0  1    -0
DMPlexDistField        5 1.0 5.9555e-03 1.4 0.00e+00 0.0 4.6e+04 3.5e+01 1.4e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         1 1.0 1.7340e-04 1.2 0.00e+00 0.0 1.2e+04 1.8e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify        23 1.0 7.0038e-03 7.3 0.00e+00 0.0 0.0e+00 0.0e+00 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      23 1.0 5.3369e-04 24.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          1 1.0 6.4390e-05 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          1 1.0 2.4403e-03 2.2 0.00e+00 0.0 7.1e+03 1.8e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          1 1.0 4.4937e-05 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          1 1.0 2.1641e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             1 1.0 2.8616e-04 2.8 0.00e+00 0.0 7.1e+03 1.8e+01 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         1 1.0 3.3528e-05 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         1 1.0 4.8314e-04 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMSwarmSetSizes        2 1.0 1.9847e-05 3.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             75 1.0 5.3348e+02 1.0 5.63e+11 1.2 4.5e+07 6.9e+04 2.0e+04 89 100 99 100 97 Multiple stages 411551
SNESSetUp              1 1.0 4.5028e-05 6.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     300 1.0 2.2219e+01 1.1 1.42e+11 1.3 1.5e+06 1.2e+05 0.0e+00  3 24  3  6  0   5 29  8  8  0 2412743
SNESJacobianEval     225 1.0 1.2396e+02 1.0 2.22e+11 1.3 9.9e+05 7.8e+05 9.0e+02 21 38  2 25  4  29 45  6 34  5 680622
SNESLineSearch       225 1.0 1.4585e+01 1.0 1.10e+11 1.3 1.5e+06 1.2e+05 9.0e+02  2 19  3  6  4   3 22  8  8  5 2860868
DualSpaceSetUp         4 1.0 3.7671e-03 1.4 5.40e+01 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     6
FESetUp                4 1.0 1.8458e-02 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 5.9812e+02 1.0 5.63e+11 1.2 4.6e+07 6.9e+04 2.1e+04 100 100 100 100 100 Multiple stages 367098
firedrake.__init__       1 1.0 1.5164e+01 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
CreateMesh             2 1.0 6.6192e+00 30.8 0.00e+00 0.0 4.8e+05 4.9e+01 3.2e+02  0  0  1  0  2   1  0  3  0  2    -0
firedrake.mesh._from_gmsh       1 1.0 6.4255e+00 296.5 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       2 1.0 1.2783e-03 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       2 1.0 3.8254e-05 13.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        4 1.0 4.5571e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          2 1.0 8.0639e-04 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      24 1.0 3.1358e-02 1.2 0.00e+00 0.0 1.9e+04 6.4e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      29 1.0 2.1055e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      26 1.0 2.8524e-02 1.2 0.00e+00 0.0 1.9e+04 6.4e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      25 1.0 2.5696e-02 1.3 0.00e+00 0.0 1.9e+04 6.4e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      25 1.0 2.5549e-02 1.3 0.00e+00 0.0 1.9e+04 6.4e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      50 1.0 8.8708e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       4 1.0 4.3896e-03 1.3 0.00e+00 0.0 9.8e+03 5.4e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       8 1.0 5.5253e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      16 1.0 1.8655e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      66 1.0 2.9304e-02 4.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          2 1.0 9.9139e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       2 1.0 1.9513e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       5 1.0 5.1243e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       4 1.0 1.0404e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       2 1.0 9.8643e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     648 1.0 7.8789e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      2418 1.0 1.1343e+02 1.2 3.64e+11 1.3 1.4e+06 1.2e+05 2.6e+01 17 63  3  5  0  24 74  8  7  0 1216096
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       4 1.0 9.4649e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    4836 1.0 2.6678e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  4  0  0  0  0   6  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      19 1.0 1.1200e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
GlobalKernel: generate loopy      19 0.0 1.4416e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      19 0.0 8.7939e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      20 1.0 1.9210e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   4  0  0  0  0    -0
pyop2.compilation.load      20 1.0 1.9209e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   4  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      20 1.0 1.0325e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.make_so      20 1.0 1.0092e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
ParLoopRednBegin    2418 1.0 6.9593e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      2418 1.0 6.2878e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       2 1.0 6.8955e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong       2 1.0 8.1634e+00 1.0 5.44e+06 1.1 2.4e+04 1.6e+04 7.0e+00  1  0  0  0  0   2  0  0  0  0   273
firedrake.interpolation.interpolate      16 1.0 5.3309e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      13 1.0 1.2266e+01 1.0 4.07e+07 1.1 8.7e+04 2.6e+04 1.1e+02  2  0  0  0  1   3  0  0  0  1  1360
firedrake.formmanipulation.split_form      14 1.0 6.5214e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      14 1.0 1.5004e-03 9.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      14 1.0 3.2073e-01 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       8 1.0 2.7272e-01 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     618 1.0 5.8943e+00 19.7 0.00e+00 0.0 1.4e+06 1.2e+05 3.0e+00  0  0  3  5  0   1  0  8  7  0    -0
Parloop_Cells_wrap_expression_kernel      28 1.0 7.2349e+00 1.0 4.07e+07 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0  2306
firedrake.halo.Halo.global_to_local_end     618 1.0 1.2464e+01 119.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       2 1.0 8.9034e+00 56.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
Parloop_set_#x14ab3fbd2ed0_wrap_pyop2_kernel_prolong       4 0.0 7.6372e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 3.9539e+00 1.0 3.41e+07 1.1 3.4e+04 5.9e+04 1.1e+01  1  0  0  0  0   1  0  0  0  0  3529
firedrake.function.Function.assign     314 1.0 8.5385e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     313 1.0 7.7401e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.9745e-04 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate     154 1.0 1.4608e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 4.8528e-05 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.4847e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.9805e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.2357e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 5.2241e+00 1.0 0.00e+00 0.0 1.4e+04 4.8e+05 2.3e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 1.9558e-03 4.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.5482e-04 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.1530e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.1530e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateSparsity         3 1.0 2.0553e+00 1.2 0.00e+00 0.0 2.1e+04 1.5e+05 3.2e+01  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         3 1.0 2.8549e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      75 1.0 5.3363e+02 1.0 5.63e+11 1.2 4.5e+07 6.9e+04 2.0e+04 89 100 99 100 98 Multiple stages 411434
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 2.8231e-01 1035.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 8.1380e-06 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 2.8226e-01 1251.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 2.8223e-01 1427.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     600 1.0 5.0421e+00 1.3 3.44e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   1  8  0  0  0 2792948
Parloop_Cells_wrap_form0_exterior_facet_top_integral     600 1.0 1.1144e+00 1.1 2.23e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   821
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral     600 1.0 1.4162e+00 1.1 5.90e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 17343
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     600 1.0 3.4595e+00 1.1 3.31e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   1  7  0  0  0 3916054
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     600 1.0 7.4232e+00 1.3 7.44e+10 1.5 0.0e+00 0.0e+00 0.0e+00  1 12  0  0  0   2 14  0  0  0 3495050
firedrake.halo.Halo.local_to_global_begin     300 1.0 9.4300e-02 8.5 0.00e+00 0.0 6.6e+05 1.2e+05 0.0e+00  0  0  1  2  0   0  0  4  4  0    -0
firedrake.halo.Halo.local_to_global_end     300 1.0 2.4439e+00 49.5 3.78e+07 3.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  4028
Parloop_Cells_wrap_form00_cell_integral     450 1.0 1.6916e+01 1.5 4.81e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  9  0  0  0   3 11  0  0  0 1165052
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     450 1.0 1.8432e+00 1.7 4.51e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 10177
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     450 1.0 2.0045e+01 1.2 6.38e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3 12  0  0  0   4 14  0  0  0 1302963
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     450 1.0 4.9768e+01 1.7 1.10e+11 1.5 0.0e+00 0.0e+00 0.0e+00  6 18  0  0  0   9 21  0  0  0 773184
firedrake.dmhooks.get_function_space       2 1.0 2.2706e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       2 1.0 8.2899e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.VertexOnlyMesh       1 1.0 4.4865e+00 1.0 0.00e+00 0.0 2.9e+04 5.2e+01 1.1e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh._pic_swarm_in_mesh       1 1.0 4.4794e+00 1.0 0.00e+00 0.0 2.1e+04 4.3e+01 6.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh._parent_mesh_embedding       1 1.0 4.4489e+00 1.0 0.00e+00 0.0 1.2e+04 1.8e+01 4.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshGeometry.locate_cells_ref_coords_and_dists       1 1.0 4.2030e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshGeometry._c_locator       1 1.0 4.1973e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.src_locate_cell       1 1.0 3.7842e+00 22.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.pointquery_utils.compile_coordinate_element       1 1.0 3.7759e+00 35.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.pointquery_utils.make_wrapper       1 1.0 3.1978e+00 481.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.parloop.generate_single_cell_wrapper       1 1.0 3.1977e+00 486.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
c_locator_run          1 1.0 1.7239e-02 5.5 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._ctypes       1 1.0 1.4300e-02 10.6 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._constant_ctypes       1 1.0 9.0703e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.rtree       1 1.0 1.8205e-03 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.bounding_box_coords       1 1.0 1.2661e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
rtree_build            1 1.0 1.6544e-03 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._dmswarm_create       2 1.0 6.1723e-03 16.7 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._swarm_original_ordering_preserve       1 1.0 2.9080e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.VertexOnlyMeshTopology.__init__       2 1.0 1.0201e-02 1.9 0.00e+00 0.0 8.8e+03 7.5e+01 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_vom_from_vom_topology       2 1.0 2.1859e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.action       1 1.0 2.7687e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0      225 1.0 4.9874e-01 1.2 3.27e+07 1.1 5.1e+06 1.2e+02 4.9e+03  0  0 11  0 23   0  0 28  0 30 26455
MGSetup Level 1      225 1.0 1.2260e+02 1.0 6.93e+10 1.1 5.0e+06 1.2e+05 4.8e+03 20 13 11 19 23  29 15 28 26 29 231282
firedrake.constant.Constant.assign      75 1.0 3.5565e-03 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b0e952890_wrap_pyop2_kernel_prolong       4 0.0 7.6338e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dba8526490_wrap_pyop2_kernel_prolong       4 0.0 7.6702e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc36a4f710_wrap_pyop2_kernel_prolong       4 0.0 7.7284e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150bff296a90_wrap_pyop2_kernel_prolong       4 0.0 7.6845e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f7b1ce6d0_wrap_pyop2_kernel_prolong       4 0.0 7.7320e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14edba575dd0_wrap_pyop2_kernel_prolong       4 0.0 7.7129e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151d4521a450_wrap_pyop2_kernel_prolong       4 0.0 7.7193e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15505e5eec10_wrap_pyop2_kernel_prolong       4 0.0 7.7034e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148926899a10_wrap_pyop2_kernel_prolong       4 0.0 7.7272e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d1e962a210_wrap_pyop2_kernel_prolong       4 0.0 7.7043e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146577dd3250_wrap_pyop2_kernel_prolong       4 0.0 7.7051e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15370f069190_wrap_pyop2_kernel_prolong       4 0.0 7.6718e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d970dcac90_wrap_pyop2_kernel_prolong       4 0.0 7.7355e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cbe5d19890_wrap_pyop2_kernel_prolong       4 0.0 7.6396e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cb9c431e50_wrap_pyop2_kernel_prolong       4 0.0 7.6338e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ddbbb7a50_wrap_pyop2_kernel_prolong       4 0.0 7.7022e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146ae16be910_wrap_pyop2_kernel_prolong       4 0.0 7.6626e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f47d97a150_wrap_pyop2_kernel_prolong       4 0.0 7.6988e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15009a98ac90_wrap_pyop2_kernel_prolong       4 0.0 7.6746e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152ec9ae5a10_wrap_pyop2_kernel_prolong       4 0.0 7.7403e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14939ac89050_wrap_pyop2_kernel_prolong       4 0.0 7.7151e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c8a5bcf10_wrap_pyop2_kernel_prolong       4 0.0 7.6935e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145bbd336610_wrap_pyop2_kernel_prolong       4 0.0 7.6636e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b69809c50_wrap_pyop2_kernel_prolong       4 0.0 7.7307e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153e69a45e90_wrap_pyop2_kernel_prolong       4 0.0 7.7275e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d5b06854d0_wrap_pyop2_kernel_prolong       4 0.0 7.6633e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f3bff81e50_wrap_pyop2_kernel_prolong       4 0.0 7.6727e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15364ac19250_wrap_pyop2_kernel_prolong       4 0.0 7.7310e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cc45ca0610_wrap_pyop2_kernel_prolong       4 0.0 7.7330e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154bc8a95590_wrap_pyop2_kernel_prolong       4 0.0 7.7049e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f0d1d1de90_wrap_pyop2_kernel_prolong       4 0.0 7.6684e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e2cea45550_wrap_pyop2_kernel_prolong       4 0.0 7.6898e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e3a6ef010_wrap_pyop2_kernel_prolong       4 0.0 7.6953e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a1a993850_wrap_pyop2_kernel_prolong       4 0.0 7.6856e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bbf99ad690_wrap_pyop2_kernel_prolong       4 0.0 7.7360e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153396c88510_wrap_pyop2_kernel_prolong       4 0.0 7.7108e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f819563310_wrap_pyop2_kernel_prolong       4 0.0 7.6938e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147edf0b7bd0_wrap_pyop2_kernel_prolong       4 0.0 7.7253e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1471a2b44610_wrap_pyop2_kernel_prolong       4 0.0 7.7056e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1551572ae690_wrap_pyop2_kernel_prolong       4 0.0 7.6546e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1548bfdd1ad0_wrap_pyop2_kernel_prolong       4 0.0 7.6783e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154bdc2b54d0_wrap_pyop2_kernel_prolong       4 0.0 7.7284e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1471d454dc50_wrap_pyop2_kernel_prolong       4 0.0 7.6744e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f48ad9eed0_wrap_pyop2_kernel_prolong       4 0.0 7.6942e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152ea644d6d0_wrap_pyop2_kernel_prolong       4 0.0 7.7341e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c59b8acf50_wrap_pyop2_kernel_prolong       4 0.0 7.6816e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15414431c310_wrap_pyop2_kernel_prolong       4 0.0 7.6624e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1500fa555210_wrap_pyop2_kernel_prolong       4 0.0 7.6834e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150263c1b290_wrap_pyop2_kernel_prolong       4 0.0 7.6727e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149be359a790_wrap_pyop2_kernel_prolong       4 0.0 7.6416e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148184c95990_wrap_pyop2_kernel_prolong       4 0.0 7.7320e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd90918210_wrap_pyop2_kernel_prolong       4 0.0 7.6220e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df0d89acd0_wrap_pyop2_kernel_prolong       4 0.0 7.6469e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1490677a3090_wrap_pyop2_kernel_prolong       4 0.0 7.6364e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf0a082710_wrap_pyop2_kernel_prolong       4 0.0 7.6279e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1acb5e890_wrap_pyop2_kernel_prolong       4 0.0 7.6427e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a7c92e790_wrap_pyop2_kernel_prolong       4 0.0 7.6352e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145a46d94a90_wrap_pyop2_kernel_prolong       4 0.0 7.6432e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cb83b2c310_wrap_pyop2_kernel_prolong       4 0.0 7.6626e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d941153210_wrap_pyop2_kernel_prolong       4 0.0 7.6485e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151c5e30fc90_wrap_pyop2_kernel_prolong       4 0.0 7.6359e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1470772af650_wrap_pyop2_kernel_prolong       4 0.0 7.6519e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148545e1aa10_wrap_pyop2_kernel_prolong       4 0.0 7.6440e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1544cb53b6d0_wrap_pyop2_kernel_prolong       4 0.0 7.6449e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15211ca16510_wrap_pyop2_kernel_prolong       4 0.0 7.6451e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb5f834950_wrap_pyop2_kernel_prolong       4 0.0 7.6293e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f93104910_wrap_pyop2_kernel_prolong       4 0.0 7.6373e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bbe17533d0_wrap_pyop2_kernel_prolong       4 0.0 7.6401e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dfdc55ae10_wrap_pyop2_kernel_prolong       4 0.0 7.6411e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e2a5048d0_wrap_pyop2_kernel_prolong       4 0.0 7.6368e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14602cde5ad0_wrap_pyop2_kernel_prolong       4 0.0 7.6280e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154763893910_wrap_pyop2_kernel_prolong       4 0.0 7.6458e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152feac893d0_wrap_pyop2_kernel_prolong       4 0.0 7.6566e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1468bfaa21d0_wrap_pyop2_kernel_prolong       4 0.0 7.6525e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145c93a6cad0_wrap_pyop2_kernel_prolong       4 0.0 7.6575e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e0dc40d90_wrap_pyop2_kernel_prolong       4 0.0 7.6396e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522d4648910_wrap_pyop2_kernel_prolong       4 0.0 7.6532e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145e893f7890_wrap_pyop2_kernel_prolong       4 0.0 7.6229e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e1e2fbed10_wrap_pyop2_kernel_prolong       4 0.0 7.6636e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f6f2ac510_wrap_pyop2_kernel_prolong       4 0.0 7.6384e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1534646b9dd0_wrap_pyop2_kernel_prolong       4 0.0 7.6302e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dbeec7eb10_wrap_pyop2_kernel_prolong       4 0.0 7.6388e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e89a6b9790_wrap_pyop2_kernel_prolong       4 0.0 7.6411e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1465fa855110_wrap_pyop2_kernel_prolong       4 0.0 7.6283e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1507fbdc4c50_wrap_pyop2_kernel_prolong       4 0.0 7.6363e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153640a13450_wrap_pyop2_kernel_prolong       4 0.0 7.6422e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c892ae1910_wrap_pyop2_kernel_prolong       4 0.0 7.6400e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15397f165410_wrap_pyop2_kernel_prolong       4 0.0 7.6732e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e318fbea90_wrap_pyop2_kernel_prolong       4 0.0 7.6714e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150912aeddd0_wrap_pyop2_kernel_prolong       4 0.0 7.6581e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a2ceb9390_wrap_pyop2_kernel_prolong       4 0.0 7.6573e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153a5e7c8bd0_wrap_pyop2_kernel_prolong       4 0.0 7.6315e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd3a8104d0_wrap_pyop2_kernel_prolong       4 0.0 7.6335e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e8c1ff4a90_wrap_pyop2_kernel_prolong       4 0.0 7.6327e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa9cf5ca10_wrap_pyop2_kernel_prolong       4 0.0 7.6377e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b90f30110_wrap_pyop2_kernel_prolong       4 0.0 7.6453e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154a770dc410_wrap_pyop2_kernel_prolong       4 0.0 7.6324e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14755b822e50_wrap_pyop2_kernel_prolong       4 0.0 7.6372e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a1a775a10_wrap_pyop2_kernel_prolong       4 0.0 7.6412e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1504be99f810_wrap_pyop2_kernel_prolong       4 0.0 7.6446e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e8fd23150_wrap_pyop2_kernel_prolong       4 0.0 7.6439e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149bfea553d0_wrap_pyop2_kernel_prolong       4 0.0 7.6684e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1f83c6d50_wrap_pyop2_kernel_prolong       4 0.0 7.6501e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1523492cf510_wrap_pyop2_kernel_prolong       4 0.0 7.8797e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153dee23a6d0_wrap_pyop2_kernel_prolong       4 0.0 7.8718e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b73a558890_wrap_pyop2_kernel_prolong       4 0.0 7.8755e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1454e47d13d0_wrap_pyop2_kernel_prolong       4 0.0 7.8285e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a95d50d50_wrap_pyop2_kernel_prolong       4 0.0 7.8784e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15145c612790_wrap_pyop2_kernel_prolong       4 0.0 7.7460e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b38a93210_wrap_pyop2_kernel_prolong       4 0.0 7.8211e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eec5da7bd0_wrap_pyop2_kernel_prolong       4 0.0 7.8083e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fcc27567d0_wrap_pyop2_kernel_prolong       4 0.0 7.7919e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1539aeee15d0_wrap_pyop2_kernel_prolong       4 0.0 7.8354e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a364cf690_wrap_pyop2_kernel_prolong       4 0.0 7.8258e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a485523810_wrap_pyop2_kernel_prolong       4 0.0 7.8930e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145acd971e10_wrap_pyop2_kernel_prolong       4 0.0 7.8823e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e168e1ab50_wrap_pyop2_kernel_prolong       4 0.0 7.7679e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1470512f2450_wrap_pyop2_kernel_prolong       4 0.0 7.8562e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1512a2df4190_wrap_pyop2_kernel_prolong       4 0.0 7.7539e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c9dc3c390_wrap_pyop2_kernel_prolong       4 0.0 7.7538e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1535642fce10_wrap_pyop2_kernel_prolong       4 0.0 7.7538e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147468d34590_wrap_pyop2_kernel_prolong       4 0.0 7.7492e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145a9429be90_wrap_pyop2_kernel_prolong       4 0.0 7.7631e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149bcc3e3a50_wrap_pyop2_kernel_prolong       4 0.0 7.8043e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f5e66b6d0_wrap_pyop2_kernel_prolong       4 0.0 7.7563e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a76ed0ddd0_wrap_pyop2_kernel_prolong       4 0.0 7.7574e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152de876d190_wrap_pyop2_kernel_prolong       4 0.0 7.7485e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d812f94e50_wrap_pyop2_kernel_prolong       4 0.0 7.7866e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e6006bd650_wrap_pyop2_kernel_prolong       4 0.0 7.7871e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e6c51cd350_wrap_pyop2_kernel_prolong       4 0.0 7.8453e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe83d390d0_wrap_pyop2_kernel_prolong       4 0.0 7.7643e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150cfb6a4690_wrap_pyop2_kernel_prolong       4 0.0 7.7573e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b3722f5790_wrap_pyop2_kernel_prolong       4 0.0 7.7664e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14584ce3e650_wrap_pyop2_kernel_prolong       4 0.0 7.8764e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e6b2fae90_wrap_pyop2_kernel_prolong       4 0.0 7.8506e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe2b3c1f10_wrap_pyop2_kernel_prolong       4 0.0 7.8190e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1496f232ad90_wrap_pyop2_kernel_prolong       4 0.0 7.7532e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c79c2e8090_wrap_pyop2_kernel_prolong       4 0.0 7.8117e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146be1a18650_wrap_pyop2_kernel_prolong       4 0.0 7.8661e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fca0bd8650_wrap_pyop2_kernel_prolong       4 0.0 7.8584e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c1417c390_wrap_pyop2_kernel_prolong       4 0.0 7.8193e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e6ff38e50_wrap_pyop2_kernel_prolong       4 0.0 7.8543e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1505ab20b190_wrap_pyop2_kernel_prolong       4 0.0 7.8164e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a87bc5450_wrap_pyop2_kernel_prolong       4 0.0 7.7483e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b2ec7889d0_wrap_pyop2_kernel_prolong       4 0.0 7.8173e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15166d7dc4d0_wrap_pyop2_kernel_prolong       4 0.0 7.8534e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14febbb9ab90_wrap_pyop2_kernel_prolong       4 0.0 7.8045e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bcbd370190_wrap_pyop2_kernel_prolong       4 0.0 7.7731e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148dbebf5ad0_wrap_pyop2_kernel_prolong       4 0.0 7.8644e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15080add30d0_wrap_pyop2_kernel_prolong       4 0.0 7.8547e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ccc9b2890_wrap_pyop2_kernel_prolong       4 0.0 7.8781e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152a6fd8db90_wrap_pyop2_kernel_prolong       4 0.0 7.7599e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d4aaebe50_wrap_pyop2_kernel_prolong       4 0.0 7.7775e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e17c282ad0_wrap_pyop2_kernel_prolong       4 0.0 7.7579e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e182d93210_wrap_pyop2_kernel_prolong       4 0.0 7.8189e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c1a18ce6d0_wrap_pyop2_kernel_prolong       4 0.0 7.9572e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d436bf31d0_wrap_pyop2_kernel_prolong       4 0.0 7.7897e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c9b04af6d0_wrap_pyop2_kernel_prolong       4 0.0 7.7810e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e9c08516d0_wrap_pyop2_kernel_prolong       4 0.0 7.7504e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1508149300d0_wrap_pyop2_kernel_prolong       4 0.0 7.8543e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154d5f602750_wrap_pyop2_kernel_prolong       4 0.0 7.8627e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c39f300590_wrap_pyop2_kernel_prolong       4 0.0 7.7841e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc0d1e3110_wrap_pyop2_kernel_prolong       4 0.0 7.7644e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1496760dab90_wrap_pyop2_kernel_prolong       4 0.0 7.7530e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1502fd642b10_wrap_pyop2_kernel_prolong       4 0.0 7.7561e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153abd785ad0_wrap_pyop2_kernel_prolong       4 0.0 7.7510e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519b818f310_wrap_pyop2_kernel_prolong       4 0.0 7.7961e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e4f27a250_wrap_pyop2_kernel_prolong       4 0.0 7.8545e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be0e895450_wrap_pyop2_kernel_prolong       4 0.0 7.7884e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f94ad17210_wrap_pyop2_kernel_prolong       4 0.0 7.7865e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d0359bf10_wrap_pyop2_kernel_prolong       4 0.0 7.7578e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15457cebe750_wrap_pyop2_kernel_prolong       4 0.0 7.7822e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c7a5295e10_wrap_pyop2_kernel_prolong       4 0.0 7.7948e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f8f9166090_wrap_pyop2_kernel_prolong       4 0.0 7.8465e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e010518510_wrap_pyop2_kernel_prolong       4 0.0 7.8288e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145eab6e3710_wrap_pyop2_kernel_prolong       4 0.0 7.8787e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152431910850_wrap_pyop2_kernel_prolong       4 0.0 7.8112e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1531c33357d0_wrap_pyop2_kernel_prolong       4 0.0 7.7520e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15434d85d6d0_wrap_pyop2_kernel_prolong       4 0.0 7.7915e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498a21f5490_wrap_pyop2_kernel_prolong       4 0.0 7.9401e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1525322acbd0_wrap_pyop2_kernel_prolong       4 0.0 7.7783e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a67270a90_wrap_pyop2_kernel_prolong       4 0.0 7.8161e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f3479bc3d0_wrap_pyop2_kernel_prolong       4 0.0 7.7559e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153bd4b10510_wrap_pyop2_kernel_prolong       4 0.0 7.7859e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f15b611a10_wrap_pyop2_kernel_prolong       4 0.0 7.9795e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab4eb30350_wrap_pyop2_kernel_prolong       4 0.0 7.7639e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1503370cd890_wrap_pyop2_kernel_prolong       4 0.0 7.7529e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eed6d6abd0_wrap_pyop2_kernel_prolong       4 0.0 7.7663e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146dfc98a8d0_wrap_pyop2_kernel_prolong       4 0.0 7.8662e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d7098592d0_wrap_pyop2_kernel_prolong       4 0.0 7.8662e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd6e043c50_wrap_pyop2_kernel_prolong       4 0.0 7.7900e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a64dc98350_wrap_pyop2_kernel_prolong       4 0.0 7.8397e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1480e7b04750_wrap_pyop2_kernel_prolong       4 0.0 7.7546e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fea5303890_wrap_pyop2_kernel_prolong       4 0.0 7.8202e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a09a18e90_wrap_pyop2_kernel_prolong       4 0.0 7.7895e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ff92b3c50_wrap_pyop2_kernel_prolong       4 0.0 7.8386e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456c2750410_wrap_pyop2_kernel_prolong       4 0.0 7.8140e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15097c2740d0_wrap_pyop2_kernel_prolong       4 0.0 7.7916e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b075ad8350_wrap_pyop2_kernel_prolong       4 0.0 7.7768e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f0bceb31d0_wrap_pyop2_kernel_prolong       4 0.0 7.8463e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14647b6e3110_wrap_pyop2_kernel_prolong       4 0.0 7.8505e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ca221a52d0_wrap_pyop2_kernel_prolong       4 0.0 7.8326e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1462b09249d0_wrap_pyop2_kernel_prolong       4 0.0 7.7735e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497b4392fd0_wrap_pyop2_kernel_prolong       4 0.0 7.8423e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154a9042ac90_wrap_pyop2_kernel_prolong       4 0.0 7.9393e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f604892b10_wrap_pyop2_kernel_prolong       4 0.0 7.7634e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b097cefd50_wrap_pyop2_kernel_prolong       4 0.0 7.8047e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e6288fe890_wrap_pyop2_kernel_prolong       4 0.0 7.7342e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b4e4a0ccd0_wrap_pyop2_kernel_prolong       4 0.0 7.7274e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d15a9d0910_wrap_pyop2_kernel_prolong       4 0.0 7.7250e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148174202f10_wrap_pyop2_kernel_prolong       4 0.0 7.7336e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c9de6a90d0_wrap_pyop2_kernel_prolong       4 0.0 7.7223e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146b798883d0_wrap_pyop2_kernel_prolong       4 0.0 7.7371e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152bb8e66bd0_wrap_pyop2_kernel_prolong       4 0.0 7.7196e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150c1862c710_wrap_pyop2_kernel_prolong       4 0.0 7.7539e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154062aeed50_wrap_pyop2_kernel_prolong       4 0.0 7.7282e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15473effe890_wrap_pyop2_kernel_prolong       4 0.0 7.7220e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14866d9fdd50_wrap_pyop2_kernel_prolong       4 0.0 7.7248e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1508f0c72e10_wrap_pyop2_kernel_prolong       4 0.0 7.7429e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1512ab5512d0_wrap_pyop2_kernel_prolong       4 0.0 7.7490e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145ea497e2d0_wrap_pyop2_kernel_prolong       4 0.0 7.7246e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e3ac4af1d0_wrap_pyop2_kernel_prolong       4 0.0 7.7276e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e1644db10_wrap_pyop2_kernel_prolong       4 0.0 7.7286e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b77e821290_wrap_pyop2_kernel_prolong       4 0.0 7.7188e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14822f30add0_wrap_pyop2_kernel_prolong       4 0.0 7.7274e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1496d1ae7110_wrap_pyop2_kernel_prolong       4 0.0 7.7256e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d1b62e9990_wrap_pyop2_kernel_prolong       4 0.0 7.7455e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c38878f610_wrap_pyop2_kernel_prolong       4 0.0 7.7222e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ddb7e91f10_wrap_pyop2_kernel_prolong       4 0.0 7.7321e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1517c776a7d0_wrap_pyop2_kernel_prolong       4 0.0 7.7308e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15512c116590_wrap_pyop2_kernel_prolong       4 0.0 7.7320e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eceb1cf1d0_wrap_pyop2_kernel_prolong       4 0.0 7.7205e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1476e420b490_wrap_pyop2_kernel_prolong       4 0.0 7.7433e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd9dbf7810_wrap_pyop2_kernel_prolong       4 0.0 7.7197e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b606592f10_wrap_pyop2_kernel_prolong       4 0.0 7.7388e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b1eab8e50_wrap_pyop2_kernel_prolong       4 0.0 7.7294e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151d22becdd0_wrap_pyop2_kernel_prolong       4 0.0 7.7247e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154aad15fb90_wrap_pyop2_kernel_prolong       4 0.0 7.7382e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14739cfb2590_wrap_pyop2_kernel_prolong       4 0.0 7.7311e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1530ae140790_wrap_pyop2_kernel_prolong       4 0.0 7.7221e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d6ea283b50_wrap_pyop2_kernel_prolong       4 0.0 7.7249e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d33b6c7fd0_wrap_pyop2_kernel_prolong       4 0.0 7.7268e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e2cd23150_wrap_pyop2_kernel_prolong       4 0.0 7.7214e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e771271890_wrap_pyop2_kernel_prolong       4 0.0 7.7662e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1509de071850_wrap_pyop2_kernel_prolong       4 0.0 7.7182e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f303786150_wrap_pyop2_kernel_prolong       4 0.0 7.7281e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1510c62b64d0_wrap_pyop2_kernel_prolong       4 0.0 7.7134e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1471eea39050_wrap_pyop2_kernel_prolong       4 0.0 7.7237e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146021179450_wrap_pyop2_kernel_prolong       4 0.0 7.7211e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1502f3238810_wrap_pyop2_kernel_prolong       4 0.0 7.7305e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1536caf11110_wrap_pyop2_kernel_prolong       4 0.0 7.7313e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15067b4d3e90_wrap_pyop2_kernel_prolong       4 0.0 7.7417e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1537ce5e1410_wrap_pyop2_kernel_prolong       4 0.0 7.7575e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15301cad8ad0_wrap_pyop2_kernel_prolong       4 0.0 7.7325e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f18e6add10_wrap_pyop2_kernel_prolong       4 0.0 7.7763e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1544947beb10_wrap_pyop2_kernel_prolong       4 0.0 7.7200e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1501802c7590_wrap_pyop2_kernel_prolong       4 0.0 7.7723e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1502d98e8c50_wrap_pyop2_kernel_prolong       4 0.0 7.7726e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151025669950_wrap_pyop2_kernel_prolong       4 0.0 7.7520e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a1e1765e50_wrap_pyop2_kernel_prolong       4 0.0 7.7151e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14801a896c50_wrap_pyop2_kernel_prolong       4 0.0 7.7245e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d8f5e41450_wrap_pyop2_kernel_prolong       4 0.0 7.7623e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145bd568b390_wrap_pyop2_kernel_prolong       4 0.0 7.7380e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1496c7217f90_wrap_pyop2_kernel_prolong       4 0.0 7.7519e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c72776510_wrap_pyop2_kernel_prolong       4 0.0 7.7563e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f87ae62c90_wrap_pyop2_kernel_prolong       4 0.0 7.7353e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15147a3fc110_wrap_pyop2_kernel_prolong       4 0.0 7.7343e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1460029dae10_wrap_pyop2_kernel_prolong       4 0.0 7.7438e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed9fa1b9d0_wrap_pyop2_kernel_prolong       4 0.0 7.7508e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152a8c1b02d0_wrap_pyop2_kernel_prolong       4 0.0 7.7451e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150fadd24990_wrap_pyop2_kernel_prolong       4 0.0 7.7443e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a4841cea50_wrap_pyop2_kernel_prolong       4 0.0 7.7390e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1486dedfaf90_wrap_pyop2_kernel_prolong       4 0.0 7.7178e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ca79b83a90_wrap_pyop2_kernel_prolong       4 0.0 7.7246e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1481d8e96110_wrap_pyop2_kernel_prolong       4 0.0 7.7352e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145a7501b1d0_wrap_pyop2_kernel_prolong       4 0.0 7.7242e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1480f43c9890_wrap_pyop2_kernel_prolong       4 0.0 7.7431e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1545ddafab10_wrap_pyop2_kernel_prolong       4 0.0 7.7397e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff5fdcca10_wrap_pyop2_kernel_prolong       4 0.0 7.7263e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154abd0770d0_wrap_pyop2_kernel_prolong       4 0.0 7.7308e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f906549890_wrap_pyop2_kernel_prolong       4 0.0 7.7408e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14655a6ebcd0_wrap_pyop2_kernel_prolong       4 0.0 7.7407e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148707474950_wrap_pyop2_kernel_prolong       4 0.0 7.7341e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493cbaca710_wrap_pyop2_kernel_prolong       4 0.0 7.7474e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152ab3d70b10_wrap_pyop2_kernel_prolong       4 0.0 7.7508e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa1599eb50_wrap_pyop2_kernel_prolong       4 0.0 7.7224e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15485fc57bd0_wrap_pyop2_kernel_prolong       4 0.0 7.7446e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145759596e10_wrap_pyop2_kernel_prolong       4 0.0 7.7283e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154a91124790_wrap_pyop2_kernel_prolong       4 0.0 7.7439e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e16ef5090_wrap_pyop2_kernel_prolong       4 0.0 7.7380e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14acbd9efc50_wrap_pyop2_kernel_prolong       4 0.0 7.7502e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14626c32ee10_wrap_pyop2_kernel_prolong       4 0.0 7.7227e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bafad05850_wrap_pyop2_kernel_prolong       4 0.0 7.7399e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a52076c6d0_wrap_pyop2_kernel_prolong       4 0.0 7.7505e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15173d1353d0_wrap_pyop2_kernel_prolong       4 0.0 7.7419e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153e31b1d810_wrap_pyop2_kernel_prolong       4 0.0 7.7652e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c1d4affe10_wrap_pyop2_kernel_prolong       4 0.0 7.7430e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aeb6675590_wrap_pyop2_kernel_prolong       4 0.0 7.7481e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f2ec56dd0_wrap_pyop2_kernel_prolong       4 0.0 7.7452e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1cf788610_wrap_pyop2_kernel_prolong       4 0.0 7.7405e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d9cf9ca310_wrap_pyop2_kernel_prolong       4 0.0 7.7524e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c898d67750_wrap_pyop2_kernel_prolong       4 0.0 7.7410e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15522af27110_wrap_pyop2_kernel_prolong       4 0.0 7.7330e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153a274b6b50_wrap_pyop2_kernel_prolong       4 0.0 7.7503e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac1ccd6b10_wrap_pyop2_kernel_prolong       4 0.0 7.7377e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f4c2235350_wrap_pyop2_kernel_prolong       4 0.0 7.7299e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a924ee590_wrap_pyop2_kernel_prolong       4 0.0 7.7410e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad6d621e10_wrap_pyop2_kernel_prolong       4 0.0 7.7459e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153cf636c6d0_wrap_pyop2_kernel_prolong       4 0.0 7.7524e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152f0eb68f50_wrap_pyop2_kernel_prolong       4 0.0 7.7446e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148090cf0710_wrap_pyop2_kernel_prolong       4 0.0 7.7543e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd59ae8fd0_wrap_pyop2_kernel_prolong       4 0.0 7.7689e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145a6a1bea50_wrap_pyop2_kernel_prolong       4 0.0 7.8905e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe5898d3d0_wrap_pyop2_kernel_prolong       4 0.0 7.8369e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e4a1518b10_wrap_pyop2_kernel_prolong       4 0.0 7.8981e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf21f0d950_wrap_pyop2_kernel_prolong       4 0.0 7.8457e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f36b7a0410_wrap_pyop2_kernel_prolong       4 0.0 7.9168e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d19f461bd0_wrap_pyop2_kernel_prolong       4 0.0 7.8826e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1511dd815750_wrap_pyop2_kernel_prolong       4 0.0 7.9124e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f5d36b3990_wrap_pyop2_kernel_prolong       4 0.0 7.9243e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1550274ad910_wrap_pyop2_kernel_prolong       4 0.0 7.8687e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146691035290_wrap_pyop2_kernel_prolong       4 0.0 7.9002e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f849dbe290_wrap_pyop2_kernel_prolong       4 0.0 7.9061e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f99c2a4390_wrap_pyop2_kernel_prolong       4 0.0 7.8396e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152003d97590_wrap_pyop2_kernel_prolong       4 0.0 7.7467e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151d6cae0690_wrap_pyop2_kernel_prolong       4 0.0 7.7480e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1492c210f0d0_wrap_pyop2_kernel_prolong       4 0.0 7.8287e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153861e48810_wrap_pyop2_kernel_prolong       4 0.0 7.8846e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150781b5d810_wrap_pyop2_kernel_prolong       4 0.0 7.7565e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a37a96ad10_wrap_pyop2_kernel_prolong       4 0.0 7.7498e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14756e3d1f90_wrap_pyop2_kernel_prolong       4 0.0 7.7455e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1531def08f10_wrap_pyop2_kernel_prolong       4 0.0 7.8393e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14610ccb9cd0_wrap_pyop2_kernel_prolong       4 0.0 7.7549e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14627d0ed310_wrap_pyop2_kernel_prolong       4 0.0 7.8928e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e9dfbdb710_wrap_pyop2_kernel_prolong       4 0.0 7.8621e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14baa2799cd0_wrap_pyop2_kernel_prolong       4 0.0 7.7539e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d468639590_wrap_pyop2_kernel_prolong       4 0.0 7.7978e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151780af4790_wrap_pyop2_kernel_prolong       4 0.0 7.7391e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150131bec850_wrap_pyop2_kernel_prolong       4 0.0 7.7548e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf33469a50_wrap_pyop2_kernel_prolong       4 0.0 7.7804e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148911da3710_wrap_pyop2_kernel_prolong       4 0.0 7.7731e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c34e64f50_wrap_pyop2_kernel_prolong       4 0.0 7.7529e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152395749a50_wrap_pyop2_kernel_prolong       4 0.0 7.8551e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15155b94cb50_wrap_pyop2_kernel_prolong       4 0.0 7.7513e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148eb86966d0_wrap_pyop2_kernel_prolong       4 0.0 7.8394e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d40f3cb90_wrap_pyop2_kernel_prolong       4 0.0 7.8114e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151923956c10_wrap_pyop2_kernel_prolong       4 0.0 7.7642e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458afe4ef50_wrap_pyop2_kernel_prolong       4 0.0 7.7517e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e26ac5cf90_wrap_pyop2_kernel_prolong       4 0.0 7.7477e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cbe729dfd0_wrap_pyop2_kernel_prolong       4 0.0 7.9217e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1462f10ede10_wrap_pyop2_kernel_prolong       4 0.0 7.7454e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c39dbe3210_wrap_pyop2_kernel_prolong       4 0.0 7.7427e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac5ba57510_wrap_pyop2_kernel_prolong       4 0.0 7.7417e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15026120b3d0_wrap_pyop2_kernel_prolong       4 0.0 7.8339e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f93f960e90_wrap_pyop2_kernel_prolong       4 0.0 7.7612e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d903444bd0_wrap_pyop2_kernel_prolong       4 0.0 7.7623e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14882c190210_wrap_pyop2_kernel_prolong       4 0.0 7.7565e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f79357690_wrap_pyop2_kernel_prolong       4 0.0 7.7539e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b9a3a26d0_wrap_pyop2_kernel_prolong       4 0.0 7.7565e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f8c40a1910_wrap_pyop2_kernel_prolong       4 0.0 7.7548e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519a2a1b1d0_wrap_pyop2_kernel_prolong       4 0.0 7.8402e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c7222f9210_wrap_pyop2_kernel_prolong       4 0.0 7.7760e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ebec26b0d0_wrap_pyop2_kernel_prolong       4 0.0 7.7591e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498d5fd6ed0_wrap_pyop2_kernel_prolong       4 0.0 7.7358e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c813aa650_wrap_pyop2_kernel_prolong       4 0.0 7.7423e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149089579a10_wrap_pyop2_kernel_prolong       4 0.0 7.8133e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14843d910510_wrap_pyop2_kernel_prolong       4 0.0 7.8134e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152a0043a8d0_wrap_pyop2_kernel_prolong       4 0.0 7.8039e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14587854a450_wrap_pyop2_kernel_prolong       4 0.0 7.8502e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ba668b3250_wrap_pyop2_kernel_prolong       4 0.0 7.8168e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154945d5f910_wrap_pyop2_kernel_prolong       4 0.0 7.7555e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b0c0503250_wrap_pyop2_kernel_prolong       4 0.0 7.8265e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14826b13fdd0_wrap_pyop2_kernel_prolong       4 0.0 7.8495e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1501962a18d0_wrap_pyop2_kernel_prolong       4 0.0 7.8106e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497b8733250_wrap_pyop2_kernel_prolong       4 0.0 7.7734e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14810dc10b10_wrap_pyop2_kernel_prolong       4 0.0 7.8444e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147843a51550_wrap_pyop2_kernel_prolong       4 0.0 7.7703e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14622161b950_wrap_pyop2_kernel_prolong       4 0.0 7.7759e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14752fa5b110_wrap_pyop2_kernel_prolong       4 0.0 7.7841e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151d1541b090_wrap_pyop2_kernel_prolong       4 0.0 7.8111e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145787f49810_wrap_pyop2_kernel_prolong       4 0.0 7.8426e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b295316750_wrap_pyop2_kernel_prolong       4 0.0 7.7696e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14655a92ed90_wrap_pyop2_kernel_prolong       4 0.0 7.7444e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148805b56910_wrap_pyop2_kernel_prolong       4 0.0 7.7675e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dffddfc5d0_wrap_pyop2_kernel_prolong       4 0.0 7.7488e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149123b5a390_wrap_pyop2_kernel_prolong       4 0.0 7.7505e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a61e9686d0_wrap_pyop2_kernel_prolong       4 0.0 7.7630e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1526ebb256d0_wrap_pyop2_kernel_prolong       4 0.0 7.8357e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d901be890_wrap_pyop2_kernel_prolong       4 0.0 7.8120e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148bc678c850_wrap_pyop2_kernel_prolong       4 0.0 7.7780e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f4a924390_wrap_pyop2_kernel_prolong       4 0.0 7.7434e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f4170a22d0_wrap_pyop2_kernel_prolong       4 0.0 7.7681e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a8166929d0_wrap_pyop2_kernel_prolong       4 0.0 7.8116e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146633b28390_wrap_pyop2_kernel_prolong       4 0.0 7.7608e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d9618dc10_wrap_pyop2_kernel_prolong       4 0.0 7.7762e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1550a3d4ebd0_wrap_pyop2_kernel_prolong       4 0.0 7.7886e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d7436704d0_wrap_pyop2_kernel_prolong       4 0.0 7.8449e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a758170190_wrap_pyop2_kernel_prolong       4 0.0 7.7643e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154283849290_wrap_pyop2_kernel_prolong       4 0.0 7.7485e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fbd661c510_wrap_pyop2_kernel_prolong       4 0.0 7.8115e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145be101a950_wrap_pyop2_kernel_prolong       4 0.0 7.8176e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1529d6af02d0_wrap_pyop2_kernel_prolong       4 0.0 7.8682e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497dc536110_wrap_pyop2_kernel_prolong       4 0.0 7.7476e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147595079bd0_wrap_pyop2_kernel_prolong       4 0.0 7.7879e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe85c140d0_wrap_pyop2_kernel_prolong       4 0.0 7.7721e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1d73395d0_wrap_pyop2_kernel_prolong       4 0.0 7.7763e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456419a97d0_wrap_pyop2_kernel_prolong       4 0.0 7.8029e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e52e9733d0_wrap_pyop2_kernel_prolong       4 0.0 7.7607e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15051d026690_wrap_pyop2_kernel_prolong       4 0.0 7.7495e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e1941f08d0_wrap_pyop2_kernel_prolong       4 0.0 7.8206e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d69fb06490_wrap_pyop2_kernel_prolong       4 0.0 7.7565e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14752bd3f0d0_wrap_pyop2_kernel_prolong       4 0.0 7.8527e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e4ef702d0_wrap_pyop2_kernel_prolong       4 0.0 7.7859e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e99de8790_wrap_pyop2_kernel_prolong       4 0.0 7.8015e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cbed6f9b10_wrap_pyop2_kernel_prolong       4 0.0 7.8030e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided        225 1.0 2.8963e-02 4.8 0.00e+00 0.0 4.0e+05 4.0e+00 2.2e+02  0  0  1  0  1   0  0  1  0  5    -0
SFSetGraph           225 1.0 7.7852e-04 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              225 1.0 3.7652e-02 2.9 0.00e+00 0.0 8.0e+05 2.1e+01 2.2e+02  0  0  2  0  1   0  0  3  0  5    -0
SFPack            413470 1.1 1.3810e+00 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
SFUnpack          413470 1.1 3.0397e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy            10380 1.0 1.7450e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecSet             19028 1.0 3.4869e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecAYPX            17300 1.0 3.8727e+00 1.5 2.09e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  3  0  0  0 221556
VecAXPBYCZ          3460 1.0 1.8227e-03 2.4 2.91e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 653069
VecScatterBegin   413470 1.1 1.0191e+01 1.3 0.00e+00 0.0 2.6e+07 3.5e+04 0.0e+00  2  0 56 29  0   5  0 93 100  0    -0
VecScatterEnd     413470 1.1 1.6177e+01 9.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   4  0  0  0  0    -0
MatMult            10380 1.0 8.1339e+01 1.2 4.95e+10 1.1 2.3e+07 4.0e+04 0.0e+00 12  9 50 29  0  42 62 82 100  0 248604
MatMultAdd          3460 1.0 4.6413e+00 1.3 2.09e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  3  0  0  0 184815
MatMultTranspose    3460 1.0 3.2512e+00 2.1 2.09e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  3  0  0  0 263838
MatSolve          202410 1.1 9.2391e+01 1.4 2.47e+10 1.1 5.1e+06 5.7e+01 1.1e+03 12  5 11  0  5  42 30 18  0 25 108273
MatLUFactorNum       224 1.0 5.4949e+00 1.1 1.69e+07 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    66
MatResidual         3460 1.0 4.5223e+01 1.4 2.51e+10 1.1 7.6e+06 6.0e+04 0.0e+00  6  5 17 14  0  21 31 27 50  0 226674
PCSetUp              224 1.0 5.4969e+00 1.1 1.69e+07 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    66
PCSetUpOnBlocks     3460 1.0 1.3848e-02 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply             5190 1.0 1.0968e+02 1.3 2.47e+10 1.1 2.0e+07 8.9e+01 2.9e+03 16  5 44  0 14  53 31 73  0 62 91342
PCApplyOnBlocks   200680 1.1 6.1494e+01 1.7 2.44e+10 1.1 0.0e+00 0.0e+00 0.0e+00  7  5  0  0  0  24 30  0  0  0 162577
KSPSolve            5190 1.0 1.4877e+02 1.2 5.12e+10 1.1 2.4e+07 1.9e+04 4.6e+03 22  9 52 14 22  75 64 86 50 100 140066
MGSmooth Level 0    1730 1.0 4.6196e+01 1.2 3.17e+08 5.9 2.0e+07 8.9e+01 4.6e+03  7  0 44  0 22  23  0 73  0 100   660
MGSmooth Level 1    3460 1.0 1.1120e+02 1.3 5.09e+10 1.1 3.8e+06 1.2e+05 0.0e+00 16  9  8 14  0  52 63 14 50  0 187117
MGResid Level 1     1730 1.0 4.5112e+01 1.5 2.51e+10 1.1 3.8e+06 1.2e+05 0.0e+00  6  5  8 14  0  21 31 14 50  0 227172
MGInterp Level 1    3460 1.0 7.5470e+00 1.4 4.19e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   4  5  0  0  0 227130
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   200            199
              Viewer     3              3
           Index Set  2473           2473
   IS L to G Mapping   165            161
             Section   294            294
   Star Forest Graph   321            320
              Vector  1706           1702
              Matrix   383            369
      Preconditioner    66             66
       Krylov Solver    64             64
     DMKSP interface     1              1
                SNES     1              1
              DMSNES     1              1
      SNESLineSearch     1              1
    Distributed Mesh    73             74
            DM Label   206            206
          Quadrature    72             72
      Mesh Transform     1              1
       Swarm Cell DM     2              2
    GraphPartitioner    23             23
     Discrete System   105            106
           Weak Form   105            106
        Linear Space     6              6
          Dual Space    26             26
            FE Space     4              4

--- Event Stage 1: MG Apply

           Index Set   450            450
   Star Forest Graph   227            224
              Vector   449            449
    Distributed Mesh     1              0
     Discrete System     1              0
           Weak Form     1              0
========================================================================================================================
Average time to get PetscTime(): 2.6e-08
Average time for MPI_Barrier(): 1.17462e-05
Average time for zero size MPI_Send(): 2.76604e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_mg_coarse_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_mg_levels_1_pc_linesmooth_sub_sub_pc_factor_mat_ordering_type natural # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murrumbidgee/vlumping_hmg/medium.profile # (source: code)
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

