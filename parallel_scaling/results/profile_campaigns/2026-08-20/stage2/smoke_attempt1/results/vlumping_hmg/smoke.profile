****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026-profile-stage2-20260820T053301Z/source/morrow/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0283.gadi.nci.org.au with 104 processes, by sg8812 on Thu Aug 20 15:43:11 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           1.099e+02     1.000   1.098e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                3.717e+10     1.438   3.106e+10  3.230e+12
Flops/sec:            3.384e+08     1.438   2.827e+08  2.941e+10
MPI Msg Count:        3.167e+05     4.917   1.797e+05  1.869e+07
MPI Msg Len (bytes):  9.906e+08     4.230   3.423e+03  6.398e+10
MPI Reductions:       2.819e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 9.5083e+01  86.6%  2.8224e+12  87.4%  6.477e+06  34.7%  6.669e+03       67.5%  2.035e+04  72.2%
 1:        MG Apply: 1.4767e+01  13.4%  4.0778e+11  12.6%  1.221e+07  65.3%  1.702e+03       32.5%  7.819e+03  27.7%

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

BuildTwoSided       1823 1.0 4.1343e+00 7.2 0.00e+00 0.0 1.1e+05 4.0e+00 1.8e+03  2  0  1  0  6   2  0  2  0  9    -0
BuildTwoSidedF      1710 1.0 1.8412e+00 3.8 0.00e+00 0.0 1.6e+05 7.0e+04 1.7e+03  1  0  1 17  6   1  0  2 26  8    -0
SFSetGraph           119 1.0 5.2406e-04 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              113 1.0 2.7511e+00 473.6 0.00e+00 0.0 6.6e+04 7.5e+01 8.1e+01  0  0  0  0  0   0  0  1  0  0    -0
SFBcastBegin        1888 1.0 3.8062e-02 2.8 0.00e+00 0.0 1.1e+06 5.0e+03 0.0e+00  0  0  6  8  0   0  0 16 12  0    -0
SFBcastEnd          1888 1.0 4.1840e+00 181.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
SFReduceBegin       1412 1.0 2.3926e-02 4.8 0.00e+00 0.0 7.9e+05 5.5e+03 0.0e+00  0  0  4  7  0   0  0 12 10  0    -0
SFReduceEnd         1412 1.0 5.2737e-01 42.4 8.70e+06 4.4 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1025
SFFetchOpBegin         4 1.0 1.6692e-05 3.8 0.00e+00 0.0 2.3e+03 3.3e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           4 1.0 4.1971e-04 16.4 0.00e+00 0.0 2.3e+03 3.3e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          3 1.0 5.7060e-04 1.2 0.00e+00 0.0 1.3e+03 7.5e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         36 1.0 3.7131e-03 1.3 0.00e+00 0.0 5.6e+04 3.7e+01 4.2e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           37 1.0 2.1487e-03 2.1 0.00e+00 0.0 2.6e+04 1.9e+01 3.7e+01  0  0  0  0  0   0  0  0  0  0    -0
SFRemoteOff            1 1.0 6.5128e-05 3.3 0.00e+00 0.0 7.4e+02 8.8e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack            216077 1.1 6.6994e-02 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack          216081 1.1 2.1817e-02 2.1 8.71e+06 4.4 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 24788
VecDot               283 1.0 3.3902e-02 7.2 3.26e+06 1.1 0.0e+00 0.0e+00 2.8e+02  0  0  0  0  1   0  0  0  0  1  9267
VecMDot             7031 1.0 2.2460e+00 5.2 4.35e+08 1.1 0.0e+00 0.0e+00 7.0e+03  1  1  0  0 25   1  1  0  0 35 18670
VecNorm             9544 1.0 7.8088e-01 4.8 9.54e+07 1.1 0.0e+00 0.0e+00 9.5e+03  0  0  0  0 34   0  0  0  0 47 11776
VecScale            7880 1.0 1.3862e-02 1.4 3.81e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 265073
VecCopy             4465 1.0 1.6369e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              7926 1.0 5.1706e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              849 1.0 8.1808e-03 1.3 6.57e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 77454
VecWAXPY            1375 1.0 8.4486e-03 1.6 1.42e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 162095
VecMAXPY            7880 1.0 7.3234e-02 1.3 5.05e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  2  0  0  0   0  2  0  0  0 664332
VecScatterBegin   212773 1.1 2.6177e-01 1.9 0.00e+00 0.0 4.1e+06 4.9e+03 0.0e+00  0  0 22 31  0   0  0 63 46  0    -0
VecScatterEnd     212773 1.1 1.2203e+00 17.8 6.30e+03 4.4 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     0
VecReduceArith       566 1.0 3.6364e-03 2.4 6.52e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 172790
VecReduceComm        283 1.0 4.3824e-02 18.0 0.00e+00 0.0 0.0e+00 0.0e+00 2.8e+02  0  0  0  0  1   0  0  0  0  1    -0
VecNormalize        4395 1.0 2.4722e-01 3.5 5.42e+07 1.1 0.0e+00 0.0e+00 4.4e+03  0  0  0  0 16   0  0  0  0 22 21112
MatMult             7314 1.0 3.1345e+00 1.6 2.56e+09 1.2 4.1e+06 4.9e+03 0.0e+00  2  8 22 31  0   3  9 63 46  0 77924
MatMultTranspose       1 1.0 1.4736e-03 3.0 4.16e+05 1.2 5.6e+02 5.6e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0 26868
MatSolve          100898 1.1 6.1212e-01 1.7 6.16e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  2  0  0  0   1  2  0  0  0 96904
MatLUFactorSym        33 1.1 3.6187e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum      9340 1.1 2.7476e-01 1.2 2.54e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   0  1  0  0  0 89048
MatILUFactorSym        1 1.0 2.4848e-05 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin   11934 1.1 1.8831e+00 2.2 0.00e+00 0.0 1.6e+05 7.0e+04 1.7e+03  1  0  1 17  6   2  0  2 26  8    -0
MatAssemblyEnd     11934 1.1 6.8440e-01 13.2 1.74e+07 0.0 3.3e+03 4.8e+02 4.4e+01  0  0  0  0  0   0  0  0  0  0  1003
MatGetRowIJ           33 1.1 6.6120e-06 3.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats     283 1.0 6.0045e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   1  0  0  0  0    -0
MatGetOrdering        33 1.1 2.8104e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       849 1.0 7.5990e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatView              355 1.1 9.8392e-02 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 3.2e+02  0  0  0  0  1   0  0  0  0  2    -0
MatTranspose           5 1.0 4.9216e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          5 1.0 1.7205e-03 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum       1133 1.0 6.5313e-02 1.3 1.19e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 173441
MatPtAPSymbolic        2 1.0 5.7221e-03 1.1 0.00e+00 0.0 3.3e+03 4.8e+03 1.4e+01  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       566 1.0 4.6231e-01 1.0 4.70e+08 1.2 3.2e+05 8.5e+03 5.8e+02  0  1  2  4  2   0  2  5  6  3 96978
MatGetLocalMat       568 1.0 1.9355e-02 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        568 1.0 7.8557e-02 1.7 0.00e+00 0.0 3.2e+05 8.5e+03 0.0e+00  0  0  2  4  0   0  0  5  6  0    -0
MatSetPreallCOO       16 1.0 4.1708e-05 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       16 1.0 1.9381e-05 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp              283 1.0 1.1961e+01 1.0 2.94e+09 1.2 2.5e+06 4.7e+03 9.5e+03 11  9 13 18 34  13 10 38 27 47 23538
PCApply             3202 1.0 1.5780e+01 1.1 4.32e+09 1.2 1.2e+07 1.7e+03 7.8e+03 13 13 65 32 28 Multiple stages 25842
PCApplyOnBlocks   100898 1.1 9.6121e-01 1.5 8.68e+08 1.1 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   1  3  0  0  0 87027
KSPSetUp             283 1.0 3.7455e-04 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             283 1.0 1.7175e+01 1.0 6.23e+09 1.2 1.4e+07 2.2e+03 1.5e+04 16 18 75 48 51 Multiple stages 34376
KSPGMRESOrthog      7031 1.0 2.2838e+00 4.8 8.70e+08 1.1 0.0e+00 0.0e+00 7.0e+03  1  3  0  0 25   1  3  0  0 35 36724
DMRefine               1 1.0 2.2440e-01 1.0 1.04e+03 1.0 4.4e+03 1.9e+01 3.0e+01  0  0  0  0  0   0  0  0  0  0     0
DMPlexCreateGmsh       1 1.0 1.0421e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 2.9678e-01 22.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Partition         3 1.0 3.0430e-02 1.0 0.00e+00 0.0 1.7e+04 3.3e+01 3.8e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         3 1.0 9.3085e-03 1.0 0.00e+00 0.0 6.0e+04 3.6e+01 1.8e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 9.8967e-04 492.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       3 1.0 6.0106e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        3 1.0 2.8080e-03 1.1 0.00e+00 0.0 3.3e+03 2.5e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       3 1.0 8.4411e-04 1.6 0.00e+00 0.0 1.6e+03 9.2e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          3 1.0 6.1859e-04 2.9 0.00e+00 0.0 1.7e+03 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          15 1.0 4.0174e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 3.3935e-02 1.0 0.00e+00 0.0 4.3e+03 1.2e+02 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        3 1.0 1.0947e-03 1.1 0.00e+00 0.0 9.3e+03 5.6e+01 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       3 1.0 3.3362e-03 1.0 0.00e+00 0.0 3.0e+04 3.5e+01 1.1e+02  0  0  0  0  0   0  0  0  0  1    -0
DMPlexDistOvrlp        2 1.0 6.7276e-03 1.0 0.00e+00 0.0 7.4e+04 3.2e+01 1.6e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistField        5 1.0 1.8311e-03 1.2 0.00e+00 0.0 1.3e+04 2.9e+01 1.4e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         1 1.0 1.1862e-04 1.2 0.00e+00 0.0 3.3e+03 1.5e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify        23 1.0 3.1898e-03 5.3 0.00e+00 0.0 0.0e+00 0.0e+00 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      23 1.0 1.0791e-04 6.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          1 1.0 5.1426e-05 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          1 1.0 2.1187e-03 2.2 0.00e+00 0.0 2.2e+03 1.5e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          1 1.0 4.3659e-05 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          1 1.0 1.9297e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             1 1.0 2.3298e-04 2.3 0.00e+00 0.0 2.2e+03 1.5e+01 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         1 1.0 3.0885e-05 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         1 1.0 4.0588e-04 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMSwarmSetSizes        2 1.0 1.3853e-05 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve              6 1.0 5.4514e+01 1.0 3.72e+10 1.4 1.8e+07 3.5e+03 2.8e+04 50 100 99 100 98 Multiple stages 59253
SNESSetUp              1 1.0 2.0636e-05 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval    1381 1.0 1.2395e+01 1.0 1.96e+10 1.6 1.5e+06 5.6e+03 0.0e+00 11 51  8 14  0  13 58 24 20  0 132287
SNESJacobianEval     283 1.0 1.2724e+01 1.0 8.32e+09 1.5 3.2e+05 3.8e+04 1.1e+03 12 22  2 19  4  13 25  5 27  6 55278
SNESLineSearch       283 1.0 2.6344e+00 1.0 1.96e+10 1.6 1.7e+06 5.6e+03 2.2e+03  2 51  9 15  8   3 58 26 22 11 625429
DualSpaceSetUp         4 1.0 4.0620e-03 1.2 5.40e+01 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     1
FESetUp                4 1.0 1.9754e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 1.0750e+02 1.0 3.72e+10 1.4 1.9e+07 3.4e+03 2.8e+04 98 100 100 100 100 Multiple stages 30050
firedrake.__init__       1 1.0 7.0658e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  6  0  0  0  0   7  0  0  0  0    -0
CreateMesh             2 1.0 4.1431e-01 3.2 0.00e+00 0.0 1.5e+05 3.6e+01 3.2e+02  0  0  1  0  1   0  0  2  0  2    -0
firedrake.mesh._from_gmsh       1 1.0 2.9736e-01 22.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       2 1.0 7.7145e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       2 1.0 4.3210e-06 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        4 1.0 3.3200e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          2 1.0 6.7836e-04 3.9 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      24 1.0 7.0608e-02 1.0 0.00e+00 0.0 5.3e+03 5.1e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      29 1.0 1.6133e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      26 1.0 6.8520e-02 1.0 0.00e+00 0.0 5.3e+03 5.1e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      25 1.0 6.6221e-02 1.0 0.00e+00 0.0 5.3e+03 5.1e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      25 1.0 6.6090e-02 1.0 0.00e+00 0.0 5.3e+03 5.1e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      50 1.0 5.2493e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       4 1.0 3.9600e-03 1.1 0.00e+00 0.0 3.1e+03 4.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       8 1.0 9.2678e-04 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      16 1.0 1.5303e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      66 1.0 1.3713e-02 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          2 1.0 1.6865e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  2  0  0  0  0   2  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       2 1.0 1.9505e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       5 1.0 4.7493e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       4 1.0 9.4544e-05 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       2 1.0 1.6816e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  2  0  0  0  0   2  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     232 1.0 2.0645e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      8055 1.0 3.0683e+01 1.0 2.79e+10 1.6 9.5e+05 5.6e+03 2.6e+01 27 72  5  8  0  31 83 15 12  0 76326
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       4 1.0 1.6462e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)   16110 1.0 2.6568e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 24  0  0  0  0  28  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      19 1.0 1.0535e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  9  0  0  0  0  11  0  0  0  0    -0
GlobalKernel: generate loopy      19 0.0 1.2579e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      19 0.0 8.8322e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      20 1.0 2.1038e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 17  0  0  0  0  19  0  0  0  0    -0
pyop2.compilation.load      20 1.0 2.1037e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 17  0  0  0  0  19  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      20 1.0 1.0316e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  9  0  0  0  0  11  0  0  0  0    -0
pyop2.compilation.make_so      20 1.0 1.0160e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  9  0  0  0  0  11  0  0  0  0    -0
ParLoopRednBegin    8055 1.0 6.0403e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      8055 1.0 7.8612e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       2 1.0 6.6538e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong       2 1.0 6.4372e+00 1.0 1.56e+05 1.1 6.8e+03 6.8e+02 7.0e+00  6  0  0  0  0   7  0  0  0  0     2
firedrake.interpolation.interpolate      16 1.0 4.1760e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      13 1.0 1.2805e+01 1.0 1.17e+06 1.1 2.4e+04 1.1e+03 1.1e+02 12  0  0  0  0  13  0  0  0  1     9
firedrake.formmanipulation.split_form      14 1.0 5.0736e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      14 1.0 1.3297e-03 8.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      14 1.0 1.9893e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       8 1.0 1.2142e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin    1688 1.0 3.8285e+00 120.0 0.00e+00 0.0 9.5e+05 5.5e+03 3.0e+00  2  0  5  8  0   2  0 15 12  0    -0
Parloop_Cells_wrap_expression_kernel      28 1.0 6.9141e+00 1.0 1.17e+06 1.1 0.0e+00 0.0e+00 0.0e+00  6  0  0  0  0   7  0  0  0  0    16
firedrake.halo.Halo.global_to_local_end    1688 1.0 8.0324e-01 53.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       2 1.0 8.1705e+00 49.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   4  0  0  0  0    -0
Parloop_set_#x153ce477f6d0_wrap_pyop2_kernel_prolong       4 0.0 7.5027e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 3.7443e+00 1.0 9.73e+05 1.1 9.6e+03 2.5e+03 1.1e+01  3  0  0  0  0   4  0  0  0  0    25
firedrake.function.Function.assign      37 1.0 2.7090e-02 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      36 1.0 1.7300e-02 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.0090e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate       4 1.0 2.5404e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 2.5773e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.3436e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 2.2625e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.1043e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 3.0145e+00 1.0 0.00e+00 0.0 3.7e+03 2.2e+04 2.3e+01  3  0  0  0  0   3  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 5.5710e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 1.2922e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 4.9948e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  4  0  0  0  0   5  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 4.9948e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  4  0  0  0  0   5  0  0  0  0    -0
CreateSparsity         3 1.0 2.3872e-01 5.3 0.00e+00 0.0 6.2e+03 6.3e+03 3.2e+01  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         3 1.0 6.6597e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve       6 1.0 5.4571e+01 1.0 3.72e+10 1.4 1.8e+07 3.5e+03 2.8e+04 50 100 99 100 98 Multiple stages 59191
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 2.7152e-01 917.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 7.1820e-06 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 2.7147e-01 1094.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 2.7144e-01 1243.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral    2762 1.0 2.1877e+00 1.2 4.52e+09 1.1 0.0e+00 0.0e+00 0.0e+00  2 13  0  0  0   2 15  0  0  0 199213
Parloop_Cells_wrap_form0_exterior_facet_top_integral    2762 1.0 9.9930e-01 1.0 5.88e+06 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0   567
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral    2762 1.0 1.3730e+00 1.0 8.15e+07 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0  1485
Parloop_Cells_wrap_form0_interior_facet_horiz_integral    2762 1.0 1.8673e+00 1.0 4.21e+09 1.1 0.0e+00 0.0e+00 0.0e+00  2 13  0  0  0   2 14  0  0  0 217420
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral    2762 1.0 3.2604e+00 1.1 1.08e+10 2.3 0.0e+00 0.0e+00 0.0e+00  3 25  0  0  0   3 28  0  0  0 243753
firedrake.halo.Halo.local_to_global_begin    1381 1.0 3.0662e-02 2.5 0.00e+00 0.0 7.7e+05 5.6e+03 0.0e+00  0  0  4  7  0   0  0 12 10  0    -0
firedrake.halo.Halo.local_to_global_end    1381 1.0 5.3164e-01 31.8 8.70e+06 4.4 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1017
Parloop_Cells_wrap_form00_cell_integral     566 1.0 2.4604e+00 1.1 1.73e+09 1.1 0.0e+00 0.0e+00 0.0e+00  2  5  0  0  0   2  6  0  0  0 67734
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     566 1.0 1.1180e+00 1.0 1.70e+07 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0   380
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     566 1.0 3.0187e+00 1.0 2.22e+09 1.1 0.0e+00 0.0e+00 0.0e+00  3  7  0  0  0   3  8  0  0  0 70842
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     566 1.0 4.6942e+00 1.2 4.38e+09 2.3 0.0e+00 0.0e+00 0.0e+00  4 10  0  0  0   5 11  0  0  0 68538
firedrake.dmhooks.get_function_space       2 1.0 1.2051e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       2 1.0 7.5585e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.VertexOnlyMesh       1 1.0 5.6391e+00 1.0 0.00e+00 0.0 7.8e+03 4.5e+01 1.1e+01  5  0  0  0  0   6  0  0  0  0    -0
firedrake.mesh._pic_swarm_in_mesh       1 1.0 5.6357e+00 1.0 0.00e+00 0.0 5.5e+03 3.6e+01 6.0e+00  5  0  0  0  0   6  0  0  0  0    -0
firedrake.mesh._parent_mesh_embedding       1 1.0 5.6284e+00 1.0 0.00e+00 0.0 3.3e+03 1.5e+01 4.0e+00  5  0  0  0  0   6  0  0  0  0    -0
firedrake.mesh.MeshGeometry.locate_cells_ref_coords_and_dists       1 1.0 5.6165e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  5  0  0  0  0   6  0  0  0  0    -0
firedrake.mesh.MeshGeometry._c_locator       1 1.0 5.6143e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  5  0  0  0  0   6  0  0  0  0    -0
firedrake.pointquery_utils.src_locate_cell       1 1.0 5.1809e+00 14.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   3  0  0  0  0    -0
firedrake.pointquery_utils.compile_coordinate_element       1 1.0 5.1723e+00 48.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   3  0  0  0  0    -0
firedrake.pointquery_utils.make_wrapper       1 1.0 3.5986e+00 538.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.parloop.generate_single_cell_wrapper       1 1.0 3.5985e+00 544.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
c_locator_run          1 1.0 1.5908e-02 10.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._ctypes       1 1.0 1.5499e-02 12.9 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._constant_ctypes       1 1.0 9.8917e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.rtree       1 1.0 1.4173e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.bounding_box_coords       1 1.0 1.5113e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
rtree_build            1 1.0 1.2603e-03 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._dmswarm_create       2 1.0 2.0389e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._swarm_original_ordering_preserve       1 1.0 5.4643e-03 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.VertexOnlyMeshTopology.__init__       2 1.0 3.3742e-03 1.1 0.00e+00 0.0 2.2e+03 6.7e+01 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_vom_from_vom_topology       2 1.0 1.5987e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.action       1 1.0 2.2017e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0      283 1.0 1.7672e-01 1.0 1.10e+07 1.3 7.2e+05 1.3e+02 2.9e+03  0  0  4  0 10   0  0 11  0 14  5764
MGSetup Level 1      283 1.0 3.1801e+00 1.0 2.46e+09 1.2 1.6e+06 5.6e+03 6.0e+03  3  7  8 14 21   3  8 24 21 29 74213
firedrake.constant.Constant.assign       5 1.0 1.5396e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb67e72950_wrap_pyop2_kernel_prolong       4 0.0 7.5032e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152eac2617d0_wrap_pyop2_kernel_prolong       4 0.0 7.5034e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c471a03890_wrap_pyop2_kernel_prolong       4 0.0 7.4994e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154688415810_wrap_pyop2_kernel_prolong       4 0.0 7.4988e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150691d5e790_wrap_pyop2_kernel_prolong       4 0.0 7.5031e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e1df03b910_wrap_pyop2_kernel_prolong       4 0.0 7.4991e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1516f79d8e50_wrap_pyop2_kernel_prolong       4 0.0 7.5016e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5c52326d0_wrap_pyop2_kernel_prolong       4 0.0 7.4985e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1551a50c8690_wrap_pyop2_kernel_prolong       4 0.0 7.4997e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1480d136b890_wrap_pyop2_kernel_prolong       4 0.0 7.4991e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14791a8f83d0_wrap_pyop2_kernel_prolong       4 0.0 7.5016e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15222bd742d0_wrap_pyop2_kernel_prolong       4 0.0 7.5024e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fdefc27890_wrap_pyop2_kernel_prolong       4 0.0 7.4942e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150dd5b8a150_wrap_pyop2_kernel_prolong       4 0.0 7.4873e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eff05a8ed0_wrap_pyop2_kernel_prolong       4 0.0 7.4894e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b204c31690_wrap_pyop2_kernel_prolong       4 0.0 7.4969e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c1dd1e610_wrap_pyop2_kernel_prolong       4 0.0 7.4942e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1524b62f70d0_wrap_pyop2_kernel_prolong       4 0.0 7.5022e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15349b34f0d0_wrap_pyop2_kernel_prolong       4 0.0 7.4997e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c85578290_wrap_pyop2_kernel_prolong       4 0.0 7.4989e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eee8d01750_wrap_pyop2_kernel_prolong       4 0.0 7.4865e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152da1d77650_wrap_pyop2_kernel_prolong       4 0.0 7.5005e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e897942750_wrap_pyop2_kernel_prolong       4 0.0 7.5010e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e1eb43250_wrap_pyop2_kernel_prolong       4 0.0 7.4943e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1545c3880910_wrap_pyop2_kernel_prolong       4 0.0 7.5008e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b15118ad0_wrap_pyop2_kernel_prolong       4 0.0 7.5019e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a18a4ae950_wrap_pyop2_kernel_prolong       4 0.0 7.5006e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1457f85f1ad0_wrap_pyop2_kernel_prolong       4 0.0 7.5019e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c84381fb50_wrap_pyop2_kernel_prolong       4 0.0 7.4877e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1513189c0ed0_wrap_pyop2_kernel_prolong       4 0.0 7.4946e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154131135490_wrap_pyop2_kernel_prolong       4 0.0 7.4973e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152b36976450_wrap_pyop2_kernel_prolong       4 0.0 7.4961e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f979bbcf90_wrap_pyop2_kernel_prolong       4 0.0 7.4979e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14702d046110_wrap_pyop2_kernel_prolong       4 0.0 7.4954e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1516514a7e10_wrap_pyop2_kernel_prolong       4 0.0 7.4961e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1553522b8d90_wrap_pyop2_kernel_prolong       4 0.0 7.4991e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b13fca310_wrap_pyop2_kernel_prolong       4 0.0 7.4937e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd7db02b10_wrap_pyop2_kernel_prolong       4 0.0 7.4973e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b044123bd0_wrap_pyop2_kernel_prolong       4 0.0 7.4958e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152ec884ea50_wrap_pyop2_kernel_prolong       4 0.0 7.4978e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d74e277f50_wrap_pyop2_kernel_prolong       4 0.0 7.5009e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b9711d890_wrap_pyop2_kernel_prolong       4 0.0 7.4950e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ba52871750_wrap_pyop2_kernel_prolong       4 0.0 7.4952e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146309ffca90_wrap_pyop2_kernel_prolong       4 0.0 7.4938e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15284e409e90_wrap_pyop2_kernel_prolong       4 0.0 7.4968e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e222836f90_wrap_pyop2_kernel_prolong       4 0.0 7.4985e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14836459f090_wrap_pyop2_kernel_prolong       4 0.0 7.4832e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a84973e2d0_wrap_pyop2_kernel_prolong       4 0.0 7.5023e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a98cffe890_wrap_pyop2_kernel_prolong       4 0.0 7.4926e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1550db3a2050_wrap_pyop2_kernel_prolong       4 0.0 7.4960e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1507aa60fc90_wrap_pyop2_kernel_prolong       4 0.0 7.5025e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c46122dbd0_wrap_pyop2_kernel_prolong       4 0.0 7.4859e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef213b6f10_wrap_pyop2_kernel_prolong       4 0.0 7.4879e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1489f0674350_wrap_pyop2_kernel_prolong       4 0.0 7.4824e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c970df5c90_wrap_pyop2_kernel_prolong       4 0.0 7.4833e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a0f2c668d0_wrap_pyop2_kernel_prolong       4 0.0 7.4812e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151416bbf150_wrap_pyop2_kernel_prolong       4 0.0 7.4868e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f49c2c750_wrap_pyop2_kernel_prolong       4 0.0 7.4874e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151c228f6110_wrap_pyop2_kernel_prolong       4 0.0 7.4814e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e4ae4677d0_wrap_pyop2_kernel_prolong       4 0.0 7.4918e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ed80b59d0_wrap_pyop2_kernel_prolong       4 0.0 7.4896e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15319c5ac250_wrap_pyop2_kernel_prolong       4 0.0 7.4874e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1462ccf50710_wrap_pyop2_kernel_prolong       4 0.0 7.4893e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f9da2c2890_wrap_pyop2_kernel_prolong       4 0.0 7.4904e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b0e48618d0_wrap_pyop2_kernel_prolong       4 0.0 7.4843e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c4502dc50_wrap_pyop2_kernel_prolong       4 0.0 7.4825e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bbbd696810_wrap_pyop2_kernel_prolong       4 0.0 7.4920e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aba0d18b50_wrap_pyop2_kernel_prolong       4 0.0 7.4884e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aef9f30610_wrap_pyop2_kernel_prolong       4 0.0 7.4813e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5301d67d0_wrap_pyop2_kernel_prolong       4 0.0 7.4914e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc5cbb3250_wrap_pyop2_kernel_prolong       4 0.0 7.4831e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154bdd416610_wrap_pyop2_kernel_prolong       4 0.0 7.4841e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be47f75c10_wrap_pyop2_kernel_prolong       4 0.0 7.4873e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a910a9c90_wrap_pyop2_kernel_prolong       4 0.0 7.4885e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498e1c4f610_wrap_pyop2_kernel_prolong       4 0.0 7.4797e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa79823ad0_wrap_pyop2_kernel_prolong       4 0.0 7.4826e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147cd6f64210_wrap_pyop2_kernel_prolong       4 0.0 7.4923e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d3c178c0d0_wrap_pyop2_kernel_prolong       4 0.0 7.4879e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a55f95b210_wrap_pyop2_kernel_prolong       4 0.0 7.4805e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15196c0c4c90_wrap_pyop2_kernel_prolong       4 0.0 7.4886e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ebba15310_wrap_pyop2_kernel_prolong       4 0.0 7.4833e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497ebd17e90_wrap_pyop2_kernel_prolong       4 0.0 7.4843e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a3169d4090_wrap_pyop2_kernel_prolong       4 0.0 7.4839e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ccd284dd10_wrap_pyop2_kernel_prolong       4 0.0 7.4911e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15197a4af750_wrap_pyop2_kernel_prolong       4 0.0 7.4857e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15506f4e5990_wrap_pyop2_kernel_prolong       4 0.0 7.4829e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14acc6f0dc10_wrap_pyop2_kernel_prolong       4 0.0 7.4924e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e7af23e90_wrap_pyop2_kernel_prolong       4 0.0 7.4877e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148291023a50_wrap_pyop2_kernel_prolong       4 0.0 7.4844e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153356e52a90_wrap_pyop2_kernel_prolong       4 0.0 7.4899e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1485dbfce1d0_wrap_pyop2_kernel_prolong       4 0.0 7.4845e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151104b13e50_wrap_pyop2_kernel_prolong       4 0.0 7.4847e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bec0638310_wrap_pyop2_kernel_prolong       4 0.0 7.4831e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c2224594d0_wrap_pyop2_kernel_prolong       4 0.0 7.4889e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd6255cc10_wrap_pyop2_kernel_prolong       4 0.0 7.4907e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a21423750_wrap_pyop2_kernel_prolong       4 0.0 7.4962e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1474d695b450_wrap_pyop2_kernel_prolong       4 0.0 7.4854e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab141ce350_wrap_pyop2_kernel_prolong       4 0.0 7.4860e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e662fa3a50_wrap_pyop2_kernel_prolong       4 0.0 7.4938e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14db9371e0d0_wrap_pyop2_kernel_prolong       4 0.0 7.4896e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153e23f82f10_wrap_pyop2_kernel_prolong       4 0.0 7.4855e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1541c169bf10_wrap_pyop2_kernel_prolong       4 0.0 7.4925e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a9695c0510_wrap_pyop2_kernel_prolong       4 0.0 7.4917e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided        283 1.0 1.0353e-02 2.6 0.00e+00 0.0 9.1e+04 4.0e+00 2.8e+02  0  0  0  0  1   0  0  1  0  4    -0
SFSetGraph           283 1.0 6.5532e-04 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              283 1.0 1.5330e-02 2.4 0.00e+00 0.0 1.8e+05 1.6e+01 2.8e+02  0  0  1  0  1   0  0  1  0  4    -0
SFPack            457886 1.1 6.7456e-02 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack          457886 1.1 2.2595e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy            19212 1.0 2.3455e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet             35220 1.0 8.8744e-02 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecAYPX            32020 1.0 4.4511e-02 1.5 1.13e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  3  0  0  0 244926
VecAXPBYCZ          6404 1.0 2.5929e-03 2.8 3.07e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 114254
VecScatterBegin   457886 1.1 4.7934e-01 1.9 0.00e+00 0.0 1.2e+07 1.8e+03 0.0e+00  0  0 63 32  0   2  0 96 100  0    -0
VecScatterEnd     457886 1.1 1.5930e+00 8.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   4  0  0  0  0    -0
MatMult            19212 1.0 3.8224e+00 1.4 2.62e+09 1.2 1.1e+07 1.9e+03 0.0e+00  3  8 57 32  0  20 61 88 100  0 65451
MatMultAdd          6404 1.0 8.1562e-02 1.6 1.13e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  3  0  0  0 132939
MatMultTranspose    6404 1.0 1.3865e-01 1.5 1.13e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  3  0  0  0 78205
MatSolve          220938 1.1 9.5852e+00 1.1 1.36e+09 1.2 1.5e+06 4.5e+01 1.4e+03  8  4  8  0  5  63 31 12  0 18 13009
MatLUFactorNum       282 1.0 1.4511e+00 1.0 1.65e+06 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0  10  0  0  0  0    19
MatResidual         6404 1.0 1.5950e+00 1.5 1.32e+09 1.2 3.6e+06 2.9e+03 0.0e+00  1  4 19 16  0   9 31 29 49  0 79136
PCSetUp              282 1.0 1.4528e+00 1.0 1.65e+06 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0  10  0  0  0  0    19
PCSetUpOnBlocks     6404 1.0 1.2152e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply             9606 1.0 1.2049e+01 1.1 1.40e+09 1.2 8.6e+06 8.5e+01 4.6e+03 11  4 46  1 16  80 31 71  4 59 10648
PCApplyOnBlocks   217736 1.1 1.7760e+00 1.7 1.29e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  4  0  0  0   9 30  0  0  0 69673
KSPSolve            9606 1.0 1.4285e+01 1.1 2.79e+09 1.2 1.0e+07 1.0e+03 7.8e+03 12  8 56 17 28  90 64 85 52 100 18267
MGSmooth Level 0    3202 1.0 1.0472e+01 1.1 1.41e+08 2.8 8.6e+06 8.5e+01 7.8e+03  9  0 46  1 28  68  2 71  4 100   642
MGSmooth Level 1    6404 1.0 4.1600e+00 1.6 2.65e+09 1.2 1.8e+06 5.6e+03 0.0e+00  3  8 10 16  0  21 62 15 48  0 61108
MGResid Level 1     3202 1.0 1.5258e+00 1.4 1.31e+09 1.2 1.8e+06 5.6e+03 0.0e+00  1  4 10 16  0   9 31 15 48  0 82263
MGInterp Level 1    6404 1.0 1.8683e-01 1.4 2.21e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  5  0  0  0 114170
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container    62             61
              Viewer    15             15
           Index Set  1289           1289
   IS L to G Mapping   137            133
             Section   294            294
   Star Forest Graph   293            292
              Vector  1981           1977
              Matrix   243            229
      Preconditioner    38             38
       Krylov Solver    36             36
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

           Index Set   566            566
   Star Forest Graph   285            282
              Vector   565            565
    Distributed Mesh     1              0
     Discrete System     1              0
           Weak Form     1              0
========================================================================================================================
Average time to get PetscTime(): 2.66e-08
Average time for MPI_Barrier(): 4.6328e-06
Average time for zero size MPI_Send(): 2.03699e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_mg_coarse_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_mg_levels_1_pc_linesmooth_sub_sub_pc_factor_mat_ordering_type natural # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026-profile-stage2-20260820T053301Z/smoke/results/vlumping_hmg/smoke.profile # (source: code)
-options_left # (source: code)
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

