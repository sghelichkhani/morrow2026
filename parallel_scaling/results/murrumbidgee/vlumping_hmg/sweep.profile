****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0207.gadi.nci.org.au with 208 processes, by sg8812 on Sat Aug 29 16:59:20 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           4.809e+02     1.000   4.809e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                5.656e+11     1.275   4.865e+11  1.012e+14
Flops/sec:            1.176e+09     1.275   1.012e+09  2.104e+11
MPI Msg Count:        2.121e+05     4.561   1.275e+05  2.651e+07
MPI Msg Len (bytes):  1.007e+10     6.126   4.489e+04  1.190e+12
MPI Reductions:       1.719e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 3.1574e+02  65.7%  8.4079e+13  83.1%  7.218e+06  27.2%  1.103e+05       66.9%  1.290e+04  75.1%
 1:        MG Apply: 1.6516e+02  34.3%  1.7115e+13  16.9%  1.929e+07  72.8%  2.042e+04       33.1%  4.269e+03  24.8%

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

BuildTwoSided       1841 1.0 4.9407e+01 4.6 0.00e+00 0.0 2.2e+05 4.0e+00 1.7e+03  7  0  1  0 10  11  0  3  0 13    -0
BuildTwoSidedF      1593 1.0 4.7330e+01 3.6 0.00e+00 0.0 2.5e+05 1.4e+06 1.6e+03  7  0  1 29  9  11  0  4 43 12    -0
SFSetGraph           257 1.1 1.2114e-02 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              248 1.1 3.9942e+00 103.9 0.00e+00 0.0 1.9e+05 8.1e+02 1.2e+02  0  0  1  0  1   0  0  3  0  1    -0
SFBcastBegin         914 1.0 3.5742e-01 5.5 0.00e+00 0.0 1.0e+06 7.5e+04 0.0e+00  0  0  4  6  0   0  0 14 10  0    -0
SFBcastEnd           914 1.0 1.3748e+01 107.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
SFReduceBegin        345 1.0 7.7465e-02 19.5 0.00e+00 0.0 3.8e+05 9.8e+04 0.0e+00  0  0  1  3  0   0  0  5  5  0    -0
SFReduceEnd          345 1.0 2.9489e+00 62.7 3.94e+07 6.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1585
SFFetchOpBegin         6 1.0 3.6284e-05 6.0 0.00e+00 0.0 6.6e+03 5.4e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           6 1.0 6.2385e-04 10.9 0.00e+00 0.0 6.6e+03 5.4e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          4 1.0 1.1190e-03 2.1 0.00e+00 0.0 3.3e+03 7.2e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         51 1.0 6.6374e-03 1.4 0.00e+00 0.0 1.6e+05 5.8e+01 6.0e+01  0  0  1  0  0   0  0  2  0  0    -0
SFSectionSF           53 1.0 4.1280e-03 2.5 0.00e+00 0.0 7.5e+04 2.8e+01 5.3e+01  0  0  0  0  0   0  0  1  0  0    -0
SFRemoteOff            2 1.0 8.6786e-05 2.4 0.00e+00 0.0 2.9e+03 1.2e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack             67829 1.1 1.1199e+00 4.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           67835 1.1 2.1864e-01 24.0 3.94e+07 6.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 21381
VecDot               225 1.0 9.1284e-01 11.1 1.04e+08 1.1 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  1   0  0  0  0  2 21353
VecMDot             3903 1.0 1.8892e+01 5.6 4.24e+09 1.1 0.0e+00 0.0e+00 3.9e+03  2  1  0  0 23   3  1  0  0 30 42180
VecNorm             5127 1.0 5.0466e+00 4.5 1.29e+09 1.1 0.0e+00 0.0e+00 5.1e+03  1  0  0  0 30   1  0  0  0 40 48132
VecScale            4366 1.0 1.3020e-01 1.3 4.71e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 679628
VecCopy             1815 1.0 1.0092e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              1399 1.0 4.1975e-01 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              463 1.0 1.3958e-01 1.2 1.09e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 147332
VecWAXPY             225 1.0 2.1881e-01 1.3 5.18e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 44540
VecMAXPY            4366 1.0 5.4958e+00 1.2 5.07e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  1  0  0  0 173457
VecScatterBegin    66564 1.1 1.3454e+00 1.8 0.00e+00 0.0 4.6e+06 5.5e+04 0.0e+00  0  0 17 21  0   0  0 64 32  0    -0
VecScatterEnd      66564 1.1 9.8379e+00 37.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecSetRandom          11 1.0 2.5114e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecReduceArith       450 1.0 1.0695e-01 2.1 2.07e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 364513
VecReduceComm        225 1.0 1.2565e-01 13.3 0.00e+00 0.0 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  1   0  0  0  0  2    -0
VecNormalize        2569 1.0 4.8632e-01 3.4 1.70e+08 1.1 0.0e+00 0.0e+00 2.6e+03  0  0  0  0 15   0  0  0  0 20 65696
MatMult             4128 1.0 4.9316e+01 1.3 3.31e+10 1.2 4.6e+06 5.5e+04 0.0e+00  9  6 17 21  0  14  7 64 32  0 125956
MatSolve           33303 1.1 3.6278e+00 1.5 1.97e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0 101854
MatLUFactorSym       129 1.1 9.0850e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum      1635 1.1 3.8803e-01 1.2 4.09e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 197890
MatILUFactorSym        2 1.0 7.1964e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin    4418 1.0 4.8803e+01 2.2 0.00e+00 0.0 2.5e+05 1.4e+06 1.6e+03  8  0  1 29  9  12  0  4 43 12    -0
MatAssemblyEnd      4418 1.0 1.5206e+01 15.5 2.84e+08 0.0 8.9e+03 7.0e+03 7.1e+01  1  0  0  0  0   2  0  0  0  1  1405
MatGetRowIJ          130 1.1 3.0232e-05 3.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats      11 1.0 8.8549e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.3e+02  0  0  0  0  1   0  0  0  0  1    -0
MatGetOrdering       130 1.1 2.0732e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       900 1.0 4.1345e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
MatTranspose           8 1.0 6.6646e-03 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 1.8e+01  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          8 1.0 8.9080e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 1.8e+01  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum       1352 1.0 2.0956e+00 1.2 3.74e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  1  0  0  0 333929
MatPtAPSymbolic        3 1.0 1.1560e-01 1.0 0.00e+00 0.0 1.0e+04 6.2e+04 2.1e+01  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       675 1.0 1.7776e+01 1.0 1.49e+10 1.2 7.6e+05 1.1e+05 6.9e+02  4  3  3  7  4   6  3 10 11  5 157404
MatGetLocalMat       679 1.0 9.4604e-01 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        679 1.0 1.0651e+00 4.2 0.00e+00 0.0 7.6e+05 1.1e+05 0.0e+00  0  0  3  7  0   0  0 11 11  0    -0
MatSetPreallCOO       32 1.0 1.0923e-04 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       32 1.0 5.6820e-05 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp              225 1.0 4.4049e+01 1.0 2.37e+10 1.2 3.4e+06 3.3e+04 6.8e+03  9  4 13 10 40  14  5 47 14 53 100779
PCApply             1572 1.0 1.7242e+02 1.1 9.12e+10 1.2 1.9e+07 2.0e+04 4.3e+03 34 17 73 33 25 Multiple stages 99262
PCApplyOnBlocks    33303 1.1 4.0546e+00 1.4 2.37e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 109822
KSPSetUp             225 1.0 7.5958e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             225 1.0 2.1357e+02 1.0 1.25e+11 1.2 2.1e+07 2.8e+04 7.6e+03 44 23 79 50 44 Multiple stages 110031
KSPGMRESOrthog      3903 1.0 2.2881e+01 3.1 8.48e+09 1.1 0.0e+00 0.0e+00 3.9e+03  3  2  0  0 23   4  2  0  0 30 69653
DMRefine               2 1.0 2.1515e-01 1.0 2.09e+03 1.0 2.0e+04 2.7e+01 6.3e+01  0  0  0  0  0   0  0  0  0  0     2
DMPlexCreateGmsh       1 1.0 1.7136e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 4.4307e+00 245.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   1  0  0  0  0    -0
Mesh Partition         4 1.0 6.9292e-02 1.0 0.00e+00 0.0 4.8e+04 4.7e+01 5.1e+01  0  0  0  0  0   0  0  1  0  0    -0
Mesh Migration         4 1.0 1.5952e-02 1.1 0.00e+00 0.0 1.7e+05 5.5e+01 2.4e+02  0  0  1  0  1   0  0  2  0  2    -0
DMPlexPartSelf         1 1.0 1.6945e-03 668.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       4 1.0 1.4970e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        4 1.0 6.1000e-03 1.3 0.00e+00 0.0 9.2e+03 3.6e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       4 1.0 2.4527e-03 1.4 0.00e+00 0.0 4.6e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          4 1.0 1.7969e-03 5.6 0.00e+00 0.0 4.8e+03 1.5e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          29 1.0 6.1424e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 7.1269e-02 1.0 0.00e+00 0.0 8.6e+03 1.1e+02 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        4 1.0 1.9102e-03 1.1 0.00e+00 0.0 2.7e+04 8.2e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       4 1.0 5.8558e-03 1.0 0.00e+00 0.0 8.5e+04 5.2e+01 1.5e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistOvrlp        3 1.0 1.5811e-02 1.0 0.00e+00 0.0 2.1e+05 5.3e+01 2.4e+02  0  0  1  0  1   0  0  3  0  2    -0
DMPlexDistField        7 1.0 3.5903e-03 1.4 0.00e+00 0.0 3.8e+04 4.5e+01 2.0e+01  0  0  0  0  0   0  0  1  0  0    -0
DMPlexDistData         2 1.0 3.4357e-04 1.2 0.00e+00 0.0 1.3e+04 2.3e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify        41 1.0 5.0080e-03 4.7 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      41 1.0 1.7833e-04 4.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          2 1.0 1.2683e-04 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          2 1.0 3.3548e-03 1.8 0.00e+00 0.0 1.1e+04 2.3e+01 1.9e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          2 1.0 1.3091e-04 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          2 1.0 4.0763e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             2 1.0 3.3972e-04 2.0 0.00e+00 0.0 8.7e+03 2.1e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         2 1.0 7.8238e-05 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         2 1.0 7.4381e-04 1.9 0.00e+00 0.0 2.2e+03 2.9e+01 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMSwarmSetSizes        4 1.0 3.9962e-05 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             75 1.0 4.0659e+02 1.0 5.66e+11 1.3 2.6e+07 4.6e+04 1.6e+04 85 100 98 100 95 Multiple stages 248863
SNESSetUp              1 1.0 4.4918e-05 6.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     300 1.0 2.3449e+01 1.1 1.61e+11 1.3 7.6e+05 1.1e+05 0.0e+00  5 28  3  7  0   7 33 10 11  0 1201141
SNESJacobianEval     225 1.0 1.1908e+02 1.0 2.52e+11 1.3 5.0e+05 7.4e+05 9.0e+02 25 44  2 31  5  38 53  7 46  7 371849
SNESLineSearch       225 1.0 1.5498e+01 1.0 1.25e+11 1.3 7.5e+05 1.1e+05 9.0e+02  3 22  3  7  5   5 26 10 11  7 1414433
DualSpaceSetUp         8 1.0 9.8380e-03 2.2 1.08e+02 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     2
FESetUp                8 1.0 1.7598e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 4.7838e+02 1.0 5.66e+11 1.3 2.7e+07 4.5e+04 1.7e+04 99 100 100 100 100 Multiple stages 211533
firedrake.__init__       1 1.0 2.0508e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  4  0  0  0  0   6  0  0  0  0    -0
CreateMesh             3 1.0 4.5682e+00 29.9 0.00e+00 0.0 4.2e+05 5.5e+01 4.4e+02  1  0  2  0  3   1  0  6  0  3    -0
firedrake.mesh._from_gmsh       1 1.0 4.4313e+00 244.7 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       3 1.0 1.3915e-03 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       3 1.0 6.3150e-06 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        7 1.0 6.6608e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          3 1.0 1.0504e-03 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      36 1.0 4.1527e-02 1.2 0.00e+00 0.0 1.8e+04 8.3e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      44 1.0 2.7118e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      40 1.0 3.7979e-02 1.2 0.00e+00 0.0 1.8e+04 8.3e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      39 1.0 3.3812e-02 1.2 0.00e+00 0.0 1.8e+04 8.3e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      39 1.0 3.3618e-02 1.2 0.00e+00 0.0 1.8e+04 8.3e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      78 1.0 1.4610e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       6 1.0 4.9478e-03 1.1 0.00e+00 0.0 8.8e+03 6.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__      12 1.0 7.3610e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      24 1.0 2.3409e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      76 1.0 5.7342e-02 6.9 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          3 1.0 2.5882e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       3 1.0 2.2344e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       8 1.0 6.7910e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       5 1.0 1.2439e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       3 1.0 2.5817e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     662 1.0 8.4057e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      2424 1.0 1.1880e+02 1.2 4.12e+11 1.3 7.0e+05 1.1e+05 3.8e+01 22 72  3  6  0  34 86 10 10  0 609648
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       6 1.0 2.5399e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    4848 1.0 2.9052e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  6  0  0  0  0   9  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      19 1.0 1.0870e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
GlobalKernel: generate loopy      19 0.0 1.5237e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      19 0.0 8.6873e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      21 1.0 2.1907e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  4  0  0  0  0   6  0  0  0  0    -0
pyop2.compilation.load      20 1.0 2.1906e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  4  0  0  0  0   6  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      20 1.0 1.2130e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
pyop2.compilation.make_so      20 1.0 1.1968e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
ParLoopRednBegin    2424 1.0 7.3962e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      2424 1.0 6.0036e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       3 1.0 9.7588e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong       4 1.0 8.0691e+00 1.0 7.78e+06 1.1 2.2e+04 1.0e+04 1.3e+01  2  0  0  0  0   3  0  0  0  0   181
firedrake.interpolation.interpolate      21 1.0 5.6336e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      15 1.0 1.5984e+01 1.0 4.81e+07 1.1 7.4e+04 1.5e+04 1.8e+02  3  0  0  0  1   5  0  1  0  1   566
firedrake.formmanipulation.split_form      16 1.0 5.1631e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      16 1.0 2.6176e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      17 1.0 3.0330e-01 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       8 1.1 2.4821e-01 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     621 1.0 4.3723e+00 14.5 0.00e+00 0.0 7.1e+05 1.1e+05 4.0e+00  1  0  3  6  0   1  0 10 10  0    -0
Parloop_Cells_wrap_expression_kernel      34 1.0 7.6267e+00 1.1 4.81e+07 1.1 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0  1186
firedrake.halo.Halo.global_to_local_end     621 1.0 1.2131e+01 227.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       3 1.0 9.8924e+00 48.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
Parloop_set_#x146be0577190_wrap_pyop2_kernel_prolong       4 0.0 7.8640e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146be0549110_wrap_pyop2_kernel_prolong       4 0.0 2.2886e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 4.2027e+00 1.0 3.89e+07 1.1 1.9e+04 5.0e+04 1.1e+01  1  0  0  0  0   1  0  0  0  0  1742
firedrake.function.Function.assign     314 1.0 9.5040e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     313 1.0 8.7971e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.9290e-04 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate     154 1.0 1.4842e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 3.6888e-05 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.3760e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.9320e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.1352e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 5.1366e+00 1.0 0.00e+00 0.0 7.3e+03 4.3e+05 2.3e+01  1  0  0  0  0   2  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 6.5188e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.5515e-04 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.1818e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.1817e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
CreateSparsity         4 1.0 2.1287e+00 1.1 0.00e+00 0.0 1.7e+04 8.8e+04 4.6e+01  0  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         4 1.0 3.1107e-01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      75 1.0 4.0675e+02 1.0 5.66e+11 1.3 2.6e+07 4.6e+04 1.6e+04 85 100 98 100 96 Multiple stages 248761
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 3.3935e-01 1344.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 1.0494e-05 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 3.3930e-01 1641.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 3.3927e-01 1907.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     600 1.0 5.3513e+00 1.3 3.96e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  7  0  0  0   1  9  0  0  0 1390201
Parloop_Cells_wrap_form0_exterior_facet_top_integral     600 1.0 1.0643e+00 1.0 5.11e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   902
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral     600 1.0 1.4313e+00 1.0 4.72e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  8745
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     600 1.0 3.7939e+00 1.1 3.77e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  7  0  0  0   1  8  0  0  0 1870130
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     600 1.0 8.1312e+00 1.4 8.35e+10 1.6 0.0e+00 0.0e+00 0.0e+00  1 13  0  0  0   2 16  0  0  0 1674112
firedrake.halo.Halo.local_to_global_begin     300 1.0 8.4307e-02 8.8 0.00e+00 0.0 3.3e+05 1.1e+05 0.0e+00  0  0  1  3  0   0  0  5  5  0    -0
firedrake.halo.Halo.local_to_global_end     300 1.0 2.9503e+00 59.9 3.94e+07 6.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1585
Parloop_Cells_wrap_form00_cell_integral     450 1.0 1.8872e+01 1.6 5.52e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3 10  0  0  0   5 12  0  0  0 549909
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     450 1.0 1.8334e+00 1.4 3.61e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  5214
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     450 1.0 2.1718e+01 1.2 7.28e+10 1.1 0.0e+00 0.0e+00 0.0e+00  4 14  0  0  0   6 16  0  0  0 629794
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     450 1.0 5.0165e+01 1.6 1.24e+11 1.6 0.0e+00 0.0e+00 0.0e+00  8 20  0  0  0  12 24  0  0  0 402501
firedrake.dmhooks.get_function_space       2 1.0 2.4218e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       3 1.0 9.9490e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.VertexOnlyMesh       2 1.0 7.5932e+00 1.0 0.00e+00 0.0 3.1e+04 6.8e+01 2.2e+01  2  0  0  0  0   2  0  0  0  0    -0
firedrake.mesh._pic_swarm_in_mesh       2 1.0 7.5761e+00 1.0 0.00e+00 0.0 2.2e+04 5.5e+01 1.2e+01  2  0  0  0  0   2  0  0  0  0    -0
firedrake.mesh._parent_mesh_embedding       2 1.0 5.9703e+00 1.0 0.00e+00 0.0 1.3e+04 2.3e+01 8.0e+00  1  0  0  0  0   2  0  0  0  0    -0
firedrake.mesh.MeshGeometry.locate_cells_ref_coords_and_dists       2 1.0 5.7091e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  1  0  0  0  0   2  0  0  0  0    -0
firedrake.mesh.MeshGeometry._c_locator       2 1.0 5.7005e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
firedrake.pointquery_utils.src_locate_cell       2 1.0 5.0886e+00 17.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.compile_coordinate_element       2 1.0 5.0737e+00 33.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.make_wrapper       2 1.0 4.0058e+00 308.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.parloop.generate_single_cell_wrapper       2 1.0 4.0056e+00 311.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
c_locator_run          2 1.0 1.8784e-01 28.2 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._ctypes       2 1.0 1.8479e-01 50.8 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._constant_ctypes       2 1.0 5.0620e-04 3.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.rtree       2 1.0 1.9197e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.bounding_box_coords       2 1.0 2.8920e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
rtree_build            2 1.0 1.5883e-03 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._dmswarm_create       4 1.0 1.5832e-02 8.3 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._swarm_original_ordering_preserve       2 1.0 1.6106e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.VertexOnlyMeshTopology.__init__       4 1.0 1.8908e-02 2.0 0.00e+00 0.0 8.9e+03 1.0e+02 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_vom_from_vom_topology       4 1.0 4.2299e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.action       2 1.0 4.8041e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0      225 1.0 5.0979e-01 1.4 7.79e+07 1.2 2.9e+06 2.3e+02 5.4e+03  0  0 11  0 31   0  0 40  0 42 28395
MGSetup Level 1      225 1.0 1.1988e+00 1.1 3.52e+08 1.2 1.1e+04 1.1e+05 1.5e+02  0  0  0  0  1   0  0  0  0  1 55109
firedrake.constant.Constant.assign      75 1.0 3.0288e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b9de1465d0_wrap_pyop2_kernel_prolong       4 0.0 7.8546e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b9de145490_wrap_pyop2_kernel_prolong       4 0.0 2.4785e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1545858e78d0_wrap_pyop2_kernel_prolong       4 0.0 7.8451e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1545857b2110_wrap_pyop2_kernel_prolong       4 0.0 2.8993e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1530fe94f650_wrap_pyop2_kernel_prolong       4 0.0 7.8553e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1530fe91bbd0_wrap_pyop2_kernel_prolong       4 0.0 2.7871e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1466f83e7ed0_wrap_pyop2_kernel_prolong       4 0.0 7.8628e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1466f83e6450_wrap_pyop2_kernel_prolong       4 0.0 2.4107e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e27fd7850_wrap_pyop2_kernel_prolong       4 0.0 7.8540e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e27e67090_wrap_pyop2_kernel_prolong       4 0.0 3.1512e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b9cb543690_wrap_pyop2_kernel_prolong       4 0.0 7.8484e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b9cb541b90_wrap_pyop2_kernel_prolong       4 0.0 2.7090e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522b0da3bd0_wrap_pyop2_kernel_prolong       4 0.0 7.8591e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522b1037410_wrap_pyop2_kernel_prolong       4 0.0 3.1276e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a448b29a50_wrap_pyop2_kernel_prolong       4 0.0 7.8502e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a44884b550_wrap_pyop2_kernel_prolong       4 0.0 2.4697e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155398633ed0_wrap_pyop2_kernel_prolong       4 0.0 7.8569e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155398641090_wrap_pyop2_kernel_prolong       4 0.0 2.7214e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef17f42f90_wrap_pyop2_kernel_prolong       4 0.0 7.8682e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef1c204850_wrap_pyop2_kernel_prolong       4 0.0 3.8203e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e66323c2d0_wrap_pyop2_kernel_prolong       4 0.0 7.8667e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5a88d3d50_wrap_pyop2_kernel_prolong       4 0.0 3.7608e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150750b9d110_wrap_pyop2_kernel_prolong       4 0.0 7.8531e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150750a5b5d0_wrap_pyop2_kernel_prolong       4 0.0 4.1261e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e590f47fd0_wrap_pyop2_kernel_prolong       4 0.0 7.8451e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e590f754d0_wrap_pyop2_kernel_prolong       4 0.0 2.5407e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14876ce5aed0_wrap_pyop2_kernel_prolong       4 0.0 7.8465e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14876cef7690_wrap_pyop2_kernel_prolong       4 0.0 2.7640e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b0645bf50_wrap_pyop2_kernel_prolong       4 0.0 7.8554e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b0632e210_wrap_pyop2_kernel_prolong       4 0.0 2.4106e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c0fb78b690_wrap_pyop2_kernel_prolong       4 0.0 7.8608e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c0fb788550_wrap_pyop2_kernel_prolong       4 0.0 3.2672e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a51f5b0e90_wrap_pyop2_kernel_prolong       4 0.0 7.8583e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a51f5b3590_wrap_pyop2_kernel_prolong       4 0.0 3.5926e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b23a829cd0_wrap_pyop2_kernel_prolong       4 0.0 7.8584e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b23a829590_wrap_pyop2_kernel_prolong       4 0.0 3.6125e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14603a3c3d90_wrap_pyop2_kernel_prolong       4 0.0 7.8531e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14603a62d250_wrap_pyop2_kernel_prolong       4 0.0 3.0499e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1454bc128c90_wrap_pyop2_kernel_prolong       4 0.0 7.8573e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1454bc129ed0_wrap_pyop2_kernel_prolong       4 0.0 3.7407e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c841521b90_wrap_pyop2_kernel_prolong       4 0.0 7.8495e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c83ee86f90_wrap_pyop2_kernel_prolong       4 0.0 3.7644e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1551ac6dfe10_wrap_pyop2_kernel_prolong       4 0.0 7.8599e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1551ac6dc910_wrap_pyop2_kernel_prolong       4 0.0 2.7363e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154fbef0e190_wrap_pyop2_kernel_prolong       4 0.0 7.8661e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154fbef0db50_wrap_pyop2_kernel_prolong       4 0.0 3.5321e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151aadafe150_wrap_pyop2_kernel_prolong       4 0.0 7.8655e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151aadaff090_wrap_pyop2_kernel_prolong       4 0.0 3.6461e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497e2bedf50_wrap_pyop2_kernel_prolong       4 0.0 7.8600e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497e2bed6d0_wrap_pyop2_kernel_prolong       4 0.0 3.5796e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ae64238c90_wrap_pyop2_kernel_prolong       4 0.0 7.8581e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ae64253050_wrap_pyop2_kernel_prolong       4 0.0 1.9902e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f74ed54e10_wrap_pyop2_kernel_prolong       4 0.0 7.8629e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f74ed85d90_wrap_pyop2_kernel_prolong       4 0.0 2.8700e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14afd6db0210_wrap_pyop2_kernel_prolong       4 0.0 7.8566e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14afd6e09c90_wrap_pyop2_kernel_prolong       4 0.0 3.6815e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153a6199bfd0_wrap_pyop2_kernel_prolong       4 0.0 7.8686e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153a61b0d6d0_wrap_pyop2_kernel_prolong       4 0.0 3.8673e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151579e83310_wrap_pyop2_kernel_prolong       4 0.0 7.8666e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151579e801d0_wrap_pyop2_kernel_prolong       4 0.0 3.3122e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151c03ee2450_wrap_pyop2_kernel_prolong       4 0.0 7.8729e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151c03ebcf50_wrap_pyop2_kernel_prolong       4 0.0 4.4686e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1515955168d0_wrap_pyop2_kernel_prolong       4 0.0 7.8710e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151595515f50_wrap_pyop2_kernel_prolong       4 0.0 3.1581e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1509c158e110_wrap_pyop2_kernel_prolong       4 0.0 7.8515e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1509c158e810_wrap_pyop2_kernel_prolong       4 0.0 2.8904e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f782e7890_wrap_pyop2_kernel_prolong       4 0.0 7.8461e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f782e4f50_wrap_pyop2_kernel_prolong       4 0.0 2.5421e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1475faaaf250_wrap_pyop2_kernel_prolong       4 0.0 7.8432e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1475faaadc90_wrap_pyop2_kernel_prolong       4 0.0 2.8543e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fdb2b1a390_wrap_pyop2_kernel_prolong       4 0.0 7.8446e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fdb2b19810_wrap_pyop2_kernel_prolong       4 0.0 2.8598e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146cef056cd0_wrap_pyop2_kernel_prolong       4 0.0 7.8570e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146cef054e90_wrap_pyop2_kernel_prolong       4 0.0 4.6614e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456bacb7b10_wrap_pyop2_kernel_prolong       4 0.0 7.8565e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456ba0cc1d0_wrap_pyop2_kernel_prolong       4 0.0 4.4359e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ebcd5742d0_wrap_pyop2_kernel_prolong       4 0.0 7.8457e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ebcd575f10_wrap_pyop2_kernel_prolong       4 0.0 3.1065e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1532aa3d2cd0_wrap_pyop2_kernel_prolong       4 0.0 7.8498e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1532aa3cda90_wrap_pyop2_kernel_prolong       4 0.0 2.3810e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d5ab2c6d0_wrap_pyop2_kernel_prolong       4 0.0 7.8614e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d5a8bdc10_wrap_pyop2_kernel_prolong       4 0.0 2.8680e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a0ce29ac90_wrap_pyop2_kernel_prolong       4 0.0 7.8682e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a0ce413410_wrap_pyop2_kernel_prolong       4 0.0 3.9414e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b89726550_wrap_pyop2_kernel_prolong       4 0.0 7.8574e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b89725c50_wrap_pyop2_kernel_prolong       4 0.0 2.5293e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146779039250_wrap_pyop2_kernel_prolong       4 0.0 7.8494e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146779062110_wrap_pyop2_kernel_prolong       4 0.0 3.7830e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146cdd532310_wrap_pyop2_kernel_prolong       4 0.0 7.8605e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146cdcbfc210_wrap_pyop2_kernel_prolong       4 0.0 3.5721e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c68c56d690_wrap_pyop2_kernel_prolong       4 0.0 7.8503e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c68c2fdad0_wrap_pyop2_kernel_prolong       4 0.0 3.7118e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e57221850_wrap_pyop2_kernel_prolong       4 0.0 7.8621e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e571934d0_wrap_pyop2_kernel_prolong       4 0.0 4.3012e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c998147590_wrap_pyop2_kernel_prolong       4 0.0 7.8587e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c993b37750_wrap_pyop2_kernel_prolong       4 0.0 3.3692e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1554760f7850_wrap_pyop2_kernel_prolong       4 0.0 7.8448e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1554760f5710_wrap_pyop2_kernel_prolong       4 0.0 2.9187e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146117b537d0_wrap_pyop2_kernel_prolong       4 0.0 7.8489e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146117fa1ed0_wrap_pyop2_kernel_prolong       4 0.0 2.6291e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15442e7ccc10_wrap_pyop2_kernel_prolong       4 0.0 7.8583e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15442e7c5e90_wrap_pyop2_kernel_prolong       4 0.0 4.0643e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c808f74950_wrap_pyop2_kernel_prolong       4 0.0 7.8447e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c808f76250_wrap_pyop2_kernel_prolong       4 0.0 2.1511e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e0b2d6dcd0_wrap_pyop2_kernel_prolong       4 0.0 7.8643e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e0b2d6d490_wrap_pyop2_kernel_prolong       4 0.0 2.5015e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f9e59a590_wrap_pyop2_kernel_prolong       4 0.0 7.8651e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f9e589e10_wrap_pyop2_kernel_prolong       4 0.0 2.9051e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151f9c8de2d0_wrap_pyop2_kernel_prolong       4 0.0 7.8518e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151f9c8ddb90_wrap_pyop2_kernel_prolong       4 0.0 2.6883e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf34263c90_wrap_pyop2_kernel_prolong       4 0.0 7.8486e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf344b0690_wrap_pyop2_kernel_prolong       4 0.0 2.3275e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1499aae23d90_wrap_pyop2_kernel_prolong       4 0.0 7.8618e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1499aadc3490_wrap_pyop2_kernel_prolong       4 0.0 3.2463e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dac6e7f550_wrap_pyop2_kernel_prolong       4 0.0 7.8596e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dac6e7f050_wrap_pyop2_kernel_prolong       4 0.0 2.8824e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1457ae47e290_wrap_pyop2_kernel_prolong       4 0.0 7.8497e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1457ae4e9a50_wrap_pyop2_kernel_prolong       4 0.0 2.4744e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15216fa77bd0_wrap_pyop2_kernel_prolong       4 0.0 7.8534e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15216fa39f10_wrap_pyop2_kernel_prolong       4 0.0 3.5467e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146ae7440d50_wrap_pyop2_kernel_prolong       4 0.0 7.8742e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146aec8f9b10_wrap_pyop2_kernel_prolong       4 0.0 4.1948e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1521eb642390_wrap_pyop2_kernel_prolong       4 0.0 7.8653e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1521eb67de50_wrap_pyop2_kernel_prolong       4 0.0 2.4590e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150d9495e7d0_wrap_pyop2_kernel_prolong       4 0.0 7.8726e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150d9495df90_wrap_pyop2_kernel_prolong       4 0.0 4.4193e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c99621f510_wrap_pyop2_kernel_prolong       4 0.0 7.8764e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c995891d50_wrap_pyop2_kernel_prolong       4 0.0 4.4861e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f4a53f890_wrap_pyop2_kernel_prolong       4 0.0 7.8471e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f4a799210_wrap_pyop2_kernel_prolong       4 0.0 2.1630e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe3b93ac10_wrap_pyop2_kernel_prolong       4 0.0 7.8574e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe3b961710_wrap_pyop2_kernel_prolong       4 0.0 3.1696e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14afc42d9750_wrap_pyop2_kernel_prolong       4 0.0 7.8583e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14afc4297d90_wrap_pyop2_kernel_prolong       4 0.0 2.8149e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f52b1ece50_wrap_pyop2_kernel_prolong       4 0.0 7.8591e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f52b1ed210_wrap_pyop2_kernel_prolong       4 0.0 2.9029e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e73181ad0_wrap_pyop2_kernel_prolong       4 0.0 7.8629e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e731ed5d0_wrap_pyop2_kernel_prolong       4 0.0 2.7016e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e12fa5a9d0_wrap_pyop2_kernel_prolong       4 0.0 7.8682e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e12f157710_wrap_pyop2_kernel_prolong       4 0.0 4.0502e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c3a099a50_wrap_pyop2_kernel_prolong       4 0.0 7.8660e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c3a099350_wrap_pyop2_kernel_prolong       4 0.0 4.2269e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1533a2ffb110_wrap_pyop2_kernel_prolong       4 0.0 7.8720e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1533a2ff84d0_wrap_pyop2_kernel_prolong       4 0.0 4.1259e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14566aeb2890_wrap_pyop2_kernel_prolong       4 0.0 7.8757e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14566a509590_wrap_pyop2_kernel_prolong       4 0.0 3.3684e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a245dd5350_wrap_pyop2_kernel_prolong       4 0.0 7.8555e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a245dd4890_wrap_pyop2_kernel_prolong       4 0.0 3.3436e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e233283710_wrap_pyop2_kernel_prolong       4 0.0 7.8605e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e233129a50_wrap_pyop2_kernel_prolong       4 0.0 3.9643e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b1141bb590_wrap_pyop2_kernel_prolong       4 0.0 7.8732e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b1141b9c50_wrap_pyop2_kernel_prolong       4 0.0 4.5805e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14825dec7a90_wrap_pyop2_kernel_prolong       4 0.0 7.8704e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14825dec57d0_wrap_pyop2_kernel_prolong       4 0.0 5.0328e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dfd6f97790_wrap_pyop2_kernel_prolong       4 0.0 7.8461e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dfd5cb4dd0_wrap_pyop2_kernel_prolong       4 0.0 2.4910e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a37a7225d0_wrap_pyop2_kernel_prolong       4 0.0 7.8489e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a37a722790_wrap_pyop2_kernel_prolong       4 0.0 2.7809e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1550c7117d90_wrap_pyop2_kernel_prolong       4 0.0 7.8560e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1550c714dbd0_wrap_pyop2_kernel_prolong       4 0.0 3.2359e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149344872d90_wrap_pyop2_kernel_prolong       4 0.0 7.8593e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149344899ed0_wrap_pyop2_kernel_prolong       4 0.0 2.6023e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1535f70e0a10_wrap_pyop2_kernel_prolong       4 0.0 7.8635e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1535f70c0310_wrap_pyop2_kernel_prolong       4 0.0 2.4669e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f26d6da390_wrap_pyop2_kernel_prolong       4 0.0 7.8671e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f26d6d9950_wrap_pyop2_kernel_prolong       4 0.0 4.2504e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1546643d0090_wrap_pyop2_kernel_prolong       4 0.0 7.8444e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1546643d0350_wrap_pyop2_kernel_prolong       4 0.0 2.3512e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1495aa36a5d0_wrap_pyop2_kernel_prolong       4 0.0 7.8554e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1495aa3719d0_wrap_pyop2_kernel_prolong       4 0.0 3.6827e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14efc6846590_wrap_pyop2_kernel_prolong       4 0.0 7.8704e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14efc6846a50_wrap_pyop2_kernel_prolong       4 0.0 3.5194e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b5da5b9a90_wrap_pyop2_kernel_prolong       4 0.0 7.8775e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b5da5ba110_wrap_pyop2_kernel_prolong       4 0.0 4.0715e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f64385fd10_wrap_pyop2_kernel_prolong       4 0.0 7.8710e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f6435f9b50_wrap_pyop2_kernel_prolong       4 0.0 4.0413e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519449d5110_wrap_pyop2_kernel_prolong       4 0.0 7.8696e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519449c9490_wrap_pyop2_kernel_prolong       4 0.0 3.6122e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d76ce77f10_wrap_pyop2_kernel_prolong       4 0.0 7.8601e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d76ce77890_wrap_pyop2_kernel_prolong       4 0.0 3.9409e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1529c746fc50_wrap_pyop2_kernel_prolong       4 0.0 7.8599e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1529c7450c10_wrap_pyop2_kernel_prolong       4 0.0 3.1944e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15466235da50_wrap_pyop2_kernel_prolong       4 0.0 7.8461e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15466235d3d0_wrap_pyop2_kernel_prolong       4 0.0 2.9398e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152cbe91a050_wrap_pyop2_kernel_prolong       4 0.0 7.8510e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152cbe9194d0_wrap_pyop2_kernel_prolong       4 0.0 3.7484e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d8638458d0_wrap_pyop2_kernel_prolong       4 0.0 7.8668e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d863845210_wrap_pyop2_kernel_prolong       4 0.0 4.4848e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150b5827b850_wrap_pyop2_kernel_prolong       4 0.0 7.8754e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150b58148490_wrap_pyop2_kernel_prolong       4 0.0 3.8111e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ba59b85ad0_wrap_pyop2_kernel_prolong       4 0.0 7.8462e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ba59b85410_wrap_pyop2_kernel_prolong       4 0.0 2.5897e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e36a1ac10_wrap_pyop2_kernel_prolong       4 0.0 7.8627e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e360f7b50_wrap_pyop2_kernel_prolong       4 0.0 3.5348e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1475db6f61d0_wrap_pyop2_kernel_prolong       4 0.0 7.8520e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1475db6f58d0_wrap_pyop2_kernel_prolong       4 0.0 4.5465e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14804b757f50_wrap_pyop2_kernel_prolong       4 0.0 7.8466e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14804b5e53d0_wrap_pyop2_kernel_prolong       4 0.0 3.5976e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151bea906410_wrap_pyop2_kernel_prolong       4 0.0 7.8672e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151bea906a50_wrap_pyop2_kernel_prolong       4 0.0 3.2232e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15472423f490_wrap_pyop2_kernel_prolong       4 0.0 7.8531e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15471ff71a10_wrap_pyop2_kernel_prolong       4 0.0 2.8595e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c6f5ab990_wrap_pyop2_kernel_prolong       4 0.0 7.8506e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c6f5a8390_wrap_pyop2_kernel_prolong       4 0.0 3.8185e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f79a45890_wrap_pyop2_kernel_prolong       4 0.0 7.8505e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f79a61790_wrap_pyop2_kernel_prolong       4 0.0 4.2447e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c4adf5b90_wrap_pyop2_kernel_prolong       4 0.0 8.2728e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c4adf5910_wrap_pyop2_kernel_prolong       4 0.0 2.0562e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498bfd51350_wrap_pyop2_kernel_prolong       4 0.0 8.2738e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498bfd53ad0_wrap_pyop2_kernel_prolong       4 0.0 2.5409e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15038f2db7d0_wrap_pyop2_kernel_prolong       4 0.0 8.2762e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15038f066ad0_wrap_pyop2_kernel_prolong       4 0.0 3.8087e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15339d9772d0_wrap_pyop2_kernel_prolong       4 0.0 8.2735e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15339d969550_wrap_pyop2_kernel_prolong       4 0.0 3.2410e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bce37b4c90_wrap_pyop2_kernel_prolong       4 0.0 8.2705e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bce3764e50_wrap_pyop2_kernel_prolong       4 0.0 2.1724e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1542cbea5dd0_wrap_pyop2_kernel_prolong       4 0.0 8.2803e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1542cbea4090_wrap_pyop2_kernel_prolong       4 0.0 4.2930e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ea5a43750_wrap_pyop2_kernel_prolong       4 0.0 8.2706e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ea5a41350_wrap_pyop2_kernel_prolong       4 0.0 2.5554e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15442ced9710_wrap_pyop2_kernel_prolong       4 0.0 8.2720e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15442ced9b50_wrap_pyop2_kernel_prolong       4 0.0 3.0103e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa65540790_wrap_pyop2_kernel_prolong       4 0.0 8.2753e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa65546190_wrap_pyop2_kernel_prolong       4 0.0 2.9583e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d8e1bfa050_wrap_pyop2_kernel_prolong       4 0.0 8.2734e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d8e1bf8590_wrap_pyop2_kernel_prolong       4 0.0 2.7299e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14735b2de810_wrap_pyop2_kernel_prolong       4 0.0 8.2781e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14735b2dc510_wrap_pyop2_kernel_prolong       4 0.0 3.3136e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148006dee910_wrap_pyop2_kernel_prolong       4 0.0 8.2849e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148006dee290_wrap_pyop2_kernel_prolong       4 0.0 4.7788e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154fd2d46d10_wrap_pyop2_kernel_prolong       4 0.0 8.2807e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154fd2ddbd10_wrap_pyop2_kernel_prolong       4 0.0 3.6515e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151d071594d0_wrap_pyop2_kernel_prolong       4 0.0 8.2646e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151d0738e590_wrap_pyop2_kernel_prolong       4 0.0 2.2112e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148948cfba50_wrap_pyop2_kernel_prolong       4 0.0 8.2674e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148948cf93d0_wrap_pyop2_kernel_prolong       4 0.0 2.3680e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb4a193910_wrap_pyop2_kernel_prolong       4 0.0 8.2816e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb4a1907d0_wrap_pyop2_kernel_prolong       4 0.0 4.6448e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e85feccbd0_wrap_pyop2_kernel_prolong       4 0.0 8.2637e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e85f5b8610_wrap_pyop2_kernel_prolong       4 0.0 2.3306e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c93ffc28d0_wrap_pyop2_kernel_prolong       4 0.0 8.2740e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c93ffebbd0_wrap_pyop2_kernel_prolong       4 0.0 3.5414e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d6a263abd0_wrap_pyop2_kernel_prolong       4 0.0 8.2723e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d69bf6de90_wrap_pyop2_kernel_prolong       4 0.0 3.9270e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f294d67e10_wrap_pyop2_kernel_prolong       4 0.0 8.2758e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f294d96350_wrap_pyop2_kernel_prolong       4 0.0 3.0065e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f1682e4d0_wrap_pyop2_kernel_prolong       4 0.0 8.2794e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f1682c610_wrap_pyop2_kernel_prolong       4 0.0 4.3623e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1510fa5f3ad0_wrap_pyop2_kernel_prolong       4 0.0 8.2841e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1510fa5f03d0_wrap_pyop2_kernel_prolong       4 0.0 4.7621e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147fa7cf5590_wrap_pyop2_kernel_prolong       4 0.0 8.2737e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147fa73b1950_wrap_pyop2_kernel_prolong       4 0.0 3.3061e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d9e7d46790_wrap_pyop2_kernel_prolong       4 0.0 8.2720e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d9e7f93310_wrap_pyop2_kernel_prolong       4 0.0 3.7854e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a85c75e2d0_wrap_pyop2_kernel_prolong       4 0.0 8.2693e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a857e7a010_wrap_pyop2_kernel_prolong       4 0.0 3.6190e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456a7279e50_wrap_pyop2_kernel_prolong       4 0.0 8.2758e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456a727b790_wrap_pyop2_kernel_prolong       4 0.0 4.1051e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1515a613c1d0_wrap_pyop2_kernel_prolong       4 0.0 8.2665e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1515a60ff290_wrap_pyop2_kernel_prolong       4 0.0 2.3224e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151816eddc50_wrap_pyop2_kernel_prolong       4 0.0 8.2642e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151816ede350_wrap_pyop2_kernel_prolong       4 0.0 2.0027e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ade10f12d0_wrap_pyop2_kernel_prolong       4 0.0 8.2717e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ade0f35790_wrap_pyop2_kernel_prolong       4 0.0 2.5656e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d4ed5a6110_wrap_pyop2_kernel_prolong       4 0.0 8.2740e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d4ed7c7110_wrap_pyop2_kernel_prolong       4 0.0 2.5032e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d6a4e29050_wrap_pyop2_kernel_prolong       4 0.0 8.2760e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d6a4e29c90_wrap_pyop2_kernel_prolong       4 0.0 2.5816e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d920d9dd0_wrap_pyop2_kernel_prolong       4 0.0 8.2735e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d92109dd0_wrap_pyop2_kernel_prolong       4 0.0 3.8337e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c866d0bd0_wrap_pyop2_kernel_prolong       4 0.0 8.2769e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c85f53750_wrap_pyop2_kernel_prolong       4 0.0 3.3241e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b2bc6ddd0_wrap_pyop2_kernel_prolong       4 0.0 8.2667e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b2bc6d650_wrap_pyop2_kernel_prolong       4 0.0 2.0166e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d8cc2d8e10_wrap_pyop2_kernel_prolong       4 0.0 8.2734e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d8cc2db010_wrap_pyop2_kernel_prolong       4 0.0 3.3407e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee4aab6bd0_wrap_pyop2_kernel_prolong       4 0.0 8.2777e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee4aab5b10_wrap_pyop2_kernel_prolong       4 0.0 4.3656e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a5be933d0_wrap_pyop2_kernel_prolong       4 0.0 8.2819e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a5be91790_wrap_pyop2_kernel_prolong       4 0.0 4.9049e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ecfca5e790_wrap_pyop2_kernel_prolong       4 0.0 8.2770e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ecfca5dd10_wrap_pyop2_kernel_prolong       4 0.0 3.2173e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150c6110ff10_wrap_pyop2_kernel_prolong       4 0.0 8.2804e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150c6110c0d0_wrap_pyop2_kernel_prolong       4 0.0 4.4514e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d770495ed0_wrap_pyop2_kernel_prolong       4 0.0 8.2740e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d770495050_wrap_pyop2_kernel_prolong       4 0.0 3.5915e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c27bf80210_wrap_pyop2_kernel_prolong       4 0.0 8.2650e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c27ac29c50_wrap_pyop2_kernel_prolong       4 0.0 2.7152e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e92d72690_wrap_pyop2_kernel_prolong       4 0.0 8.2758e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e92d72290_wrap_pyop2_kernel_prolong       4 0.0 4.2108e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a30f2b5a10_wrap_pyop2_kernel_prolong       4 0.0 8.2824e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a30f2ac250_wrap_pyop2_kernel_prolong       4 0.0 4.8240e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150eded8ca90_wrap_pyop2_kernel_prolong       4 0.0 8.2721e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150ededb5250_wrap_pyop2_kernel_prolong       4 0.0 2.8982e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491cd2a4110_wrap_pyop2_kernel_prolong       4 0.0 8.2631e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491cc851510_wrap_pyop2_kernel_prolong       4 0.0 2.5755e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ca9958bbd0_wrap_pyop2_kernel_prolong       4 0.0 8.2625e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ca995c4c50_wrap_pyop2_kernel_prolong       4 0.0 2.6332e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151280402b90_wrap_pyop2_kernel_prolong       4 0.0 8.2725e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1512803ba050_wrap_pyop2_kernel_prolong       4 0.0 3.1107e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1516faea89d0_wrap_pyop2_kernel_prolong       4 0.0 8.2656e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1516fa50ba90_wrap_pyop2_kernel_prolong       4 0.0 2.7871e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cc245b2d50_wrap_pyop2_kernel_prolong       4 0.0 8.2772e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cc240bca90_wrap_pyop2_kernel_prolong       4 0.0 4.1976e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1507c2f52450_wrap_pyop2_kernel_prolong       4 0.0 8.2814e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1507c2f51b50_wrap_pyop2_kernel_prolong       4 0.0 4.4214e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1540e5271f50_wrap_pyop2_kernel_prolong       4 0.0 8.2736e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1540e52714d0_wrap_pyop2_kernel_prolong       4 0.0 4.1237e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147284100bd0_wrap_pyop2_kernel_prolong       4 0.0 8.2849e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1472842689d0_wrap_pyop2_kernel_prolong       4 0.0 4.6847e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f89650150_wrap_pyop2_kernel_prolong       4 0.0 8.2586e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f89683e90_wrap_pyop2_kernel_prolong       4 0.0 2.2977e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a39395dbd0_wrap_pyop2_kernel_prolong       4 0.0 8.2645e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a392fbda10_wrap_pyop2_kernel_prolong       4 0.0 1.9652e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d6f690be50_wrap_pyop2_kernel_prolong       4 0.0 8.2627e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d6f690ae10_wrap_pyop2_kernel_prolong       4 0.0 2.4417e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd735ffcd0_wrap_pyop2_kernel_prolong       4 0.0 8.2625e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd72d032d0_wrap_pyop2_kernel_prolong       4 0.0 3.0233e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145ed7a4a710_wrap_pyop2_kernel_prolong       4 0.0 8.2614e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145ed7a70f90_wrap_pyop2_kernel_prolong       4 0.0 2.7313e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a44a816910_wrap_pyop2_kernel_prolong       4 0.0 8.2693e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a449ec1050_wrap_pyop2_kernel_prolong       4 0.0 4.3629e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f5dc11b690_wrap_pyop2_kernel_prolong       4 0.0 8.2624e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f5dc14aa10_wrap_pyop2_kernel_prolong       4 0.0 3.9793e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a7e7b5a7d0_wrap_pyop2_kernel_prolong       4 0.0 8.2597e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a7e7b5af90_wrap_pyop2_kernel_prolong       4 0.0 3.4933e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1515cd697610_wrap_pyop2_kernel_prolong       4 0.0 8.2628e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1515cd694750_wrap_pyop2_kernel_prolong       4 0.0 4.2360e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153ffb6e5850_wrap_pyop2_kernel_prolong       4 0.0 8.2537e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153ffad51ed0_wrap_pyop2_kernel_prolong       4 0.0 2.7103e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1547707d5350_wrap_pyop2_kernel_prolong       4 0.0 8.2617e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154770592c50_wrap_pyop2_kernel_prolong       4 0.0 4.1959e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154db1bc0b90_wrap_pyop2_kernel_prolong       4 0.0 8.2692e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154db1bf2390_wrap_pyop2_kernel_prolong       4 0.0 4.6611e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eda10d7810_wrap_pyop2_kernel_prolong       4 0.0 8.2597e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eda1105510_wrap_pyop2_kernel_prolong       4 0.0 3.1163e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c960c0e990_wrap_pyop2_kernel_prolong       4 0.0 8.2652e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c9602eed10_wrap_pyop2_kernel_prolong       4 0.0 2.6541e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c7369ccd0_wrap_pyop2_kernel_prolong       4 0.0 8.2556e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c7369f8d0_wrap_pyop2_kernel_prolong       4 0.0 2.3123e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145960773a10_wrap_pyop2_kernel_prolong       4 0.0 8.2602e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14596064d650_wrap_pyop2_kernel_prolong       4 0.0 3.2993e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1531e6a1f0d0_wrap_pyop2_kernel_prolong       4 0.0 8.2659e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1531e6a1ca90_wrap_pyop2_kernel_prolong       4 0.0 3.2559e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e3298c4d0_wrap_pyop2_kernel_prolong       4 0.0 8.2634e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e32a0b810_wrap_pyop2_kernel_prolong       4 0.0 2.7594e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e231d9890_wrap_pyop2_kernel_prolong       4 0.0 8.2652e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e23200350_wrap_pyop2_kernel_prolong       4 0.0 4.1193e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c0bf36a490_wrap_pyop2_kernel_prolong       4 0.0 8.2679e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c0bf36a890_wrap_pyop2_kernel_prolong       4 0.0 3.1958e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14837bf52290_wrap_pyop2_kernel_prolong       4 0.0 8.2568e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14837bf53510_wrap_pyop2_kernel_prolong       4 0.0 2.6492e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15240b6f7bd0_wrap_pyop2_kernel_prolong       4 0.0 8.2592e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1523f10d40d0_wrap_pyop2_kernel_prolong       4 0.0 3.6922e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fafe687f10_wrap_pyop2_kernel_prolong       4 0.0 8.2638e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fafe68e150_wrap_pyop2_kernel_prolong       4 0.0 3.5119e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c4a80e3d0_wrap_pyop2_kernel_prolong       4 0.0 8.2643e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c4a744050_wrap_pyop2_kernel_prolong       4 0.0 3.5466e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e2648c0250_wrap_pyop2_kernel_prolong       4 0.0 8.2625e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e25fe89bd0_wrap_pyop2_kernel_prolong       4 0.0 3.9870e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ebbe0d6110_wrap_pyop2_kernel_prolong       4 0.0 8.2774e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ebbe0d5850_wrap_pyop2_kernel_prolong       4 0.0 5.1834e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15276ddb3f90_wrap_pyop2_kernel_prolong       4 0.0 8.2611e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15276ddb3d90_wrap_pyop2_kernel_prolong       4 0.0 1.9762e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151abcd76590_wrap_pyop2_kernel_prolong       4 0.0 8.2607e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151abd6fe790_wrap_pyop2_kernel_prolong       4 0.0 2.4599e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1518f3ed3650_wrap_pyop2_kernel_prolong       4 0.0 8.2636e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1518f35e9e90_wrap_pyop2_kernel_prolong       4 0.0 3.9616e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153badfd3e10_wrap_pyop2_kernel_prolong       4 0.0 8.2528e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153bade9df90_wrap_pyop2_kernel_prolong       4 0.0 2.1525e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15044cfdb950_wrap_pyop2_kernel_prolong       4 0.0 8.2675e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15044ce8c690_wrap_pyop2_kernel_prolong       4 0.0 4.0329e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1539de377450_wrap_pyop2_kernel_prolong       4 0.0 8.2747e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1539de3abf90_wrap_pyop2_kernel_prolong       4 0.0 4.2942e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f578be3d0_wrap_pyop2_kernel_prolong       4 0.0 8.2568e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f578bd910_wrap_pyop2_kernel_prolong       4 0.0 2.5030e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd9c2169d0_wrap_pyop2_kernel_prolong       4 0.0 8.2641e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd9c24dd50_wrap_pyop2_kernel_prolong       4 0.0 3.8415e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1511fb0bc6d0_wrap_pyop2_kernel_prolong       4 0.0 8.2650e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1511fb09a590_wrap_pyop2_kernel_prolong       4 0.0 4.3361e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493086b2890_wrap_pyop2_kernel_prolong       4 0.0 8.2635e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149303c87bd0_wrap_pyop2_kernel_prolong       4 0.0 4.2824e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1543df1d1750_wrap_pyop2_kernel_prolong       4 0.0 8.2618e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1543df1d1810_wrap_pyop2_kernel_prolong       4 0.0 3.7515e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1459329d2e10_wrap_pyop2_kernel_prolong       4 0.0 8.2562e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1459329c15d0_wrap_pyop2_kernel_prolong       4 0.0 3.2782e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e810f91e90_wrap_pyop2_kernel_prolong       4 0.0 8.2697e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e810f91410_wrap_pyop2_kernel_prolong       4 0.0 4.5291e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1457dbe6de50_wrap_pyop2_kernel_prolong       4 0.0 8.2618e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1457dbe6f750_wrap_pyop2_kernel_prolong       4 0.0 3.3556e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14933c7da150_wrap_pyop2_kernel_prolong       4 0.0 8.2667e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14933c7d9b10_wrap_pyop2_kernel_prolong       4 0.0 3.5684e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc45327f50_wrap_pyop2_kernel_prolong       4 0.0 8.2711e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc45325450_wrap_pyop2_kernel_prolong       4 0.0 4.4855e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd6048b790_wrap_pyop2_kernel_prolong       4 0.0 8.2649e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd6044c650_wrap_pyop2_kernel_prolong       4 0.0 3.5814e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dbe396dd50_wrap_pyop2_kernel_prolong       4 0.0 8.2701e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dbe396d210_wrap_pyop2_kernel_prolong       4 0.0 4.5159e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151678902d90_wrap_pyop2_kernel_prolong       4 0.0 8.2594e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151678903410_wrap_pyop2_kernel_prolong       4 0.0 3.1541e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b0c29f8110_wrap_pyop2_kernel_prolong       4 0.0 8.2662e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b0c29bd390_wrap_pyop2_kernel_prolong       4 0.0 2.9816e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15449b5d6bd0_wrap_pyop2_kernel_prolong       4 0.0 8.2691e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15449ace7e90_wrap_pyop2_kernel_prolong       4 0.0 3.8445e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f9187f8d0_wrap_pyop2_kernel_prolong       4 0.0 8.2702e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f91a8d310_wrap_pyop2_kernel_prolong       4 0.0 4.6647e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f51c99da10_wrap_pyop2_kernel_prolong       4 0.0 8.2656e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f517ff89d0_wrap_pyop2_kernel_prolong       4 0.0 4.0859e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d787896d0_wrap_pyop2_kernel_prolong       4 0.0 8.2624e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d7333b490_wrap_pyop2_kernel_prolong       4 0.0 3.7578e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154353382bd0_wrap_pyop2_kernel_prolong       4 0.0 8.2643e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1543533c8dd0_wrap_pyop2_kernel_prolong       4 0.0 4.3028e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f643c52110_wrap_pyop2_kernel_prolong       4 0.0 8.2702e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f64314b950_wrap_pyop2_kernel_prolong       4 0.0 5.0668e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided        225 1.0 1.4482e-02 3.3 0.00e+00 0.0 1.5e+05 4.0e+00 2.2e+02  0  0  1  0  1   0  0  1  0  5    -0
SFSetGraph           225 1.0 4.5939e-04 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              225 1.0 2.0273e-02 3.2 0.00e+00 0.0 2.9e+05 1.6e+01 2.2e+02  0  0  1  0  1   0  0  2  0  5    -0
SFPack            837876 1.1 1.2937e+00 4.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack          837876 1.1 4.8009e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy            11004 1.0 9.7566e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecSet             22005 1.0 3.5236e+00 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecAXPY             3144 1.0 1.8395e+00 1.5 1.45e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  2  0  0  0 148066
VecAYPX            22008 1.0 2.3285e+00 3.5 7.30e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 58972
VecAXPBYCZ          6288 1.0 2.5202e-03 2.3 7.55e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 562881
VecScatterBegin   837876 1.1 1.0153e+01 1.3 0.00e+00 0.0 1.9e+07 2.1e+04 0.0e+00  2  0 70 33  0   6  0 96 100  0    -0
VecScatterEnd     837876 1.1 1.7821e+01 7.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   7  0  0  0  0    -0
MatMult            15720 1.0 7.9729e+01 1.2 5.14e+10 1.2 1.8e+07 2.2e+04 0.0e+00 15 10 66 33  0  45 56 91 100  0 120938
MatMultAdd          4716 1.0 4.2777e+00 1.3 2.18e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  2  0  0  0 95707
MatMultTranspose    4716 1.0 3.2031e+00 2.3 2.18e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  2  0  0  0 127814
MatSolve          416580 1.1 5.6209e+01 1.3 2.54e+10 1.1 1.8e+06 4.0e+01 1.1e+03 10  5  7  0  7  28 28  9  0 26 84826
MatLUFactorNum     27840 1.1 8.6212e+00 1.2 7.84e+09 1.1 0.0e+00 0.0e+00 0.0e+00  2  1  0  0  0   5  9  0  0  0 171030
MatResidual         4716 1.0 4.2361e+01 1.3 2.61e+10 1.2 5.3e+06 3.7e+04 0.0e+00  8  5 20 17  0  23 29 27 50  0 115344
MatAssemblyBegin   27392 1.1 6.2439e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyEnd     27392 1.1 6.6903e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats     214 1.0 1.5342e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   8  0  0  0  0    -0
PCSetUp            28278 1.1 2.3970e+01 1.2 7.84e+09 1.1 0.0e+00 0.0e+00 0.0e+00  4  1  0  0  0  13  9  0  0  0 61513
PCSetUpOnBlocks     6288 1.0 1.4158e-02 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply             4716 1.0 9.4975e+01 1.2 3.33e+10 1.1 1.6e+07 1.3e+02 2.7e+03 18  6 60  0 16  52 37 82  1 63 65910
PCApplyOnBlocks   415008 1.1 5.5224e+01 1.4 3.32e+10 1.1 0.0e+00 0.0e+00 0.0e+00  9  6  0  0  0  27 36  0  0  0 113020
KSPSetUp           27617 1.1 3.4987e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve            4716 1.0 1.3278e+02 1.2 6.08e+10 1.2 1.8e+07 1.1e+04 4.3e+03 25 11 66 17 25  74 67 91 50 100 85971
MGSmooth Level 0    1572 1.0 2.4296e+01 2.1 1.79e+08 1.4 1.6e+07 1.3e+02 4.3e+03  3  0 60  0 25  10  0 82  1 100  1236
MGSmooth Level 1    3144 1.0 1.2028e+02 1.2 6.06e+10 1.2 1.8e+06 1.1e+05 0.0e+00 22 11  7 16  0  64 67  9 50  0 94656
MGResid Level 1     1572 1.0 4.1440e+01 1.4 2.60e+10 1.2 1.8e+06 1.1e+05 0.0e+00  7  5  7 16  0  22 29  9 50  0 117827
MGInterp Level 1    3144 1.0 7.2643e+00 1.5 4.35e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   4  5  0  0  0 112482
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   239            237
              Viewer     3              3
         PetscRandom    11             11
           Index Set  2851           2851
   IS L to G Mapping   323            317
             Section   493            493
   Star Forest Graph   571            569
              Vector  1845           1837
              Matrix   762            737
      Preconditioner   125            125
       Krylov Solver   134            134
     DMKSP interface     1              1
                SNES     1              1
              DMSNES     1              1
      SNESLineSearch     1              1
    Distributed Mesh   138            140
            DM Label   345            345
          Quadrature   144            144
      Mesh Transform     2              2
       Swarm Cell DM     4              4
    GraphPartitioner    41             41
     Discrete System   193            195
           Weak Form   193            195
        Linear Space    12             12
          Dual Space    52             52
            FE Space     8              8

--- Event Stage 1: MG Apply

           Index Set   450            450
   Star Forest Graph   229            224
              Vector   451            452
    Distributed Mesh     2              0
     Discrete System     2              0
           Weak Form     2              0
========================================================================================================================
Average time to get PetscTime(): 2.58e-08
Average time for MPI_Barrier(): 8.0458e-06
Average time for zero size MPI_Send(): 2.6789e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_mg_coarse_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_mg_levels_1_pc_linesmooth_sub_sub_pc_factor_mat_ordering_type natural # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murrumbidgee/vlumping_hmg/sweep.profile # (source: code)
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

