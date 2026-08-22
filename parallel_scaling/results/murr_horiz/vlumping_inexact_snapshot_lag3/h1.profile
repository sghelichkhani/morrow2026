****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0540.gadi.nci.org.au with 104 processes, by sg8812 on Fri Aug 21 23:39:08 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           8.642e+02     1.000   8.642e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                1.114e+12     1.196   1.051e+12  1.093e+14
Flops/sec:            1.289e+09     1.196   1.216e+09  1.264e+11
MPI Msg Count:        7.081e+04     3.243   5.051e+04  5.253e+06
MPI Msg Len (bytes):  8.830e+09     2.997   1.233e+05  6.478e+11
MPI Reductions:       8.210e+03     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 4.4725e+02  51.8%  8.0056e+13  73.3%  1.880e+06  35.8%  1.894e+05       55.0%  6.698e+03  81.6%
 1:        MG Apply: 4.1690e+02  48.2%  2.9203e+13  26.7%  3.373e+06  64.2%  8.647e+04       45.0%  1.493e+03  18.2%

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

BuildTwoSided        997 1.0 5.2927e+01 5.5 0.00e+00 0.0 8.9e+04 4.0e+00 1.0e+03  4  0  2  0 12   7  0  5  0 15    -0
BuildTwoSidedF       900 1.0 5.2655e+01 5.0 0.00e+00 0.0 1.1e+05 1.5e+06 9.0e+02  4  0  2 24 11   7  0  6 44 13    -0
SFSetGraph           104 1.0 7.1211e-03 3.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               97 1.0 9.1264e-01 43.4 0.00e+00 0.0 6.9e+04 1.1e+03 9.7e+01  0  0  1  0  1   0  0  4  0  1    -0
SFBcastBegin         850 1.0 3.7456e-01 3.3 0.00e+00 0.0 4.2e+05 8.7e+04 0.0e+00  0  0  8  6  0   0  0 22 10  0    -0
SFBcastEnd           850 1.0 1.4932e+01 84.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        322 1.0 6.0355e-02 12.3 0.00e+00 0.0 1.6e+05 1.1e+05 0.0e+00  0  0  3  3  0   0  0  9  5  0    -0
SFReduceEnd          322 1.0 3.1113e+00 58.6 3.03e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   715
SFFetchOpBegin         6 1.0 2.8911e-05 4.1 0.00e+00 0.0 2.5e+03 7.3e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           6 1.0 4.0355e-04 9.6 0.00e+00 0.0 2.5e+03 7.3e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          4 1.0 6.1019e-04 1.1 0.00e+00 0.0 1.2e+03 1.2e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         49 1.0 4.2920e-03 1.3 0.00e+00 0.0 5.9e+04 8.2e+01 5.8e+01  0  0  1  0  1   0  0  3  0  1    -0
SFSectionSF           51 1.0 2.6872e-03 1.8 0.00e+00 0.0 2.9e+04 3.8e+01 5.1e+01  0  0  1  0  1   0  0  2  0  1    -0
SFRemoteOff            2 1.0 9.0672e-05 2.8 0.00e+00 0.0 1.1e+03 1.6e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack              3232 1.0 1.0936e+00 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            3238 1.0 1.6540e-01 11.2 3.03e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 13456
VecDot               206 1.0 7.7791e-01 5.5 1.78e+08 1.2 0.0e+00 0.0e+00 2.1e+02  0  0  0  0  3   0  0  0  0  3 22941
VecMDot             1848 1.0 2.6039e+01 3.0 6.65e+09 1.2 0.0e+00 0.0e+00 1.8e+03  2  1  0  0 23   4  1  0  0 28 25604
VecNorm             2611 1.0 8.3883e+00 3.3 2.26e+09 1.2 0.0e+00 0.0e+00 2.6e+03  1  0  0  0 32   1  0  0  0 39 26965
VecScale            2124 1.0 8.3194e-01 1.3 9.18e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 110586
VecCopy             1533 1.0 2.1216e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               552 1.0 4.9211e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              276 1.0 5.0535e-01 1.2 2.38e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 47313
VecWAXPY             206 1.0 4.3406e-01 1.2 8.90e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 20557
VecMAXPY            2124 1.0 1.0936e+01 1.2 8.25e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  1  0  0  0 75602
VecScatterBegin     2054 1.0 8.6622e-01 3.1 0.00e+00 0.0 1.1e+06 1.2e+05 0.0e+00  0  0 20 20  0   0  0 57 37  0    -0
VecScatterEnd       2054 1.0 1.6502e+01 13.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecReduceArith       412 1.0 3.2747e-01 2.0 3.56e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 108991
VecReduceComm        206 1.0 2.8873e-01 99.3 0.00e+00 0.0 0.0e+00 0.0e+00 2.1e+02  0  0  0  0  3   0  0  0  0  3    -0
VecNormalize         770 1.0 4.1595e+00 3.2 9.98e+08 1.2 0.0e+00 0.0e+00 7.7e+02  0  0  0  0  9   1  0  0  0 11 24055
MatMult             2054 1.0 9.2632e+01 1.2 6.29e+10 1.2 1.1e+06 1.2e+05 0.0e+00 10  6 20 20  0  19  8 57 37  0 67913
MatSolve             770 1.0 3.2557e+01 1.2 2.30e+10 1.2 0.0e+00 0.0e+00 0.0e+00  4  2  0  0  0   7  3  0  0  0 70185
MatLUFactorSym         1 1.0 2.2961e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum       140 1.0 1.5241e+01 1.2 1.91e+10 1.2 0.0e+00 0.0e+00 0.0e+00  2  2  0  0  0   3  2  0  0  0 122623
MatILUFactorSym        2 1.0 3.1880e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCopy               68 1.0 3.7231e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
MatConvert             1 1.0 1.6356e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin    1089 1.0 5.2674e+01 2.7 0.00e+00 0.0 1.1e+05 1.5e+06 9.0e+02  4  0  2 24 11   8  0  6 44 13    -0
MatAssemblyEnd      1089 1.0 1.1247e+01 6.6 2.31e+08 0.0 2.1e+03 1.5e+04 1.7e+01  1  0  0  0  0   1  0  0  0  0   871
MatGetRowIJ            2 1.0 5.9510e-06 13.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         2 1.0 1.1399e-02 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       276 1.0 7.5440e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
MatTranspose           2 1.0 1.5106e-02 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 1.3244e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        140 1.0 1.2476e+00 1.1 2.18e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 174266
MatPtAPSymbolic        1 1.0 2.0827e-01 1.0 0.00e+00 0.0 1.6e+03 2.0e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric        70 1.0 9.4749e+00 1.1 8.70e+09 1.2 3.7e+04 3.5e+05 7.5e+01  1  1  1  2  1   2  1  2  4  1 91794
MatGetLocalMat        70 1.0 5.4860e-01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol         70 1.0 6.5049e-01 6.3 0.00e+00 0.0 3.8e+04 3.6e+05 0.0e+00  0  0  1  2  0   0  0  2  4  0    -0
MatSetPreallCOO       32 1.0 5.9790e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       32 1.0 3.0167e-05 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp              206 1.0 1.0129e+02 1.0 8.06e+10 1.2 4.1e+05 1.4e+05 1.6e+03 12  7  8  9 20  23 10 22 16 25 78995
PCApply             1148 1.0 4.3064e+02 1.1 2.93e+11 1.2 3.4e+06 8.6e+04 1.5e+03 48 27 64 45 18 Multiple stages 67813
PCApplyOnBlocks      770 1.0 3.2567e+01 1.2 2.30e+10 1.2 0.0e+00 0.0e+00 0.0e+00  4  2  0  0  0   7  3  0  0  0 70164
KSPSetUp             206 1.0 2.0884e-02 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             206 1.0 4.8460e+02 1.0 3.38e+11 1.2 4.0e+06 9.2e+04 4.0e+03 56 31 76 56 49 Multiple stages 69499
KSPGMRESOrthog      1848 1.0 3.3434e+01 1.9 1.33e+10 1.2 0.0e+00 0.0e+00 1.8e+03  3  1  0  0 23   5  2  0  0 28 39882
DMRefine               2 1.0 2.5081e-02 1.0 2.09e+03 1.0 7.4e+03 3.5e+01 6.3e+01  0  0  0  0  1   0  0  0  0  1     9
DMPlexCreateGmsh       1 1.0 9.9955e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 5.5931e+00 493.5 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   1  0  0  0  0    -0
Mesh Partition         4 1.0 4.9666e-02 1.0 0.00e+00 0.0 1.8e+04 6.4e+01 5.1e+01  0  0  0  0  1   0  0  1  0  1    -0
Mesh Migration         4 1.0 1.0999e-02 1.0 0.00e+00 0.0 6.7e+04 7.4e+01 2.4e+02  0  0  1  0  3   0  0  4  0  4    -0
DMPlexPartSelf         1 1.0 1.4253e-03 658.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       4 1.0 6.0070e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        4 1.0 3.1198e-03 1.2 0.00e+00 0.0 3.6e+03 5.1e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       4 1.0 5.4243e-04 3.1 0.00e+00 0.0 1.8e+03 1.9e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          4 1.0 8.0047e-04 2.9 0.00e+00 0.0 1.9e+03 2.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          29 1.0 4.5423e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 5.2558e-02 1.0 0.00e+00 0.0 4.3e+03 1.8e+02 6.3e+01  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistCones        4 1.0 1.3619e-03 1.0 0.00e+00 0.0 1.1e+04 1.1e+02 8.0e+00  0  0  0  0  0   0  0  1  0  0    -0
DMPlexDistLabels       4 1.0 4.4333e-03 1.0 0.00e+00 0.0 3.5e+04 7.1e+01 1.5e+02  0  0  1  0  2   0  0  2  0  2    -0
DMPlexDistOvrlp        3 1.0 9.3674e-03 1.0 0.00e+00 0.0 8.3e+04 7.0e+01 2.4e+02  0  0  2  0  3   0  0  4  0  4    -0
DMPlexDistField        7 1.0 2.1271e-03 1.2 0.00e+00 0.0 1.5e+04 5.8e+01 2.0e+01  0  0  0  0  0   0  0  1  0  0    -0
DMPlexStratify        41 1.0 3.2057e-03 3.5 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      41 1.0 2.2449e-04 4.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          2 1.0 1.2645e-04 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          2 1.0 3.0634e-03 1.6 0.00e+00 0.0 4.1e+03 2.9e+01 1.9e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          2 1.0 1.2483e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          2 1.0 3.3962e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             2 1.0 4.8234e-04 2.8 0.00e+00 0.0 3.3e+03 2.7e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         2 1.0 9.6816e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         2 1.0 9.1572e-04 1.7 0.00e+00 0.0 8.2e+02 3.7e+01 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             75 1.0 8.0123e+02 1.0 1.11e+12 1.2 5.0e+06 1.3e+05 7.4e+03 93 100 96 100 90 Multiple stages 136353
SNESSetUp              1 1.0 5.9507e-05 5.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     281 1.0 3.1238e+01 1.1 2.72e+11 1.2 3.3e+05 1.2e+05 0.0e+00  3 24  6  6  0   7 33 18 11  0 842896
SNESJacobianEval     206 1.0 1.7369e+02 1.0 4.18e+11 1.2 2.2e+05 7.9e+05 8.2e+02 20 37  4 26 10  39 51 11 48 12 233191
SNESLineSearch       206 1.0 2.6072e+01 1.0 2.07e+11 1.2 3.2e+05 1.2e+05 8.2e+02  3 18  6  6 10   6 25 17 11 12 768339
DualSpaceSetUp         8 1.0 5.6143e-03 1.1 1.08e+02 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     2
FESetUp                8 1.0 9.6884e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 8.6202e+02 1.0 1.11e+12 1.2 5.3e+06 1.2e+05 8.2e+03 100 100 100 100 100 Multiple stages 126749
firedrake.__init__       1 1.0 1.0683e+01 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
CreateMesh             3 1.0 5.6895e+00 53.2 0.00e+00 0.0 1.6e+05 7.5e+01 4.4e+02  0  0  3  0  5   1  0  9  0  7    -0
firedrake.mesh._from_gmsh       1 1.0 5.5940e+00 492.3 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       3 1.0 1.1297e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       3 1.0 6.7770e-06 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        3 1.0 4.5017e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          3 1.0 9.2652e-04 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      15 1.0 2.6437e-02 1.2 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      19 1.0 1.8176e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      19 1.0 2.4676e-02 1.2 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      18 1.0 2.2434e-02 1.2 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      18 1.0 2.2330e-02 1.2 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      36 1.0 7.8992e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       6 1.0 4.1295e-03 1.2 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__      12 1.0 7.3301e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      10 1.0 1.2060e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      65 1.0 1.7951e-02 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          3 1.0 9.5684e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       3 1.0 2.1055e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       4 1.0 6.1286e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       5 1.0 1.2315e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       3 1.0 9.5040e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     646 1.0 9.2065e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      2249 1.0 1.7555e+02 1.2 6.91e+11 1.2 3.1e+05 1.2e+05 3.2e+01 19 61  6  6  0  36 83 16 10  0 380695
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       6 1.0 9.0889e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    4498 1.0 2.4223e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   5  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      17 1.0 1.0429e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
GlobalKernel: generate loopy      17 0.0 1.2003e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      17 0.0 8.5790e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      17 1.0 1.3570e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
pyop2.compilation.load      17 1.0 1.3569e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      17 1.0 8.8514e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.make_so      17 1.0 8.6951e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
ParLoopRednBegin    2249 1.0 7.2521e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      2249 1.0 5.9639e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       3 1.0 9.1185e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong       4 1.0 5.8801e+00 1.0 1.46e+07 1.2 8.9e+03 1.3e+04 1.3e+01  1  0  0  0  0   1  0  0  0  0   249
firedrake.interpolation.interpolate      13 1.0 4.3870e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      13 1.0 5.8319e+00 1.0 9.02e+07 1.2 1.4e+04 4.2e+04 3.7e+01  1  0  0  0  0   1  0  1  0  1  1550
firedrake.formmanipulation.split_form      14 1.0 4.3847e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      14 1.0 1.9820e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      13 1.0 1.4555e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       6 1.0 9.9879e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     583 1.0 2.3638e+00 9.2 0.00e+00 0.0 3.1e+05 1.2e+05 4.0e+00  0  0  6  6  0   0  0 17 10  0    -0
Parloop_Cells_wrap_expression_kernel      26 1.0 5.3570e+00 1.0 9.02e+07 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0  1688
firedrake.halo.Halo.global_to_local_end     583 1.0 1.3525e+01 119.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       1 1.0 2.4424e+00 39.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1492d88bbdd0_wrap_pyop2_kernel_prolong       4 0.0 7.3770e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1492d8969810_wrap_pyop2_kernel_prolong       4 0.0 5.6216e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 3.8486e+00 1.0 7.30e+07 1.2 8.1e+03 6.1e+04 1.1e+01  0  0  0  0  0   1  0  0  0  0  1902
firedrake.function.Function.assign     314 1.0 1.9524e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     313 1.0 1.8744e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.1138e-04 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate     154 1.0 1.6218e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 5.2190e-05 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.3919e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.8852e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.1351e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 7.3231e+00 1.0 0.00e+00 0.0 3.2e+03 4.9e+05 2.3e+01  1  0  0  0  0   2  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 6.3331e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.8711e-04 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.1590e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.1590e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateSparsity         2 1.0 3.9014e+00 1.1 0.00e+00 0.0 2.7e+03 2.8e+05 1.8e+01  0  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         2 1.0 6.0197e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      75 1.0 8.0151e+02 1.0 1.11e+12 1.2 5.0e+06 1.3e+05 7.5e+03 93 100 96 100 92 Multiple stages 136305
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 3.3119e-01 1192.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 8.5810e-06 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 3.3114e-01 1441.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 3.3111e-01 1686.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     562 1.0 7.8050e+00 1.3 6.90e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   2  9  0  0  0 886551
Parloop_Cells_wrap_form0_exterior_facet_top_integral     562 1.0 9.7927e-01 1.0 8.97e+06 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   918
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral     562 1.0 1.2369e+00 1.1 6.64e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  9478
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     562 1.0 5.3506e+00 1.2 6.63e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   1  8  0  0  0 1242066
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     562 1.0 1.1336e+01 1.3 1.37e+11 1.3 0.0e+00 0.0e+00 0.0e+00  1 12  0  0  0   2 16  0  0  0 1124734
firedrake.halo.Halo.local_to_global_begin     281 1.0 6.7624e-02 6.0 0.00e+00 0.0 1.5e+05 1.2e+05 0.0e+00  0  0  3  3  0   0  0  8  5  0    -0
firedrake.halo.Halo.local_to_global_end     281 1.0 3.1142e+00 55.6 3.03e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   715
Parloop_Cells_wrap_form00_cell_integral     412 1.0 2.8637e+01 1.4 9.44e+10 1.2 0.0e+00 0.0e+00 0.0e+00  3  9  0  0  0   5 12  0  0  0 330544
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     412 1.0 1.8823e+00 1.7 4.95e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  4650
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     412 1.0 3.4567e+01 1.2 1.25e+11 1.2 0.0e+00 0.0e+00 0.0e+00  4 11  0  0  0   7 16  0  0  0 362287
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     412 1.0 7.9427e+01 1.4 1.99e+11 1.3 0.0e+00 0.0e+00 0.0e+00  8 17  0  0  0  15 23  0  0  0 232873
firedrake.dmhooks.get_function_space       1 1.0 1.5124e-03 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 5.0753e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0       70 1.0 3.7383e+00 1.0 2.38e+07 9.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   1  0  0  0  0   192
MGSetup Level 1       70 1.0 8.3597e+01 1.0 7.19e+10 1.2 3.7e+05 1.2e+05 1.5e+03 10  7  7  7 18  19  9 20 12 22 85302
firedrake.constant.Constant.assign      75 1.0 3.5881e-03 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a67cef44d0_wrap_pyop2_kernel_prolong       4 0.0 7.3764e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a67cef6e90_wrap_pyop2_kernel_prolong       4 0.0 5.1419e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14afb2a0f350_wrap_pyop2_kernel_prolong       4 0.0 7.3859e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14afb28dd550_wrap_pyop2_kernel_prolong       4 0.0 6.4860e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1464d3430710_wrap_pyop2_kernel_prolong       4 0.0 7.3763e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1464d3678b50_wrap_pyop2_kernel_prolong       4 0.0 6.4036e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154fcba7fc90_wrap_pyop2_kernel_prolong       4 0.0 7.3817e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154fcba7c610_wrap_pyop2_kernel_prolong       4 0.0 6.6280e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1488caa03890_wrap_pyop2_kernel_prolong       4 0.0 7.3846e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1488caa03dd0_wrap_pyop2_kernel_prolong       4 0.0 7.3414e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1487c4d86450_wrap_pyop2_kernel_prolong       4 0.0 7.3799e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1487c4db1b90_wrap_pyop2_kernel_prolong       4 0.0 6.0100e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a2a7b034d0_wrap_pyop2_kernel_prolong       4 0.0 7.3757e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a2a7ab9110_wrap_pyop2_kernel_prolong       4 0.0 5.0272e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eef0fc7f90_wrap_pyop2_kernel_prolong       4 0.0 7.3837e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eef07e1d50_wrap_pyop2_kernel_prolong       4 0.0 6.7452e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147790744990_wrap_pyop2_kernel_prolong       4 0.0 7.3769e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14778bbabbd0_wrap_pyop2_kernel_prolong       4 0.0 5.0394e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1457af383910_wrap_pyop2_kernel_prolong       4 0.0 7.3853e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1457af383410_wrap_pyop2_kernel_prolong       4 0.0 7.2507e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14874a59a110_wrap_pyop2_kernel_prolong       4 0.0 7.3813e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148749b34bd0_wrap_pyop2_kernel_prolong       4 0.0 6.3853e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf4d7dd4d0_wrap_pyop2_kernel_prolong       4 0.0 7.3688e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf4d7bda50_wrap_pyop2_kernel_prolong       4 0.0 6.6031e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15379bcfd5d0_wrap_pyop2_kernel_prolong       4 0.0 7.3666e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15379b3cffd0_wrap_pyop2_kernel_prolong       4 0.0 5.5339e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1488de9f4d10_wrap_pyop2_kernel_prolong       4 0.0 7.3684e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1488dea44bd0_wrap_pyop2_kernel_prolong       4 0.0 6.2885e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1516cae18950_wrap_pyop2_kernel_prolong       4 0.0 7.3691e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1516cb075110_wrap_pyop2_kernel_prolong       4 0.0 6.5801e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14755f12f990_wrap_pyop2_kernel_prolong       4 0.0 7.3601e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14755f38bf90_wrap_pyop2_kernel_prolong       4 0.0 5.1700e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15371b8c55d0_wrap_pyop2_kernel_prolong       4 0.0 7.3623e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15371b8bfd90_wrap_pyop2_kernel_prolong       4 0.0 6.7765e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1535cca78d90_wrap_pyop2_kernel_prolong       4 0.0 7.3620e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1535cccc0f90_wrap_pyop2_kernel_prolong       4 0.0 6.2280e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145fa9980d10_wrap_pyop2_kernel_prolong       4 0.0 7.3612e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145fa8ffed50_wrap_pyop2_kernel_prolong       4 0.0 6.1448e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dfe055cf50_wrap_pyop2_kernel_prolong       4 0.0 7.3573e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dfe0553c10_wrap_pyop2_kernel_prolong       4 0.0 6.1828e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ede203f210_wrap_pyop2_kernel_prolong       4 0.0 7.3703e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ede203cbd0_wrap_pyop2_kernel_prolong       4 0.0 7.9083e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c4d92a5bd0_wrap_pyop2_kernel_prolong       4 0.0 7.3686e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c4d92a5410_wrap_pyop2_kernel_prolong       4 0.0 6.9455e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14930714f410_wrap_pyop2_kernel_prolong       4 0.0 7.3685e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149307382310_wrap_pyop2_kernel_prolong       4 0.0 6.5218e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147268f36450_wrap_pyop2_kernel_prolong       4 0.0 7.3695e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147268f049d0_wrap_pyop2_kernel_prolong       4 0.0 7.0046e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a79bb4ad10_wrap_pyop2_kernel_prolong       4 0.0 7.3926e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a79bb49750_wrap_pyop2_kernel_prolong       4 0.0 8.1336e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14adce2bbd90_wrap_pyop2_kernel_prolong       4 0.0 7.3639e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14adce2be710_wrap_pyop2_kernel_prolong       4 0.0 5.3118e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1465b0432910_wrap_pyop2_kernel_prolong       4 0.0 7.3546e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1465b04808d0_wrap_pyop2_kernel_prolong       4 0.0 5.3260e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15399465e050_wrap_pyop2_kernel_prolong       4 0.0 7.3636e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15399465d750_wrap_pyop2_kernel_prolong       4 0.0 6.8405e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152aae138d10_wrap_pyop2_kernel_prolong       4 0.0 7.3617e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152aad83d610_wrap_pyop2_kernel_prolong       4 0.0 5.9885e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149cf8119a90_wrap_pyop2_kernel_prolong       4 0.0 7.3720e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149cf8119dd0_wrap_pyop2_kernel_prolong       4 0.0 6.9556e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf4f887bd0_wrap_pyop2_kernel_prolong       4 0.0 7.3604e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf4f8cb950_wrap_pyop2_kernel_prolong       4 0.0 6.1976e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b32c407bd0_wrap_pyop2_kernel_prolong       4 0.0 7.3654e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b32c405250_wrap_pyop2_kernel_prolong       4 0.0 5.7027e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ca3e005b10_wrap_pyop2_kernel_prolong       4 0.0 7.3560e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ca3e007410_wrap_pyop2_kernel_prolong       4 0.0 6.1474e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa892f1e50_wrap_pyop2_kernel_prolong       4 0.0 7.3586e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa8932e850_wrap_pyop2_kernel_prolong       4 0.0 5.9009e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14890a4f4e90_wrap_pyop2_kernel_prolong       4 0.0 7.3685e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14890a4cfd10_wrap_pyop2_kernel_prolong       4 0.0 6.7466e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478aa58b450_wrap_pyop2_kernel_prolong       4 0.0 7.3620e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478aa5bddd0_wrap_pyop2_kernel_prolong       4 0.0 7.2622e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dfdbf52c50_wrap_pyop2_kernel_prolong       4 0.0 7.3619e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dfdbf7d990_wrap_pyop2_kernel_prolong       4 0.0 7.4116e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145f6274d6d0_wrap_pyop2_kernel_prolong       4 0.0 7.3794e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145f61e5ef10_wrap_pyop2_kernel_prolong       4 0.0 7.9400e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b6a6e78e90_wrap_pyop2_kernel_prolong       4 0.0 7.3571e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b6a6c3abd0_wrap_pyop2_kernel_prolong       4 0.0 5.4985e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab70db9d50_wrap_pyop2_kernel_prolong       4 0.0 7.3544e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab70db8c90_wrap_pyop2_kernel_prolong       4 0.0 5.9137e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de66278610_wrap_pyop2_kernel_prolong       4 0.0 7.3657e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de66036310_wrap_pyop2_kernel_prolong       4 0.0 6.9121e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15418b6f2f50_wrap_pyop2_kernel_prolong       4 0.0 7.3542e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154170ea6d90_wrap_pyop2_kernel_prolong       4 0.0 5.6220e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15355727d990_wrap_pyop2_kernel_prolong       4 0.0 7.3583e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153556aebad0_wrap_pyop2_kernel_prolong       4 0.0 6.5437e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a6aa05e750_wrap_pyop2_kernel_prolong       4 0.0 7.3665e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a6aa0dc4d0_wrap_pyop2_kernel_prolong       4 0.0 6.8373e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a52467fd0_wrap_pyop2_kernel_prolong       4 0.0 7.3679e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a52363bd0_wrap_pyop2_kernel_prolong       4 0.0 7.2282e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f71e2d3d0_wrap_pyop2_kernel_prolong       4 0.0 7.3622e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f53489490_wrap_pyop2_kernel_prolong       4 0.0 6.8154e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ea357b8b10_wrap_pyop2_kernel_prolong       4 0.0 7.3713e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ea35827450_wrap_pyop2_kernel_prolong       4 0.0 6.6790e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d74fb7fc10_wrap_pyop2_kernel_prolong       4 0.0 7.3650e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d74fb2ae10_wrap_pyop2_kernel_prolong       4 0.0 6.6355e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1553d6552e90_wrap_pyop2_kernel_prolong       4 0.0 7.3634e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1553d63db910_wrap_pyop2_kernel_prolong       4 0.0 7.1237e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151c2add1c10_wrap_pyop2_kernel_prolong       4 0.0 7.3656e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151c2add0150_wrap_pyop2_kernel_prolong       4 0.0 7.1826e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e684761d0_wrap_pyop2_kernel_prolong       4 0.0 7.3656e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e685eee50_wrap_pyop2_kernel_prolong       4 0.0 6.9036e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d79d81a90_wrap_pyop2_kernel_prolong       4 0.0 7.3681e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d79b4aa90_wrap_pyop2_kernel_prolong       4 0.0 5.5877e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150c88375350_wrap_pyop2_kernel_prolong       4 0.0 7.3717e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150c883cd510_wrap_pyop2_kernel_prolong       4 0.0 6.3039e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1471c1d75c90_wrap_pyop2_kernel_prolong       4 0.0 7.3838e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1471c1d76f10_wrap_pyop2_kernel_prolong       4 0.0 7.8960e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a2dcdea0d0_wrap_pyop2_kernel_prolong       4 0.0 7.3769e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a2dc55dad0_wrap_pyop2_kernel_prolong       4 0.0 6.6169e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1507f4ba98d0_wrap_pyop2_kernel_prolong       4 0.0 7.3545e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1507f4b1b710_wrap_pyop2_kernel_prolong       4 0.0 6.4110e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151bb3d71f10_wrap_pyop2_kernel_prolong       4 0.0 7.3605e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151bb3d736d0_wrap_pyop2_kernel_prolong       4 0.0 5.8101e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154309912190_wrap_pyop2_kernel_prolong       4 0.0 7.3748e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154309911690_wrap_pyop2_kernel_prolong       4 0.0 5.2232e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e3568ec2d0_wrap_pyop2_kernel_prolong       4 0.0 7.3744e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e355fcbc10_wrap_pyop2_kernel_prolong       4 0.0 5.3644e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f6fa293590_wrap_pyop2_kernel_prolong       4 0.0 7.3786e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f6fa4e9d90_wrap_pyop2_kernel_prolong       4 0.0 6.1885e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152af988bf90_wrap_pyop2_kernel_prolong       4 0.0 7.3769e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152af98869d0_wrap_pyop2_kernel_prolong       4 0.0 6.9872e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ec262c21d0_wrap_pyop2_kernel_prolong       4 0.0 7.3863e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ec262c1d50_wrap_pyop2_kernel_prolong       4 0.0 6.2928e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15288b237250_wrap_pyop2_kernel_prolong       4 0.0 7.3813e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15288b114bd0_wrap_pyop2_kernel_prolong       4 0.0 7.3219e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b9064a990_wrap_pyop2_kernel_prolong       4 0.0 7.3631e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b900773d0_wrap_pyop2_kernel_prolong       4 0.0 8.1997e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151d2de895d0_wrap_pyop2_kernel_prolong       4 0.0 7.3818e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151d2de8bd50_wrap_pyop2_kernel_prolong       4 0.0 5.6040e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15517db13e90_wrap_pyop2_kernel_prolong       4 0.0 7.3840e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15517db10f90_wrap_pyop2_kernel_prolong       4 0.0 5.9505e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b7c16061d0_wrap_pyop2_kernel_prolong       4 0.0 7.3595e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b7c14b5b90_wrap_pyop2_kernel_prolong       4 0.0 5.1982e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154d6df1fdd0_wrap_pyop2_kernel_prolong       4 0.0 7.3709e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154d6e16ed90_wrap_pyop2_kernel_prolong       4 0.0 6.4872e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14829c739010_wrap_pyop2_kernel_prolong       4 0.0 7.3655e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148297eb5110_wrap_pyop2_kernel_prolong       4 0.0 6.0286e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149268dcf2d0_wrap_pyop2_kernel_prolong       4 0.0 7.3745e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149268485850_wrap_pyop2_kernel_prolong       4 0.0 7.5872e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147aab187990_wrap_pyop2_kernel_prolong       4 0.0 7.3612e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147aab184890_wrap_pyop2_kernel_prolong       4 0.0 5.9529e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14953958dbd0_wrap_pyop2_kernel_prolong       4 0.0 7.3775e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1495392f52d0_wrap_pyop2_kernel_prolong       4 0.0 6.3850e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151eb784b790_wrap_pyop2_kernel_prolong       4 0.0 7.3793e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151eb785e190_wrap_pyop2_kernel_prolong       4 0.0 7.9230e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f5ce88f910_wrap_pyop2_kernel_prolong       4 0.0 7.3748e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f5cddad690_wrap_pyop2_kernel_prolong       4 0.0 5.7445e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152777556010_wrap_pyop2_kernel_prolong       4 0.0 7.3751e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1527773d08d0_wrap_pyop2_kernel_prolong       4 0.0 7.3183e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d820afa990_wrap_pyop2_kernel_prolong       4 0.0 7.3791e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d820d75ed0_wrap_pyop2_kernel_prolong       4 0.0 7.2906e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d782d92090_wrap_pyop2_kernel_prolong       4 0.0 7.3774e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d782d910d0_wrap_pyop2_kernel_prolong       4 0.0 6.1646e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b22a181d0_wrap_pyop2_kernel_prolong       4 0.0 7.3699e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b221fd5d0_wrap_pyop2_kernel_prolong       4 0.0 4.9093e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a9efba3690_wrap_pyop2_kernel_prolong       4 0.0 7.3773e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a9efb33310_wrap_pyop2_kernel_prolong       4 0.0 7.0774e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c7ee20e90_wrap_pyop2_kernel_prolong       4 0.0 7.3746e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c7ee75e90_wrap_pyop2_kernel_prolong       4 0.0 7.0535e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a0f6f53250_wrap_pyop2_kernel_prolong       4 0.0 7.3559e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a0f6e29c90_wrap_pyop2_kernel_prolong       4 0.0 6.4977e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1507a064fcd0_wrap_pyop2_kernel_prolong       4 0.0 7.3806e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1507a064d710_wrap_pyop2_kernel_prolong       4 0.0 6.5984e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab00ee1310_wrap_pyop2_kernel_prolong       4 0.0 7.3615e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab00d1b450_wrap_pyop2_kernel_prolong       4 0.0 6.9835e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14773ccc4e90_wrap_pyop2_kernel_prolong       4 0.0 7.3553e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14773cc67790_wrap_pyop2_kernel_prolong       4 0.0 5.7304e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b0baf939d0_wrap_pyop2_kernel_prolong       4 0.0 7.3797e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b0bae5cb10_wrap_pyop2_kernel_prolong       4 0.0 6.5851e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d162aed7d0_wrap_pyop2_kernel_prolong       4 0.0 7.3728e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d162aedad0_wrap_pyop2_kernel_prolong       4 0.0 6.3856e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce11403910_wrap_pyop2_kernel_prolong       4 0.0 7.3730e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce11403550_wrap_pyop2_kernel_prolong       4 0.0 6.4278e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a03b273d0_wrap_pyop2_kernel_prolong       4 0.0 7.3593e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a03ba4090_wrap_pyop2_kernel_prolong       4 0.0 7.3765e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14edec1bfbd0_wrap_pyop2_kernel_prolong       4 0.0 7.3739e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14edec3db710_wrap_pyop2_kernel_prolong       4 0.0 6.2989e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b17754a10_wrap_pyop2_kernel_prolong       4 0.0 7.3736e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b1753dfd0_wrap_pyop2_kernel_prolong       4 0.0 6.3514e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b5a894e3d0_wrap_pyop2_kernel_prolong       4 0.0 7.3703e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b58e03f7d0_wrap_pyop2_kernel_prolong       4 0.0 5.4575e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd58847e10_wrap_pyop2_kernel_prolong       4 0.0 7.3787e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd58847d50_wrap_pyop2_kernel_prolong       4 0.0 7.5044e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146ab2319f10_wrap_pyop2_kernel_prolong       4 0.0 7.3789e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146ab2394210_wrap_pyop2_kernel_prolong       4 0.0 5.9535e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151f3c19f650_wrap_pyop2_kernel_prolong       4 0.0 7.3719e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151f3c19ff90_wrap_pyop2_kernel_prolong       4 0.0 7.2462e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152f6ab358d0_wrap_pyop2_kernel_prolong       4 0.0 7.3809e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152f6ab34e90_wrap_pyop2_kernel_prolong       4 0.0 6.5231e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dbc195d410_wrap_pyop2_kernel_prolong       4 0.0 7.3761e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dbc195c3d0_wrap_pyop2_kernel_prolong       4 0.0 7.2606e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be1b66f310_wrap_pyop2_kernel_prolong       4 0.0 7.3666e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be20cd6810_wrap_pyop2_kernel_prolong       4 0.0 6.5960e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a62d19c990_wrap_pyop2_kernel_prolong       4 0.0 7.3641e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a62d18e910_wrap_pyop2_kernel_prolong       4 0.0 5.5931e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15425f4d6e50_wrap_pyop2_kernel_prolong       4 0.0 7.3713e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15425f4d4410_wrap_pyop2_kernel_prolong       4 0.0 7.9979e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153d53d89e90_wrap_pyop2_kernel_prolong       4 0.0 7.3628e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153d53d894d0_wrap_pyop2_kernel_prolong       4 0.0 6.1538e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150d837f4bd0_wrap_pyop2_kernel_prolong       4 0.0 7.3802e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150d837db990_wrap_pyop2_kernel_prolong       4 0.0 8.1056e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b6941b3b10_wrap_pyop2_kernel_prolong       4 0.0 7.3741e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b68ff7fbd0_wrap_pyop2_kernel_prolong       4 0.0 7.4706e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bacb26c0d0_wrap_pyop2_kernel_prolong       4 0.0 7.3916e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14baca853c90_wrap_pyop2_kernel_prolong       4 0.0 7.6570e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided         69 1.0 5.2256e-03 3.9 0.00e+00 0.0 4.5e+04 4.0e+00 6.9e+01  0  0  1  0  1   0  0  1  0  5    -0
SFSetGraph            69 1.0 3.1636e-03 6.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               69 1.0 7.0715e-03 1.9 0.00e+00 0.0 8.9e+04 2.2e+02 6.9e+01  0  0  2  0  1   0  0  3  0  5    -0
SFPack              8036 1.0 1.8688e+00 3.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            8036 1.0 6.4299e-03 4.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             3444 1.0 4.2677e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecSet              4591 1.0 1.0446e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAYPX             6888 1.0 1.0022e+01 1.8 3.97e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  1  0  0  0 39692
VecAXPBYCZ          2296 1.0 4.1432e+00 1.6 4.96e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  2  0  0  0 120018
VecScatterBegin     8036 1.0 2.0837e+00 3.2 0.00e+00 0.0 3.1e+06 9.3e+04 0.0e+00  0  0 60 45  0   0  0 93 100  0    -0
VecScatterEnd       8036 1.0 4.8151e+01 21.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
MatMult             4592 1.0 2.1263e+02 1.2 1.41e+11 1.2 2.4e+06 1.2e+05 0.0e+00 22 13 46 45  0  46 48 71 100  0 66142
MatMultAdd          1148 1.0 6.1565e+00 1.2 2.98e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 48461
MatMultTranspose    1148 1.0 4.2748e+00 1.8 2.98e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 69794
MatSolve            5740 1.0 2.2810e+02 1.3 1.37e+11 1.2 9.7e+05 7.4e+02 3.4e+02 23 12 18  0  4  48 47 29  0 23 59831
MatResidual         1148 1.0 5.8008e+01 1.4 3.57e+10 1.2 6.0e+05 1.2e+05 0.0e+00  6  3 11 11  0  12 12 18 25  0 61470
PCSetUpOnBlocks     2296 1.0 2.7301e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply             5740 1.0 2.2819e+02 1.3 1.37e+11 1.2 9.7e+05 7.4e+02 3.4e+02 23 12 18  0  4  48 47 29  0 23 59806
PCApplyOnBlocks     4592 1.0 2.2102e+02 1.3 1.37e+11 1.2 0.0e+00 0.0e+00 0.0e+00 22 12  0  0  0  45 47  0  0  0 61654
KSPSolve            3444 1.0 3.7792e+02 1.1 2.51e+11 1.2 2.8e+06 7.9e+04 1.5e+03 41 23 53 34 18  85 86 82 75 100 66260
MGSmooth Level 0    1148 1.0 1.9471e+01 3.0 7.50e+08 14.3 9.7e+05 7.4e+02 1.5e+03  1  0 18  0 18   3  0 29  0 100  1044
MGSmooth Level 1    2296 1.0 3.7078e+02 1.2 2.51e+11 1.2 1.8e+06 1.2e+05 0.0e+00 40 23 34 34  0  83 86 53 75  0 67480
MGResid Level 1     1148 1.0 5.8014e+01 1.4 3.57e+10 1.2 6.0e+05 1.2e+05 0.0e+00  6  3 11 11  0  12 12 18 25  0 61464
MGInterp Level 1    2296 1.0 1.0145e+01 1.3 5.95e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 58820
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   229            229
              Viewer     3              3
           Index Set  1520           1520
   IS L to G Mapping   207            207
             Section   472            472
   Star Forest Graph   368            437
              Vector   452            452
              Matrix   136            136
      Preconditioner     6              6
       Krylov Solver     5              5
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

           Index Set   138            138
   Star Forest Graph    69              0
              Vector    69             69
========================================================================================================================
Average time to get PetscTime(): 2.66e-08
Average time for MPI_Barrier(): 4.5288e-06
Average time for zero size MPI_Send(): 2.19697e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murr_horiz/vlumping_inexact_snapshot_lag3/h1.profile # (source: code)
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

