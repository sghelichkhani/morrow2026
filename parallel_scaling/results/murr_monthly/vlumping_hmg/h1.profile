****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0264.gadi.nci.org.au with 104 processes, by sg8812 on Thu Aug 27 13:06:02 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           4.388e+02     1.000   4.388e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                3.974e+11     1.193   3.756e+11  3.906e+13
Flops/sec:            9.057e+08     1.193   8.559e+08  8.902e+10
MPI Msg Count:        8.923e+04     3.425   6.380e+04  6.635e+06
MPI Msg Len (bytes):  3.960e+09     2.999   4.377e+04  2.904e+11
MPI Reductions:       8.506e+03     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 2.9080e+02  66.3%  3.0505e+13  78.1%  1.632e+06  24.6%  1.108e+05       62.3%  6.442e+03  75.7%
 1:        MG Apply: 1.4800e+02  33.7%  8.5569e+12  21.9%  5.003e+06  75.4%  2.190e+04       37.7%  2.045e+03  24.0%

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

BuildTwoSided        833 1.0 1.7843e+01 4.1 0.00e+00 0.0 5.6e+04 4.0e+00 5.9e+02  3  0  1  0  7   4  0  3  0  9    -0
BuildTwoSidedF       473 1.0 1.7773e+01 3.7 0.00e+00 0.0 3.5e+04 1.5e+06 4.7e+02  3  0  1 18  6   4  0  2 28  7    -0
SFSetGraph           369 1.1 1.5750e-02 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              360 1.1 1.1182e-01 2.6 0.00e+00 0.0 7.8e+04 1.0e+03 1.2e+02  0  0  1  0  1   0  0  5  0  2    -0
SFBcastBegin         486 1.0 1.2450e-01 3.2 0.00e+00 0.0 2.2e+05 5.2e+04 0.0e+00  0  0  3  4  0   0  0 14  6  0    -0
SFBcastEnd           486 1.0 4.2461e+00 57.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        131 1.0 2.4900e-02 13.4 0.00e+00 0.0 6.4e+04 8.6e+04 0.0e+00  0  0  1  2  0   0  0  4  3  0    -0
SFReduceEnd          131 1.0 1.0520e+00 56.0 9.29e+06 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   647
SFFetchOpBegin         6 1.0 2.9952e-05 5.5 0.00e+00 0.0 2.5e+03 7.3e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           6 1.0 3.5720e-04 9.5 0.00e+00 0.0 2.5e+03 7.3e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          4 1.0 6.5166e-04 1.2 0.00e+00 0.0 1.2e+03 1.2e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         51 1.0 4.8277e-03 1.3 0.00e+00 0.0 6.2e+04 8.1e+01 6.0e+01  0  0  1  0  1   0  0  4  0  1    -0
SFSectionSF           53 1.0 3.0098e-03 1.8 0.00e+00 0.0 3.1e+04 3.6e+01 5.3e+01  0  0  0  0  1   0  0  2  0  1    -0
SFRemoteOff            2 1.0 7.5207e-05 2.0 0.00e+00 0.0 1.1e+03 1.6e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack            347392 1.2 8.0909e-01 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack          347398 1.2 6.9080e-02 3.6 9.29e+06 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  9860
VecDot                65 1.0 2.4335e-01 5.0 5.62e+07 1.2 0.0e+00 0.0e+00 6.5e+01  0  0  0  0  1   0  0  0  0  1 23139
VecMDot             2068 1.0 2.0637e+01 2.1 1.04e+10 1.2 0.0e+00 0.0e+00 2.1e+03  3  3  0  0 24   5  3  0  0 32 50524
VecNorm             2421 1.0 7.0183e+00 4.0 1.55e+09 1.2 0.0e+00 0.0e+00 2.4e+03  1  0  0  0 28   1  1  0  0 38 22194
VecScale            2270 1.0 6.0037e-01 1.3 7.12e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 118829
VecCopy              586 1.0 7.4892e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              1828 1.0 1.4834e+00 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              202 1.0 2.3829e-01 1.2 1.18e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 49482
VecWAXPY              71 1.0 1.4707e-01 1.2 3.07e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 20911
VecMAXPY            2270 1.0 1.4621e+01 1.2 1.17e+10 1.2 0.0e+00 0.0e+00 0.0e+00  3  3  0  0  0   5  4  0  0  0 80263
VecScatterBegin   346769 1.2 4.5816e+00 1.4 0.00e+00 0.0 1.1e+06 8.9e+04 0.0e+00  1  0 17 35  0   1  0 69 55  0    -0
VecScatterEnd     346769 1.2 1.1309e+01 33.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecReduceArith       130 1.0 1.0869e-01 1.8 1.12e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 103616
VecReduceComm         65 1.0 1.2338e-01 108.1 0.00e+00 0.0 0.0e+00 0.0e+00 6.5e+01  0  0  0  0  1   0  0  0  0  1    -0
VecNormalize        1339 1.0 4.2904e+00 3.3 9.28e+08 1.2 0.0e+00 0.0e+00 1.3e+03  1  0  0  0 16   1  0  0  0 21 21687
MatMult             2139 1.0 6.9950e+01 1.1 4.84e+10 1.2 1.1e+06 8.9e+04 0.0e+00 15 12 17 35  0  22 16 69 55  0 69237
MatSolve          172224 1.2 1.9079e+01 1.3 1.08e+10 1.2 0.0e+00 0.0e+00 0.0e+00  4  3  0  0  0   6  4  0  0  0 56736
MatLUFactorSym       241 1.2 1.3263e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum     15667 1.2 3.6901e+00 1.2 4.47e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   1  1  0  0  0 121430
MatILUFactorSym        2 1.0 1.2889e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin   16530 1.1 1.7783e+01 2.3 0.00e+00 0.0 3.5e+04 1.5e+06 4.7e+02  3  0  1 18  6   4  0  2 28  7    -0
MatAssemblyEnd     16530 1.1 3.8243e+00 4.9 7.30e+07 0.0 4.2e+03 7.6e+03 7.1e+01  0  0  0  0  1   1  0  0  0  1   809
MatGetRowIJ          242 1.2 3.3518e-05 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats      65 1.0 8.8767e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 2.4e+02  2  0  0  0  3   3  0  0  0  4    -0
MatGetOrdering       242 1.2 4.2794e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       260 1.0 2.3831e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
MatTranspose           8 1.0 1.6220e-02 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.8e+01  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          8 1.0 1.4781e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 1.8e+01  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        392 1.0 1.4284e+00 1.3 2.03e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   0  1  0  0  0 141523
MatPtAPSymbolic        3 1.0 2.1871e-01 1.0 0.00e+00 0.0 4.7e+03 6.7e+04 2.1e+01  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       195 1.0 1.0287e+01 1.0 8.09e+09 1.2 1.0e+05 1.2e+05 2.1e+02  2  2  2  4  2   4  3  6  7  3 78576
MatGetLocalMat       199 1.0 5.2348e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        199 1.0 3.5576e-01 2.6 0.00e+00 0.0 1.1e+05 1.2e+05 0.0e+00  0  0  2  4  0   0  0  6  7  0    -0
MatSetPreallCOO       32 1.0 5.7472e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       32 1.0 2.5408e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp               65 1.0 9.3046e+01 1.0 5.10e+10 1.2 7.6e+05 7.1e+04 3.4e+03 21 13 11 19 40  32 17 47 30 53 54878
PCApply              860 1.0 1.5163e+02 1.1 8.55e+10 1.2 5.0e+06 2.2e+04 2.0e+03 34 22 75 38 24 Multiple stages 56431
PCApplyOnBlocks   172224 1.2 2.3230e+01 1.3 1.53e+10 1.2 0.0e+00 0.0e+00 0.0e+00  5  4  0  0  0   7  5  0  0  0 65873
KSPSetUp              65 1.0 2.1190e-02 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve              65 1.0 2.0351e+02 1.0 1.29e+11 1.2 5.5e+06 3.0e+04 3.8e+03 46 33 82 57 45 Multiple stages 63271
KSPGMRESOrthog      2068 1.0 3.2119e+01 1.4 2.08e+10 1.2 0.0e+00 0.0e+00 2.1e+03  6  5  0  0 24   9  7  0  0 32 64924
DMRefine               2 1.0 2.2304e-01 1.0 2.09e+03 1.0 7.4e+03 3.5e+01 6.3e+01  0  0  0  0  1   0  0  0  0  1     1
DMPlexCreateGmsh       1 1.0 1.3510e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 4.9277e+00 332.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  1  0  0  0  0   1  0  0  0  0    -0
Mesh Partition         4 1.0 4.5173e-02 1.0 0.00e+00 0.0 1.8e+04 6.4e+01 5.1e+01  0  0  0  0  1   0  0  1  0  1    -0
Mesh Migration         4 1.0 1.1438e-02 1.0 0.00e+00 0.0 6.7e+04 7.4e+01 2.4e+02  0  0  1  0  3   0  0  4  0  4    -0
DMPlexPartSelf         1 1.0 1.2135e-03 533.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       4 1.0 7.8917e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        4 1.0 3.9381e-03 1.1 0.00e+00 0.0 3.6e+03 5.1e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       4 1.0 1.2734e-03 1.5 0.00e+00 0.0 1.8e+03 1.9e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          4 1.0 8.1729e-04 2.1 0.00e+00 0.0 1.9e+03 2.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          29 1.0 5.4880e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 4.9324e-02 1.0 0.00e+00 0.0 4.3e+03 1.8e+02 6.3e+01  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistCones        4 1.0 1.4623e-03 1.1 0.00e+00 0.0 1.1e+04 1.1e+02 8.0e+00  0  0  0  0  0   0  0  1  0  0    -0
DMPlexDistLabels       4 1.0 4.8172e-03 1.0 0.00e+00 0.0 3.5e+04 7.1e+01 1.5e+02  0  0  1  0  2   0  0  2  0  2    -0
DMPlexDistOvrlp        3 1.0 8.6169e-03 1.0 0.00e+00 0.0 8.3e+04 7.0e+01 2.4e+02  0  0  1  0  3   0  0  5  0  4    -0
DMPlexDistField        7 1.0 2.1007e-03 1.2 0.00e+00 0.0 1.5e+04 5.8e+01 2.0e+01  0  0  0  0  0   0  0  1  0  0    -0
DMPlexDistData         2 1.0 2.5264e-04 1.1 0.00e+00 0.0 5.4e+03 2.9e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify        41 1.0 4.5734e-03 5.5 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      41 1.0 2.0504e-04 3.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          2 1.0 1.3022e-04 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          2 1.0 2.8994e-03 1.6 0.00e+00 0.0 4.1e+03 2.9e+01 1.9e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          2 1.0 1.1507e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          2 1.0 2.6653e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             2 1.0 3.5569e-04 2.2 0.00e+00 0.0 3.3e+03 2.7e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         2 1.0 8.8249e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         2 1.0 7.7597e-04 2.2 0.00e+00 0.0 8.2e+02 3.7e+01 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMSwarmSetSizes        4 1.0 4.3728e-05 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             21 1.0 3.7788e+02 1.0 3.97e+11 1.2 6.4e+06 4.5e+04 7.8e+03 86 100 97 99 91 Multiple stages 103348
SNESSetUp              1 1.0 4.6975e-05 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval      86 1.0 1.6720e+01 1.1 8.34e+10 1.2 1.0e+05 1.2e+05 0.0e+00  4 21  2  4  0   6 26  6  7  0 481971
SNESJacobianEval      65 1.0 6.1301e+01 1.0 1.32e+11 1.2 6.8e+04 7.9e+05 2.6e+02 14 33  1 18  3  21 42  4 30  4 208485
SNESLineSearch        65 1.0 8.3943e+00 1.0 6.53e+10 1.2 1.0e+05 1.2e+05 2.6e+02  2 16  2  4  3   3 21  6  7  4 752982
DualSpaceSetUp         8 1.0 5.2111e-03 1.1 1.08e+02 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     2
FESetUp                8 1.0 2.0179e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 4.3656e+02 1.0 3.97e+11 1.2 6.6e+06 4.4e+04 8.5e+03 99 100 100 100 100 Multiple stages 89476
firedrake.__init__       1 1.0 1.1443e+01 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
CreateMesh             3 1.0 5.0257e+00 44.8 0.00e+00 0.0 1.6e+05 7.5e+01 4.4e+02  1  0  2  0  5   1  0 10  0  7    -0
firedrake.mesh._from_gmsh       1 1.0 4.9283e+00 331.5 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       3 1.0 9.5871e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       3 1.0 6.5430e-06 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        7 1.0 7.9512e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          3 1.0 9.2528e-04 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      36 1.0 4.2253e-02 1.1 0.00e+00 0.0 7.6e+03 1.0e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      44 1.0 2.8704e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      40 1.0 3.8723e-02 1.1 0.00e+00 0.0 7.6e+03 1.0e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      39 1.0 3.4473e-02 1.1 0.00e+00 0.0 7.6e+03 1.0e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      39 1.0 3.4242e-02 1.1 0.00e+00 0.0 7.6e+03 1.0e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      78 1.0 1.4875e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       6 1.0 4.9077e-03 1.2 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__      12 1.0 7.3359e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      24 1.0 2.3752e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      76 1.0 1.8984e-02 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          3 1.0 1.7119e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       3 1.0 2.2049e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       8 1.0 7.3360e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       5 1.0 1.2181e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       3 1.0 1.7054e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     338 1.0 5.5625e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute       714 1.0 7.4820e+01 1.2 2.15e+11 1.2 1.0e+05 1.1e+05 3.8e+01 16 53  2  4  0  24 68  6  6  1 278589
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       6 1.0 1.6627e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    1428 1.0 2.6584e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  6  0  0  0  0   9  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      19 1.0 1.0764e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
GlobalKernel: generate loopy      19 0.0 1.3915e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      19 0.0 8.8517e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      21 1.0 1.7795e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  4  0  0  0  0   6  0  0  0  0    -0
pyop2.compilation.load      20 1.0 1.7794e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  4  0  0  0  0   6  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      20 1.0 1.0317e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
pyop2.compilation.make_so      20 1.0 1.0137e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
ParLoopRednBegin     714 1.0 2.6063e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd       714 1.0 1.9304e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       3 1.0 9.9302e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong       4 1.0 3.8162e+00 1.0 1.46e+07 1.2 8.9e+03 1.3e+04 1.3e+01  1  0  0  0  0   1  0  1  0  0   383
firedrake.interpolation.interpolate      21 1.0 6.5922e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      15 1.0 1.2875e+01 1.0 9.02e+07 1.2 3.2e+04 1.8e+04 1.8e+02  3  0  0  0  2   4  0  2  0  3   703
firedrake.formmanipulation.split_form      16 1.0 5.2004e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      16 1.0 2.9375e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      17 1.0 1.9442e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       8 1.0 1.2877e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     193 1.0 3.0156e-01 2.8 0.00e+00 0.0 1.1e+05 1.1e+05 4.0e+00  0  0  2  4  0   0  0  7  6  0    -0
Parloop_Cells_wrap_expression_kernel      34 1.0 7.0237e+00 1.0 9.02e+07 1.2 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0  1288
firedrake.halo.Halo.global_to_local_end     193 1.0 4.1578e+00 66.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       3 1.0 3.4155e+00 15.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
Parloop_set_#x14ddcff07d50_wrap_pyop2_kernel_prolong       4 0.0 7.8056e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ddd4309bd0_wrap_pyop2_kernel_prolong       4 0.0 5.7581e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 3.9336e+00 1.0 7.30e+07 1.2 8.1e+03 6.1e+04 1.1e+01  1  0  0  0  0   1  0  0  0  0  1861
firedrake.function.Function.assign      98 1.0 6.2802e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      97 1.0 6.0040e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.8519e-04 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      46 1.0 5.5616e-04 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 5.0790e-05 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.3083e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.9007e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.0598e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 7.2806e+00 1.0 0.00e+00 0.0 3.2e+03 4.9e+05 2.3e+01  2  0  0  1  0   3  0  0  1  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 6.5220e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.6451e-04 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.0985e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.0985e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
CreateSparsity         4 1.0 3.8826e+00 1.1 0.00e+00 0.0 7.1e+03 1.1e+05 4.6e+01  1  0  0  0  1   1  0  0  0  1    -0
MatZeroInitial         4 1.0 5.9344e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      21 1.0 3.7796e+02 1.0 3.97e+11 1.2 6.4e+06 4.5e+04 7.8e+03 86 100 97 99 92 Multiple stages 103326
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 3.0133e-01 950.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 8.1290e-06 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 3.0127e-01 1127.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 3.0125e-01 1286.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     172 1.0 3.4748e+00 1.2 2.11e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  5  0  0  0   1  7  0  0  0 609449
Parloop_Cells_wrap_form0_exterior_facet_top_integral     172 1.0 1.0917e+00 1.0 2.75e+06 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   252
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral     172 1.0 1.1908e+00 1.0 2.03e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  3013
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     172 1.0 2.7365e+00 1.1 2.03e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  5  0  0  0   1  7  0  0  0 743269
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     172 1.0 5.4317e+00 1.2 4.20e+10 1.3 0.0e+00 0.0e+00 0.0e+00  1 10  0  0  0   2 13  0  0  0 718421
firedrake.halo.Halo.local_to_global_begin      86 1.0 2.7154e-02 7.1 0.00e+00 0.0 4.5e+04 1.2e+05 0.0e+00  0  0  1  2  0   0  0  3  3  0    -0
firedrake.halo.Halo.local_to_global_end      86 1.0 1.0525e+00 55.5 9.29e+06 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   647
Parloop_Cells_wrap_form00_cell_integral     130 1.0 1.0595e+01 1.4 2.98e+10 1.2 0.0e+00 0.0e+00 0.0e+00  2  8  0  0  0   3 10  0  0  0 281904
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     130 1.0 1.3509e+00 1.2 1.56e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2044
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     130 1.0 1.2523e+01 1.2 3.94e+10 1.2 0.0e+00 0.0e+00 0.0e+00  3 10  0  0  0   4 13  0  0  0 315529
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     130 1.0 2.7352e+01 1.3 6.27e+10 1.3 0.0e+00 0.0e+00 0.0e+00  5 15  0  0  0   8 19  0  0  0 213371
firedrake.dmhooks.get_function_space       2 1.0 2.3627e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       3 1.0 1.3804e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.VertexOnlyMesh       2 1.0 5.2716e+00 1.0 0.00e+00 0.0 1.4e+04 8.1e+01 2.2e+01  1  0  0  0  0   2  0  1  0  0    -0
firedrake.mesh._pic_swarm_in_mesh       2 1.0 5.2623e+00 1.0 0.00e+00 0.0 9.6e+03 6.6e+01 1.2e+01  1  0  0  0  0   2  0  1  0  0    -0
firedrake.mesh._parent_mesh_embedding       2 1.0 4.7581e+00 1.0 0.00e+00 0.0 5.4e+03 2.9e+01 8.0e+00  1  0  0  0  0   2  0  0  0  0    -0
firedrake.mesh.MeshGeometry.locate_cells_ref_coords_and_dists       2 1.0 3.7851e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshGeometry._c_locator       2 1.0 3.7698e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.src_locate_cell       2 1.0 3.3506e+00 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.compile_coordinate_element       2 1.0 3.3363e+00 21.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.make_wrapper       2 1.0 3.0460e+00 233.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.parloop.generate_single_cell_wrapper       2 1.0 3.0458e+00 236.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
c_locator_run          2 1.0 3.9394e-02 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._ctypes       2 1.0 3.6316e-02 3.8 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._constant_ctypes       2 1.0 1.6648e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.rtree       2 1.0 1.5151e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.bounding_box_coords       2 1.0 2.3502e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
rtree_build            2 1.0 1.2080e-03 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._dmswarm_create       4 1.0 1.4613e-02 8.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._swarm_original_ordering_preserve       2 1.0 4.9973e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.VertexOnlyMeshTopology.__init__       4 1.0 2.0458e-02 1.9 0.00e+00 0.0 4.2e+03 1.1e+02 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_vom_from_vom_topology       4 1.0 4.8546e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.action       2 1.0 4.7570e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0       65 1.0 2.8554e-01 1.8 3.98e+07 1.2 3.6e+05 2.5e+02 1.5e+03  0  0  5  0 17   0  0 22  0 23 13861
MGSetup Level 1       65 1.0 7.4516e+01 1.0 4.29e+10 1.2 3.4e+05 1.2e+05 1.6e+03 17 11  5 14 19  26 14 21 23 25 57629
firedrake.constant.Constant.assign      21 1.0 1.0752e-03 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a918670250_wrap_pyop2_kernel_prolong       4 0.0 7.8116e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a9186a53d0_wrap_pyop2_kernel_prolong       4 0.0 5.3880e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146422003550_wrap_pyop2_kernel_prolong       4 0.0 7.8294e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1464220017d0_wrap_pyop2_kernel_prolong       4 0.0 6.8035e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c04544f0d0_wrap_pyop2_kernel_prolong       4 0.0 7.8230e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c04544ecd0_wrap_pyop2_kernel_prolong       4 0.0 6.3896e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ba9d63f650_wrap_pyop2_kernel_prolong       4 0.0 7.8091e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ba9d5b6550_wrap_pyop2_kernel_prolong       4 0.0 6.9157e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151746d13350_wrap_pyop2_kernel_prolong       4 0.0 7.8435e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151746d39550_wrap_pyop2_kernel_prolong       4 0.0 7.3257e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154490ef7a10_wrap_pyop2_kernel_prolong       4 0.0 7.8329e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154490eed7d0_wrap_pyop2_kernel_prolong       4 0.0 6.3329e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15478d776390_wrap_pyop2_kernel_prolong       4 0.0 7.8161e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15478c4e9f90_wrap_pyop2_kernel_prolong       4 0.0 5.2637e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b07d3cbb90_wrap_pyop2_kernel_prolong       4 0.0 7.8078e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b07d283a90_wrap_pyop2_kernel_prolong       4 0.0 6.9741e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1486ef7ec590_wrap_pyop2_kernel_prolong       4 0.0 7.8013e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1486ee3d1110_wrap_pyop2_kernel_prolong       4 0.0 5.3204e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1535c02ad050_wrap_pyop2_kernel_prolong       4 0.0 7.8044e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1535bb89a6d0_wrap_pyop2_kernel_prolong       4 0.0 7.5749e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1510a43cfbd0_wrap_pyop2_kernel_prolong       4 0.0 7.8203e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1510a43d5990_wrap_pyop2_kernel_prolong       4 0.0 6.3805e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c32782f50_wrap_pyop2_kernel_prolong       4 0.0 7.8054e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c31d567d0_wrap_pyop2_kernel_prolong       4 0.0 6.5992e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf14c45d90_wrap_pyop2_kernel_prolong       4 0.0 7.7066e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf14336850_wrap_pyop2_kernel_prolong       4 0.0 5.5061e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148430267d10_wrap_pyop2_kernel_prolong       4 0.0 7.8010e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148430265ed0_wrap_pyop2_kernel_prolong       4 0.0 6.2488e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1511fd21ce10_wrap_pyop2_kernel_prolong       4 0.0 7.7892e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1511fd012250_wrap_pyop2_kernel_prolong       4 0.0 6.5892e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1479a2e8ba10_wrap_pyop2_kernel_prolong       4 0.0 7.7305e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1479a2d59710_wrap_pyop2_kernel_prolong       4 0.0 5.4092e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ebf8a7a650_wrap_pyop2_kernel_prolong       4 0.0 7.7392e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ebf880cbd0_wrap_pyop2_kernel_prolong       4 0.0 7.0659e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1524f8d1b490_wrap_pyop2_kernel_prolong       4 0.0 7.6921e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1524f8d18510_wrap_pyop2_kernel_prolong       4 0.0 6.4546e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f2f0c51350_wrap_pyop2_kernel_prolong       4 0.0 7.7392e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f2f0c39410_wrap_pyop2_kernel_prolong       4 0.0 6.1982e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15285067dbd0_wrap_pyop2_kernel_prolong       4 0.0 7.7830e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15285067d0d0_wrap_pyop2_kernel_prolong       4 0.0 5.9816e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ea9538b6d0_wrap_pyop2_kernel_prolong       4 0.0 7.7900e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ea953b98d0_wrap_pyop2_kernel_prolong       4 0.0 8.1648e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f55e77650_wrap_pyop2_kernel_prolong       4 0.0 7.7985e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f55bf1a10_wrap_pyop2_kernel_prolong       4 0.0 7.2572e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151000282bd0_wrap_pyop2_kernel_prolong       4 0.0 7.7429e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150ffb7ff690_wrap_pyop2_kernel_prolong       4 0.0 6.4886e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ffbd063790_wrap_pyop2_kernel_prolong       4 0.0 7.7473e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ffbd05a390_wrap_pyop2_kernel_prolong       4 0.0 7.2482e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153073b972d0_wrap_pyop2_kernel_prolong       4 0.0 7.7984e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153072965b10_wrap_pyop2_kernel_prolong       4 0.0 8.1311e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e4b046e2d0_wrap_pyop2_kernel_prolong       4 0.0 7.6759e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e4b046f710_wrap_pyop2_kernel_prolong       4 0.0 5.3644e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1466e50393d0_wrap_pyop2_kernel_prolong       4 0.0 7.6692e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1466e52acbd0_wrap_pyop2_kernel_prolong       4 0.0 5.5932e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d5002af850_wrap_pyop2_kernel_prolong       4 0.0 7.7935e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d5002ad210_wrap_pyop2_kernel_prolong       4 0.0 6.7663e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d70acf6c50_wrap_pyop2_kernel_prolong       4 0.0 7.8050e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d70a367fd0_wrap_pyop2_kernel_prolong       4 0.0 6.0327e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1545e96ed4d0_wrap_pyop2_kernel_prolong       4 0.0 7.7375e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1545e9513b50_wrap_pyop2_kernel_prolong       4 0.0 7.2835e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e8a087c2d0_wrap_pyop2_kernel_prolong       4 0.0 7.8172e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e8a08b1e90_wrap_pyop2_kernel_prolong       4 0.0 6.2018e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1543f33cda10_wrap_pyop2_kernel_prolong       4 0.0 7.7691e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1543f33cc910_wrap_pyop2_kernel_prolong       4 0.0 5.7285e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152228f3ced0_wrap_pyop2_kernel_prolong       4 0.0 7.7706e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152229176510_wrap_pyop2_kernel_prolong       4 0.0 6.1542e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b1b687b10_wrap_pyop2_kernel_prolong       4 0.0 7.7790e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b1b78f590_wrap_pyop2_kernel_prolong       4 0.0 5.8881e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f2e9c669d0_wrap_pyop2_kernel_prolong       4 0.0 7.6794e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f2e9c479d0_wrap_pyop2_kernel_prolong       4 0.0 7.0558e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e7dd635e50_wrap_pyop2_kernel_prolong       4 0.0 7.8205e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e7dd6372d0_wrap_pyop2_kernel_prolong       4 0.0 7.2769e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151913aa7690_wrap_pyop2_kernel_prolong       4 0.0 7.7493e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151913929890_wrap_pyop2_kernel_prolong       4 0.0 7.4408e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146179a96e50_wrap_pyop2_kernel_prolong       4 0.0 7.8010e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146179a94510_wrap_pyop2_kernel_prolong       4 0.0 7.9340e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed88ebb1d0_wrap_pyop2_kernel_prolong       4 0.0 7.8039e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed88ea1650_wrap_pyop2_kernel_prolong       4 0.0 5.2876e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1527d4137150_wrap_pyop2_kernel_prolong       4 0.0 7.7455e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1527cfb4d110_wrap_pyop2_kernel_prolong       4 0.0 5.9843e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e36c43a0d0_wrap_pyop2_kernel_prolong       4 0.0 7.7173e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e36c435110_wrap_pyop2_kernel_prolong       4 0.0 6.9109e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a7e065f650_wrap_pyop2_kernel_prolong       4 0.0 7.7045e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a7e04d91d0_wrap_pyop2_kernel_prolong       4 0.0 5.6052e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c45420950_wrap_pyop2_kernel_prolong       4 0.0 7.6615e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c4527ef90_wrap_pyop2_kernel_prolong       4 0.0 6.5342e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1468bf959dd0_wrap_pyop2_kernel_prolong       4 0.0 7.7818e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1468bf959410_wrap_pyop2_kernel_prolong       4 0.0 6.8198e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519eaa48390_wrap_pyop2_kernel_prolong       4 0.0 7.7433e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519ea187f10_wrap_pyop2_kernel_prolong       4 0.0 7.2301e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1513c4c2f850_wrap_pyop2_kernel_prolong       4 0.0 7.7110e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1513c4c2c190_wrap_pyop2_kernel_prolong       4 0.0 6.7619e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e17f385910_wrap_pyop2_kernel_prolong       4 0.0 7.7483e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e17f385cd0_wrap_pyop2_kernel_prolong       4 0.0 6.7358e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a872c83690_wrap_pyop2_kernel_prolong       4 0.0 7.7987e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a872b0c950_wrap_pyop2_kernel_prolong       4 0.0 6.5861e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150b39f5c750_wrap_pyop2_kernel_prolong       4 0.0 7.7176e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150b39e09cd0_wrap_pyop2_kernel_prolong       4 0.0 7.0961e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150235b25290_wrap_pyop2_kernel_prolong       4 0.0 7.7766e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150235b32350_wrap_pyop2_kernel_prolong       4 0.0 7.1816e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a65bbafd0_wrap_pyop2_kernel_prolong       4 0.0 7.8461e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a65bcb090_wrap_pyop2_kernel_prolong       4 0.0 6.9140e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a4059cad0_wrap_pyop2_kernel_prolong       4 0.0 7.7172e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a3f1b5110_wrap_pyop2_kernel_prolong       4 0.0 5.5264e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154a0b04fad0_wrap_pyop2_kernel_prolong       4 0.0 7.6577e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154a0b04db10_wrap_pyop2_kernel_prolong       4 0.0 6.3058e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1464b30153d0_wrap_pyop2_kernel_prolong       4 0.0 7.7442e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1464b269e190_wrap_pyop2_kernel_prolong       4 0.0 7.9017e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f369f47810_wrap_pyop2_kernel_prolong       4 0.0 7.6620e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f369ef77d0_wrap_pyop2_kernel_prolong       4 0.0 6.5876e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153a334bc5d0_wrap_pyop2_kernel_prolong       4 0.0 7.6565e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153a3371c9d0_wrap_pyop2_kernel_prolong       4 0.0 6.4124e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e75c3e1f90_wrap_pyop2_kernel_prolong       4 0.0 7.6889e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e75c44b990_wrap_pyop2_kernel_prolong       4 0.0 5.8668e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147176c62d50_wrap_pyop2_kernel_prolong       4 0.0 7.7272e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147176b00150_wrap_pyop2_kernel_prolong       4 0.0 5.4068e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146ba192f5d0_wrap_pyop2_kernel_prolong       4 0.0 7.7182e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146ba1865490_wrap_pyop2_kernel_prolong       4 0.0 5.5675e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146aa6b1bd10_wrap_pyop2_kernel_prolong       4 0.0 7.6851e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146aa6ae1b50_wrap_pyop2_kernel_prolong       4 0.0 6.1555e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ecbd5b8d0_wrap_pyop2_kernel_prolong       4 0.0 7.7031e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ecbb3c810_wrap_pyop2_kernel_prolong       4 0.0 7.1967e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a484a14590_wrap_pyop2_kernel_prolong       4 0.0 7.6672e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a48478fb10_wrap_pyop2_kernel_prolong       4 0.0 6.5147e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150d65917f90_wrap_pyop2_kernel_prolong       4 0.0 7.6763e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150d65914cd0_wrap_pyop2_kernel_prolong       4 0.0 7.3302e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497b1725f90_wrap_pyop2_kernel_prolong       4 0.0 7.6656e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497b1725b90_wrap_pyop2_kernel_prolong       4 0.0 8.1664e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f396b92bd0_wrap_pyop2_kernel_prolong       4 0.0 7.6557e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f396bc5110_wrap_pyop2_kernel_prolong       4 0.0 5.5937e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f0a13630d0_wrap_pyop2_kernel_prolong       4 0.0 7.6817e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f0a13ba7d0_wrap_pyop2_kernel_prolong       4 0.0 6.1621e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e74fbaff90_wrap_pyop2_kernel_prolong       4 0.0 7.7201e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e74fa80bd0_wrap_pyop2_kernel_prolong       4 0.0 5.4586e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df81b3bf10_wrap_pyop2_kernel_prolong       4 0.0 7.7199e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df81b38490_wrap_pyop2_kernel_prolong       4 0.0 6.4522e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1501f2881d10_wrap_pyop2_kernel_prolong       4 0.0 7.6691e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1501f284fb90_wrap_pyop2_kernel_prolong       4 0.0 6.0298e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc892a94d0_wrap_pyop2_kernel_prolong       4 0.0 7.7225e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc83e5f950_wrap_pyop2_kernel_prolong       4 0.0 7.8402e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b04820da90_wrap_pyop2_kernel_prolong       4 0.0 7.7342e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b048239850_wrap_pyop2_kernel_prolong       4 0.0 5.7577e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1503b77ab210_wrap_pyop2_kernel_prolong       4 0.0 7.6792e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1503b5f16010_wrap_pyop2_kernel_prolong       4 0.0 6.3708e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14916905d6d0_wrap_pyop2_kernel_prolong       4 0.0 7.6666e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149168eaedd0_wrap_pyop2_kernel_prolong       4 0.0 7.8395e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd61759dd0_wrap_pyop2_kernel_prolong       4 0.0 7.6954e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd60bf03d0_wrap_pyop2_kernel_prolong       4 0.0 5.9301e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1484bc1fae10_wrap_pyop2_kernel_prolong       4 0.0 7.6712e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1484bc132750_wrap_pyop2_kernel_prolong       4 0.0 7.0336e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c2e103d8d0_wrap_pyop2_kernel_prolong       4 0.0 7.7053e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c2e103f350_wrap_pyop2_kernel_prolong       4 0.0 7.2695e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1476d8e76c10_wrap_pyop2_kernel_prolong       4 0.0 7.7086e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1476d8e3e490_wrap_pyop2_kernel_prolong       4 0.0 6.3843e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1466545d4350_wrap_pyop2_kernel_prolong       4 0.0 7.7041e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14664faa3f10_wrap_pyop2_kernel_prolong       4 0.0 5.1188e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14feb7a48d10_wrap_pyop2_kernel_prolong       4 0.0 7.6655e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14feb78336d0_wrap_pyop2_kernel_prolong       4 0.0 7.0351e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145692a1b310_wrap_pyop2_kernel_prolong       4 0.0 7.7290e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145692b74250_wrap_pyop2_kernel_prolong       4 0.0 7.0401e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145f1605e5d0_wrap_pyop2_kernel_prolong       4 0.0 7.7045e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145f1605ead0_wrap_pyop2_kernel_prolong       4 0.0 6.4827e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d352e3b390_wrap_pyop2_kernel_prolong       4 0.0 7.6626e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d352bcff50_wrap_pyop2_kernel_prolong       4 0.0 6.5999e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15451f612090_wrap_pyop2_kernel_prolong       4 0.0 7.6768e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15451f6139d0_wrap_pyop2_kernel_prolong       4 0.0 6.9774e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14af606eca90_wrap_pyop2_kernel_prolong       4 0.0 7.6595e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14af45d60d10_wrap_pyop2_kernel_prolong       4 0.0 5.7763e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e3d943fd0_wrap_pyop2_kernel_prolong       4 0.0 7.6584e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e3d0716d0_wrap_pyop2_kernel_prolong       4 0.0 6.5977e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f45e66b1d0_wrap_pyop2_kernel_prolong       4 0.0 7.6665e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f45e8e0090_wrap_pyop2_kernel_prolong       4 0.0 6.3767e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15008c0cae10_wrap_pyop2_kernel_prolong       4 0.0 7.6650e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15008c0c8190_wrap_pyop2_kernel_prolong       4 0.0 6.4063e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ea6c3a6210_wrap_pyop2_kernel_prolong       4 0.0 7.6623e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ea6c3a58d0_wrap_pyop2_kernel_prolong       4 0.0 7.3837e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15119ef4d990_wrap_pyop2_kernel_prolong       4 0.0 7.6568e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15119ecfced0_wrap_pyop2_kernel_prolong       4 0.0 6.2571e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b77925690_wrap_pyop2_kernel_prolong       4 0.0 7.6574e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b77924550_wrap_pyop2_kernel_prolong       4 0.0 6.3779e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152880243610_wrap_pyop2_kernel_prolong       4 0.0 7.7259e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1528800c1890_wrap_pyop2_kernel_prolong       4 0.0 5.4412e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152905a482d0_wrap_pyop2_kernel_prolong       4 0.0 7.7331e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152905a3a110_wrap_pyop2_kernel_prolong       4 0.0 7.4093e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152873133ad0_wrap_pyop2_kernel_prolong       4 0.0 7.6593e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152872fbf750_wrap_pyop2_kernel_prolong       4 0.0 6.1553e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a65b714d0_wrap_pyop2_kernel_prolong       4 0.0 7.6905e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a647f5510_wrap_pyop2_kernel_prolong       4 0.0 7.2073e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14620a521410_wrap_pyop2_kernel_prolong       4 0.0 7.6997e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14620a523210_wrap_pyop2_kernel_prolong       4 0.0 6.8325e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dadbb1cd50_wrap_pyop2_kernel_prolong       4 0.0 7.6927e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dadb914950_wrap_pyop2_kernel_prolong       4 0.0 7.2225e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b6e9608d50_wrap_pyop2_kernel_prolong       4 0.0 7.6593e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b6e960a950_wrap_pyop2_kernel_prolong       4 0.0 6.5666e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e46f1c3790_wrap_pyop2_kernel_prolong       4 0.0 7.7384e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e46f3f9e10_wrap_pyop2_kernel_prolong       4 0.0 5.6150e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1550955e8290_wrap_pyop2_kernel_prolong       4 0.0 7.6828e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1550955e9110_wrap_pyop2_kernel_prolong       4 0.0 7.8866e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1479a5ce5450_wrap_pyop2_kernel_prolong       4 0.0 7.6809e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1479a5aadc50_wrap_pyop2_kernel_prolong       4 0.0 6.4017e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1485f03019d0_wrap_pyop2_kernel_prolong       4 0.0 7.6654e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1485eba65410_wrap_pyop2_kernel_prolong       4 0.0 8.0979e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fce00f3810_wrap_pyop2_kernel_prolong       4 0.0 7.6987e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fce013da90_wrap_pyop2_kernel_prolong       4 0.0 7.4190e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e639a6b110_wrap_pyop2_kernel_prolong       4 0.0 7.7123e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e639be1150_wrap_pyop2_kernel_prolong       4 0.0 7.6022e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided         65 1.0 1.6055e-03 1.9 0.00e+00 0.0 2.7e+04 4.0e+00 6.5e+01  0  0  0  0  1   0  0  1  0  3    -0
SFSetGraph            65 1.0 2.4088e-04 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               65 1.0 2.4489e-03 1.6 0.00e+00 0.0 5.4e+04 2.3e+01 6.5e+01  0  0  1  0  1   0  0  1  0  3    -0
SFPack            843660 1.2 8.3536e-01 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack          843660 1.2 3.9541e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             7740 1.0 3.3807e+00 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecSet             12037 1.0 3.8693e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecAYPX            13760 1.0 5.7354e+00 2.1 2.24e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   3  3  0  0  0 39078
VecAXPBYCZ          3440 1.0 1.6666e-03 2.1 7.74e+06 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 465644
VecScatterBegin   843660 1.2 1.0906e+01 1.2 0.00e+00 0.0 4.9e+06 2.3e+04 0.0e+00  2  0 73 38  0   7  0 97 100  0    -0
VecScatterEnd     843660 1.2 1.4246e+01 12.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   4  0  0  0  0    -0
MatMult             8600 1.0 7.7410e+01 1.1 5.28e+10 1.2 4.5e+06 2.4e+04 0.0e+00 16 14 68 38  0  48 62 90 100  0 68144
MatMultAdd          2580 1.0 4.4400e+00 1.2 2.23e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   3  3  0  0  0 50444
MatMultTranspose    2580 1.0 3.8109e+00 1.7 2.23e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  3  0  0  0 58772
MatSolve          420540 1.2 4.9477e+01 1.2 2.60e+10 1.2 5.0e+05 6.9e+01 3.2e+02 10  7  7  0  4  31 30 10  0 16 52730
MatLUFactorNum       128 1.0 6.1763e-01 1.4 1.51e+06 2.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   142
MatResidual         2580 1.0 4.2614e+01 1.2 2.67e+10 1.2 1.4e+06 4.0e+04 0.0e+00  9  7 20 19  0  25 31 27 50  0 62727
PCSetUp              192 1.0 6.1845e-01 1.4 1.51e+06 2.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   142
PCSetUpOnBlocks     3440 1.0 9.4983e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply             2580 1.0 6.6275e+01 1.2 2.61e+10 1.2 4.1e+06 1.4e+02 1.2e+03 14  7 62  0 14  42 31 82  1 58 39508
PCApplyOnBlocks   419680 1.2 4.8452e+01 1.3 2.60e+10 1.2 0.0e+00 0.0e+00 0.0e+00 10  7  0  0  0  30 30  0  0  0 53835
KSPSetUp              64 1.0 1.1221e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve            2580 1.0 1.0793e+02 1.1 5.43e+10 1.2 4.6e+06 1.2e+04 2.0e+03 23 14 69 19 24  70 64 91 50 100 50389
MGSmooth Level 0     860 1.0 9.4507e+00 2.6 1.84e+08 1.3 4.1e+06 1.4e+02 2.0e+03  1  0 62  0 24   3  0 82  1 100  1776
MGSmooth Level 1    1720 1.0 1.0430e+02 1.2 5.42e+10 1.2 4.5e+05 1.2e+05 0.0e+00 22 14  7 19  0  66 63  9 50  0 51983
MGResid Level 1      860 1.0 4.2279e+01 1.2 2.67e+10 1.2 4.5e+05 1.2e+05 0.0e+00  8  7  7 19  0  25 31  9 50  0 63181
MGInterp Level 1    1720 1.0 8.0811e+00 1.3 4.46e+09 1.2 0.0e+00 0.0e+00 0.0e+00  2  1  0  0  0   5  5  0  0  0 55316
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   131            129
              Viewer     3              3
           Index Set  3721           3721
   IS L to G Mapping   451            445
             Section   493            493
   Star Forest Graph   677            675
              Vector  1394           1387
              Matrix  1386           1361
      Preconditioner   253            253
       Krylov Solver   251            251
     DMKSP interface     1              1
                SNES     1              1
              DMSNES     1              1
      SNESLineSearch     1              1
    Distributed Mesh   127            129
            DM Label   345            345
          Quadrature   144            144
      Mesh Transform     2              2
       Swarm Cell DM     4              4
    GraphPartitioner    41             41
     Discrete System   182            184
           Weak Form   182            184
        Linear Space    12             12
          Dual Space    52             52
            FE Space     8              8

--- Event Stage 1: MG Apply

           Index Set   130            130
   Star Forest Graph    69             64
              Vector   129            129
    Distributed Mesh     2              0
     Discrete System     2              0
           Weak Form     2              0
========================================================================================================================
Average time to get PetscTime(): 2.54e-08
Average time for MPI_Barrier(): 4.6744e-06
Average time for zero size MPI_Send(): 2.65854e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_mg_coarse_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_mg_levels_1_pc_linesmooth_sub_sub_pc_factor_mat_ordering_type natural # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murr_monthly/vlumping_hmg/h1.profile # (source: code)
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

