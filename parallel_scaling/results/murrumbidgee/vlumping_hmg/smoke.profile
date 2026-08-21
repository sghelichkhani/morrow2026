****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0277.gadi.nci.org.au with 104 processes, by sg8812 on Thu Aug 20 23:46:50 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           4.739e+02     1.000   4.739e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                5.473e+11     1.135   5.178e+11  5.385e+13
Flops/sec:            1.155e+09     1.135   1.093e+09  1.136e+11
MPI Msg Count:        1.575e+05     2.498   1.052e+05  1.094e+07
MPI Msg Len (bytes):  4.157e+09     2.272   3.090e+04  3.381e+11
MPI Reductions:       2.058e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 3.4481e+02  72.8%  4.6431e+13  86.2%  4.302e+06  39.3%  5.710e+04       72.7%  1.630e+04  79.2%
 1:        MG Apply: 1.2911e+02  27.2%  7.4190e+12  13.8%  6.639e+06  60.7%  1.392e+04       27.3%  4.258e+03  20.7%

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

BuildTwoSided       1677 1.0 1.5912e+01 5.3 0.00e+00 0.0 8.7e+04 4.0e+00 1.4e+03  2  0  1  0  7   3  0  2  0  9    -0
BuildTwoSidedF      1368 1.0 1.5756e+01 6.0 0.00e+00 0.0 1.2e+05 6.6e+05 1.4e+03  2  0  1 24  7   3  0  3 33  8    -0
SFSetGraph           315 1.1 7.5885e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              309 1.1 1.5990e+00 74.9 0.00e+00 0.0 5.1e+04 7.2e+02 8.1e+01  0  0  0  0  0   0  0  1  0  0    -0
SFBcastBegin         820 1.0 1.6309e-01 2.3 0.00e+00 0.0 4.1e+05 4.4e+04 0.0e+00  0  0  4  5  0   0  0 10  7  0    -0
SFBcastEnd           820 1.0 9.2174e+00 38.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        332 1.0 3.8303e-02 8.6 0.00e+00 0.0 1.7e+05 5.1e+04 0.0e+00  0  0  2  3  0   0  0  4  4  0    -0
SFReduceEnd          332 1.0 1.1360e+00 32.7 1.35e+07 2.3 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   970
SFFetchOpBegin         4 1.0 2.1778e-05 4.4 0.00e+00 0.0 1.6e+03 8.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           4 1.0 3.3930e-04 12.4 0.00e+00 0.0 1.6e+03 8.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          3 1.0 8.6666e-04 1.4 0.00e+00 0.0 9.2e+02 3.4e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         36 1.0 5.8195e-03 1.3 0.00e+00 0.0 4.0e+04 1.1e+02 4.2e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           37 1.0 3.2115e-03 2.2 0.00e+00 0.0 2.0e+04 5.3e+01 3.7e+01  0  0  0  0  0   0  0  0  0  0    -0
SFRemoteOff            1 1.0 5.2084e-05 2.2 0.00e+00 0.0 5.4e+02 2.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack           1145892 1.1 7.7763e-01 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack         1145896 1.1 1.0761e-01 2.1 1.35e+07 2.3 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 10236
VecDot               226 1.0 3.8766e-01 4.5 9.28e+07 1.1 0.0e+00 0.0e+00 2.3e+02  0  0  0  0  1   0  0  0  0  1 24068
VecMDot             5922 1.0 1.4267e+01 2.8 7.80e+09 1.1 0.0e+00 0.0e+00 5.9e+03  2  1  0  0 29   3  2  0  0 36 54979
VecNorm             7127 1.0 5.7117e+00 5.6 1.97e+09 1.1 0.0e+00 0.0e+00 7.1e+03  1  0  0  0 35   1  0  0  0 44 34772
VecScale            6600 1.0 2.0771e-01 1.1 8.79e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 425728
VecCopy             2034 1.0 1.0335e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              6328 1.0 2.4229e+00 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecAXPY              678 1.0 2.2991e-01 1.2 1.86e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 81301
VecWAXPY             226 1.0 1.9723e-01 1.1 4.64e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 23653
VecMAXPY            6600 1.0 9.7519e+00 1.1 9.37e+09 1.1 0.0e+00 0.0e+00 0.0e+00  2  2  0  0  0   3  2  0  0  0 96651
VecScatterBegin  1144736 1.1 7.5904e+00 1.2 0.00e+00 0.0 3.3e+06 3.6e+04 0.0e+00  1  0 30 35  0   2  0 77 48  0    -0
VecScatterEnd    1144736 1.1 7.3608e+00 11.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecReduceArith       452 1.0 1.0198e-01 2.3 1.86e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 182991
VecReduceComm        226 1.0 1.2368e-01 26.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.3e+02  0  0  0  0  1   0  0  0  0  1    -0
VecNormalize        4810 1.0 3.2091e+00 5.1 1.54e+09 1.1 0.0e+00 0.0e+00 4.8e+03  0  0  0  0 23   0  0  0  0 30 48123
MatMult             6148 1.0 8.1011e+01 1.1 5.89e+10 1.1 3.3e+06 3.6e+04 0.0e+00 16 11 30 35  0  22 13 77 48  0 72922
MatSolve          569132 1.1 2.8421e+01 1.2 1.78e+10 1.1 0.0e+00 0.0e+00 0.0e+00  6  3  0  0  0   8  4  0  0  0 63030
MatLUFactorSym       229 1.1 1.0513e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum     51755 1.1 5.9368e+00 1.1 7.36e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 124791
MatILUFactorSym        1 1.0 8.9874e-05 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin   53836 1.1 1.6820e+01 3.1 0.00e+00 0.0 1.2e+05 6.6e+05 1.4e+03  2  0  1 24  7   3  0  3 33  8    -0
MatAssemblyEnd     53836 1.1 4.8022e+00 14.0 1.12e+08 0.0 3.2e+03 4.6e+03 4.4e+01  1  0  0  0  0   1  0  0  0  0  1033
MatGetRowIJ          229 1.1 4.3340e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats     226 1.0 1.3910e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.3e+02  3  0  0  0  1   4  0  0  0  1    -0
MatGetOrdering       229 1.1 2.6982e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       678 1.0 3.8193e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
MatTranspose           5 1.0 6.2947e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          5 1.0 7.0495e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        905 1.0 1.9874e+00 1.1 3.35e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  1  0  0  0 168710
MatPtAPSymbolic        2 1.0 9.0220e-02 1.0 0.00e+00 0.0 3.2e+03 4.6e+04 1.4e+01  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       452 1.0 1.1596e+01 1.0 1.34e+10 1.1 2.4e+05 8.1e+04 4.6e+02  2  2  2  6  2   3  3  6  8  3 115474
MatGetLocalMat       454 1.0 8.6314e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        454 1.0 4.3761e-01 1.9 0.00e+00 0.0 2.4e+05 8.2e+04 0.0e+00  0  0  2  6  0   0  0  6  8  0    -0
MatSetPreallCOO       16 1.0 4.5189e-05 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       16 1.0 1.9497e-05 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp              226 1.0 1.3158e+02 1.0 8.42e+10 1.1 2.6e+06 3.3e+04 1.0e+04 28 16 24 26 51  38 18 60 35 64 64265
PCApply             1564 1.0 1.3089e+02 1.0 7.41e+10 1.1 6.6e+06 1.4e+04 4.3e+03 27 14 61 27 21 Multiple stages 56681
PCApplyOnBlocks   569132 1.1 3.5744e+01 1.2 2.52e+10 1.1 0.0e+00 0.0e+00 0.0e+00  7  5  0  0  0  10  5  0  0  0 70815
KSPSetUp             226 1.0 7.2799e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             226 1.0 1.6797e+02 1.0 1.04e+11 1.1 7.5e+06 1.8e+04 7.6e+03 35 19 68 41 37 Multiple stages 62053
KSPGMRESOrthog      5922 1.0 2.2025e+01 1.7 1.56e+10 1.1 0.0e+00 0.0e+00 5.9e+03  4  3  0  0 29   5  3  0  0 36 71226
DMRefine               1 1.0 2.0842e-02 1.0 1.04e+03 1.0 3.2e+03 4.3e+01 3.0e+01  0  0  0  0  0   0  0  0  0  0     5
DMPlexCreateGmsh       1 1.0 1.9115e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 4.8359e+00 241.9 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  1  0  0  0  0   1  0  0  0  0    -0
Mesh Partition         3 1.0 7.2507e-02 1.0 0.00e+00 0.0 1.2e+04 9.8e+01 3.8e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         3 1.0 1.9345e-02 1.1 0.00e+00 0.0 4.6e+04 1.1e+02 1.8e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 2.5780e-03 1154.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       3 1.0 6.7549e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        3 1.0 3.4408e-03 1.2 0.00e+00 0.0 2.4e+03 8.3e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       3 1.0 7.1910e-04 2.9 0.00e+00 0.0 1.2e+03 3.3e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          3 1.0 2.0227e-03 2.8 0.00e+00 0.0 1.3e+03 4.8e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          15 1.0 8.7500e-03 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 8.1804e-02 1.0 0.00e+00 0.0 4.4e+03 6.1e+02 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        3 1.0 1.8853e-03 1.0 0.00e+00 0.0 7.1e+03 2.0e+02 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       3 1.0 6.2866e-03 1.0 0.00e+00 0.0 2.3e+04 1.1e+02 1.1e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistOvrlp        2 1.0 1.1844e-02 1.0 0.00e+00 0.0 5.5e+04 8.0e+01 1.6e+02  0  0  1  0  1   0  0  1  0  1    -0
DMPlexDistField        5 1.0 2.7804e-03 1.1 0.00e+00 0.0 1.0e+04 7.3e+01 1.4e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         1 1.0 1.3811e-04 1.2 0.00e+00 0.0 2.7e+03 3.5e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify        23 1.0 6.7552e-03 7.7 0.00e+00 0.0 0.0e+00 0.0e+00 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      23 1.0 5.7228e-04 11.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          1 1.0 5.6679e-05 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          1 1.0 2.3172e-03 2.0 0.00e+00 0.0 1.6e+03 3.3e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          1 1.0 9.1290e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          1 1.0 2.5767e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             1 1.0 2.3020e-04 2.4 0.00e+00 0.0 1.6e+03 3.3e+01 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         1 1.0 5.7610e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         1 1.0 5.0405e-04 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMSwarmSetSizes        2 1.0 3.4186e-05 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             75 1.0 4.1402e+02 1.0 5.47e+11 1.1 1.1e+07 3.1e+04 2.0e+04 87 100 99 100 97 Multiple stages 130056
SNESSetUp              1 1.0 4.6681e-05 5.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     301 1.0 2.0836e+01 1.1 1.38e+11 1.2 3.6e+05 5.5e+04 0.0e+00  4 25  3  6  0   6 29  8  8  0 644534
SNESJacobianEval     226 1.0 8.8367e+01 1.0 2.17e+11 1.2 2.4e+05 3.6e+05 9.0e+02 19 39  2 25  4  26 46  6 35  6 239379
SNESLineSearch       226 1.0 1.3481e+01 1.0 1.08e+11 1.2 3.6e+05 5.5e+04 9.0e+02  3 19  3  6  4   4 23  8  8  6 776177
DualSpaceSetUp         4 1.0 3.5711e-03 1.1 5.40e+01 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     2
FESetUp                4 1.0 1.0402e-02 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 4.7181e+02 1.0 5.47e+11 1.1 1.1e+07 3.1e+04 2.1e+04 100 100 100 100 100 Multiple stages 114134
firedrake.__init__       1 1.0 1.0179e+01 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
CreateMesh             2 1.0 4.9623e+00 34.0 0.00e+00 0.0 1.1e+05 1.1e+02 3.2e+02  1  0  1  0  2   1  0  3  0  2    -0
firedrake.mesh._from_gmsh       1 1.0 4.8367e+00 241.5 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       2 1.0 1.0906e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       2 1.0 4.7930e-06 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        4 1.0 6.0650e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          2 1.0 7.9306e-04 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      24 1.0 2.7762e-02 1.1 0.00e+00 0.0 4.3e+03 1.2e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      29 1.0 1.9557e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      26 1.0 2.5372e-02 1.1 0.00e+00 0.0 4.3e+03 1.2e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      25 1.0 2.2682e-02 1.1 0.00e+00 0.0 4.3e+03 1.2e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      25 1.0 2.2548e-02 1.1 0.00e+00 0.0 4.3e+03 1.2e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      50 1.0 8.8288e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       4 1.0 2.9605e-03 1.1 0.00e+00 0.0 2.2e+03 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       8 1.0 5.5504e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      16 1.0 1.7580e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      66 1.0 1.5672e-02 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          2 1.0 9.5855e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       2 1.0 1.7600e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       5 1.0 5.2435e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       4 1.0 9.9964e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       2 1.0 9.5362e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     648 1.0 8.9240e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      2427 1.0 1.0324e+02 1.1 3.55e+11 1.2 3.3e+05 5.4e+04 2.6e+01 21 64  3  5  0  28 74  8  7  0 334940
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       4 1.0 9.1604e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    4854 1.0 2.5907e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  5  0  0  0  0   7  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      19 1.0 1.0876e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
GlobalKernel: generate loopy      19 0.0 1.2599e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      19 0.0 8.9724e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      20 1.0 1.6003e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   5  0  0  0  0    -0
pyop2.compilation.load      20 1.0 1.6002e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   5  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      20 1.0 1.0037e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
pyop2.compilation.make_so      20 1.0 9.8046e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
ParLoopRednBegin    2427 1.0 6.0156e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      2427 1.0 6.6336e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       2 1.0 7.1315e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong       2 1.0 7.4615e+00 1.0 5.54e+06 1.1 5.4e+03 8.0e+03 7.0e+00  2  0  0  0  0   2  0  0  0  0    75
firedrake.interpolation.interpolate      16 1.0 4.6244e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      13 1.0 1.0014e+01 1.0 4.15e+07 1.1 2.1e+04 1.2e+04 1.1e+02  2  0  0  0  1   3  0  0  0  1   417
firedrake.formmanipulation.split_form      14 1.0 5.7074e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      14 1.0 1.2531e-03 7.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      14 1.0 3.1341e-01 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       8 1.0 2.6914e-01 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     620 1.0 3.6194e+00 28.4 0.00e+00 0.0 3.4e+05 5.3e+04 3.0e+00  0  0  3  5  0   1  0  8  7  0    -0
Parloop_Cells_wrap_expression_kernel      28 1.0 7.0554e+00 1.0 4.15e+07 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0   591
firedrake.halo.Halo.global_to_local_end     620 1.0 7.0700e+00 136.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       2 1.0 4.4030e+00 29.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1501c68bd5d0_wrap_pyop2_kernel_prolong       4 0.0 7.3505e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 3.8174e+00 1.0 3.47e+07 1.1 8.1e+03 2.8e+04 1.1e+01  1  0  0  0  0   1  0  0  0  0   914
firedrake.function.Function.assign     314 1.0 7.8700e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     313 1.0 7.2217e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.9743e-04 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate     154 1.0 9.1965e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 5.2098e-05 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.3238e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.8842e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.0736e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 4.8569e+00 1.0 0.00e+00 0.0 3.2e+03 2.2e+05 2.3e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 5.9012e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.0910e-04 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 4.9782e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 4.9781e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateSparsity         3 1.0 1.7982e+00 1.2 0.00e+00 0.0 4.9e+03 7.2e+04 3.2e+01  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         3 1.0 2.6336e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      75 1.0 4.1417e+02 1.0 5.47e+11 1.1 1.1e+07 3.1e+04 2.0e+04 87 100 99 100 98 Multiple stages 130010
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 2.4907e-01 967.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 7.3930e-06 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 2.4902e-01 1185.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 2.4898e-01 1375.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     602 1.0 4.8431e+00 1.2 3.51e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  7  0  0  0   1  8  0  0  0 729353
Parloop_Cells_wrap_form0_exterior_facet_top_integral     602 1.0 9.8556e-01 1.0 9.13e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   932
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral     602 1.0 1.2025e+00 1.0 2.96e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  5123
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     602 1.0 3.5670e+00 1.1 3.36e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   1  7  0  0  0 947906
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     602 1.0 7.0888e+00 1.2 6.95e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1 12  0  0  0   2 14  0  0  0 918034
firedrake.halo.Halo.local_to_global_begin     301 1.0 4.7566e-02 4.7 0.00e+00 0.0 1.6e+05 5.5e+04 0.0e+00  0  0  1  3  0   0  0  4  4  0    -0
firedrake.halo.Halo.local_to_global_end     301 1.0 1.1375e+00 31.0 1.35e+07 2.3 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   968
Parloop_Cells_wrap_form00_cell_integral     452 1.0 1.6804e+01 1.4 4.92e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3  9  0  0  0   4 11  0  0  0 294520
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     452 1.0 1.4562e+00 1.3 2.26e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  3234
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     452 1.0 1.9000e+01 1.1 6.49e+10 1.1 0.0e+00 0.0e+00 0.0e+00  4 12  0  0  0   5 14  0  0  0 343459
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     452 1.0 3.9795e+01 1.2 1.03e+11 1.2 0.0e+00 0.0e+00 0.0e+00  8 18  0  0  0  10 21  0  0  0 242968
firedrake.dmhooks.get_function_space       2 1.0 2.0922e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       2 1.0 7.9589e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.VertexOnlyMesh       1 1.0 2.4758e+00 1.0 0.00e+00 0.0 7.0e+03 9.8e+01 1.1e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh._pic_swarm_in_mesh       1 1.0 2.4691e+00 1.0 0.00e+00 0.0 4.9e+03 8.0e+01 6.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh._parent_mesh_embedding       1 1.0 2.3059e+00 1.0 0.00e+00 0.0 2.7e+03 3.5e+01 4.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshGeometry.locate_cells_ref_coords_and_dists       1 1.0 1.3596e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry._c_locator       1 1.0 1.3538e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.pointquery_utils.src_locate_cell       1 1.0 7.3130e-01 3.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.pointquery_utils.compile_coordinate_element       1 1.0 6.8416e-01 6.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.pointquery_utils.make_wrapper       1 1.0 6.0947e-01 78.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.parloop.generate_single_cell_wrapper       1 1.0 6.0940e-01 78.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
c_locator_run          1 1.0 1.4296e-02 3.7 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._ctypes       1 1.0 1.1961e-02 8.5 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._constant_ctypes       1 1.0 9.1267e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.rtree       1 1.0 1.3426e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.bounding_box_coords       1 1.0 1.3007e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
rtree_build            1 1.0 1.1594e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._dmswarm_create       2 1.0 1.8654e-03 5.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._swarm_original_ordering_preserve       1 1.0 1.6167e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.VertexOnlyMeshTopology.__init__       2 1.0 1.0949e-02 1.7 0.00e+00 0.0 2.1e+03 1.4e+02 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_vom_from_vom_topology       2 1.0 2.8872e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.action       1 1.0 2.5717e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0      226 1.0 3.7941e-01 1.2 1.36e+08 1.1 1.2e+06 2.2e+02 4.9e+03  0  0 11  0 24   0  0 29  0 30 35856
MGSetup Level 1      226 1.0 1.1438e+02 1.0 7.07e+10 1.1 1.2e+06 5.5e+04 5.0e+03 24 13 11 20 24  33 15 28 27 31 62120
firedrake.constant.Constant.assign      75 1.0 2.9586e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149176450bd0_wrap_pyop2_kernel_prolong       4 0.0 7.3511e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15387011d990_wrap_pyop2_kernel_prolong       4 0.0 7.3513e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150d825b9810_wrap_pyop2_kernel_prolong       4 0.0 7.3482e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1501c4c3af10_wrap_pyop2_kernel_prolong       4 0.0 7.3513e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c39e06a90_wrap_pyop2_kernel_prolong       4 0.0 7.3444e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a642565ed0_wrap_pyop2_kernel_prolong       4 0.0 7.3409e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce08e54e50_wrap_pyop2_kernel_prolong       4 0.0 7.3467e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cb1d856710_wrap_pyop2_kernel_prolong       4 0.0 7.3520e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e19b63ef90_wrap_pyop2_kernel_prolong       4 0.0 7.3406e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c5264410d0_wrap_pyop2_kernel_prolong       4 0.0 7.3543e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb008fdd90_wrap_pyop2_kernel_prolong       4 0.0 7.3522e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d6629780d0_wrap_pyop2_kernel_prolong       4 0.0 7.3590e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ebf513bd0_wrap_pyop2_kernel_prolong       4 0.0 7.3471e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f9d7fbd390_wrap_pyop2_kernel_prolong       4 0.0 7.3434e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d422d70490_wrap_pyop2_kernel_prolong       4 0.0 7.3452e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f9395ef810_wrap_pyop2_kernel_prolong       4 0.0 7.3313e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1542cabeedd0_wrap_pyop2_kernel_prolong       4 0.0 7.3516e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14999bc36390_wrap_pyop2_kernel_prolong       4 0.0 7.3361e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d65d309490_wrap_pyop2_kernel_prolong       4 0.0 7.3503e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522bacb3810_wrap_pyop2_kernel_prolong       4 0.0 7.3459e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152f0cf34150_wrap_pyop2_kernel_prolong       4 0.0 7.3526e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b7a5e6b550_wrap_pyop2_kernel_prolong       4 0.0 7.3451e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e6aea07490_wrap_pyop2_kernel_prolong       4 0.0 7.3354e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1499f7dd31d0_wrap_pyop2_kernel_prolong       4 0.0 7.3364e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14790a508290_wrap_pyop2_kernel_prolong       4 0.0 7.3407e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ded2b19150_wrap_pyop2_kernel_prolong       4 0.0 7.3438e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151908428d50_wrap_pyop2_kernel_prolong       4 0.0 7.3447e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d6ef4c3610_wrap_pyop2_kernel_prolong       4 0.0 7.3333e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c7d7693390_wrap_pyop2_kernel_prolong       4 0.0 7.3423e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f45725a990_wrap_pyop2_kernel_prolong       4 0.0 7.3458e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497dc4f7350_wrap_pyop2_kernel_prolong       4 0.0 7.3597e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eb712941d0_wrap_pyop2_kernel_prolong       4 0.0 7.3473e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b48b21c450_wrap_pyop2_kernel_prolong       4 0.0 7.3453e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ea4a095d0_wrap_pyop2_kernel_prolong       4 0.0 7.3454e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1525b89e7890_wrap_pyop2_kernel_prolong       4 0.0 7.3512e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c6cb973d0_wrap_pyop2_kernel_prolong       4 0.0 7.3490e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd7f958850_wrap_pyop2_kernel_prolong       4 0.0 7.3494e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c77d1a010_wrap_pyop2_kernel_prolong       4 0.0 7.3596e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ffffb8ec90_wrap_pyop2_kernel_prolong       4 0.0 7.3341e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146ec7881990_wrap_pyop2_kernel_prolong       4 0.0 7.3402e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15043bbd3090_wrap_pyop2_kernel_prolong       4 0.0 7.3496e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1502d3a8b190_wrap_pyop2_kernel_prolong       4 0.0 7.3458e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1468291f62d0_wrap_pyop2_kernel_prolong       4 0.0 7.3432e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1467ae700ad0_wrap_pyop2_kernel_prolong       4 0.0 7.3512e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15355d7c3d90_wrap_pyop2_kernel_prolong       4 0.0 7.3412e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a90f830310_wrap_pyop2_kernel_prolong       4 0.0 7.3398e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148107e00a90_wrap_pyop2_kernel_prolong       4 0.0 7.3537e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15379f95d110_wrap_pyop2_kernel_prolong       4 0.0 7.3424e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c32b13650_wrap_pyop2_kernel_prolong       4 0.0 7.3502e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150b547f01d0_wrap_pyop2_kernel_prolong       4 0.0 7.3603e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ea3e5b7d0_wrap_pyop2_kernel_prolong       4 0.0 7.3452e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b99a96e090_wrap_pyop2_kernel_prolong       4 0.0 7.3315e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149280cff350_wrap_pyop2_kernel_prolong       4 0.0 7.3375e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147be7605090_wrap_pyop2_kernel_prolong       4 0.0 7.3403e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b704be290_wrap_pyop2_kernel_prolong       4 0.0 7.3370e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a1a9fca110_wrap_pyop2_kernel_prolong       4 0.0 7.3288e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f254da87d0_wrap_pyop2_kernel_prolong       4 0.0 7.3623e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151003b4eed0_wrap_pyop2_kernel_prolong       4 0.0 7.3313e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1545bbf7aed0_wrap_pyop2_kernel_prolong       4 0.0 7.3314e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bc6650c210_wrap_pyop2_kernel_prolong       4 0.0 7.3410e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b893b706d0_wrap_pyop2_kernel_prolong       4 0.0 7.3290e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f719f4e90_wrap_pyop2_kernel_prolong       4 0.0 7.3564e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f81f727d0_wrap_pyop2_kernel_prolong       4 0.0 7.3243e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ded0e9e810_wrap_pyop2_kernel_prolong       4 0.0 7.3436e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146b54a91a90_wrap_pyop2_kernel_prolong       4 0.0 7.3434e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1d491f2d0_wrap_pyop2_kernel_prolong       4 0.0 7.3303e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd04cf1a90_wrap_pyop2_kernel_prolong       4 0.0 7.3427e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d2f1019850_wrap_pyop2_kernel_prolong       4 0.0 7.3365e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1503c1405c10_wrap_pyop2_kernel_prolong       4 0.0 7.3275e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1551da464b50_wrap_pyop2_kernel_prolong       4 0.0 7.3335e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a54a7c9c90_wrap_pyop2_kernel_prolong       4 0.0 7.3537e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147534dcb290_wrap_pyop2_kernel_prolong       4 0.0 7.3341e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f8027f0a90_wrap_pyop2_kernel_prolong       4 0.0 7.3388e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14549ed08a50_wrap_pyop2_kernel_prolong       4 0.0 7.3419e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd90e2f090_wrap_pyop2_kernel_prolong       4 0.0 7.3332e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153a74218510_wrap_pyop2_kernel_prolong       4 0.0 7.3331e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148074120510_wrap_pyop2_kernel_prolong       4 0.0 7.3506e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150981d28dd0_wrap_pyop2_kernel_prolong       4 0.0 7.3453e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a85a8b94d0_wrap_pyop2_kernel_prolong       4 0.0 7.3264e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b59bf4d6d0_wrap_pyop2_kernel_prolong       4 0.0 7.3364e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148947463e50_wrap_pyop2_kernel_prolong       4 0.0 7.3317e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149894481350_wrap_pyop2_kernel_prolong       4 0.0 7.3316e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d4fc67afd0_wrap_pyop2_kernel_prolong       4 0.0 7.3592e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153bcdfb5b90_wrap_pyop2_kernel_prolong       4 0.0 7.3318e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eeb86ac110_wrap_pyop2_kernel_prolong       4 0.0 7.3297e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152b9f149a50_wrap_pyop2_kernel_prolong       4 0.0 7.3611e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d446d09050_wrap_pyop2_kernel_prolong       4 0.0 7.3351e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455ecc181d0_wrap_pyop2_kernel_prolong       4 0.0 7.3589e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155271189690_wrap_pyop2_kernel_prolong       4 0.0 7.3394e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151360a7abd0_wrap_pyop2_kernel_prolong       4 0.0 7.3625e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e6e670b150_wrap_pyop2_kernel_prolong       4 0.0 7.3452e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d48ecb8310_wrap_pyop2_kernel_prolong       4 0.0 7.3357e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c97552d50_wrap_pyop2_kernel_prolong       4 0.0 7.3411e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e59aa39710_wrap_pyop2_kernel_prolong       4 0.0 7.3371e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eb0e80c490_wrap_pyop2_kernel_prolong       4 0.0 7.3534e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1506ed07c290_wrap_pyop2_kernel_prolong       4 0.0 7.3620e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14549344d810_wrap_pyop2_kernel_prolong       4 0.0 7.3288e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15233fb5b010_wrap_pyop2_kernel_prolong       4 0.0 7.3404e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f82810a0d0_wrap_pyop2_kernel_prolong       4 0.0 7.3502e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15160767eb10_wrap_pyop2_kernel_prolong       4 0.0 7.3291e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150c99ad9190_wrap_pyop2_kernel_prolong       4 0.0 7.3435e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149607338590_wrap_pyop2_kernel_prolong       4 0.0 7.3314e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b8fb23e650_wrap_pyop2_kernel_prolong       4 0.0 7.3482e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided        226 1.0 6.7272e-03 2.3 0.00e+00 0.0 1.3e+05 4.0e+00 2.3e+02  0  0  1  0  1   0  0  2  0  5    -0
SFSetGraph           226 1.0 2.5448e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              226 1.0 1.0156e-02 1.4 0.00e+00 0.0 2.7e+05 6.0e+01 2.3e+02  0  0  2  0  1   0  0  4  0  5    -0
SFPack           1449828 1.1 6.2104e-01 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack         1449828 1.1 7.1064e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             9384 1.0 1.5288e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecSet             17202 1.0 3.1878e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecAYPX            15640 1.0 3.5580e+00 1.6 1.93e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  3  0  0  0 54686
VecAXPBYCZ          3128 1.0 2.1835e-03 2.0 1.07e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 492867
VecScatterBegin  1449828 1.1 9.4555e+00 1.1 0.00e+00 0.0 6.0e+06 1.5e+04 0.0e+00  2  0 54 27  0   7  0 90 100  0    -0
VecScatterEnd    1449828 1.1 7.2807e+00 8.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
MatMult             9384 1.0 6.4124e+01 1.1 4.56e+10 1.1 5.0e+06 1.8e+04 0.0e+00 13  8 46 27  0  47 62 76 100  0 71267
MatMultAdd          3128 1.0 3.7113e+00 1.2 1.93e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  3  0  0  0 52368
MatMultTranspose    3128 1.0 3.2314e+00 1.7 1.93e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  3  0  0  0 60145
MatSolve          721004 1.1 4.2367e+01 1.2 2.27e+10 1.1 1.6e+06 1.6e+02 1.1e+03  9  4 15  0  5  31 31 24  0 27 53447
MatLUFactorNum       225 1.0 1.7865e+00 1.1 1.81e+07 21.8 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0   214
MatResidual         3128 1.0 3.4462e+01 1.2 2.31e+10 1.1 1.7e+06 2.7e+04 0.0e+00  7  4 15 14  0  24 31 25 50  0 67171
PCSetUp              225 1.0 1.7887e+00 1.1 1.81e+07 21.8 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0   214
PCSetUpOnBlocks     3128 1.0 1.6009e-02 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply             4692 1.0 6.0395e+01 1.2 2.29e+10 1.1 5.0e+06 1.8e+02 2.7e+03 12  4 45  0 13  44 31 75  1 63 37715
PCApplyOnBlocks   719440 1.1 4.0590e+01 1.2 2.25e+10 1.1 0.0e+00 0.0e+00 0.0e+00  8  4  0  0  0  30 30  0  0  0 55654
KSPSolve            4692 1.0 9.2744e+01 1.1 4.72e+10 1.1 5.8e+06 8.0e+03 4.3e+03 19  9 53 14 21  70 64 87 50 100 50885
MGSmooth Level 0    1564 1.0 8.8716e+00 1.7 4.89e+08 2.2 5.0e+06 1.8e+02 4.3e+03  1  0 45  0 21   5  0 75  1 100  3180
MGSmooth Level 1    3128 1.0 8.7116e+01 1.1 4.67e+10 1.1 8.4e+05 5.5e+04 0.0e+00 18  9  8 14  0  65 63 13 50  0 53848
MGResid Level 1     1564 1.0 3.4007e+01 1.2 2.31e+10 1.1 8.4e+05 5.5e+04 0.0e+00  7  4  8 14  0  24 31 13 50  0 67994
MGInterp Level 1    3128 1.0 6.8605e+00 1.2 3.85e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   5  5  0  0  0 56470
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   200            199
              Viewer     3              3
           Index Set  2957           2957
   IS L to G Mapping   321            317
             Section   294            294
   Star Forest Graph   477            476
              Vector  2180           2176
              Matrix  1179           1165
      Preconditioner   222            222
       Krylov Solver   220            220
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

           Index Set   452            452
   Star Forest Graph   228            225
              Vector   451            451
    Distributed Mesh     1              0
     Discrete System     1              0
           Weak Form     1              0
========================================================================================================================
Average time to get PetscTime(): 2.56e-08
Average time for MPI_Barrier(): 3.9712e-06
Average time for zero size MPI_Send(): 2.50872e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_mg_coarse_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_mg_levels_1_pc_linesmooth_sub_sub_pc_factor_mat_ordering_type natural # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murrumbidgee/vlumping_hmg/smoke.profile # (source: code)
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

