****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0069.gadi.nci.org.au with 104 processes, by sg8812 on Thu Aug 20 22:19:04 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           4.939e+02     1.000   4.939e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                6.074e+11     1.131   5.763e+11  5.993e+13
Flops/sec:            1.230e+09     1.131   1.167e+09  1.213e+11
MPI Msg Count:        1.497e+05     2.422   1.051e+05  1.094e+07
MPI Msg Len (bytes):  4.164e+09     2.272   3.096e+04  3.386e+11
MPI Reductions:       2.037e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 4.9388e+02 100.0%  5.9931e+13 100.0%  1.094e+07 100.0%  3.096e+04      100.0%  2.035e+04  99.9%

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

BuildTwoSided       1674 1.0 1.7284e+01 4.9 0.00e+00 0.0 2.2e+05 4.0e+00 1.7e+03  2  0  2  0  8   2  0  2  0  8    -0
BuildTwoSidedF      1368 1.0 1.6022e+01 4.6 0.00e+00 0.0 1.2e+05 6.6e+05 1.4e+03  2  0  1 24  7   2  0  1 24  7    -0
SFSetGraph           312 1.0 5.4216e-03 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              306 1.0 2.0857e+00 85.3 0.00e+00 0.0 3.2e+05 1.7e+02 3.1e+02  0  0  3  0  2   0  0  3  0  2    -0
SFBcastBegin         820 1.0 1.6800e-01 2.4 0.00e+00 0.0 4.1e+05 4.4e+04 0.0e+00  0  0  4  5  0   0  0  4  5  0    -0
SFBcastEnd           820 1.0 8.4734e+00 59.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        332 1.0 3.9078e-02 9.0 0.00e+00 0.0 1.7e+05 5.1e+04 0.0e+00  0  0  2  3  0   0  0  2  3  0    -0
SFReduceEnd          332 1.0 1.1581e+00 41.6 1.35e+07 2.3 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   951
SFFetchOpBegin         4 1.0 2.5953e-05 5.6 0.00e+00 0.0 1.6e+03 8.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           4 1.0 2.8030e-04 9.6 0.00e+00 0.0 1.6e+03 8.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          3 1.0 8.5106e-04 1.4 0.00e+00 0.0 9.2e+02 3.4e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         36 1.0 6.6501e-03 1.4 0.00e+00 0.0 4.0e+04 1.1e+02 4.2e+01  0  0  0  0  0   0  0  0  0  0    -0
SFSectionSF           37 1.0 3.5057e-03 2.5 0.00e+00 0.0 2.0e+04 5.3e+01 3.7e+01  0  0  0  0  0   0  0  0  0  0    -0
SFRemoteOff            1 1.0 4.3344e-05 1.9 0.00e+00 0.0 5.4e+02 2.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack             24580 1.0 1.2192e+00 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           24584 1.0 6.6394e-02 6.2 1.35e+07 2.3 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 16590
VecDot               226 1.0 3.7119e-01 4.5 9.28e+07 1.1 0.0e+00 0.0e+00 2.3e+02  0  0  0  0  1   0  0  0  0  1 25136
VecMDot             5928 1.0 1.5469e+01 2.6 7.80e+09 1.1 0.0e+00 0.0e+00 5.9e+03  2  1  0  0 29   2  1  0  0 29 50756
VecNorm             7133 1.0 4.8499e+00 3.9 1.98e+09 1.1 0.0e+00 0.0e+00 7.1e+03  1  0  0  0 35   1  0  0  0 35 41003
VecScale            6606 1.0 2.1598e-01 1.1 8.80e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 409986
VecCopy            11454 1.0 2.7118e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecSet             12344 1.0 9.5566e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              678 1.0 2.4502e-01 1.3 1.86e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 76286
VecAYPX            15700 1.0 3.7193e+00 1.7 1.94e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0 52514
VecAXPBYCZ          3140 1.0 2.6141e-03 2.3 1.07e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 413253
VecWAXPY             226 1.0 2.0052e-01 1.2 4.64e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 23265
VecMAXPY            6606 1.0 1.0326e+01 1.1 9.38e+09 1.1 0.0e+00 0.0e+00 0.0e+00  2  2  0  0  0   2  2  0  0  0 91380
VecScatterBegin    23424 1.0 1.3642e+00 1.9 0.00e+00 0.0 9.3e+06 2.3e+04 0.0e+00  0  0 85 63  0   0  0 85 63  0    -0
VecScatterEnd      23424 1.0 1.5509e+01 14.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecReduceArith       452 1.0 9.9293e-02 1.5 1.86e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 187936
VecReduceComm        226 1.0 1.1441e-01 3.8 0.00e+00 0.0 0.0e+00 0.0e+00 2.3e+02  0  0  0  0  1   0  0  0  0  1    -0
VecNormalize        4810 1.0 2.9592e+00 3.8 1.54e+09 1.1 0.0e+00 0.0e+00 4.8e+03  0  0  0  0 24   0  0  0  0 24 52186
MatMult            15574 1.0 1.4518e+02 1.1 1.05e+11 1.1 8.3e+06 2.5e+04 0.0e+00 28 18 76 62  0  28 18 76 62  0 72350
MatMultAdd          3140 1.0 3.9407e+00 1.2 1.94e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0 49508
MatMultTranspose    3140 1.0 3.2822e+00 1.7 1.94e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0 59441
MatSolve           15800 1.0 1.1738e+02 1.1 7.96e+10 1.1 1.6e+06 1.7e+02 1.1e+03 23 13 14  0  6  23 13 14  0  6 67921
MatLUFactorSym         1 1.0 6.4590e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum       678 1.0 1.8069e+01 1.1 2.89e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3  5  0  0  0   3  5  0  0  0 159104
MatILUFactorSym        2 1.0 5.9512e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatResidual         3140 1.0 3.4988e+01 1.2 2.32e+10 1.1 1.7e+06 2.7e+04 0.0e+00  6  4 15 14  0   6  4 15 14  0 66416
MatAssemblyBegin    2308 1.0 1.7661e+01 3.0 0.00e+00 0.0 1.2e+05 6.6e+05 1.4e+03  2  0  1 24  7   2  0  1 24  7    -0
MatAssemblyEnd      2308 1.0 4.8437e+00 14.1 1.12e+08 0.0 3.2e+03 4.6e+03 4.4e+01  1  0  0  0  0   1  0  0  0  0  1024
MatGetRowIJ            2 1.0 4.8860e-06 14.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         2 1.0 1.8954e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       678 1.0 3.7594e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
MatTranspose           5 1.0 6.0243e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          5 1.0 7.1881e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        905 1.0 2.0327e+00 1.1 3.35e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   0  1  0  0  0 164951
MatPtAPSymbolic        2 1.0 9.0304e-02 1.0 0.00e+00 0.0 3.2e+03 4.6e+04 1.4e+01  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       452 1.0 1.1885e+01 1.0 1.34e+10 1.1 2.4e+05 8.1e+04 4.6e+02  2  2  2  6  2   2  2  2  6  2 112662
MatGetLocalMat       454 1.0 8.6981e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        454 1.0 4.3964e-01 1.9 0.00e+00 0.0 2.4e+05 8.2e+04 0.0e+00  0  0  2  6  0   0  0  2  6  0    -0
MatSetPreallCOO       16 1.0 3.5088e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       16 1.0 2.9580e-05 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp              451 1.0 1.3964e+02 1.0 1.23e+11 1.1 2.6e+06 3.3e+04 1.0e+04 28 21 24 25 50  28 21 24 25 50 88203
PCSetUpOnBlocks     6280 1.0 3.7611e-02 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply             1570 1.0 2.2993e+02 1.0 1.78e+11 1.1 8.3e+06 1.8e+04 1.1e+04 46 30 76 44 54  46 30 76 44 54 77431
PCApplyOnBlocks    14230 1.0 1.1366e+02 1.1 7.96e+10 1.1 0.0e+00 0.0e+00 0.0e+00 22 13  0  0  0  22 13  0  0  0 70098
KSPSetUp             226 1.0 8.1041e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             226 1.0 2.6691e+02 1.0 2.08e+11 1.1 9.2e+06 2.1e+04 1.4e+04 54 35 84 58 70  54 35 84 58 70 78000
KSPGMRESOrthog      5928 1.0 2.3383e+01 1.6 1.56e+10 1.1 0.0e+00 0.0e+00 5.9e+03  4  3  0  0 29   4  3  0  0 29 67157
DMRefine               1 1.0 2.2367e-01 1.0 1.04e+03 1.0 3.2e+03 4.3e+01 3.0e+01  0  0  0  0  0   0  0  0  0  0     0
DMPlexCreateGmsh       1 1.0 5.8631e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 4.8008e+00 80.4 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Partition         3 1.0 6.6692e-02 1.0 0.00e+00 0.0 1.2e+04 9.8e+01 3.8e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         3 1.0 1.5885e-02 1.1 0.00e+00 0.0 4.6e+04 1.1e+02 1.8e+02  0  0  0  0  1   0  0  0  0  1    -0
DMPlexPartSelf         1 1.0 2.5559e-03 1145.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       3 1.0 6.7905e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        3 1.0 4.0300e-03 1.1 0.00e+00 0.0 2.4e+03 8.3e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       3 1.0 1.4207e-03 1.6 0.00e+00 0.0 1.2e+03 3.3e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          3 1.0 1.8905e-03 2.6 0.00e+00 0.0 1.3e+03 4.8e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          15 1.0 2.0403e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 7.7013e-02 1.0 0.00e+00 0.0 4.4e+03 6.1e+02 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        3 1.0 1.8828e-03 1.0 0.00e+00 0.0 7.1e+03 2.0e+02 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       3 1.0 7.0628e-03 1.0 0.00e+00 0.0 2.3e+04 1.1e+02 1.1e+02  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistOvrlp        2 1.0 7.3235e-03 1.0 0.00e+00 0.0 5.5e+04 8.0e+01 1.6e+02  0  0  1  0  1   0  0  1  0  1    -0
DMPlexDistField        5 1.0 2.7968e-03 1.1 0.00e+00 0.0 1.0e+04 7.3e+01 1.4e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         1 1.0 1.4226e-04 1.2 0.00e+00 0.0 2.7e+03 3.5e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify        23 1.0 3.6849e-02 33.0 0.00e+00 0.0 0.0e+00 0.0e+00 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      23 1.0 7.7392e-04 15.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          1 1.0 5.3270e-05 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          1 1.0 2.1947e-03 1.9 0.00e+00 0.0 1.6e+03 3.3e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          1 1.0 8.1605e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          1 1.0 2.2744e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             1 1.0 2.3287e-04 2.8 0.00e+00 0.0 1.6e+03 3.3e+01 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         1 1.0 5.9612e-05 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         1 1.0 5.0934e-04 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMSwarmSetSizes        2 1.0 3.1397e-05 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             75 1.0 4.3199e+02 1.0 6.07e+11 1.1 1.1e+07 3.1e+04 2.0e+04 87 100 99 100 97  87 100 99 100 97 138722
SNESSetUp              1 1.0 3.6060e-05 4.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     301 1.0 2.0644e+01 1.1 1.38e+11 1.2 3.6e+05 5.5e+04 0.0e+00  4 22  3  6  0   4 22  3  6  0 650540
SNESJacobianEval     226 1.0 8.9119e+01 1.0 2.17e+11 1.2 2.4e+05 3.6e+05 9.0e+02 18 35  2 25  4  18 35  2 25  4 237358
SNESLineSearch       226 1.0 1.3177e+01 1.0 1.08e+11 1.2 3.6e+05 5.5e+04 9.0e+02  3 17  3  6  4   3 17  3  6  4 794132
DualSpaceSetUp         4 1.0 3.3512e-03 1.1 5.40e+01 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     2
FESetUp                4 1.0 1.9438e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 4.9159e+02 1.0 6.07e+11 1.1 1.1e+07 3.1e+04 2.0e+04 100 100 100 100 100 100 100 100 100 100 121913
firedrake.__init__       1 1.0 1.1739e+01 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
CreateMesh             2 1.0 4.9653e+00 22.2 0.00e+00 0.0 1.1e+05 1.1e+02 3.2e+02  0  0  1  0  2   0  0  1  0  2    -0
firedrake.mesh._from_gmsh       1 1.0 4.8015e+00 80.4 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       2 1.0 9.5881e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       2 1.0 4.8450e-06 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        4 1.0 6.2393e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          2 1.0 8.2935e-04 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      23 1.0 7.2477e-02 1.0 0.00e+00 0.0 4.3e+03 1.2e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      28 1.0 1.6363e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      25 1.0 7.0447e-02 1.0 0.00e+00 0.0 4.3e+03 1.2e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      24 1.0 6.7815e-02 1.0 0.00e+00 0.0 4.3e+03 1.2e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      24 1.0 6.7686e-02 1.0 0.00e+00 0.0 4.3e+03 1.2e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      48 1.0 5.2217e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       4 1.0 4.5667e-03 1.1 0.00e+00 0.0 2.2e+03 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       8 1.0 9.3066e-04 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      14 1.0 1.4689e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      66 1.0 1.3340e-02 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          2 1.0 1.6884e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       2 1.0 1.8938e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       5 1.0 5.0233e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       4 1.0 9.8461e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       2 1.0 1.6834e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     648 1.0 9.0798e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      2427 1.0 1.0438e+02 1.1 3.55e+11 1.2 3.3e+05 5.4e+04 2.6e+01 20 58  3  5  0  20 58  3  5  0 331291
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       4 1.0 1.6481e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    4854 1.0 2.6376e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  5  0  0  0  0   5  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      19 1.0 1.0604e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
GlobalKernel: generate loopy      19 0.0 1.2649e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      19 0.0 8.8480e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      20 1.0 1.7373e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   3  0  0  0  0    -0
pyop2.compilation.load      20 1.0 1.7372e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   3  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      20 1.0 1.0210e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.make_so      20 1.0 1.0055e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
ParLoopRednBegin    2427 1.0 6.6787e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      2427 1.0 6.2319e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       2 1.0 6.7077e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong       2 1.0 5.6362e+00 1.0 5.54e+06 1.1 5.4e+03 8.0e+03 7.0e+00  1  0  0  0  0   1  0  0  0  0    99
firedrake.interpolation.interpolate      16 1.0 5.0030e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      13 1.0 9.9409e+00 1.0 4.15e+07 1.1 2.1e+04 1.2e+04 1.1e+02  2  0  0  0  1   2  0  0  0  1   420
firedrake.formmanipulation.split_form      14 1.0 6.2614e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      14 1.0 1.2576e-03 8.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      14 1.0 1.9880e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       8 1.0 1.2127e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     620 1.0 3.3674e+00 23.7 0.00e+00 0.0 3.4e+05 5.3e+04 3.0e+00  0  0  3  5  0   0  0  3  5  0    -0
Parloop_Cells_wrap_expression_kernel      28 1.0 6.9129e+00 1.0 4.15e+07 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0   604
firedrake.halo.Halo.global_to_local_end     620 1.0 7.0385e+00 120.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       2 1.0 2.6056e+00 17.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519720c5ad0_wrap_pyop2_kernel_prolong       4 0.0 7.4342e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 3.8003e+00 1.0 3.47e+07 1.1 8.1e+03 2.8e+04 1.1e+01  1  0  0  0  0   1  0  0  0  0   918
firedrake.function.Function.assign     314 1.0 7.8178e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     313 1.0 7.1972e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.5167e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate     154 1.0 1.0865e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 4.2749e-05 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.3853e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 2.3810e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.0822e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 4.8564e+00 1.0 0.00e+00 0.0 3.2e+03 2.2e+05 2.3e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 6.3575e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.3475e-04 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.0388e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.0388e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateSparsity         3 1.0 1.8073e+00 1.3 0.00e+00 0.0 4.9e+03 7.2e+04 3.2e+01  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         3 1.0 2.6655e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      75 1.0 4.3214e+02 1.0 6.07e+11 1.1 1.1e+07 3.1e+04 2.0e+04 87 100 99 100 98  87 100 99 100 98 138676
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 2.4637e-01 916.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 1.2113e-05 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 2.4632e-01 1120.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 2.4628e-01 1300.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     602 1.0 4.8180e+00 1.2 3.51e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   1  6  0  0  0 733148
Parloop_Cells_wrap_form0_exterior_facet_top_integral     602 1.0 9.7245e-01 1.0 9.13e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   944
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral     602 1.0 1.2037e+00 1.0 2.96e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  5118
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     602 1.0 3.5502e+00 1.1 3.36e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   1  6  0  0  0 952400
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     602 1.0 6.8996e+00 1.2 6.95e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1 11  0  0  0   1 11  0  0  0 943201
firedrake.halo.Halo.local_to_global_begin     301 1.0 4.7802e-02 4.7 0.00e+00 0.0 1.6e+05 5.5e+04 0.0e+00  0  0  1  3  0   0  0  1  3  0    -0
firedrake.halo.Halo.local_to_global_end     301 1.0 1.1590e+00 38.8 1.35e+07 2.3 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   950
Parloop_Cells_wrap_form00_cell_integral     452 1.0 1.6779e+01 1.4 4.92e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3  8  0  0  0   3  8  0  0  0 294950
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     452 1.0 1.4514e+00 1.3 2.26e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  3245
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     452 1.0 1.8925e+01 1.1 6.49e+10 1.1 0.0e+00 0.0e+00 0.0e+00  4 11  0  0  0   4 11  0  0  0 344807
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     452 1.0 4.0503e+01 1.3 1.03e+11 1.2 0.0e+00 0.0e+00 0.0e+00  7 16  0  0  0   7 16  0  0  0 238719
firedrake.dmhooks.get_function_space       1 1.0 9.7536e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       2 1.0 8.1372e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.VertexOnlyMesh       1 1.0 2.6559e+00 1.0 0.00e+00 0.0 7.0e+03 9.8e+01 1.1e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh._pic_swarm_in_mesh       1 1.0 2.6498e+00 1.0 0.00e+00 0.0 4.9e+03 8.0e+01 6.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh._parent_mesh_embedding       1 1.0 2.4821e+00 1.0 0.00e+00 0.0 2.7e+03 3.5e+01 4.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshGeometry.locate_cells_ref_coords_and_dists       1 1.0 1.9861e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry._c_locator       1 1.0 1.9806e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.pointquery_utils.src_locate_cell       1 1.0 1.5794e+00 8.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.pointquery_utils.compile_coordinate_element       1 1.0 1.5714e+00 14.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.pointquery_utils.make_wrapper       1 1.0 1.1971e+00 179.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.parloop.generate_single_cell_wrapper       1 1.0 1.1971e+00 181.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
c_locator_run          1 1.0 6.9102e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._ctypes       1 1.0 4.5399e-03 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._constant_ctypes       1 1.0 8.4719e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.rtree       1 1.0 1.5992e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.bounding_box_coords       1 1.0 1.2016e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
rtree_build            1 1.0 1.4218e-03 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._dmswarm_create       2 1.0 3.8612e-03 11.3 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._swarm_original_ordering_preserve       1 1.0 1.6612e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.VertexOnlyMeshTopology.__init__       2 1.0 9.4780e-03 1.6 0.00e+00 0.0 2.1e+03 1.4e+02 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_vom_from_vom_topology       2 1.0 2.6846e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.action       1 1.0 2.5177e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.assign      75 1.0 2.6023e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b8464f8c50_wrap_pyop2_kernel_prolong       4 0.0 7.4283e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e34f759c10_wrap_pyop2_kernel_prolong       4 0.0 7.3779e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d4e31c6150_wrap_pyop2_kernel_prolong       4 0.0 7.4077e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac80856350_wrap_pyop2_kernel_prolong       4 0.0 7.3867e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bef7fe4050_wrap_pyop2_kernel_prolong       4 0.0 7.4332e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd70031190_wrap_pyop2_kernel_prolong       4 0.0 7.3874e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d0771a7290_wrap_pyop2_kernel_prolong       4 0.0 7.3889e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe6f20e850_wrap_pyop2_kernel_prolong       4 0.0 7.4449e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e52d08bdd0_wrap_pyop2_kernel_prolong       4 0.0 7.4101e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ecdfb6e6d0_wrap_pyop2_kernel_prolong       4 0.0 7.3888e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15080a3fc210_wrap_pyop2_kernel_prolong       4 0.0 7.3909e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c391ddde50_wrap_pyop2_kernel_prolong       4 0.0 7.3963e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153e682f7f10_wrap_pyop2_kernel_prolong       4 0.0 7.4170e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f0ac2d010_wrap_pyop2_kernel_prolong       4 0.0 7.4147e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a738fa6dd0_wrap_pyop2_kernel_prolong       4 0.0 7.3976e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15359f525410_wrap_pyop2_kernel_prolong       4 0.0 7.3889e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc4de9ee10_wrap_pyop2_kernel_prolong       4 0.0 7.4068e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1f94b3910_wrap_pyop2_kernel_prolong       4 0.0 7.3925e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d54126f950_wrap_pyop2_kernel_prolong       4 0.0 7.4046e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146ed77f7dd0_wrap_pyop2_kernel_prolong       4 0.0 7.4426e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b026415d0_wrap_pyop2_kernel_prolong       4 0.0 7.3886e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f7c77d850_wrap_pyop2_kernel_prolong       4 0.0 7.4012e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15364b3c4bd0_wrap_pyop2_kernel_prolong       4 0.0 7.4222e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed6fd59050_wrap_pyop2_kernel_prolong       4 0.0 7.4302e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146fe9349d50_wrap_pyop2_kernel_prolong       4 0.0 7.4196e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15070b503650_wrap_pyop2_kernel_prolong       4 0.0 7.3716e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fddc1970d0_wrap_pyop2_kernel_prolong       4 0.0 7.3860e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14593b114250_wrap_pyop2_kernel_prolong       4 0.0 7.4192e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15538765c050_wrap_pyop2_kernel_prolong       4 0.0 7.4248e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d7789f59d0_wrap_pyop2_kernel_prolong       4 0.0 7.3877e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f4a566fc50_wrap_pyop2_kernel_prolong       4 0.0 7.3907e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1549ffe91790_wrap_pyop2_kernel_prolong       4 0.0 7.4103e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14568a6fd590_wrap_pyop2_kernel_prolong       4 0.0 7.3934e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151716824d10_wrap_pyop2_kernel_prolong       4 0.0 7.3998e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b6e5f7c510_wrap_pyop2_kernel_prolong       4 0.0 7.4409e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1494b45121d0_wrap_pyop2_kernel_prolong       4 0.0 7.4251e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f358f88bd0_wrap_pyop2_kernel_prolong       4 0.0 7.3878e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1470684433d0_wrap_pyop2_kernel_prolong       4 0.0 7.4386e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf8e5cfe90_wrap_pyop2_kernel_prolong       4 0.0 7.3873e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14679ed90f10_wrap_pyop2_kernel_prolong       4 0.0 7.4400e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f595dce110_wrap_pyop2_kernel_prolong       4 0.0 7.4023e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b84129450_wrap_pyop2_kernel_prolong       4 0.0 7.4325e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dfd06ecf90_wrap_pyop2_kernel_prolong       4 0.0 7.4181e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1525d71444d0_wrap_pyop2_kernel_prolong       4 0.0 7.3830e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1496a1313e90_wrap_pyop2_kernel_prolong       4 0.0 7.3769e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146b2c3830d0_wrap_pyop2_kernel_prolong       4 0.0 7.3768e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c616a80b90_wrap_pyop2_kernel_prolong       4 0.0 7.4087e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a73eea0fd0_wrap_pyop2_kernel_prolong       4 0.0 7.3934e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491083f2ed0_wrap_pyop2_kernel_prolong       4 0.0 7.4035e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f17556990_wrap_pyop2_kernel_prolong       4 0.0 7.3775e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f71748490_wrap_pyop2_kernel_prolong       4 0.0 7.4397e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145c1fb63410_wrap_pyop2_kernel_prolong       4 0.0 7.3707e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1486f5ad1190_wrap_pyop2_kernel_prolong       4 0.0 7.3870e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e36a907710_wrap_pyop2_kernel_prolong       4 0.0 7.3804e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150822957d10_wrap_pyop2_kernel_prolong       4 0.0 7.3853e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15326105d290_wrap_pyop2_kernel_prolong       4 0.0 7.3841e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1501684cea50_wrap_pyop2_kernel_prolong       4 0.0 7.3893e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a9a6b8ea90_wrap_pyop2_kernel_prolong       4 0.0 7.3792e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a19ed9050_wrap_pyop2_kernel_prolong       4 0.0 7.3788e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a22219b8d0_wrap_pyop2_kernel_prolong       4 0.0 7.3801e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f58918ed0_wrap_pyop2_kernel_prolong       4 0.0 7.3810e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bad75c5550_wrap_pyop2_kernel_prolong       4 0.0 7.3797e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e37424c150_wrap_pyop2_kernel_prolong       4 0.0 7.3730e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145a4bf89790_wrap_pyop2_kernel_prolong       4 0.0 7.3876e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154fd371ec90_wrap_pyop2_kernel_prolong       4 0.0 7.3788e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1533f5e39c50_wrap_pyop2_kernel_prolong       4 0.0 7.3841e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148ea58a5fd0_wrap_pyop2_kernel_prolong       4 0.0 7.3975e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519b9375710_wrap_pyop2_kernel_prolong       4 0.0 7.3840e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15215f814a10_wrap_pyop2_kernel_prolong       4 0.0 7.3809e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ca43a5e0d0_wrap_pyop2_kernel_prolong       4 0.0 7.3778e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147978dc0b50_wrap_pyop2_kernel_prolong       4 0.0 7.3819e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ca2012b290_wrap_pyop2_kernel_prolong       4 0.0 7.3950e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146141813150_wrap_pyop2_kernel_prolong       4 0.0 7.3875e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146281d3bc10_wrap_pyop2_kernel_prolong       4 0.0 7.3813e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1469d7e79190_wrap_pyop2_kernel_prolong       4 0.0 7.3813e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc1c159610_wrap_pyop2_kernel_prolong       4 0.0 7.3787e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153e7cd9fed0_wrap_pyop2_kernel_prolong       4 0.0 7.3935e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d5b4482f10_wrap_pyop2_kernel_prolong       4 0.0 7.3827e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b4303f7c90_wrap_pyop2_kernel_prolong       4 0.0 7.3765e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c9b32934d0_wrap_pyop2_kernel_prolong       4 0.0 7.3834e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14672982e2d0_wrap_pyop2_kernel_prolong       4 0.0 7.3833e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f6a9be8310_wrap_pyop2_kernel_prolong       4 0.0 7.3764e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1527b595bd10_wrap_pyop2_kernel_prolong       4 0.0 7.3903e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153210e1d210_wrap_pyop2_kernel_prolong       4 0.0 7.3842e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151d46e00250_wrap_pyop2_kernel_prolong       4 0.0 7.3801e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1550bdad65d0_wrap_pyop2_kernel_prolong       4 0.0 7.3864e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a2ea185b50_wrap_pyop2_kernel_prolong       4 0.0 7.3802e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1460e6b077d0_wrap_pyop2_kernel_prolong       4 0.0 7.3819e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1523c8341550_wrap_pyop2_kernel_prolong       4 0.0 7.3856e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cb6ff99bd0_wrap_pyop2_kernel_prolong       4 0.0 7.3932e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15451b00f850_wrap_pyop2_kernel_prolong       4 0.0 7.3839e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f97c438b50_wrap_pyop2_kernel_prolong       4 0.0 7.3817e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bc2f3e6490_wrap_pyop2_kernel_prolong       4 0.0 7.3758e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15140ac4fad0_wrap_pyop2_kernel_prolong       4 0.0 7.3763e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b9ad978250_wrap_pyop2_kernel_prolong       4 0.0 7.3802e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d1962d310_wrap_pyop2_kernel_prolong       4 0.0 7.3832e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148deaf01ad0_wrap_pyop2_kernel_prolong       4 0.0 7.3859e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd7780e610_wrap_pyop2_kernel_prolong       4 0.0 7.3802e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1454ee58f1d0_wrap_pyop2_kernel_prolong       4 0.0 7.3901e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d3b83fc50_wrap_pyop2_kernel_prolong       4 0.0 7.3819e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15424c570c50_wrap_pyop2_kernel_prolong       4 0.0 7.3959e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151994236c50_wrap_pyop2_kernel_prolong       4 0.0 7.3836e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf5e60dad0_wrap_pyop2_kernel_prolong       4 0.0 7.3878e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   200            199
              Viewer     3              3
           Index Set  1503           1503
   IS L to G Mapping   109            105
             Section   294            294
   Star Forest Graph   491            487
              Vector  1994           1990
              Matrix   107             93
      Preconditioner    10             10
       Krylov Solver     9              9
     DMKSP interface     1              1
                SNES     1              1
              DMSNES     1              1
      SNESLineSearch     1              1
    Distributed Mesh    74             74
            DM Label   206            206
          Quadrature    72             72
      Mesh Transform     1              1
       Swarm Cell DM     2              2
    GraphPartitioner    23             23
     Discrete System   106            106
           Weak Form   106            106
        Linear Space     6              6
          Dual Space    26             26
            FE Space     4              4
========================================================================================================================
Average time to get PetscTime(): 2.55e-08
Average time for MPI_Barrier(): 4.3302e-06
Average time for zero size MPI_Send(): 2.43724e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_mg_coarse_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murrumbidgee/vlumping_hmg_bjacilu_lag3/smoke.profile # (source: code)
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

