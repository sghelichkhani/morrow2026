****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0331.gadi.nci.org.au with 208 processes, by sg8812 on Sat Aug 22 00:35:23 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           4.314e+03     1.000   4.314e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                4.985e+12     1.111   4.752e+12  9.885e+14
Flops/sec:            1.155e+09     1.111   1.102e+09  2.292e+11
MPI Msg Count:        3.808e+05     4.106   2.405e+05  5.002e+07
MPI Msg Len (bytes):  2.525e+10     3.332   7.126e+04  3.564e+12
MPI Reductions:       2.068e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 1.9433e+03  45.0%  7.1345e+14  72.2%  7.135e+06  14.3%  2.641e+05       52.9%  1.343e+04  64.9%
 1:        MG Apply: 2.3705e+03  55.0%  2.7507e+14  27.8%  4.288e+07  85.7%  3.917e+04       47.1%  7.230e+03  35.0%

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

BuildTwoSided       2201 1.0 1.4891e+02 4.3 0.00e+00 0.0 2.1e+05 4.0e+00 1.3e+03  2  0  0  0  6   5  0  3  0  9    -0
BuildTwoSidedF      1153 1.0 1.4654e+02 3.6 0.00e+00 0.0 2.5e+05 2.6e+06 1.2e+03  2  0  1 19  6   5  0  4 35  9    -0
SFSetGraph          1057 1.1 5.3041e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp             1048 1.1 3.1273e+00 29.7 0.00e+00 0.0 1.6e+05 1.9e+03 1.2e+02  0  0  0  0  1   0  0  2  0  1    -0
SFBcastBegin         916 1.0 7.2277e-01 3.4 0.00e+00 0.0 9.5e+05 1.6e+05 0.0e+00  0  0  2  4  0   0  0 13  8  0    -0
SFBcastEnd           916 1.0 3.8215e+01 29.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        346 1.0 2.9832e-01 40.2 0.00e+00 0.0 3.7e+05 2.0e+05 0.0e+00  0  0  1  2  0   0  0  5  4  0    -0
SFReduceEnd          346 1.0 8.6314e+00 26.0 6.50e+07 3.3 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1063
SFFetchOpBegin         6 1.0 3.7818e-05 5.1 0.00e+00 0.0 5.1e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           6 1.0 7.2278e-04 15.8 0.00e+00 0.0 5.1e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          4 1.0 1.6373e-03 2.7 0.00e+00 0.0 2.5e+03 2.9e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         51 1.0 9.2418e-03 1.3 0.00e+00 0.0 1.2e+05 1.6e+02 6.0e+01  0  0  0  0  0   0  0  2  0  0    -0
SFSectionSF           53 1.0 5.5869e-03 2.6 0.00e+00 0.0 6.3e+04 7.0e+01 5.3e+01  0  0  0  0  0   0  0  1  0  0    -0
SFRemoteOff            2 1.0 1.0089e-04 2.6 0.00e+00 0.0 2.3e+03 2.9e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack            377453 1.1 4.4009e+00 3.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack          377459 1.1 4.4983e-01 4.8 6.50e+07 3.3 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 20396
VecDot               226 1.0 2.6396e+00 3.0 7.55e+08 1.1 0.0e+00 0.0e+00 2.3e+02  0  0  0  0  1   0  0  0  0  2 57285
VecMDot             4358 1.0 1.8547e+02 1.7 1.07e+11 1.1 0.0e+00 0.0e+00 4.4e+03  3  2  0  0 21   7  3  0  0 32 115339
VecNorm             5284 1.0 5.5447e+01 2.2 1.49e+10 1.1 0.0e+00 0.0e+00 5.3e+03  1  0  0  0 26   2  0  0  0 39 53872
VecScale            4673 1.0 1.8553e+01 1.1 6.44e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0 69481
VecCopy             1671 1.0 9.9707e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              1020 1.0 3.0648e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              315 1.0 2.3056e+00 1.3 7.92e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 68815
VecWAXPY             227 1.0 1.9970e+00 1.2 3.79e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 38027
VecMAXPY            4673 1.0 1.5663e+02 1.1 1.19e+11 1.1 0.0e+00 0.0e+00 0.0e+00  3  2  0  0  0   8  3  0  0  0 152027
VecScatterBegin   376185 1.1 1.1966e+01 2.6 0.00e+00 0.0 5.1e+06 1.8e+05 0.0e+00  0  0 10 26  0   0  0 72 50  0    -0
VecScatterEnd     376185 1.1 8.6440e+01 12.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecSetRandom           9 1.0 4.5857e-01 3.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecReduceArith       452 1.0 1.5432e+00 1.9 1.51e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 195970
VecReduceComm        226 1.0 9.8547e-01 49.4 0.00e+00 0.0 0.0e+00 0.0e+00 2.3e+02  0  0  0  0  1   0  0  0  0  2    -0
VecNormalize        1021 1.0 1.8062e+01 5.5 1.01e+09 1.1 0.0e+00 0.0e+00 1.0e+03  0  0  0  0  5   1  0  0  0  8 11189
MatMult             4585 1.0 6.4587e+02 1.2 4.55e+11 1.1 5.1e+06 1.8e+05 0.0e+00 14  9 10 26  0  31 13 72 50  0 140996
MatSolve          186421 1.1 2.1333e+01 1.3 1.17e+10 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0 109999
MatLUFactorSym       929 1.1 4.9110e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum      8431 1.1 2.1843e+00 1.2 2.41e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 220609
MatILUFactorSym        2 1.0 3.8029e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCopy               75 1.0 1.5733e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
MatConvert             1 1.0 7.9676e+00 13.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin   10034 1.1 1.5301e+02 2.9 0.00e+00 0.0 2.5e+05 2.6e+06 1.2e+03  2  0  1 19  6   5  0  4 35  9    -0
MatAssemblyEnd     10034 1.1 3.1125e+01 5.0 4.69e+08 0.0 8.9e+03 1.4e+04 7.1e+01  0  0  0  0  0   1  0  0  0  1  1328
MatGetRowIJ          930 1.1 2.3199e-04 3.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats       9 1.0 6.4329e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.3e+02  0  0  0  0  4   0  0  0  0  7    -0
MatGetOrdering       930 1.1 1.6903e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       457 1.0 3.1156e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
MatTranspose           8 1.0 5.8213e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 1.8e+01  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          8 1.0 5.3399e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 1.8e+01  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        310 1.0 5.4874e+00 1.1 9.27e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 337643
MatPtAPSymbolic        3 1.0 1.2241e+00 1.0 0.00e+00 0.0 1.0e+04 1.2e+05 2.1e+01  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       231 1.0 4.3188e+01 1.1 3.70e+10 1.1 2.6e+05 2.1e+05 2.5e+02  1  1  1  2  1   2  1  4  3  2 171604
MatGetLocalMat       235 1.0 2.4916e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        235 1.0 4.3850e+00 13.9 0.00e+00 0.0 2.6e+05 2.1e+05 0.0e+00  0  0  1  2  0   0  0  4  3  0    -0
MatSetPreallCOO       32 1.0 6.2770e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       32 1.0 2.6718e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp              226 1.0 2.0852e+02 1.0 8.87e+10 1.1 1.4e+06 7.6e+04 3.6e+03  5  2  3  3 18  11  2 19  5 27 85168
PCApply             3425 1.0 2.4089e+03 1.0 1.37e+12 1.1 4.3e+07 3.9e+04 7.2e+03 55 28 86 47 35 Multiple stages 114188
PCApplyOnBlocks   186421 1.1 2.5511e+01 1.4 1.41e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0 110757
KSPSetUp             226 1.0 1.2096e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             226 1.0 3.2015e+03 1.0 2.01e+12 1.1 4.7e+07 5.4e+04 1.4e+04 74 41 93 71 69 Multiple stages 125739
KSPGMRESOrthog      4358 1.0 3.1887e+02 1.3 2.14e+11 1.1 0.0e+00 0.0e+00 4.4e+03  6  4  0  0 21  14  6  0  0 32 134177
DMRefine               2 1.0 2.7271e-02 1.0 2.09e+03 1.0 1.5e+04 6.3e+01 6.3e+01  0  0  0  0  0   0  0  0  0  0    16
DMPlexCreateGmsh       1 1.0 3.0325e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 5.3747e+00 170.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Partition         4 1.0 1.3415e-01 1.0 0.00e+00 0.0 3.7e+04 1.3e+02 5.1e+01  0  0  0  0  0   0  0  1  0  0    -0
Mesh Migration         4 1.0 2.4028e-02 1.1 0.00e+00 0.0 1.4e+05 1.5e+02 2.4e+02  0  0  0  0  1   0  0  2  0  2    -0
DMPlexPartSelf         1 1.0 4.8083e-03 1840.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       4 1.0 1.7396e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        4 1.0 3.9080e-03 1.1 0.00e+00 0.0 7.2e+03 1.0e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       4 1.0 1.0711e-03 2.3 0.00e+00 0.0 3.6e+03 4.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          4 1.0 3.3103e-03 1.9 0.00e+00 0.0 3.8e+03 5.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          29 1.0 1.5531e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 1.4234e-01 1.0 0.00e+00 0.0 8.6e+03 6.3e+02 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        4 1.0 3.1646e-03 1.1 0.00e+00 0.0 2.2e+04 2.4e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       4 1.0 1.0677e-02 1.0 0.00e+00 0.0 7.0e+04 1.5e+02 1.5e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistOvrlp        3 1.0 1.8931e-02 1.0 0.00e+00 0.0 1.7e+05 1.3e+02 2.4e+02  0  0  0  0  1   0  0  2  0  2    -0
DMPlexDistField        7 1.0 4.7042e-03 1.2 0.00e+00 0.0 3.1e+04 1.1e+02 2.0e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         2 1.0 3.5273e-04 1.1 0.00e+00 0.0 1.1e+04 5.3e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify        41 1.0 1.2661e-02 7.4 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      41 1.0 1.1762e-03 7.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          2 1.0 1.1860e-04 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          2 1.0 4.2050e-03 1.4 0.00e+00 0.0 8.5e+03 5.2e+01 1.9e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          2 1.0 3.1973e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          2 1.0 7.1171e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             2 1.0 4.1268e-04 1.9 0.00e+00 0.0 6.8e+03 4.9e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         2 1.0 2.3803e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         2 1.0 1.2755e-03 1.5 0.00e+00 0.0 1.7e+03 6.4e+01 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMSwarmSetSizes        4 1.0 1.4838e-04 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             75 1.0 4.2062e+03 1.0 4.98e+12 1.1 5.0e+07 7.2e+04 2.0e+04 97 100 99 100 96 Multiple stages 235000
SNESSetUp              1 1.0 6.8346e-05 5.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     301 1.0 1.0077e+02 1.3 1.11e+12 1.1 7.6e+05 2.2e+05 0.0e+00  2 22  2  5  0   5 31 11  9  0 2164970
SNESJacobianEval     226 1.0 6.5013e+02 1.0 1.74e+12 1.1 5.1e+05 1.4e+06 9.0e+02 15 35  1 20  4  33 48  7 38  7 528725
SNESLineSearch       226 1.0 1.1102e+02 1.0 8.63e+11 1.1 7.6e+05 2.2e+05 9.0e+02  3 17  2  5  4   6 24 11  9  7 1531175
DualSpaceSetUp         8 1.0 5.3329e-03 1.2 1.08e+02 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     4
FESetUp                8 1.0 1.0479e-02 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 4.2932e+03 1.0 4.98e+12 1.1 5.0e+07 7.1e+04 2.1e+04 100 100 100 100 100 Multiple stages 230252
firedrake.__init__       1 1.0 1.0499e+01 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateMesh             3 1.0 5.5858e+00 23.1 0.00e+00 0.0 3.3e+05 1.5e+02 4.4e+02  0  0  1  0  2   0  0  5  0  3    -0
firedrake.mesh._from_gmsh       1 1.0 5.3752e+00 169.9 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       3 1.0 1.3380e-03 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       3 1.0 6.8360e-06 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        7 1.0 1.5797e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          3 1.0 1.5343e-03 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      36 1.0 3.8617e-02 1.1 0.00e+00 0.0 1.6e+04 1.9e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      44 1.0 2.6346e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      40 1.0 3.5503e-02 1.1 0.00e+00 0.0 1.6e+04 1.9e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      39 1.0 3.1562e-02 1.2 0.00e+00 0.0 1.6e+04 1.9e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      39 1.0 3.1347e-02 1.2 0.00e+00 0.0 1.6e+04 1.9e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      78 1.0 9.4137e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       6 1.0 6.3447e-03 1.1 0.00e+00 0.0 6.8e+03 1.7e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__      12 1.0 7.7894e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      24 1.0 2.5003e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      76 1.0 6.9778e-02 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          3 1.0 9.8850e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       3 1.0 2.5797e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       8 1.0 7.1045e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       5 1.0 1.2792e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       3 1.0 9.8165e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     662 1.0 2.5304e-02 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      2433 1.0 6.5503e+02 1.2 2.85e+12 1.1 7.0e+05 2.1e+05 3.8e+01 14 57  1  4  0  31 79 10  8  0 857855
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       6 1.0 9.3609e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    4866 1.0 2.6647e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      19 1.0 1.1234e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
GlobalKernel: generate loopy      19 0.0 1.4561e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      19 0.0 8.8170e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      21 1.0 1.8218e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.load      20 1.0 1.8216e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      20 1.0 1.0252e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.make_so      20 1.0 1.0046e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
ParLoopRednBegin    2433 1.0 1.1355e-02 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      2433 1.0 8.5225e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       3 1.0 1.0401e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong       4 1.0 1.3127e+01 1.0 5.64e+07 1.1 1.8e+04 2.5e+04 1.3e+01  0  0  0  0  0   1  0  0  0  0   860
firedrake.interpolation.interpolate      21 1.0 6.1137e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      15 1.0 1.8540e+01 1.0 3.49e+08 1.1 6.6e+04 3.3e+04 1.8e+02  0  0  0  0  1   1  0  1  0  1  3769
firedrake.formmanipulation.split_form      16 1.0 4.9919e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      16 1.0 5.1398e-04 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      17 1.0 2.9280e-01 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       8 1.0 2.5078e-01 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     623 1.0 4.4740e+00 11.9 0.00e+00 0.0 7.1e+05 2.1e+05 4.0e+00  0  0  1  4  0   0  0 10  8  0    -0
Parloop_Cells_wrap_expression_kernel      34 1.0 7.3288e+00 1.0 3.49e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  9533
firedrake.halo.Halo.global_to_local_end     623 1.0 3.5884e+01 47.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       3 1.0 6.9424e+00 33.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15026a1ff2d0_wrap_pyop2_kernel_prolong       4 0.0 7.4459e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15026a1fc7d0_wrap_pyop2_kernel_prolong       4 0.0 2.1986e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 4.3154e+00 1.0 2.82e+08 1.1 1.7e+04 1.1e+05 1.1e+01  0  0  0  0  0   0  0  0  0  0 13101
firedrake.function.Function.assign     314 1.0 1.1893e+01 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     313 1.0 1.1749e+01 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.5955e-04 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate     154 1.0 5.0953e-03 5.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 6.5919e-05 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.4644e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.9914e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.2088e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 2.1122e+01 1.0 0.00e+00 0.0 6.7e+03 8.9e+05 2.3e+01  0  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 8.0554e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 3.7872e-04 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.1039e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.1039e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateSparsity         4 1.0 1.6461e+01 1.0 0.00e+00 0.0 1.5e+04 2.0e+05 4.6e+01  0  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         4 1.0 2.4034e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      75 1.0 4.2070e+03 1.0 4.98e+12 1.1 5.0e+07 7.2e+04 2.0e+04 97 100 99 100 97 Multiple stages 234954
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 2.9962e-01 989.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 1.2854e-05 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 2.9957e-01 1208.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 2.9954e-01 1368.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     602 1.0 3.0327e+01 1.6 2.86e+11 1.1 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   1  8  0  0  0 1887637
Parloop_Cells_wrap_form0_exterior_facet_top_integral     602 1.0 1.0644e+00 1.1 3.72e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  6990
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral     602 1.0 1.4493e+00 1.1 1.18e+09 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 24197
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     602 1.0 1.7732e+01 1.2 2.75e+11 1.1 0.0e+00 0.0e+00 0.0e+00  0  6  0  0  0   1  8  0  0  0 3100608
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     602 1.0 3.8180e+01 1.2 5.48e+11 1.2 0.0e+00 0.0e+00 0.0e+00  1 11  0  0  0   2 15  0  0  0 2773317
firedrake.halo.Halo.local_to_global_begin     301 1.0 3.1968e-01 19.7 0.00e+00 0.0 3.4e+05 2.2e+05 0.0e+00  0  0  1  2  0   0  0  5  4  0    -0
firedrake.halo.Halo.local_to_global_end     301 1.0 8.6377e+00 25.3 6.50e+07 3.3 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1062
Parloop_Cells_wrap_form00_cell_integral     452 1.0 1.2793e+02 1.6 4.00e+11 1.1 0.0e+00 0.0e+00 0.0e+00  2  8  0  0  0   5 11  0  0  0 626954
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     452 1.0 2.6989e+00 2.4 9.06e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  9934
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     452 1.0 1.3867e+02 1.1 5.30e+11 1.1 0.0e+00 0.0e+00 0.0e+00  3 11  0  0  0   7 15  0  0  0 765200
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     452 1.0 2.9981e+02 1.2 8.14e+11 1.2 0.0e+00 0.0e+00 0.0e+00  6 16  0  0  0  14 22  0  0  0 524857
firedrake.dmhooks.get_function_space       2 1.0 1.8029e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       3 1.0 1.1029e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.VertexOnlyMesh       2 1.0 9.5419e+00 1.0 0.00e+00 0.0 2.9e+04 1.5e+02 2.2e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._pic_swarm_in_mesh       2 1.0 9.5258e+00 1.0 0.00e+00 0.0 2.0e+04 1.2e+02 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._parent_mesh_embedding       2 1.0 8.5498e+00 1.0 0.00e+00 0.0 1.1e+04 5.3e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.locate_cells_ref_coords_and_dists       2 1.0 4.6359e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry._c_locator       2 1.0 4.5236e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.pointquery_utils.src_locate_cell       2 1.0 3.9584e+00 3.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.pointquery_utils.compile_coordinate_element       2 1.0 3.9441e+00 24.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.pointquery_utils.make_wrapper       2 1.0 3.3043e+00 261.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.parloop.generate_single_cell_wrapper       2 1.0 3.3042e+00 264.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
c_locator_run          2 1.0 2.7618e-01 10.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._ctypes       2 1.0 2.5188e-01 46.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._constant_ctypes       2 1.0 1.8451e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.rtree       2 1.0 2.0983e-03 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.bounding_box_coords       2 1.0 3.2001e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
rtree_build            2 1.0 1.7057e-03 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._dmswarm_create       4 1.0 2.7758e-02 39.9 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._swarm_original_ordering_preserve       2 1.0 9.7344e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.VertexOnlyMeshTopology.__init__       4 1.0 3.2545e-02 1.8 0.00e+00 0.0 8.9e+03 2.1e+02 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_vom_from_vom_topology       4 1.0 7.2898e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.action       2 1.0 4.6803e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0       77 1.0 6.2582e+00 2.5 2.01e+08 1.1 1.0e+06 4.4e+02 1.9e+03  0  0  2  0  9   0  0 14  0 14  6436
MGSetup Level 1       77 1.0 1.8847e+01 1.3 2.55e+09 1.1 1.1e+04 2.2e+05 9.5e+02  0  0  0  0  5   1  0  0  0  7 27098
firedrake.constant.Constant.assign      75 1.0 1.0828e-02 6.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c2151ce50_wrap_pyop2_kernel_prolong       4 0.0 7.4433e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c20b89410_wrap_pyop2_kernel_prolong       4 0.0 2.1159e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c64f7d2d90_wrap_pyop2_kernel_prolong       4 0.0 7.4540e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c64e4c9150_wrap_pyop2_kernel_prolong       4 0.0 2.3546e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1546d4dc8c10_wrap_pyop2_kernel_prolong       4 0.0 7.4497e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1546d4bb1450_wrap_pyop2_kernel_prolong       4 0.0 2.2183e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1551c3ea5350_wrap_pyop2_kernel_prolong       4 0.0 7.4567e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1551c3eeac50_wrap_pyop2_kernel_prolong       4 0.0 2.4381e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147166f3a610_wrap_pyop2_kernel_prolong       4 0.0 7.4478e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1471664f1f90_wrap_pyop2_kernel_prolong       4 0.0 2.2962e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519998432d0_wrap_pyop2_kernel_prolong       4 0.0 7.4442e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151998d99d10_wrap_pyop2_kernel_prolong       4 0.0 2.1073e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d656409950_wrap_pyop2_kernel_prolong       4 0.0 7.4473e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d655c0ba10_wrap_pyop2_kernel_prolong       4 0.0 2.1394e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145a2508e810_wrap_pyop2_kernel_prolong       4 0.0 7.4639e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145a244f0110_wrap_pyop2_kernel_prolong       4 0.0 2.5573e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f5c430ed0_wrap_pyop2_kernel_prolong       4 0.0 7.4443e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f5c432f50_wrap_pyop2_kernel_prolong       4 0.0 2.2055e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148727957e10_wrap_pyop2_kernel_prolong       4 0.0 7.4438e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1487279573d0_wrap_pyop2_kernel_prolong       4 0.0 2.3122e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c845d99bd0_wrap_pyop2_kernel_prolong       4 0.0 7.4615e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c845d4e810_wrap_pyop2_kernel_prolong       4 0.0 2.5116e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e788a9a90_wrap_pyop2_kernel_prolong       4 0.0 7.4578e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e788b0c10_wrap_pyop2_kernel_prolong       4 0.0 2.4384e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1510d55f06d0_wrap_pyop2_kernel_prolong       4 0.0 7.4289e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1510d5821690_wrap_pyop2_kernel_prolong       4 0.0 2.1905e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15304b92e550_wrap_pyop2_kernel_prolong       4 0.0 7.4407e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15304bb3bb90_wrap_pyop2_kernel_prolong       4 0.0 2.1649e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a72edabe10_wrap_pyop2_kernel_prolong       4 0.0 7.4424e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a72eda9590_wrap_pyop2_kernel_prolong       4 0.0 2.5062e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1550c4167690_wrap_pyop2_kernel_prolong       4 0.0 7.4284e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1550c4167e90_wrap_pyop2_kernel_prolong       4 0.0 2.2083e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ceb436db50_wrap_pyop2_kernel_prolong       4 0.0 7.4450e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ceb436c050_wrap_pyop2_kernel_prolong       4 0.0 2.2532e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d7ec25f090_wrap_pyop2_kernel_prolong       4 0.0 7.4698e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d7ece34ed0_wrap_pyop2_kernel_prolong       4 0.0 2.5913e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14599329b810_wrap_pyop2_kernel_prolong       4 0.0 7.4369e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14599327dad0_wrap_pyop2_kernel_prolong       4 0.0 2.2746e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148956dae150_wrap_pyop2_kernel_prolong       4 0.0 7.4500e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148956dafa90_wrap_pyop2_kernel_prolong       4 0.0 2.4087e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497d200ec10_wrap_pyop2_kernel_prolong       4 0.0 7.4624e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497d3ab5110_wrap_pyop2_kernel_prolong       4 0.0 2.5677e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154bcdf788d0_wrap_pyop2_kernel_prolong       4 0.0 7.4470e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154bcdd90490_wrap_pyop2_kernel_prolong       4 0.0 2.3800e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a690711e90_wrap_pyop2_kernel_prolong       4 0.0 7.4436e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a690713750_wrap_pyop2_kernel_prolong       4 0.0 2.3298e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497167ab950_wrap_pyop2_kernel_prolong       4 0.0 7.4526e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497167a9bd0_wrap_pyop2_kernel_prolong       4 0.0 2.2785e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150ab163bd50_wrap_pyop2_kernel_prolong       4 0.0 7.4667e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150ab163a7d0_wrap_pyop2_kernel_prolong       4 0.0 2.7747e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a629cb3b90_wrap_pyop2_kernel_prolong       4 0.0 7.4343e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a6299df290_wrap_pyop2_kernel_prolong       4 0.0 2.2964e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14922c5adf90_wrap_pyop2_kernel_prolong       4 0.0 7.4473e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14922c5ada10_wrap_pyop2_kernel_prolong       4 0.0 2.2550e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b022099610_wrap_pyop2_kernel_prolong       4 0.0 7.4566e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b021f4dcd0_wrap_pyop2_kernel_prolong       4 0.0 2.4310e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e95b1e490_wrap_pyop2_kernel_prolong       4 0.0 7.4443e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e95b1dd90_wrap_pyop2_kernel_prolong       4 0.0 2.2938e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149950be1090_wrap_pyop2_kernel_prolong       4 0.0 7.4320e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14995027a690_wrap_pyop2_kernel_prolong       4 0.0 2.3245e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153061e29d10_wrap_pyop2_kernel_prolong       4 0.0 7.4545e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153061e21b50_wrap_pyop2_kernel_prolong       4 0.0 2.5597e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e35212150_wrap_pyop2_kernel_prolong       4 0.0 7.4351e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e35219fd0_wrap_pyop2_kernel_prolong       4 0.0 2.3610e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f8df96d890_wrap_pyop2_kernel_prolong       4 0.0 7.4453e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f8df725a90_wrap_pyop2_kernel_prolong       4 0.0 2.2787e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497caf1fa50_wrap_pyop2_kernel_prolong       4 0.0 7.4536e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497caeff2d0_wrap_pyop2_kernel_prolong       4 0.0 2.5230e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15078db5f210_wrap_pyop2_kernel_prolong       4 0.0 7.4493e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15078db3bd50_wrap_pyop2_kernel_prolong       4 0.0 2.5274e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da92058950_wrap_pyop2_kernel_prolong       4 0.0 7.4400e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da9185a290_wrap_pyop2_kernel_prolong       4 0.0 2.4469e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a51844a050_wrap_pyop2_kernel_prolong       4 0.0 7.4522e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5182f9b50_wrap_pyop2_kernel_prolong       4 0.0 2.4603e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c81da0fa90_wrap_pyop2_kernel_prolong       4 0.0 7.4685e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c81dc39910_wrap_pyop2_kernel_prolong       4 0.0 2.6187e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d4627d5b90_wrap_pyop2_kernel_prolong       4 0.0 7.4381e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d4627d72d0_wrap_pyop2_kernel_prolong       4 0.0 2.1208e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a7e6cbcd0_wrap_pyop2_kernel_prolong       4 0.0 7.4482e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a7e48d750_wrap_pyop2_kernel_prolong       4 0.0 2.2982e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a62c703250_wrap_pyop2_kernel_prolong       4 0.0 7.4581e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a62c6f9a90_wrap_pyop2_kernel_prolong       4 0.0 2.4732e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491b4a10a50_wrap_pyop2_kernel_prolong       4 0.0 7.4512e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491b5d825d0_wrap_pyop2_kernel_prolong       4 0.0 2.4037e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15237470b890_wrap_pyop2_kernel_prolong       4 0.0 7.4522e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152374709650_wrap_pyop2_kernel_prolong       4 0.0 2.3278e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1508fb2bf3d0_wrap_pyop2_kernel_prolong       4 0.0 7.4631e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1508f9f62810_wrap_pyop2_kernel_prolong       4 0.0 2.4999e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1463b5efd2d0_wrap_pyop2_kernel_prolong       4 0.0 7.4424e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1463b5ed9950_wrap_pyop2_kernel_prolong       4 0.0 2.3928e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1501c49f0090_wrap_pyop2_kernel_prolong       4 0.0 7.4415e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1501c49f1710_wrap_pyop2_kernel_prolong       4 0.0 2.2961e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c19ca2590_wrap_pyop2_kernel_prolong       4 0.0 7.4610e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c19a62bd0_wrap_pyop2_kernel_prolong       4 0.0 2.7061e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa38aefc90_wrap_pyop2_kernel_prolong       4 0.0 7.4540e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa38ae6010_wrap_pyop2_kernel_prolong       4 0.0 2.3518e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15261c831650_wrap_pyop2_kernel_prolong       4 0.0 7.4502e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15261ca82ed0_wrap_pyop2_kernel_prolong       4 0.0 2.5510e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c168217d0_wrap_pyop2_kernel_prolong       4 0.0 7.4486e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c16820bd0_wrap_pyop2_kernel_prolong       4 0.0 2.3679e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150af983b5d0_wrap_pyop2_kernel_prolong       4 0.0 7.4671e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150af9838350_wrap_pyop2_kernel_prolong       4 0.0 2.6729e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152aed836950_wrap_pyop2_kernel_prolong       4 0.0 7.4219e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152aed82f690_wrap_pyop2_kernel_prolong       4 0.0 2.1424e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497d4f47310_wrap_pyop2_kernel_prolong       4 0.0 7.4407e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497d5175f50_wrap_pyop2_kernel_prolong       4 0.0 2.3855e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1499118865d0_wrap_pyop2_kernel_prolong       4 0.0 7.4503e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149911afe050_wrap_pyop2_kernel_prolong       4 0.0 2.5899e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b78b3efb90_wrap_pyop2_kernel_prolong       4 0.0 7.4424e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b78b3edbd0_wrap_pyop2_kernel_prolong       4 0.0 2.3241e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153ce0d55b10_wrap_pyop2_kernel_prolong       4 0.0 7.4258e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153ce0d4d450_wrap_pyop2_kernel_prolong       4 0.0 2.2132e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f6ed9c1cd0_wrap_pyop2_kernel_prolong       4 0.0 7.4405e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f6ed78a490_wrap_pyop2_kernel_prolong       4 0.0 2.4881e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1512cc0edcd0_wrap_pyop2_kernel_prolong       4 0.0 7.4240e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1512cc0ed0d0_wrap_pyop2_kernel_prolong       4 0.0 2.2374e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15498ec30890_wrap_pyop2_kernel_prolong       4 0.0 7.4328e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15498ec5e050_wrap_pyop2_kernel_prolong       4 0.0 2.3407e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153803a65250_wrap_pyop2_kernel_prolong       4 0.0 7.4282e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153803a171d0_wrap_pyop2_kernel_prolong       4 0.0 2.2509e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14749b437a10_wrap_pyop2_kernel_prolong       4 0.0 7.4268e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14749b21d750_wrap_pyop2_kernel_prolong       4 0.0 2.2636e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f649fcdf10_wrap_pyop2_kernel_prolong       4 0.0 7.4453e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f64a0dd150_wrap_pyop2_kernel_prolong       4 0.0 2.3267e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145a4d9b4190_wrap_pyop2_kernel_prolong       4 0.0 7.4509e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145a4ce124d0_wrap_pyop2_kernel_prolong       4 0.0 2.4169e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a433b7090_wrap_pyop2_kernel_prolong       4 0.0 7.4543e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a42bb5cd0_wrap_pyop2_kernel_prolong       4 0.0 2.6702e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d92bf72cd0_wrap_pyop2_kernel_prolong       4 0.0 7.4358e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d92bf73250_wrap_pyop2_kernel_prolong       4 0.0 2.2313e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14957c9d6bd0_wrap_pyop2_kernel_prolong       4 0.0 7.4423e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14957a3aff90_wrap_pyop2_kernel_prolong       4 0.0 2.2002e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f8c73b190_wrap_pyop2_kernel_prolong       4 0.0 7.4452e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f8c9d9a10_wrap_pyop2_kernel_prolong       4 0.0 2.3417e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c422db1f10_wrap_pyop2_kernel_prolong       4 0.0 7.4415e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c422e51c90_wrap_pyop2_kernel_prolong       4 0.0 2.4400e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147bf4ff1950_wrap_pyop2_kernel_prolong       4 0.0 7.4283e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147bf5168710_wrap_pyop2_kernel_prolong       4 0.0 2.2334e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15496e5c6390_wrap_pyop2_kernel_prolong       4 0.0 7.4300e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15496dc8dad0_wrap_pyop2_kernel_prolong       4 0.0 2.2608e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15185c0e5790_wrap_pyop2_kernel_prolong       4 0.0 7.4283e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15185c0dd750_wrap_pyop2_kernel_prolong       4 0.0 2.2087e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1502c2713b10_wrap_pyop2_kernel_prolong       4 0.0 7.4499e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1502c2710250_wrap_pyop2_kernel_prolong       4 0.0 2.3767e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1524d680fa10_wrap_pyop2_kernel_prolong       4 0.0 7.4496e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1524d71b6090_wrap_pyop2_kernel_prolong       4 0.0 2.6035e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c9264542d0_wrap_pyop2_kernel_prolong       4 0.0 7.4411e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c9262ad8d0_wrap_pyop2_kernel_prolong       4 0.0 2.3969e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b40187110_wrap_pyop2_kernel_prolong       4 0.0 7.4471e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b3db71e90_wrap_pyop2_kernel_prolong       4 0.0 2.4979e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b3bd67890_wrap_pyop2_kernel_prolong       4 0.0 7.4529e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b3bd65610_wrap_pyop2_kernel_prolong       4 0.0 2.6994e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e76aa15690_wrap_pyop2_kernel_prolong       4 0.0 7.4426e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e76ab8ebd0_wrap_pyop2_kernel_prolong       4 0.0 2.5461e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1472fdb042d0_wrap_pyop2_kernel_prolong       4 0.0 7.4288e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1472fd923ad0_wrap_pyop2_kernel_prolong       4 0.0 2.2132e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1454f57cefd0_wrap_pyop2_kernel_prolong       4 0.0 7.4328e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1454f5a15c50_wrap_pyop2_kernel_prolong       4 0.0 2.2625e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147974d48dd0_wrap_pyop2_kernel_prolong       4 0.0 7.4365e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147974d401d0_wrap_pyop2_kernel_prolong       4 0.0 2.4564e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15021660d1d0_wrap_pyop2_kernel_prolong       4 0.0 7.4296e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1502165ff290_wrap_pyop2_kernel_prolong       4 0.0 2.2497e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148734aeb650_wrap_pyop2_kernel_prolong       4 0.0 7.4471e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148734ae9750_wrap_pyop2_kernel_prolong       4 0.0 2.3855e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146520963a10_wrap_pyop2_kernel_prolong       4 0.0 7.4428e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146520961490_wrap_pyop2_kernel_prolong       4 0.0 2.4653e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf3d9b0890_wrap_pyop2_kernel_prolong       4 0.0 7.4338e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf3d9b3b50_wrap_pyop2_kernel_prolong       4 0.0 2.3711e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151cd84ece90_wrap_pyop2_kernel_prolong       4 0.0 7.4381e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151cd84ef010_wrap_pyop2_kernel_prolong       4 0.0 2.2742e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15477b028f50_wrap_pyop2_kernel_prolong       4 0.0 7.4304e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15477afd3490_wrap_pyop2_kernel_prolong       4 0.0 2.2490e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154d7a468990_wrap_pyop2_kernel_prolong       4 0.0 7.4397e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154d7a460f10_wrap_pyop2_kernel_prolong       4 0.0 2.5333e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148075029290_wrap_pyop2_kernel_prolong       4 0.0 7.4595e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1480746d3090_wrap_pyop2_kernel_prolong       4 0.0 2.5056e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ed4482290_wrap_pyop2_kernel_prolong       4 0.0 7.4650e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ed4481a50_wrap_pyop2_kernel_prolong       4 0.0 2.6359e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14844f929bd0_wrap_pyop2_kernel_prolong       4 0.0 7.4507e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14844f92b7d0_wrap_pyop2_kernel_prolong       4 0.0 2.5460e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14743e0fbed0_wrap_pyop2_kernel_prolong       4 0.0 7.4488e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14743e019390_wrap_pyop2_kernel_prolong       4 0.0 2.2584e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e10f2d5f10_wrap_pyop2_kernel_prolong       4 0.0 7.4401e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e10f2d7b50_wrap_pyop2_kernel_prolong       4 0.0 2.1750e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c9d39528d0_wrap_pyop2_kernel_prolong       4 0.0 7.4492e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c9d3952190_wrap_pyop2_kernel_prolong       4 0.0 2.5049e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14973374ecd0_wrap_pyop2_kernel_prolong       4 0.0 7.4395e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497335e3c10_wrap_pyop2_kernel_prolong       4 0.0 2.3766e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149514ce28d0_wrap_pyop2_kernel_prolong       4 0.0 7.4576e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149514ce1a90_wrap_pyop2_kernel_prolong       4 0.0 2.7341e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1528bca79710_wrap_pyop2_kernel_prolong       4 0.0 7.4526e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1528bca78b90_wrap_pyop2_kernel_prolong       4 0.0 2.6025e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15251f79c1d0_wrap_pyop2_kernel_prolong       4 0.0 7.4429e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15251f5f7d90_wrap_pyop2_kernel_prolong       4 0.0 2.3361e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cde6485c10_wrap_pyop2_kernel_prolong       4 0.0 7.4314e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cde6485790_wrap_pyop2_kernel_prolong       4 0.0 2.2253e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155453ea4fd0_wrap_pyop2_kernel_prolong       4 0.0 7.4645e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1554532488d0_wrap_pyop2_kernel_prolong       4 0.0 2.6513e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a758163f50_wrap_pyop2_kernel_prolong       4 0.0 7.4427e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a758163f10_wrap_pyop2_kernel_prolong       4 0.0 2.1518e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b1b6ec8d0_wrap_pyop2_kernel_prolong       4 0.0 7.4432e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b1b6c3dd0_wrap_pyop2_kernel_prolong       4 0.0 2.4130e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b01512550_wrap_pyop2_kernel_prolong       4 0.0 7.4443e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b00c98850_wrap_pyop2_kernel_prolong       4 0.0 2.5614e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15012228fed0_wrap_pyop2_kernel_prolong       4 0.0 7.4428e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150122287490_wrap_pyop2_kernel_prolong       4 0.0 2.5655e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f57e5ddd50_wrap_pyop2_kernel_prolong       4 0.0 7.7039e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f57e5eff10_wrap_pyop2_kernel_prolong       4 0.0 2.3866e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1553a151e5d0_wrap_pyop2_kernel_prolong       4 0.0 7.5703e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1553a151e610_wrap_pyop2_kernel_prolong       4 0.0 2.3156e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1bb851fd0_wrap_pyop2_kernel_prolong       4 0.0 7.8004e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1bb621950_wrap_pyop2_kernel_prolong       4 0.0 2.4559e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14831c0c96d0_wrap_pyop2_kernel_prolong       4 0.0 7.6883e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14831c0eeb50_wrap_pyop2_kernel_prolong       4 0.0 2.2422e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f13eed750_wrap_pyop2_kernel_prolong       4 0.0 7.6135e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f13e597d0_wrap_pyop2_kernel_prolong       4 0.0 2.0929e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e9e68a4190_wrap_pyop2_kernel_prolong       4 0.0 7.7868e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e9e691bbd0_wrap_pyop2_kernel_prolong       4 0.0 2.4463e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e86cb75490_wrap_pyop2_kernel_prolong       4 0.0 7.7486e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e86cb86bd0_wrap_pyop2_kernel_prolong       4 0.0 2.1827e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151907e7c610_wrap_pyop2_kernel_prolong       4 0.0 7.7293e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151907e4d950_wrap_pyop2_kernel_prolong       4 0.0 2.1037e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d26ab16210_wrap_pyop2_kernel_prolong       4 0.0 7.7781e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d26aac7cd0_wrap_pyop2_kernel_prolong       4 0.0 2.4549e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153bd98be310_wrap_pyop2_kernel_prolong       4 0.0 7.7456e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153bd98c5650_wrap_pyop2_kernel_prolong       4 0.0 2.2852e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1524ae89a190_wrap_pyop2_kernel_prolong       4 0.0 7.6412e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1524ae899990_wrap_pyop2_kernel_prolong       4 0.0 2.5561e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1503aeec62d0_wrap_pyop2_kernel_prolong       4 0.0 7.6589e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1503aeec5a10_wrap_pyop2_kernel_prolong       4 0.0 2.4091e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b7ddabf590_wrap_pyop2_kernel_prolong       4 0.0 7.5859e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b7dd885bd0_wrap_pyop2_kernel_prolong       4 0.0 2.4311e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd072262d0_wrap_pyop2_kernel_prolong       4 0.0 7.5951e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd07225950_wrap_pyop2_kernel_prolong       4 0.0 2.3290e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1489800c5ed0_wrap_pyop2_kernel_prolong       4 0.0 7.5581e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1489800c9990_wrap_pyop2_kernel_prolong       4 0.0 2.3310e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1457f469a750_wrap_pyop2_kernel_prolong       4 0.0 7.5598e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1457f469aa10_wrap_pyop2_kernel_prolong       4 0.0 2.4401e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15518a17d850_wrap_pyop2_kernel_prolong       4 0.0 7.6268e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15518a1852d0_wrap_pyop2_kernel_prolong       4 0.0 2.3403e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152738f95e50_wrap_pyop2_kernel_prolong       4 0.0 7.7790e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152738f2ee90_wrap_pyop2_kernel_prolong       4 0.0 2.3063e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153ee421c550_wrap_pyop2_kernel_prolong       4 0.0 7.5913e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153edff04490_wrap_pyop2_kernel_prolong       4 0.0 2.5083e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa46335750_wrap_pyop2_kernel_prolong       4 0.0 7.5945e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa46334e50_wrap_pyop2_kernel_prolong       4 0.0 2.1753e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e04119e10_wrap_pyop2_kernel_prolong       4 0.0 7.5595e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148dffb5eb10_wrap_pyop2_kernel_prolong       4 0.0 2.2568e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a911a679d0_wrap_pyop2_kernel_prolong       4 0.0 7.5744e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a911cb0890_wrap_pyop2_kernel_prolong       4 0.0 2.3182e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee9adb49d0_wrap_pyop2_kernel_prolong       4 0.0 7.6258e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee9ae25190_wrap_pyop2_kernel_prolong       4 0.0 2.3349e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a706fa2bd0_wrap_pyop2_kernel_prolong       4 0.0 7.5725e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a707201790_wrap_pyop2_kernel_prolong       4 0.0 2.4688e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b6eec05890_wrap_pyop2_kernel_prolong       4 0.0 7.5992e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b6eec04e50_wrap_pyop2_kernel_prolong       4 0.0 2.3942e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150253329950_wrap_pyop2_kernel_prolong       4 0.0 7.8009e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1502531288d0_wrap_pyop2_kernel_prolong       4 0.0 2.6765e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c65039ad0_wrap_pyop2_kernel_prolong       4 0.0 7.6322e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c65039810_wrap_pyop2_kernel_prolong       4 0.0 2.1602e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147cb0040050_wrap_pyop2_kernel_prolong       4 0.0 7.8129e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147cab74dc90_wrap_pyop2_kernel_prolong       4 0.0 2.3013e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14662d8d1d50_wrap_pyop2_kernel_prolong       4 0.0 7.7626e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14662d7799d0_wrap_pyop2_kernel_prolong       4 0.0 2.4721e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b96f9a84d0_wrap_pyop2_kernel_prolong       4 0.0 7.5965e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b96f9c3b50_wrap_pyop2_kernel_prolong       4 0.0 2.3564e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c05df7e450_wrap_pyop2_kernel_prolong       4 0.0 7.6150e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c05df7c150_wrap_pyop2_kernel_prolong       4 0.0 2.4669e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14911b4e63d0_wrap_pyop2_kernel_prolong       4 0.0 7.7631e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14911ac018d0_wrap_pyop2_kernel_prolong       4 0.0 2.4670e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150236ec0d90_wrap_pyop2_kernel_prolong       4 0.0 7.6312e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150236cde290_wrap_pyop2_kernel_prolong       4 0.0 2.5565e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1487ab75f310_wrap_pyop2_kernel_prolong       4 0.0 7.5883e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1487aadb2bd0_wrap_pyop2_kernel_prolong       4 0.0 2.4056e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15041409c550_wrap_pyop2_kernel_prolong       4 0.0 7.8582e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1504140f2c90_wrap_pyop2_kernel_prolong       4 0.0 2.6504e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f6520c1650_wrap_pyop2_kernel_prolong       4 0.0 7.7773e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f6520aae90_wrap_pyop2_kernel_prolong       4 0.0 2.3610e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146df66d5f10_wrap_pyop2_kernel_prolong       4 0.0 7.5651e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146df6682150_wrap_pyop2_kernel_prolong       4 0.0 2.1841e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14896212a0d0_wrap_pyop2_kernel_prolong       4 0.0 7.5929e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148960e5e7d0_wrap_pyop2_kernel_prolong       4 0.0 2.4855e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b8cd79350_wrap_pyop2_kernel_prolong       4 0.0 7.5621e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b72452990_wrap_pyop2_kernel_prolong       4 0.0 2.3753e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151744f476d0_wrap_pyop2_kernel_prolong       4 0.0 7.5478e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151744f45090_wrap_pyop2_kernel_prolong       4 0.0 2.2083e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1521adfa5610_wrap_pyop2_kernel_prolong       4 0.0 7.6072e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1521adfa4890_wrap_pyop2_kernel_prolong       4 0.0 2.5043e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e44c5c090_wrap_pyop2_kernel_prolong       4 0.0 7.5803e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e44c5d8d0_wrap_pyop2_kernel_prolong       4 0.0 2.4125e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da9ce306d0_wrap_pyop2_kernel_prolong       4 0.0 7.6020e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da9ce29710_wrap_pyop2_kernel_prolong       4 0.0 2.2856e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a46b89d90_wrap_pyop2_kernel_prolong       4 0.0 7.5564e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a46b7a050_wrap_pyop2_kernel_prolong       4 0.0 2.3379e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bdb8a0e750_wrap_pyop2_kernel_prolong       4 0.0 7.6024e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bdb8a0e050_wrap_pyop2_kernel_prolong       4 0.0 2.4940e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a1c2d625d0_wrap_pyop2_kernel_prolong       4 0.0 7.5855e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a1c21f5cd0_wrap_pyop2_kernel_prolong       4 0.0 2.2341e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5fd5b3ed0_wrap_pyop2_kernel_prolong       4 0.0 7.8464e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5fd7ba110_wrap_pyop2_kernel_prolong       4 0.0 2.3328e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15530c121910_wrap_pyop2_kernel_prolong       4 0.0 7.6020e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15530792ac50_wrap_pyop2_kernel_prolong       4 0.0 2.5273e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a91bcb810_wrap_pyop2_kernel_prolong       4 0.0 7.7625e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a91bca0d0_wrap_pyop2_kernel_prolong       4 0.0 2.4663e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c322102f50_wrap_pyop2_kernel_prolong       4 0.0 7.5875e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c322333a90_wrap_pyop2_kernel_prolong       4 0.0 2.4613e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153af25c1950_wrap_pyop2_kernel_prolong       4 0.0 7.7092e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153af25c3a90_wrap_pyop2_kernel_prolong       4 0.0 2.4657e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ebb328bc10_wrap_pyop2_kernel_prolong       4 0.0 7.6519e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ebb3281910_wrap_pyop2_kernel_prolong       4 0.0 2.6183e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1531fbb57850_wrap_pyop2_kernel_prolong       4 0.0 7.5804e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1531fbb2ce50_wrap_pyop2_kernel_prolong       4 0.0 2.3732e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14624efb5450_wrap_pyop2_kernel_prolong       4 0.0 7.5544e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14624fa07d50_wrap_pyop2_kernel_prolong       4 0.0 2.4131e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f22021e710_wrap_pyop2_kernel_prolong       4 0.0 7.5623e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f220c84dd0_wrap_pyop2_kernel_prolong       4 0.0 2.3661e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f87a798d0_wrap_pyop2_kernel_prolong       4 0.0 7.5410e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f871750d0_wrap_pyop2_kernel_prolong       4 0.0 2.3394e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ce83f6c10_wrap_pyop2_kernel_prolong       4 0.0 7.6285e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ce8475350_wrap_pyop2_kernel_prolong       4 0.0 2.3098e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b9f9cf3c90_wrap_pyop2_kernel_prolong       4 0.0 7.6074e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b9f9cf2b50_wrap_pyop2_kernel_prolong       4 0.0 2.3131e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1502b3149fd0_wrap_pyop2_kernel_prolong       4 0.0 7.6032e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1502b3002990_wrap_pyop2_kernel_prolong       4 0.0 2.3372e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a38729bed0_wrap_pyop2_kernel_prolong       4 0.0 7.6695e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a38712da90_wrap_pyop2_kernel_prolong       4 0.0 2.2149e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15437e7850d0_wrap_pyop2_kernel_prolong       4 0.0 7.6990e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15437e765750_wrap_pyop2_kernel_prolong       4 0.0 2.6466e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1490ba48bc10_wrap_pyop2_kernel_prolong       4 0.0 7.6914e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1490ba45d650_wrap_pyop2_kernel_prolong       4 0.0 2.2110e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c173e10cd0_wrap_pyop2_kernel_prolong       4 0.0 7.6289e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c173efc790_wrap_pyop2_kernel_prolong       4 0.0 2.5112e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1554707e2790_wrap_pyop2_kernel_prolong       4 0.0 7.7085e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1554707e0810_wrap_pyop2_kernel_prolong       4 0.0 2.4086e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1457dc5bf650_wrap_pyop2_kernel_prolong       4 0.0 7.6985e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1457dc5bd8d0_wrap_pyop2_kernel_prolong       4 0.0 2.4222e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1506ec1930d0_wrap_pyop2_kernel_prolong       4 0.0 7.6826e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1506e7f33d10_wrap_pyop2_kernel_prolong       4 0.0 2.3673e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e3eec9e50_wrap_pyop2_kernel_prolong       4 0.0 7.7187e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e3eec9750_wrap_pyop2_kernel_prolong       4 0.0 2.4260e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14822bf43ed0_wrap_pyop2_kernel_prolong       4 0.0 7.6791e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148230290c10_wrap_pyop2_kernel_prolong       4 0.0 2.4454e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1534a48aa190_wrap_pyop2_kernel_prolong       4 0.0 7.5402e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15349fefe150_wrap_pyop2_kernel_prolong       4 0.0 2.3838e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14858c90dc10_wrap_pyop2_kernel_prolong       4 0.0 7.5681e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14858c7bfb90_wrap_pyop2_kernel_prolong       4 0.0 2.3110e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147cb7065690_wrap_pyop2_kernel_prolong       4 0.0 7.5578e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147cb7067650_wrap_pyop2_kernel_prolong       4 0.0 2.6939e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1549640636d0_wrap_pyop2_kernel_prolong       4 0.0 7.5356e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154964063350_wrap_pyop2_kernel_prolong       4 0.0 2.1804e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152ee0539810_wrap_pyop2_kernel_prolong       4 0.0 7.5922e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152edba42050_wrap_pyop2_kernel_prolong       4 0.0 2.5685e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c150e70090_wrap_pyop2_kernel_prolong       4 0.0 7.5620e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c150ce1790_wrap_pyop2_kernel_prolong       4 0.0 2.3527e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eba728e610_wrap_pyop2_kernel_prolong       4 0.0 7.6083e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eba659c250_wrap_pyop2_kernel_prolong       4 0.0 2.2779e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ce734cbd0_wrap_pyop2_kernel_prolong       4 0.0 7.6204e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ce71d0290_wrap_pyop2_kernel_prolong       4 0.0 2.4098e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14beec4d2650_wrap_pyop2_kernel_prolong       4 0.0 7.5456e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14beec48e750_wrap_pyop2_kernel_prolong       4 0.0 2.3733e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1535251803d0_wrap_pyop2_kernel_prolong       4 0.0 7.5506e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153525162cd0_wrap_pyop2_kernel_prolong       4 0.0 2.5939e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15226f276a90_wrap_pyop2_kernel_prolong       4 0.0 7.5421e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15226f29c990_wrap_pyop2_kernel_prolong       4 0.0 2.3453e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152528d71c90_wrap_pyop2_kernel_prolong       4 0.0 7.5400e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152528d71390_wrap_pyop2_kernel_prolong       4 0.0 2.3151e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc3b602450_wrap_pyop2_kernel_prolong       4 0.0 7.5913e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc3b601c10_wrap_pyop2_kernel_prolong       4 0.0 2.3535e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149031c69c90_wrap_pyop2_kernel_prolong       4 0.0 7.5444e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149031358d50_wrap_pyop2_kernel_prolong       4 0.0 2.2809e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e35d924650_wrap_pyop2_kernel_prolong       4 0.0 7.5795e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e35d9bd650_wrap_pyop2_kernel_prolong       4 0.0 2.4363e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c4cb04850_wrap_pyop2_kernel_prolong       4 0.0 7.5532e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c4c9152d0_wrap_pyop2_kernel_prolong       4 0.0 2.5962e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f799c7a7d0_wrap_pyop2_kernel_prolong       4 0.0 7.5482e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f799a422d0_wrap_pyop2_kernel_prolong       4 0.0 2.3784e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15043b4d2750_wrap_pyop2_kernel_prolong       4 0.0 7.6835e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15043b4d1b50_wrap_pyop2_kernel_prolong       4 0.0 2.4072e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b04291c950_wrap_pyop2_kernel_prolong       4 0.0 7.6318e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b042921210_wrap_pyop2_kernel_prolong       4 0.0 2.4448e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150dcb94f810_wrap_pyop2_kernel_prolong       4 0.0 7.6140e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150dcb927dd0_wrap_pyop2_kernel_prolong       4 0.0 2.2395e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1529c469d7d0_wrap_pyop2_kernel_prolong       4 0.0 7.7236e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1529c469fa10_wrap_pyop2_kernel_prolong       4 0.0 2.4826e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150adf2460d0_wrap_pyop2_kernel_prolong       4 0.0 7.5673e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150adf244690_wrap_pyop2_kernel_prolong       4 0.0 2.3855e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151de12d0d50_wrap_pyop2_kernel_prolong       4 0.0 7.6888e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151de136f310_wrap_pyop2_kernel_prolong       4 0.0 2.6322e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e16e0fd410_wrap_pyop2_kernel_prolong       4 0.0 7.7343e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e16e37be50_wrap_pyop2_kernel_prolong       4 0.0 2.4266e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a02618d390_wrap_pyop2_kernel_prolong       4 0.0 7.7107e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a02618e110_wrap_pyop2_kernel_prolong       4 0.0 2.3797e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c89c34f6d0_wrap_pyop2_kernel_prolong       4 0.0 7.7255e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c89c34c110_wrap_pyop2_kernel_prolong       4 0.0 2.3933e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ecd90a310_wrap_pyop2_kernel_prolong       4 0.0 7.6277e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ecdb7bf10_wrap_pyop2_kernel_prolong       4 0.0 2.3377e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c8a9df1090_wrap_pyop2_kernel_prolong       4 0.0 7.6780e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c8a9df2b90_wrap_pyop2_kernel_prolong       4 0.0 2.2979e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15459f72b110_wrap_pyop2_kernel_prolong       4 0.0 7.5739e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15459f929190_wrap_pyop2_kernel_prolong       4 0.0 2.5599e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d9061de50_wrap_pyop2_kernel_prolong       4 0.0 7.5551e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d9061ff10_wrap_pyop2_kernel_prolong       4 0.0 2.2747e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d8b64399d0_wrap_pyop2_kernel_prolong       4 0.0 7.5689e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d8b5a09110_wrap_pyop2_kernel_prolong       4 0.0 2.2272e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d49fa4c490_wrap_pyop2_kernel_prolong       4 0.0 7.5524e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d49fab0a90_wrap_pyop2_kernel_prolong       4 0.0 2.5441e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd8aa0d790_wrap_pyop2_kernel_prolong       4 0.0 7.5916e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd8aa0c110_wrap_pyop2_kernel_prolong       4 0.0 2.3818e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1537fb2b5bd0_wrap_pyop2_kernel_prolong       4 0.0 7.5505e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1537fb2b41d0_wrap_pyop2_kernel_prolong       4 0.0 2.4767e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a4f35d350_wrap_pyop2_kernel_prolong       4 0.0 7.5562e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a4f2d2750_wrap_pyop2_kernel_prolong       4 0.0 2.4551e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d32cd16c10_wrap_pyop2_kernel_prolong       4 0.0 7.6286e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d32cd16650_wrap_pyop2_kernel_prolong       4 0.0 2.6237e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided         76 1.0 1.5560e-02 3.0 0.00e+00 0.0 9.2e+04 4.0e+00 7.6e+01  0  0  0  0  0   0  0  0  0  1    -0
SFSetGraph            76 1.0 9.0058e-04 4.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               76 1.0 2.8622e-02 1.5 0.00e+00 0.0 1.8e+05 6.0e+01 7.6e+01  0  0  0  0  0   0  0  0  0  1    -0
SFPack           12785525 1.1 6.9331e+00 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack         12785525 1.1 6.0196e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy            23975 1.0 2.0739e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecSet             47947 1.0 6.0148e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecAXPY             6850 1.0 5.4131e+01 1.8 2.29e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  2  0  0  0 84668
VecAYPX            47950 1.0 5.1117e+01 3.2 1.15e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  1  0  0  0 45204
VecAXPBYCZ         13700 1.0 1.5799e-02 1.7 1.19e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 1510908
VecScatterBegin  12785525 1.1 1.6395e+02 1.2 0.00e+00 0.0 4.2e+07 4.0e+04 0.0e+00  4  0 85 47  0   6  0 99 100  0    -0
VecScatterEnd    12785525 1.1 1.5936e+02 5.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
MatMult            34250 1.0 1.1491e+03 1.1 8.13e+11 1.1 3.8e+07 4.4e+04 0.0e+00 25 16 77 47  0  46 59 89 100  0 141468
MatMultAdd         10275 1.0 6.8980e+01 1.1 3.44e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  1  0  0  0   3  3  0  0  0 99872
MatMultTranspose   10275 1.0 5.6617e+01 1.7 3.44e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  3  0  0  0 121679
MatSolve         6387625 1.1 7.4176e+02 1.2 4.01e+11 1.1 4.6e+06 2.1e+02 3.8e+02 16  8  9  0  2  28 29 11  0  5 108205
MatLUFactorNum    201528 1.1 5.4361e+01 1.2 5.77e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  4  0  0  0 212405
MatResidual        10275 1.0 6.1984e+02 1.2 4.12e+11 1.1 1.1e+07 7.3e+04 0.0e+00 13  8 23 23  0  24 30 27 50  0 132898
MatAssemblyBegin  201376 1.1 4.1710e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyEnd    201376 1.1 4.8233e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats     217 1.0 1.3977e+02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   5  0  0  0  0    -0
PCSetUp           201821 1.1 1.8612e+02 1.3 5.77e+10 1.1 0.0e+00 0.0e+00 0.0e+00  4  1  0  0  0   7  4  0  0  0 62038
PCSetUpOnBlocks    13700 1.0 4.1845e-02 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply            10275 1.0 1.1541e+03 1.1 4.60e+11 1.1 3.5e+07 2.7e+02 3.8e+03 25  9 70  0 18  46 33 82  1 53 79802
PCApplyOnBlocks  6384200 1.1 7.7071e+02 1.2 4.58e+11 1.1 0.0e+00 0.0e+00 0.0e+00 16  9  0  0  0  29 33  0  0  0 119087
KSPSetUp          201452 1.1 1.4195e-02 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve           10275 1.0 1.7547e+03 1.1 8.95e+11 1.1 3.9e+07 2.2e+04 7.2e+03 39 18 78 24 35  71 65 91 50 100 102011
MGSmooth Level 0    3425 1.0 1.1458e+02 2.1 3.56e+09 1.5 3.5e+07 2.7e+02 7.2e+03  2  0 70  0 35   3  0 82  1 100  4637
MGSmooth Level 1    6850 1.0 1.6944e+03 1.1 8.92e+11 1.1 3.8e+06 2.2e+05 0.0e+00 37 18  8 23  0  68 65  9 50  0 105327
MGResid Level 1     3425 1.0 6.1097e+02 1.2 4.11e+11 1.1 3.8e+06 2.2e+05 0.0e+00 13  8  8 23  0  23 30  9 50  0 134734
MGInterp Level 1    6850 1.0 1.2263e+02 1.2 6.87e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3  1  0  0  0   5  5  0  0  0 112120
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   237            235
              Viewer     3              3
         PetscRandom     9              9
           Index Set 10043          10043
   IS L to G Mapping  1124           1118
             Section   493            493
   Star Forest Graph  1367           1365
              Vector  3622           3615
              Matrix  4765           4740
      Preconditioner   925            925
       Krylov Solver   932            932
     DMKSP interface     1              1
                SNES     1              1
              DMSNES     1              1
      SNESLineSearch     1              1
    Distributed Mesh   136            138
            DM Label   345            345
          Quadrature   144            144
      Mesh Transform     2              2
       Swarm Cell DM     4              4
    GraphPartitioner    41             41
     Discrete System   191            193
           Weak Form   191            193
        Linear Space    12             12
          Dual Space    52             52
            FE Space     8              8

--- Event Stage 1: MG Apply

           Index Set   152            152
   Star Forest Graph    80             75
              Vector   152            152
    Distributed Mesh     2              0
     Discrete System     2              0
           Weak Form     2              0
========================================================================================================================
Average time to get PetscTime(): 2.56e-08
Average time for MPI_Barrier(): 7.424e-06
Average time for zero size MPI_Send(): 2.75481e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_mg_coarse_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_mg_levels_1_pc_linesmooth_sub_sub_pc_factor_mat_ordering_type natural # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murr_strong/vlumping_hmg_rich_lag3/s2.profile # (source: code)
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

