****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0211.gadi.nci.org.au with 208 processes, by sg8812 on Sat Aug 29 18:02:47 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           4.286e+03     1.000   4.286e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                5.062e+12     1.111   4.827e+12  1.004e+15
Flops/sec:            1.181e+09     1.111   1.126e+09  2.343e+11
MPI Msg Count:        4.045e+05     4.058   2.519e+05  5.240e+07
MPI Msg Len (bytes):  2.597e+10     3.332   6.993e+04  3.664e+12
MPI Reductions:       2.560e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 1.9738e+03  46.1%  7.3453e+14  73.2%  9.361e+06  17.9%  2.155e+05       55.0%  1.773e+04  69.3%
 1:        MG Apply: 2.3118e+03  53.9%  2.6957e+14  26.8%  4.304e+07  82.1%  3.828e+04       45.0%  7.848e+03  30.7%

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

BuildTwoSided       2648 1.0 1.4342e+02 5.5 0.00e+00 0.0 2.1e+05 4.0e+00 1.7e+03  2  0  0  0  7   4  0  2  0 10    -0
BuildTwoSidedF      1600 1.0 1.4252e+02 4.0 0.00e+00 0.0 2.5e+05 2.6e+06 1.6e+03  2  0  0 18  6   4  0  3 33  9    -0
SFSetGraph          1057 1.1 5.1040e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp             1048 1.1 2.7340e+00 26.0 0.00e+00 0.0 1.6e+05 1.9e+03 1.2e+02  0  0  0  0  0   0  0  2  0  1    -0
SFBcastBegin         916 1.0 7.0494e-01 3.3 0.00e+00 0.0 9.5e+05 1.6e+05 0.0e+00  0  0  2  4  0   0  0 10  7  0    -0
SFBcastEnd           916 1.0 3.2075e+01 100.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        346 1.0 3.2568e-01 42.0 0.00e+00 0.0 3.7e+05 2.0e+05 0.0e+00  0  0  1  2  0   0  0  4  4  0    -0
SFReduceEnd          346 1.0 7.6279e+00 45.9 6.50e+07 3.3 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1203
SFFetchOpBegin         6 1.0 4.4230e-05 5.5 0.00e+00 0.0 5.1e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           6 1.0 6.4564e-04 13.6 0.00e+00 0.0 5.1e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          4 1.0 1.8870e-03 2.9 0.00e+00 0.0 2.5e+03 2.9e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         51 1.0 9.9737e-03 1.3 0.00e+00 0.0 1.2e+05 1.6e+02 6.0e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           53 1.0 5.7403e-03 2.6 0.00e+00 0.0 6.3e+04 7.0e+01 5.3e+01  0  0  0  0  0   0  0  1  0  0    -0
SFRemoteOff            2 1.0 1.0825e-04 2.8 0.00e+00 0.0 2.3e+03 2.9e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack            691141 1.1 4.5555e+00 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack          691147 1.1 5.7146e-01 5.6 6.50e+07 3.3 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 16055
VecDot               226 1.0 2.6339e+00 3.1 7.55e+08 1.1 0.0e+00 0.0e+00 2.3e+02  0  0  0  0  1   0  0  0  0  1 57410
VecMDot             5903 1.0 1.6548e+02 1.7 1.10e+11 1.1 0.0e+00 0.0e+00 5.9e+03  3  2  0  0 23   7  3  0  0 33 132653
VecNorm             7144 1.0 4.1086e+01 3.3 1.58e+10 1.1 0.0e+00 0.0e+00 7.1e+03  1  0  0  0 28   1  0  0  0 40 76980
VecScale            6374 1.0 1.9024e+01 1.1 6.61e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0 69586
VecCopy             1828 1.0 1.0213e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              1661 1.0 4.2302e+00 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              471 1.0 1.9787e+00 1.1 8.16e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 82632
VecWAXPY             226 1.0 1.9884e+00 1.2 3.78e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 38023
VecMAXPY            6374 1.0 1.6052e+02 1.1 1.22e+11 1.1 0.0e+00 0.0e+00 0.0e+00  4  2  0  0  0   8  3  0  0  0 152225
VecScatterBegin   689873 1.1 1.1403e+01 1.5 0.00e+00 0.0 6.9e+06 1.4e+05 0.0e+00  0  0 13 26  0   1  0 73 48  0    -0
VecScatterEnd     689873 1.1 8.3896e+01 26.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecSetRandom          17 1.0 2.5432e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecReduceArith       452 1.0 1.5442e+00 2.0 1.51e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 195851
VecReduceComm        226 1.0 9.4685e-01 32.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.3e+02  0  0  0  0  1   0  0  0  0  1    -0
VecNormalize        2789 1.0 7.0113e+00 2.3 1.86e+09 1.1 0.0e+00 0.0e+00 2.8e+03  0  0  0  0 11   0  0  0  0 16 53254
MatMult             6129 1.0 6.5173e+02 1.1 4.66e+11 1.1 6.9e+06 1.4e+05 0.0e+00 14  9 13 26  0  31 13 73 48  0 143139
MatSolve          343925 1.1 3.7476e+01 1.3 2.16e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  1  0  0  0 115520
MatLUFactorSym       929 1.1 5.0915e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum     16004 1.1 4.0420e+00 1.2 4.56e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 225964
MatILUFactorSym        2 1.0 3.8684e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin   18799 1.1 1.4296e+02 3.3 0.00e+00 0.0 2.5e+05 2.6e+06 1.6e+03  2  0  0 18  6   5  0  3 33  9    -0
MatAssemblyEnd     18799 1.1 3.4545e+01 5.4 4.69e+08 0.0 8.9e+03 1.4e+04 7.1e+01  0  0  0  0  0   1  0  0  0  0  1197
MatGetRowIJ          930 1.1 2.4047e-04 3.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats      17 1.0 9.8376e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 9.3e+02  0  0  0  0  4   0  0  0  0  5    -0
MatGetOrdering       930 1.1 1.7090e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       904 1.0 3.3102e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
MatTranspose           8 1.0 6.2368e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 1.8e+01  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          8 1.0 5.2264e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 1.8e+01  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        906 1.0 1.6274e+01 1.1 2.72e+10 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  1  0  0  0 334161
MatPtAPSymbolic        3 1.0 7.9628e-01 1.0 0.00e+00 0.0 1.0e+04 1.2e+05 2.1e+01  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       678 1.0 1.0773e+02 1.0 1.09e+11 1.1 7.6e+05 2.2e+05 6.9e+02  3  2  1  5  3   5  3  8  8  4 201911
MatGetLocalMat       682 1.0 6.8260e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        682 1.0 1.6759e+00 1.9 0.00e+00 0.0 7.6e+05 2.2e+05 0.0e+00  0  0  1  5  0   0  0  8  8  0    -0
MatSetPreallCOO       32 1.0 6.1203e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       32 1.0 2.6303e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp              226 1.0 2.9980e+02 1.0 2.05e+11 1.1 3.7e+06 6.9e+04 8.1e+03  7  4  7  7 32  15  6 39 13 46 136698
PCApply             3359 1.0 2.3478e+03 1.0 1.35e+12 1.1 4.3e+07 3.8e+04 7.8e+03 54 27 82 45 31 Multiple stages 114817
PCApplyOnBlocks   343925 1.1 4.2426e+01 1.2 2.61e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  1  0  0  0 123361
KSPSetUp             226 1.0 1.1998e-01 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             226 1.0 3.1197e+03 1.0 1.97e+12 1.1 4.7e+07 5.3e+04 1.5e+04 73 39 89 67 58 Multiple stages 126356
KSPGMRESOrthog      5903 1.0 3.0239e+02 1.3 2.19e+11 1.1 0.0e+00 0.0e+00 5.9e+03  6  4  0  0 23  14  6  0  0 33 145189
DMRefine               2 1.0 2.2940e-01 1.0 2.09e+03 1.0 1.5e+04 6.3e+01 6.3e+01  0  0  0  0  0   0  0  0  0  0     2
DMPlexCreateGmsh       1 1.0 3.4347e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 3.3367e+00 98.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Partition         4 1.0 1.3939e-01 1.0 0.00e+00 0.0 3.7e+04 1.3e+02 5.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         4 1.0 2.5649e-02 1.1 0.00e+00 0.0 1.4e+05 1.5e+02 2.4e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 4.9785e-03 1793.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       4 1.0 2.6923e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        4 1.0 4.8574e-03 1.2 0.00e+00 0.0 7.2e+03 1.0e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       4 1.0 1.7453e-03 1.6 0.00e+00 0.0 3.6e+03 4.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          4 1.0 3.0402e-03 1.8 0.00e+00 0.0 3.8e+03 5.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          29 1.0 1.6851e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 1.4000e-01 1.0 0.00e+00 0.0 8.6e+03 6.3e+02 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        4 1.0 3.3678e-03 1.1 0.00e+00 0.0 2.2e+04 2.4e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       4 1.0 1.1377e-02 1.0 0.00e+00 0.0 7.0e+04 1.5e+02 1.5e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistOvrlp        3 1.0 2.8114e-02 1.0 0.00e+00 0.0 1.7e+05 1.3e+02 2.4e+02  0  0  0  0  1   0  0  2  0  1    -0
DMPlexDistField        7 1.0 5.1945e-03 1.2 0.00e+00 0.0 3.1e+04 1.1e+02 2.0e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         2 1.0 3.4665e-04 1.1 0.00e+00 0.0 1.1e+04 5.3e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify        41 1.0 1.3664e-02 8.2 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      41 1.0 1.1894e-03 7.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          2 1.0 1.2023e-04 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          2 1.0 4.4271e-03 1.4 0.00e+00 0.0 8.5e+03 5.2e+01 1.9e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          2 1.0 2.9807e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          2 1.0 7.0210e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             2 1.0 3.7862e-04 1.8 0.00e+00 0.0 6.8e+03 4.9e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         2 1.0 2.2320e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         2 1.0 1.1819e-03 1.5 0.00e+00 0.0 1.7e+03 6.4e+01 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMSwarmSetSizes        4 1.0 1.3324e-04 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             75 1.0 4.1870e+03 1.0 5.06e+12 1.1 5.2e+07 7.0e+04 2.5e+04 98 100 99 100 97 Multiple stages 239796
SNESSetUp              1 1.0 6.1316e-05 4.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     301 1.0 9.6457e+01 1.2 1.11e+12 1.1 7.6e+05 2.2e+05 0.0e+00  2 22  1  5  0   4 30  8  8  0 2265939
SNESJacobianEval     226 1.0 6.2682e+02 1.0 1.75e+12 1.1 5.1e+05 1.4e+06 9.0e+02 15 34  1 20  4  32 47  5 36  5 548876
SNESLineSearch       226 1.0 1.0873e+02 1.0 8.65e+11 1.1 7.6e+05 2.2e+05 9.0e+02  3 17  1  5  4   5 23  8  8  5 1566234
DualSpaceSetUp         8 1.0 5.5179e-03 1.2 1.08e+02 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     4
FESetUp                8 1.0 1.9298e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 4.2828e+03 1.0 5.06e+12 1.1 5.2e+07 7.0e+04 2.6e+04 100 100 100 100 100 Multiple stages 234451
firedrake.__init__       1 1.0 1.9220e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
CreateMesh             3 1.0 3.5600e+00 13.8 0.00e+00 0.0 3.3e+05 1.5e+02 4.4e+02  0  0  1  0  2   0  0  4  0  2    -0
firedrake.mesh._from_gmsh       1 1.0 3.3376e+00 98.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       3 1.0 9.6279e-04 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       3 1.0 6.5380e-06 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        7 1.0 1.6613e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          3 1.0 1.9708e-03 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      36 1.0 4.3889e-02 1.1 0.00e+00 0.0 1.6e+04 1.9e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      44 1.0 2.3334e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      40 1.0 4.0590e-02 1.1 0.00e+00 0.0 1.6e+04 1.9e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      39 1.0 3.6475e-02 1.1 0.00e+00 0.0 1.6e+04 1.9e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      39 1.0 3.6254e-02 1.1 0.00e+00 0.0 1.6e+04 1.9e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      78 1.0 1.4112e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       6 1.0 6.7267e-03 1.1 0.00e+00 0.0 6.8e+03 1.7e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__      12 1.0 7.6802e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      24 1.0 5.1180e-04 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      76 1.0 8.9836e-02 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          3 1.0 2.6084e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       3 1.0 2.5090e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       8 1.0 7.4363e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       5 1.0 1.3390e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       3 1.0 2.6013e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     662 1.0 1.5395e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      2433 1.0 6.4484e+02 1.2 2.86e+12 1.1 7.0e+05 2.1e+05 3.8e+01 14 56  1  4  0  30 77  7  7  0 872515
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       6 1.0 2.5567e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    4866 1.0 2.9387e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      19 1.0 1.1215e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
GlobalKernel: generate loopy      19 0.0 1.4300e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      19 0.0 8.8015e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      21 1.0 2.0194e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.load      20 1.0 2.0192e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      20 1.0 1.1457e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.make_so      20 1.0 1.1251e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
ParLoopRednBegin    2433 1.0 1.0213e-02 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      2433 1.0 8.6642e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       3 1.0 1.0659e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong       4 1.0 1.0871e+01 1.0 5.64e+07 1.1 1.8e+04 2.5e+04 1.3e+01  0  0  0  0  0   1  0  0  0  0  1039
firedrake.interpolation.interpolate      21 1.0 7.4337e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      15 1.0 2.1452e+01 1.0 3.49e+08 1.1 6.6e+04 3.3e+04 1.8e+02  0  0  0  0  1   1  0  1  0  1  3257
firedrake.formmanipulation.split_form      16 1.0 6.1460e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      16 1.0 2.5917e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      17 1.0 2.7564e-01 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       8 1.1 2.3149e-01 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     623 1.0 3.5115e+00 11.9 0.00e+00 0.0 7.1e+05 2.1e+05 4.0e+00  0  0  1  4  0   0  0  8  7  0    -0
Parloop_Cells_wrap_expression_kernel      34 1.0 7.8501e+00 1.0 3.49e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  8900
firedrake.halo.Halo.global_to_local_end     623 1.0 3.1156e+01 98.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       3 1.0 3.0907e+00 14.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1531b0dc5ed0_wrap_pyop2_kernel_prolong       4 0.0 8.3197e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1531b0b186d0_wrap_pyop2_kernel_prolong       4 0.0 2.2225e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 4.6983e+00 1.0 2.82e+08 1.1 1.7e+04 1.1e+05 1.1e+01  0  0  0  0  0   0  0  0  0  0 12034
firedrake.function.Function.assign     314 1.0 9.0760e+00 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     313 1.0 8.9939e+00 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.2383e-04 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate     154 1.0 2.1091e-03 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 6.3061e-05 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 1.5760e-01 5.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.9783e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 1.5498e-01 5.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 2.1266e+01 1.0 0.00e+00 0.0 6.7e+03 8.9e+05 2.3e+01  0  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 1.1856e-03 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 3.3900e-04 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.2452e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.2452e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateSparsity         4 1.0 1.6430e+01 1.0 0.00e+00 0.0 1.5e+04 2.0e+05 4.6e+01  0  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         4 1.0 2.3635e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      75 1.0 4.1880e+03 1.0 5.06e+12 1.1 5.2e+07 7.0e+04 2.5e+04 98 100 99 100 97 Multiple stages 239742
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 4.4046e-01 1337.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 1.0604e-05 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 4.4041e-01 1572.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 4.4038e-01 1788.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     602 1.0 2.9345e+01 1.5 2.88e+11 1.1 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   1  8  0  0  0 1964504
Parloop_Cells_wrap_form0_exterior_facet_top_integral     602 1.0 1.1306e+00 1.1 3.72e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  6581
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral     602 1.0 1.3992e+00 1.1 1.18e+09 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 25063
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     602 1.0 1.7512e+01 1.2 2.75e+11 1.1 0.0e+00 0.0e+00 0.0e+00  0  5  0  0  0   1  7  0  0  0 3139559
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     602 1.0 3.7436e+01 1.2 5.48e+11 1.2 0.0e+00 0.0e+00 0.0e+00  1 11  0  0  0   2 14  0  0  0 2828412
firedrake.halo.Halo.local_to_global_begin     301 1.0 3.4989e-01 20.3 0.00e+00 0.0 3.4e+05 2.2e+05 0.0e+00  0  0  1  2  0   0  0  4  4  0    -0
firedrake.halo.Halo.local_to_global_end     301 1.0 7.6363e+00 44.4 6.50e+07 3.3 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1201
Parloop_Cells_wrap_form00_cell_integral     452 1.0 1.2220e+02 1.5 4.02e+11 1.1 0.0e+00 0.0e+00 0.0e+00  2  8  0  0  0   5 11  0  0  0 658809
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     452 1.0 2.8595e+00 2.4 9.06e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  9376
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     452 1.0 1.3482e+02 1.1 5.30e+11 1.1 0.0e+00 0.0e+00 0.0e+00  3 11  0  0  0   6 14  0  0  0 787049
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     452 1.0 3.1249e+02 1.3 8.14e+11 1.2 0.0e+00 0.0e+00 0.0e+00  6 16  0  0  0  14 21  0  0  0 503564
firedrake.dmhooks.get_function_space       2 1.0 1.8042e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       3 1.0 1.2662e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.VertexOnlyMesh       2 1.0 1.1980e+01 1.0 0.00e+00 0.0 2.9e+04 1.5e+02 2.2e+01  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh._pic_swarm_in_mesh       2 1.0 1.1946e+01 1.0 0.00e+00 0.0 2.0e+04 1.2e+02 1.2e+01  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh._parent_mesh_embedding       2 1.0 9.3129e+00 1.0 0.00e+00 0.0 1.1e+04 5.3e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.locate_cells_ref_coords_and_dists       2 1.0 2.7609e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry._c_locator       2 1.0 2.6175e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.pointquery_utils.src_locate_cell       2 1.0 2.1553e+00 8.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.pointquery_utils.compile_coordinate_element       2 1.0 2.1409e+00 13.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.pointquery_utils.make_wrapper       2 1.0 1.8100e+00 142.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.parloop.generate_single_cell_wrapper       2 1.0 1.8099e+00 143.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
c_locator_run          2 1.0 1.7787e-01 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._ctypes       2 1.0 1.5094e-01 4.7 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._constant_ctypes       2 1.0 1.8077e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.rtree       2 1.0 1.8745e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.bounding_box_coords       2 1.0 2.7801e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
rtree_build            2 1.0 1.4978e-03 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._dmswarm_create       4 1.0 4.2549e-01 608.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._swarm_original_ordering_preserve       2 1.0 2.6467e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.VertexOnlyMeshTopology.__init__       4 1.0 5.3449e-02 2.8 0.00e+00 0.0 8.9e+03 2.1e+02 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_vom_from_vom_topology       4 1.0 7.4078e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.action       2 1.0 4.4757e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0      226 1.0 1.1646e+00 1.2 5.96e+08 1.1 3.0e+06 4.4e+02 5.5e+03  0  0  6  0 22   0  0 32  0 31 102311
MGSetup Level 1      226 1.0 1.5468e+01 1.0 2.55e+09 1.1 1.1e+04 2.2e+05 9.5e+02  0  0  0  0  4   1  0  0  0  5 33017
firedrake.constant.Constant.assign      75 1.0 4.0008e-03 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150de8dad910_wrap_pyop2_kernel_prolong       4 0.0 8.3137e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150de8daff50_wrap_pyop2_kernel_prolong       4 0.0 2.1152e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e55ee26d10_wrap_pyop2_kernel_prolong       4 0.0 8.3220e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e55f7fdbd0_wrap_pyop2_kernel_prolong       4 0.0 2.3736e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eff1781d50_wrap_pyop2_kernel_prolong       4 0.0 8.3146e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eff16a5e50_wrap_pyop2_kernel_prolong       4 0.0 2.2061e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc5e0d4bd0_wrap_pyop2_kernel_prolong       4 0.0 8.3279e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc5d7ed9d0_wrap_pyop2_kernel_prolong       4 0.0 2.4229e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee9d5a7750_wrap_pyop2_kernel_prolong       4 0.0 8.3173e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee9d6120d0_wrap_pyop2_kernel_prolong       4 0.0 2.3200e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14802d4e3250_wrap_pyop2_kernel_prolong       4 0.0 8.3175e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14802d531910_wrap_pyop2_kernel_prolong       4 0.0 2.1168e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a9d358a810_wrap_pyop2_kernel_prolong       4 0.0 8.3058e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a9d358a090_wrap_pyop2_kernel_prolong       4 0.0 2.1377e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522bd48a8d0_wrap_pyop2_kernel_prolong       4 0.0 8.3375e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522bd54e090_wrap_pyop2_kernel_prolong       4 0.0 2.5699e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15038e131c10_wrap_pyop2_kernel_prolong       4 0.0 8.3217e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15038e176bd0_wrap_pyop2_kernel_prolong       4 0.0 2.2805e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1509ae1e2a90_wrap_pyop2_kernel_prolong       4 0.0 8.3212e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1509ae209650_wrap_pyop2_kernel_prolong       4 0.0 2.3121e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146df151e110_wrap_pyop2_kernel_prolong       4 0.0 8.3322e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146df1686250_wrap_pyop2_kernel_prolong       4 0.0 2.5307e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a086c7e310_wrap_pyop2_kernel_prolong       4 0.0 8.3316e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a086a36010_wrap_pyop2_kernel_prolong       4 0.0 2.4552e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15524dbd7050_wrap_pyop2_kernel_prolong       4 0.0 8.3165e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15524d1e0cd0_wrap_pyop2_kernel_prolong       4 0.0 2.3888e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd11f31c90_wrap_pyop2_kernel_prolong       4 0.0 8.3124e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd11e10cd0_wrap_pyop2_kernel_prolong       4 0.0 2.1645e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1551611ef250_wrap_pyop2_kernel_prolong       4 0.0 8.3286e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15516107f210_wrap_pyop2_kernel_prolong       4 0.0 2.5313e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef86b7dc90_wrap_pyop2_kernel_prolong       4 0.0 8.3137e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef86b7f410_wrap_pyop2_kernel_prolong       4 0.0 2.1897e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152478d79210_wrap_pyop2_kernel_prolong       4 0.0 8.3234e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152478d7a890_wrap_pyop2_kernel_prolong       4 0.0 2.2392e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aaccc0d6d0_wrap_pyop2_kernel_prolong       4 0.0 8.3330e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aaccbde3d0_wrap_pyop2_kernel_prolong       4 0.0 2.6169e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15464fa3be90_wrap_pyop2_kernel_prolong       4 0.0 8.3285e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15465411c4d0_wrap_pyop2_kernel_prolong       4 0.0 2.2711e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1463494b7b10_wrap_pyop2_kernel_prolong       4 0.0 8.3190e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1463494b4310_wrap_pyop2_kernel_prolong       4 0.0 2.4022e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145dc47b0f50_wrap_pyop2_kernel_prolong       4 0.0 8.3262e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145dc4399f90_wrap_pyop2_kernel_prolong       4 0.0 2.5833e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147423039790_wrap_pyop2_kernel_prolong       4 0.0 8.3206e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1474238ea590_wrap_pyop2_kernel_prolong       4 0.0 2.4073e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145ea346c590_wrap_pyop2_kernel_prolong       4 0.0 8.3226e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145ea36e9890_wrap_pyop2_kernel_prolong       4 0.0 2.3453e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c7c701a290_wrap_pyop2_kernel_prolong       4 0.0 8.3134e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c7c70196d0_wrap_pyop2_kernel_prolong       4 0.0 2.2656e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519d46941d0_wrap_pyop2_kernel_prolong       4 0.0 8.3349e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519cfe46610_wrap_pyop2_kernel_prolong       4 0.0 2.5640e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c5ce652750_wrap_pyop2_kernel_prolong       4 0.0 8.3136e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c5ce893b50_wrap_pyop2_kernel_prolong       4 0.0 2.3075e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be669cbd90_wrap_pyop2_kernel_prolong       4 0.0 8.3210e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be65ca6d50_wrap_pyop2_kernel_prolong       4 0.0 2.2650e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458c8d3a150_wrap_pyop2_kernel_prolong       4 0.0 8.3299e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458c8d3acd0_wrap_pyop2_kernel_prolong       4 0.0 2.4125e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c59a09b90_wrap_pyop2_kernel_prolong       4 0.0 8.3231e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c59832210_wrap_pyop2_kernel_prolong       4 0.0 2.2736e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145ce3ca1a90_wrap_pyop2_kernel_prolong       4 0.0 8.3176e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145ce33b93d0_wrap_pyop2_kernel_prolong       4 0.0 2.3118e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d7cf31f110_wrap_pyop2_kernel_prolong       4 0.0 8.3296e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d7cf5c4cd0_wrap_pyop2_kernel_prolong       4 0.0 2.5509e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a26090e3d0_wrap_pyop2_kernel_prolong       4 0.0 8.3236e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a260b45dd0_wrap_pyop2_kernel_prolong       4 0.0 2.3427e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b2fb508ed0_wrap_pyop2_kernel_prolong       4 0.0 8.3211e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b2fb50f950_wrap_pyop2_kernel_prolong       4 0.0 2.2808e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493e4f71dd0_wrap_pyop2_kernel_prolong       4 0.0 8.3401e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493e4f73710_wrap_pyop2_kernel_prolong       4 0.0 2.5154e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155477f844d0_wrap_pyop2_kernel_prolong       4 0.0 8.3368e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155477f85d50_wrap_pyop2_kernel_prolong       4 0.0 2.5316e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148abd86f610_wrap_pyop2_kernel_prolong       4 0.0 8.3356e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148abd616910_wrap_pyop2_kernel_prolong       4 0.0 2.4373e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce6d21ba90_wrap_pyop2_kernel_prolong       4 0.0 8.3340e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce6d1a2010_wrap_pyop2_kernel_prolong       4 0.0 2.4466e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b11456bd90_wrap_pyop2_kernel_prolong       4 0.0 8.3396e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b114568490_wrap_pyop2_kernel_prolong       4 0.0 2.6005e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145f37544650_wrap_pyop2_kernel_prolong       4 0.0 8.3216e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145f37545e50_wrap_pyop2_kernel_prolong       4 0.0 2.1040e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be20932090_wrap_pyop2_kernel_prolong       4 0.0 8.3192e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be20931550_wrap_pyop2_kernel_prolong       4 0.0 2.3124e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a47fa42590_wrap_pyop2_kernel_prolong       4 0.0 8.3374e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a47fa66650_wrap_pyop2_kernel_prolong       4 0.0 2.4578e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f52f497a50_wrap_pyop2_kernel_prolong       4 0.0 8.3260e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f52e87d4d0_wrap_pyop2_kernel_prolong       4 0.0 2.3764e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a1c061f210_wrap_pyop2_kernel_prolong       4 0.0 8.3268e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a1c03ddd10_wrap_pyop2_kernel_prolong       4 0.0 2.3265e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14677d42ab50_wrap_pyop2_kernel_prolong       4 0.0 8.3305e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14677c99a090_wrap_pyop2_kernel_prolong       4 0.0 2.4994e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519fdc3dbd0_wrap_pyop2_kernel_prolong       4 0.0 8.3283e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519fd0ef7d0_wrap_pyop2_kernel_prolong       4 0.0 2.3814e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150c97abe450_wrap_pyop2_kernel_prolong       4 0.0 8.3227e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150c97115f90_wrap_pyop2_kernel_prolong       4 0.0 2.3006e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cafdc65850_wrap_pyop2_kernel_prolong       4 0.0 8.3432e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cafdac1ad0_wrap_pyop2_kernel_prolong       4 0.0 2.6724e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14914f01c8d0_wrap_pyop2_kernel_prolong       4 0.0 8.3313e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14914effdcd0_wrap_pyop2_kernel_prolong       4 0.0 2.3289e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d3fb11590_wrap_pyop2_kernel_prolong       4 0.0 8.3390e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d3e6faad0_wrap_pyop2_kernel_prolong       4 0.0 2.5471e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aba00e86d0_wrap_pyop2_kernel_prolong       4 0.0 8.3252e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aba010bb90_wrap_pyop2_kernel_prolong       4 0.0 2.3714e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1521c5382150_wrap_pyop2_kernel_prolong       4 0.0 8.3359e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1521c5382290_wrap_pyop2_kernel_prolong       4 0.0 2.6636e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c9d9836d0_wrap_pyop2_kernel_prolong       4 0.0 8.2981e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c9d981890_wrap_pyop2_kernel_prolong       4 0.0 2.1437e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15334b83fb10_wrap_pyop2_kernel_prolong       4 0.0 8.3213e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15334ba6da90_wrap_pyop2_kernel_prolong       4 0.0 2.4072e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15013908c050_wrap_pyop2_kernel_prolong       4 0.0 8.3259e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1501390a9e90_wrap_pyop2_kernel_prolong       4 0.0 2.4855e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cb45c98c90_wrap_pyop2_kernel_prolong       4 0.0 8.3266e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cb4539cc90_wrap_pyop2_kernel_prolong       4 0.0 2.3218e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e00fab650_wrap_pyop2_kernel_prolong       4 0.0 8.3063e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e00d71f10_wrap_pyop2_kernel_prolong       4 0.0 2.2449e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e9d005a990_wrap_pyop2_kernel_prolong       4 0.0 8.3200e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e9d010ded0_wrap_pyop2_kernel_prolong       4 0.0 2.4755e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ddcbb98550_wrap_pyop2_kernel_prolong       4 0.0 8.3103e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ddcbb9a4d0_wrap_pyop2_kernel_prolong       4 0.0 2.2555e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153a86c0ddd0_wrap_pyop2_kernel_prolong       4 0.0 8.3093e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153a86e7b810_wrap_pyop2_kernel_prolong       4 0.0 2.3379e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14debddec210_wrap_pyop2_kernel_prolong       4 0.0 8.3119e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14debd576cd0_wrap_pyop2_kernel_prolong       4 0.0 2.2458e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b31ce48090_wrap_pyop2_kernel_prolong       4 0.0 8.3122e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b31ce93190_wrap_pyop2_kernel_prolong       4 0.0 2.2800e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ce7052990_wrap_pyop2_kernel_prolong       4 0.0 8.3151e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ce70532d0_wrap_pyop2_kernel_prolong       4 0.0 2.3461e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15335702d590_wrap_pyop2_kernel_prolong       4 0.0 8.3215e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15335702e850_wrap_pyop2_kernel_prolong       4 0.0 2.4336e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458bf08c250_wrap_pyop2_kernel_prolong       4 0.0 8.3246e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458bfa15990_wrap_pyop2_kernel_prolong       4 0.0 2.6662e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dfc4a72210_wrap_pyop2_kernel_prolong       4 0.0 8.3171e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dfc4a71b10_wrap_pyop2_kernel_prolong       4 0.0 2.2393e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153fbc521750_wrap_pyop2_kernel_prolong       4 0.0 8.3045e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153fbc521690_wrap_pyop2_kernel_prolong       4 0.0 2.1970e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c42dd63050_wrap_pyop2_kernel_prolong       4 0.0 8.3131e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c42ded5ed0_wrap_pyop2_kernel_prolong       4 0.0 2.3263e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c112f8cc10_wrap_pyop2_kernel_prolong       4 0.0 8.3123e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c112f71510_wrap_pyop2_kernel_prolong       4 0.0 2.4546e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1514b6fca390_wrap_pyop2_kernel_prolong       4 0.0 8.3060e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1514b65a28d0_wrap_pyop2_kernel_prolong       4 0.0 2.2385e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150c45779e90_wrap_pyop2_kernel_prolong       4 0.0 8.3192e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150c45779010_wrap_pyop2_kernel_prolong       4 0.0 2.2411e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148379b84d50_wrap_pyop2_kernel_prolong       4 0.0 8.3074e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148378f15890_wrap_pyop2_kernel_prolong       4 0.0 2.2221e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b5fe17a010_wrap_pyop2_kernel_prolong       4 0.0 8.3099e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b5fe17be50_wrap_pyop2_kernel_prolong       4 0.0 2.3734e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15208b149e10_wrap_pyop2_kernel_prolong       4 0.0 8.3269e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15208b379610_wrap_pyop2_kernel_prolong       4 0.0 2.6146e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac4f436550_wrap_pyop2_kernel_prolong       4 0.0 8.3164e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac4f494fd0_wrap_pyop2_kernel_prolong       4 0.0 2.4066e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152bdf0c0050_wrap_pyop2_kernel_prolong       4 0.0 8.3223e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152bdf0c02d0_wrap_pyop2_kernel_prolong       4 0.0 2.4743e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e53436f50_wrap_pyop2_kernel_prolong       4 0.0 8.3232e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e520ad790_wrap_pyop2_kernel_prolong       4 0.0 2.5088e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d6d177f7d0_wrap_pyop2_kernel_prolong       4 0.0 8.3233e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d6d177d590_wrap_pyop2_kernel_prolong       4 0.0 2.5434e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e34c2f9fd0_wrap_pyop2_kernel_prolong       4 0.0 8.3058e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e34c2fb150_wrap_pyop2_kernel_prolong       4 0.0 2.1910e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145ef5726b90_wrap_pyop2_kernel_prolong       4 0.0 8.3087e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145ef55855d0_wrap_pyop2_kernel_prolong       4 0.0 2.2863e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15182be46950_wrap_pyop2_kernel_prolong       4 0.0 8.3201e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151830866650_wrap_pyop2_kernel_prolong       4 0.0 2.4329e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b7f107db50_wrap_pyop2_kernel_prolong       4 0.0 8.3106e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b7f1063150_wrap_pyop2_kernel_prolong       4 0.0 2.2681e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e1eeeb4d0_wrap_pyop2_kernel_prolong       4 0.0 8.3125e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e1e641d10_wrap_pyop2_kernel_prolong       4 0.0 2.3826e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14777e80b650_wrap_pyop2_kernel_prolong       4 0.0 8.3201e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14777e919bd0_wrap_pyop2_kernel_prolong       4 0.0 2.4616e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1457e4181cd0_wrap_pyop2_kernel_prolong       4 0.0 8.3100e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1457e41817d0_wrap_pyop2_kernel_prolong       4 0.0 2.3666e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff53d5ff10_wrap_pyop2_kernel_prolong       4 0.0 8.3051e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff53d5ce10_wrap_pyop2_kernel_prolong       4 0.0 2.2760e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151999f0e1d0_wrap_pyop2_kernel_prolong       4 0.0 8.3054e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151999f0db50_wrap_pyop2_kernel_prolong       4 0.0 2.2581e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ae9505a950_wrap_pyop2_kernel_prolong       4 0.0 8.3094e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ae95077bd0_wrap_pyop2_kernel_prolong       4 0.0 2.3365e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14911cb52490_wrap_pyop2_kernel_prolong       4 0.0 8.3200e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14911c1e1a90_wrap_pyop2_kernel_prolong       4 0.0 2.4994e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1460e22f5810_wrap_pyop2_kernel_prolong       4 0.0 8.3209e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1460e228ded0_wrap_pyop2_kernel_prolong       4 0.0 2.6355e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b01c9a6b10_wrap_pyop2_kernel_prolong       4 0.0 8.3221e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b01cbd61d0_wrap_pyop2_kernel_prolong       4 0.0 2.5725e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154238270e90_wrap_pyop2_kernel_prolong       4 0.0 8.3053e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154238259450_wrap_pyop2_kernel_prolong       4 0.0 2.2613e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cb1ad6edd0_wrap_pyop2_kernel_prolong       4 0.0 8.3012e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cb1af9e250_wrap_pyop2_kernel_prolong       4 0.0 2.1868e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14568399ef90_wrap_pyop2_kernel_prolong       4 0.0 8.3168e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14568399d450_wrap_pyop2_kernel_prolong       4 0.0 2.5045e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14905d48a590_wrap_pyop2_kernel_prolong       4 0.0 8.3168e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14905d470bd0_wrap_pyop2_kernel_prolong       4 0.0 2.3674e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1525a5629bd0_wrap_pyop2_kernel_prolong       4 0.0 8.3251e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1525a54de590_wrap_pyop2_kernel_prolong       4 0.0 2.5261e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154fd5923210_wrap_pyop2_kernel_prolong       4 0.0 8.3395e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154fd4e49e10_wrap_pyop2_kernel_prolong       4 0.0 2.6071e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1537fc52a1d0_wrap_pyop2_kernel_prolong       4 0.0 8.3254e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1537fc529ad0_wrap_pyop2_kernel_prolong       4 0.0 2.3524e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da70e04e90_wrap_pyop2_kernel_prolong       4 0.0 8.3122e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da70e045d0_wrap_pyop2_kernel_prolong       4 0.0 2.2087e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b91b1a8710_wrap_pyop2_kernel_prolong       4 0.0 8.3269e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b91b1f4d10_wrap_pyop2_kernel_prolong       4 0.0 2.6545e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a58dd1d50_wrap_pyop2_kernel_prolong       4 0.0 8.2984e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a58dd3810_wrap_pyop2_kernel_prolong       4 0.0 2.1648e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a58867c490_wrap_pyop2_kernel_prolong       4 0.0 8.3116e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a583bc7f90_wrap_pyop2_kernel_prolong       4 0.0 2.4014e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15330b69bed0_wrap_pyop2_kernel_prolong       4 0.0 8.3142e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15330b699710_wrap_pyop2_kernel_prolong       4 0.0 2.5408e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1511b90f5950_wrap_pyop2_kernel_prolong       4 0.0 8.3177e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1511b90f7050_wrap_pyop2_kernel_prolong       4 0.0 2.5438e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b8c0bfe750_wrap_pyop2_kernel_prolong       4 0.0 8.1942e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b8c0bfd6d0_wrap_pyop2_kernel_prolong       4 0.0 2.3933e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e227148250_wrap_pyop2_kernel_prolong       4 0.0 8.1912e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e224b12490_wrap_pyop2_kernel_prolong       4 0.0 2.3189e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d7208c6850_wrap_pyop2_kernel_prolong       4 0.0 8.1977e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d72061e9d0_wrap_pyop2_kernel_prolong       4 0.0 2.4329e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b4b75a950_wrap_pyop2_kernel_prolong       4 0.0 8.1874e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b4b733bd0_wrap_pyop2_kernel_prolong       4 0.0 2.2467e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145e59fb3c50_wrap_pyop2_kernel_prolong       4 0.0 8.1777e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145e5a1e8210_wrap_pyop2_kernel_prolong       4 0.0 2.0951e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1514a06d9c10_wrap_pyop2_kernel_prolong       4 0.0 8.1986e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1514a06db390_wrap_pyop2_kernel_prolong       4 0.0 2.4504e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147818d5d210_wrap_pyop2_kernel_prolong       4 0.0 8.1845e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147818d41b10_wrap_pyop2_kernel_prolong       4 0.0 2.1915e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c86c306c90_wrap_pyop2_kernel_prolong       4 0.0 8.1845e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c86c35b790_wrap_pyop2_kernel_prolong       4 0.0 2.0840e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498f9dd9310_wrap_pyop2_kernel_prolong       4 0.0 8.1962e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498f9dcb5d0_wrap_pyop2_kernel_prolong       4 0.0 2.4569e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c3033b8f50_wrap_pyop2_kernel_prolong       4 0.0 8.1863e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c302a39b10_wrap_pyop2_kernel_prolong       4 0.0 2.2615e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1505358bb910_wrap_pyop2_kernel_prolong       4 0.0 8.2027e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150535859f50_wrap_pyop2_kernel_prolong       4 0.0 2.5445e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5fe5434d0_wrap_pyop2_kernel_prolong       4 0.0 8.1970e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5fe5419d0_wrap_pyop2_kernel_prolong       4 0.0 2.4151e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150068e19750_wrap_pyop2_kernel_prolong       4 0.0 8.1980e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150069091d90_wrap_pyop2_kernel_prolong       4 0.0 2.4299e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff5f17f590_wrap_pyop2_kernel_prolong       4 0.0 8.1854e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff5f17e050_wrap_pyop2_kernel_prolong       4 0.0 2.3156e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff4fe683d0_wrap_pyop2_kernel_prolong       4 0.0 8.1873e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff4fedd290_wrap_pyop2_kernel_prolong       4 0.0 2.3300e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1524e5429350_wrap_pyop2_kernel_prolong       4 0.0 8.1975e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1524e47fe3d0_wrap_pyop2_kernel_prolong       4 0.0 2.4568e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147dc954d810_wrap_pyop2_kernel_prolong       4 0.0 8.1891e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147dc954e990_wrap_pyop2_kernel_prolong       4 0.0 2.3566e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14902151d550_wrap_pyop2_kernel_prolong       4 0.0 8.1878e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149020c08050_wrap_pyop2_kernel_prolong       4 0.0 2.3109e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b6b36bbc50_wrap_pyop2_kernel_prolong       4 0.0 8.1842e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b6b36b8dd0_wrap_pyop2_kernel_prolong       4 0.0 2.4852e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145657ab36d0_wrap_pyop2_kernel_prolong       4 0.0 8.1822e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145657959710_wrap_pyop2_kernel_prolong       4 0.0 2.1747e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15108b64ff50_wrap_pyop2_kernel_prolong       4 0.0 8.1803e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15108b4d8410_wrap_pyop2_kernel_prolong       4 0.0 2.2749e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14675e375b10_wrap_pyop2_kernel_prolong       4 0.0 8.1857e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14675e375250_wrap_pyop2_kernel_prolong       4 0.0 2.3209e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc679c58d0_wrap_pyop2_kernel_prolong       4 0.0 8.1882e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc679c7fd0_wrap_pyop2_kernel_prolong       4 0.0 2.3515e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a4d11e3750_wrap_pyop2_kernel_prolong       4 0.0 8.1986e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a4d12161d0_wrap_pyop2_kernel_prolong       4 0.0 2.4757e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1552f203a1d0_wrap_pyop2_kernel_prolong       4 0.0 8.1860e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1552f2007450_wrap_pyop2_kernel_prolong       4 0.0 2.3782e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146bebb50b90_wrap_pyop2_kernel_prolong       4 0.0 8.2034e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146bebd884d0_wrap_pyop2_kernel_prolong       4 0.0 2.6472e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14744df82190_wrap_pyop2_kernel_prolong       4 0.0 8.1861e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14744dfa3350_wrap_pyop2_kernel_prolong       4 0.0 2.1715e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e0c0f78d0_wrap_pyop2_kernel_prolong       4 0.0 8.1891e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e0c0f65d0_wrap_pyop2_kernel_prolong       4 0.0 2.3043e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14721b922e50_wrap_pyop2_kernel_prolong       4 0.0 8.1991e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14721b0256d0_wrap_pyop2_kernel_prolong       4 0.0 2.4920e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1503a7346e10_wrap_pyop2_kernel_prolong       4 0.0 8.1955e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1503a7405bd0_wrap_pyop2_kernel_prolong       4 0.0 2.3665e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd26c4d990_wrap_pyop2_kernel_prolong       4 0.0 8.1945e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd261ad350_wrap_pyop2_kernel_prolong       4 0.0 2.4512e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1540d97c5e10_wrap_pyop2_kernel_prolong       4 0.0 8.1844e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1540d97c5990_wrap_pyop2_kernel_prolong       4 0.0 2.4423e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152a41c82090_wrap_pyop2_kernel_prolong       4 0.0 8.1968e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152a41cf3cd0_wrap_pyop2_kernel_prolong       4 0.0 2.5487e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1550b951ebd0_wrap_pyop2_kernel_prolong       4 0.0 8.1753e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1550b8b8d7d0_wrap_pyop2_kernel_prolong       4 0.0 2.4112e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15170aa21310_wrap_pyop2_kernel_prolong       4 0.0 8.2053e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15170aa22a90_wrap_pyop2_kernel_prolong       4 0.0 2.6556e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff1f66ce50_wrap_pyop2_kernel_prolong       4 0.0 8.1806e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe61deab10_wrap_pyop2_kernel_prolong       4 0.0 2.3668e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1475a9059a50_wrap_pyop2_kernel_prolong       4 0.0 8.1778e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1475a9059450_wrap_pyop2_kernel_prolong       4 0.0 2.1886e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1553cd6eaf90_wrap_pyop2_kernel_prolong       4 0.0 8.1931e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1553cd6c97d0_wrap_pyop2_kernel_prolong       4 0.0 2.4882e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1464fa4de010_wrap_pyop2_kernel_prolong       4 0.0 8.1906e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1464fa4dd710_wrap_pyop2_kernel_prolong       4 0.0 2.3724e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a3d1a04d50_wrap_pyop2_kernel_prolong       4 0.0 8.1809e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a3d1c515d0_wrap_pyop2_kernel_prolong       4 0.0 2.2107e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a12f961f90_wrap_pyop2_kernel_prolong       4 0.0 8.1955e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a12f961a90_wrap_pyop2_kernel_prolong       4 0.0 2.4975e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15234e873a10_wrap_pyop2_kernel_prolong       4 0.0 8.1801e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15234e817a50_wrap_pyop2_kernel_prolong       4 0.0 2.4072e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ef6a03810_wrap_pyop2_kernel_prolong       4 0.0 8.1713e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ef6983c90_wrap_pyop2_kernel_prolong       4 0.0 2.2762e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147fb40e62d0_wrap_pyop2_kernel_prolong       4 0.0 8.1737e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147fb40e6710_wrap_pyop2_kernel_prolong       4 0.0 2.3227e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1550e82a1890_wrap_pyop2_kernel_prolong       4 0.0 8.1903e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1550e82894d0_wrap_pyop2_kernel_prolong       4 0.0 2.5073e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149cd86e8ed0_wrap_pyop2_kernel_prolong       4 0.0 8.1893e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149cd85f6bd0_wrap_pyop2_kernel_prolong       4 0.0 2.2538e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1544c91c2290_wrap_pyop2_kernel_prolong       4 0.0 8.1799e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1544c8842550_wrap_pyop2_kernel_prolong       4 0.0 2.3162e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c2332df510_wrap_pyop2_kernel_prolong       4 0.0 8.2017e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c2332ddb50_wrap_pyop2_kernel_prolong       4 0.0 2.5107e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148cde4d1090_wrap_pyop2_kernel_prolong       4 0.0 8.1937e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148cddaaf3d0_wrap_pyop2_kernel_prolong       4 0.0 2.4802e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14894d96df90_wrap_pyop2_kernel_prolong       4 0.0 8.1999e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14894d96f550_wrap_pyop2_kernel_prolong       4 0.0 2.4549e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150604b1e810_wrap_pyop2_kernel_prolong       4 0.0 8.1823e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150604a4fbd0_wrap_pyop2_kernel_prolong       4 0.0 2.4515e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149851c52a10_wrap_pyop2_kernel_prolong       4 0.0 8.1948e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149851c524d0_wrap_pyop2_kernel_prolong       4 0.0 2.6197e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa11125850_wrap_pyop2_kernel_prolong       4 0.0 8.1775e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa11127310_wrap_pyop2_kernel_prolong       4 0.0 2.3810e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c4f542790_wrap_pyop2_kernel_prolong       4 0.0 8.1830e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c4f55a990_wrap_pyop2_kernel_prolong       4 0.0 2.4369e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df65a13f90_wrap_pyop2_kernel_prolong       4 0.0 8.1755e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df65c33ed0_wrap_pyop2_kernel_prolong       4 0.0 2.4660e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150bf4b35b50_wrap_pyop2_kernel_prolong       4 0.0 8.1768e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150bf4589990_wrap_pyop2_kernel_prolong       4 0.0 2.3446e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e6551a72d0_wrap_pyop2_kernel_prolong       4 0.0 8.1854e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e655210bd0_wrap_pyop2_kernel_prolong       4 0.0 2.3391e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1495f0c4e250_wrap_pyop2_kernel_prolong       4 0.0 8.1905e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1495f0c4f390_wrap_pyop2_kernel_prolong       4 0.0 2.3082e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153ea8af3990_wrap_pyop2_kernel_prolong       4 0.0 8.1849e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153ea8af19d0_wrap_pyop2_kernel_prolong       4 0.0 2.3499e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a889b4dd90_wrap_pyop2_kernel_prolong       4 0.0 8.1811e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a8898ec810_wrap_pyop2_kernel_prolong       4 0.0 2.2214e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1539754fc310_wrap_pyop2_kernel_prolong       4 0.0 8.2014e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1539754d19d0_wrap_pyop2_kernel_prolong       4 0.0 2.6765e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac22fdaad0_wrap_pyop2_kernel_prolong       4 0.0 8.1791e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac230faa90_wrap_pyop2_kernel_prolong       4 0.0 2.2215e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14576a872790_wrap_pyop2_kernel_prolong       4 0.0 8.1923e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14576a872090_wrap_pyop2_kernel_prolong       4 0.0 2.5288e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e1a11cebd0_wrap_pyop2_kernel_prolong       4 0.0 8.1900e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e1a11a1d50_wrap_pyop2_kernel_prolong       4 0.0 2.4243e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c751308cd0_wrap_pyop2_kernel_prolong       4 0.0 8.1911e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c751309e50_wrap_pyop2_kernel_prolong       4 0.0 2.4367e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150d6d572110_wrap_pyop2_kernel_prolong       4 0.0 8.1881e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150d6d571fd0_wrap_pyop2_kernel_prolong       4 0.0 2.3689e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1501fc192ed0_wrap_pyop2_kernel_prolong       4 0.0 8.1915e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1501f7b23e50_wrap_pyop2_kernel_prolong       4 0.0 2.4315e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145711a0c250_wrap_pyop2_kernel_prolong       4 0.0 8.1836e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145711866110_wrap_pyop2_kernel_prolong       4 0.0 2.4691e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e7138a4d0_wrap_pyop2_kernel_prolong       4 0.0 8.1703e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e70a37e90_wrap_pyop2_kernel_prolong       4 0.0 2.3752e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145f869ddbd0_wrap_pyop2_kernel_prolong       4 0.0 8.1731e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145f861b2510_wrap_pyop2_kernel_prolong       4 0.0 2.3255e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15192184d490_wrap_pyop2_kernel_prolong       4 0.0 8.1890e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15192184cb90_wrap_pyop2_kernel_prolong       4 0.0 2.7301e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455eed2d890_wrap_pyop2_kernel_prolong       4 0.0 8.1766e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455eed7fa10_wrap_pyop2_kernel_prolong       4 0.0 2.1972e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1548c883e350_wrap_pyop2_kernel_prolong       4 0.0 8.1905e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1548c883d810_wrap_pyop2_kernel_prolong       4 0.0 2.5774e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa25bea990_wrap_pyop2_kernel_prolong       4 0.0 8.1811e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa251cf090_wrap_pyop2_kernel_prolong       4 0.0 2.4593e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1501d1cece10_wrap_pyop2_kernel_prolong       4 0.0 8.1792e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1501d1d38bd0_wrap_pyop2_kernel_prolong       4 0.0 2.2877e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1495aee75a50_wrap_pyop2_kernel_prolong       4 0.0 8.1849e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1495af07d5d0_wrap_pyop2_kernel_prolong       4 0.0 2.4350e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d928e4c750_wrap_pyop2_kernel_prolong       4 0.0 8.1869e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d928e79310_wrap_pyop2_kernel_prolong       4 0.0 2.3845e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f498077c90_wrap_pyop2_kernel_prolong       4 0.0 8.1953e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f498074550_wrap_pyop2_kernel_prolong       4 0.0 2.6434e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a1600e0050_wrap_pyop2_kernel_prolong       4 0.0 8.1814e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a15b7b9550_wrap_pyop2_kernel_prolong       4 0.0 2.3547e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c392627d0_wrap_pyop2_kernel_prolong       4 0.0 8.1741e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c39262150_wrap_pyop2_kernel_prolong       4 0.0 2.3039e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1489bcbca890_wrap_pyop2_kernel_prolong       4 0.0 8.1816e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1489bca9b750_wrap_pyop2_kernel_prolong       4 0.0 2.3773e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14555de71b90_wrap_pyop2_kernel_prolong       4 0.0 8.1802e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14555de9a610_wrap_pyop2_kernel_prolong       4 0.0 2.5853e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c2af2a47d0_wrap_pyop2_kernel_prolong       4 0.0 8.1906e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c2af2e5210_wrap_pyop2_kernel_prolong       4 0.0 2.4373e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b7d213aa50_wrap_pyop2_kernel_prolong       4 0.0 8.1813e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b7d15bbbd0_wrap_pyop2_kernel_prolong       4 0.0 2.5786e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1454b6211d10_wrap_pyop2_kernel_prolong       4 0.0 8.1750e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1454b61e60d0_wrap_pyop2_kernel_prolong       4 0.0 2.3940e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15544a152690_wrap_pyop2_kernel_prolong       4 0.0 8.1786e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15544a150190_wrap_pyop2_kernel_prolong       4 0.0 2.4072e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a666636d0_wrap_pyop2_kernel_prolong       4 0.0 8.1871e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a66addc50_wrap_pyop2_kernel_prolong       4 0.0 2.4597e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1465f04b0a10_wrap_pyop2_kernel_prolong       4 0.0 8.1683e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1465f04b2dd0_wrap_pyop2_kernel_prolong       4 0.0 2.2565e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148ce93c9690_wrap_pyop2_kernel_prolong       4 0.0 8.1860e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148ce9407b90_wrap_pyop2_kernel_prolong       4 0.0 2.5113e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bdaa565010_wrap_pyop2_kernel_prolong       4 0.0 8.1902e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bda9336690_wrap_pyop2_kernel_prolong       4 0.0 2.7231e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e936277cd0_wrap_pyop2_kernel_prolong       4 0.0 8.1931e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e9372d0bd0_wrap_pyop2_kernel_prolong       4 0.0 2.6421e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e205b3b50_wrap_pyop2_kernel_prolong       4 0.0 8.1784e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e205b1250_wrap_pyop2_kernel_prolong       4 0.0 2.4486e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14688bb98210_wrap_pyop2_kernel_prolong       4 0.0 8.1807e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14688bb9b690_wrap_pyop2_kernel_prolong       4 0.0 2.3802e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14613d385510_wrap_pyop2_kernel_prolong       4 0.0 8.1760e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14613dbaedd0_wrap_pyop2_kernel_prolong       4 0.0 2.3784e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1542a0293f10_wrap_pyop2_kernel_prolong       4 0.0 8.1802e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1542a015e610_wrap_pyop2_kernel_prolong       4 0.0 2.3740e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1494ebacb910_wrap_pyop2_kernel_prolong       4 0.0 8.1782e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1494f086a590_wrap_pyop2_kernel_prolong       4 0.0 2.3097e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14705c41a510_wrap_pyop2_kernel_prolong       4 0.0 8.1850e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14705c415b50_wrap_pyop2_kernel_prolong       4 0.0 2.5716e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14890e4eb490_wrap_pyop2_kernel_prolong       4 0.0 8.1719e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14890e4e9890_wrap_pyop2_kernel_prolong       4 0.0 2.3019e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f9db1de50_wrap_pyop2_kernel_prolong       4 0.0 8.1822e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f9db1f190_wrap_pyop2_kernel_prolong       4 0.0 2.2396e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c9a6e4a850_wrap_pyop2_kernel_prolong       4 0.0 8.1947e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c9a707d9d0_wrap_pyop2_kernel_prolong       4 0.0 2.5561e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dbf2c372d0_wrap_pyop2_kernel_prolong       4 0.0 8.1861e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dbf2abaa50_wrap_pyop2_kernel_prolong       4 0.0 2.3816e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149afa637f50_wrap_pyop2_kernel_prolong       4 0.0 8.1815e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149afa890d50_wrap_pyop2_kernel_prolong       4 0.0 2.5080e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497ac2d5ed0_wrap_pyop2_kernel_prolong       4 0.0 8.1839e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497ac2d7150_wrap_pyop2_kernel_prolong       4 0.0 2.4641e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1496615511d0_wrap_pyop2_kernel_prolong       4 0.0 8.1925e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149661471090_wrap_pyop2_kernel_prolong       4 0.0 2.6442e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided        226 1.0 2.6235e-02 3.7 0.00e+00 0.0 2.8e+05 4.0e+00 2.3e+02  0  0  1  0  1   0  0  1  0  3    -0
SFSetGraph           226 1.0 2.7200e-03 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              226 1.0 3.6556e-02 2.0 0.00e+00 0.0 5.5e+05 5.9e+01 2.3e+02  0  0  1  0  1   0  0  1  0  3    -0
SFPack           12539147 1.1 6.8052e+00 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack         12539147 1.1 6.0895e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy            23513 1.0 2.0351e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecSet             47023 1.0 5.8492e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecAXPY             6718 1.0 5.4458e+01 2.0 2.24e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  2  0  0  0 82539
VecAYPX            47026 1.0 5.1449e+01 3.4 1.13e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  1  0  0  0 44047
VecAXPBYCZ         13436 1.0 1.4914e-02 1.7 1.17e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 1569744
VecScatterBegin  12539147 1.1 1.6200e+02 1.2 0.00e+00 0.0 4.2e+07 4.0e+04 0.0e+00  3  0 79 45  0   6  0 97 100  0    -0
VecScatterEnd    12539147 1.1 1.5332e+02 9.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
MatMult            33590 1.0 1.1262e+03 1.1 7.97e+11 1.1 3.8e+07 4.4e+04 0.0e+00 25 16 72 45  0  46 59 87 100  0 141572
MatMultAdd         10077 1.0 6.9353e+01 1.1 3.37e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  1  0  0  0   3  3  0  0  0 97420
MatMultTranspose   10077 1.0 5.6938e+01 1.7 3.37e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  3  0  0  0 118662
MatSolve         6264535 1.1 7.0889e+02 1.2 3.93e+11 1.1 5.5e+06 1.9e+02 1.1e+03 15  8 10  0  4  28 29 13  0 14 111040
MatLUFactorNum    194402 1.1 5.5817e+01 1.2 5.56e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  4  0  0  0 199274
MatResidual        10077 1.0 6.1089e+02 1.2 4.04e+11 1.1 1.1e+07 7.3e+04 0.0e+00 13  8 21 22  0  24 30 26 50  0 132247
MatAssemblyBegin  193952 1.1 3.9960e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyEnd    193952 1.1 4.5359e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats     209 1.0 1.1075e+02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   5  0  0  0  0    -0
PCSetUp           194836 1.1 1.6478e+02 1.1 5.56e+10 1.1 0.0e+00 0.0e+00 0.0e+00  4  1  0  0  0   7  4  0  0  0 67502
PCSetUpOnBlocks    13436 1.0 4.5333e-02 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply            10077 1.0 1.1058e+03 1.1 4.50e+11 1.1 3.6e+07 2.6e+02 4.5e+03 25  9 68  0 18  46 33 83  1 57 81500
PCApplyOnBlocks  6261176 1.1 7.3939e+02 1.2 4.48e+11 1.1 0.0e+00 0.0e+00 0.0e+00 16  9  0  0  0  30 33  0  0  0 121467
KSPSetUp          194178 1.1 3.3969e-02 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve           10077 1.0 1.6966e+03 1.1 8.76e+11 1.1 3.9e+07 2.1e+04 7.8e+03 38 17 75 23 31  71 65 91 50 100 103352
MGSmooth Level 0    3359 1.0 1.0554e+02 2.5 3.59e+09 1.5 3.6e+07 2.6e+02 7.8e+03  2  0 68  0 31   3  0 83  1 100  4954
MGSmooth Level 1    6718 1.0 1.6478e+03 1.1 8.73e+11 1.1 3.8e+06 2.2e+05 0.0e+00 37 17  7 22  0  68 65  9 50  0 106095
MGResid Level 1     3359 1.0 6.0509e+02 1.2 4.04e+11 1.1 3.8e+06 2.2e+05 0.0e+00 13  8  7 22  0  23 30  9 50  0 133422
MGInterp Level 1    6718 1.0 1.2199e+02 1.2 6.73e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3  1  0  0  0   5  5  0  0  0 110535
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   237            235
              Viewer     3              3
         PetscRandom    17             17
           Index Set 10043          10043
   IS L to G Mapping  1124           1118
             Section   493            493
   Star Forest Graph  1383           1381
              Vector  4461           4453
              Matrix  4762           4737
      Preconditioner   925            925
       Krylov Solver   940            940
     DMKSP interface     1              1
                SNES     1              1
              DMSNES     1              1
      SNESLineSearch     1              1
    Distributed Mesh   144            146
            DM Label   345            345
          Quadrature   144            144
      Mesh Transform     2              2
       Swarm Cell DM     4              4
    GraphPartitioner    41             41
     Discrete System   199            201
           Weak Form   199            201
        Linear Space    12             12
          Dual Space    52             52
            FE Space     8              8

--- Event Stage 1: MG Apply

           Index Set   452            452
   Star Forest Graph   230            225
              Vector   453            454
    Distributed Mesh     2              0
     Discrete System     2              0
           Weak Form     2              0
========================================================================================================================
Average time to get PetscTime(): 2.57e-08
Average time for MPI_Barrier(): 8.3604e-06
Average time for zero size MPI_Send(): 2.68987e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_mg_coarse_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_mg_levels_1_pc_linesmooth_sub_sub_pc_factor_mat_ordering_type natural # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murr_strong/vlumping_hmg/s2.profile # (source: code)
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

