****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0166.gadi.nci.org.au with 416 processes, by sg8812 on Thu Aug 27 15:48:14 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           2.365e+03     1.000   2.365e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                2.905e+12     1.135   2.784e+12  1.158e+15
Flops/sec:            1.228e+09     1.135   1.177e+09  4.898e+11
MPI Msg Count:        3.081e+05     4.092   1.669e+05  6.943e+07
MPI Msg Len (bytes):  2.630e+10     3.194   1.106e+05  7.680e+12
MPI Reductions:       3.280e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 1.5372e+03  65.0%  9.9588e+14  86.0%  3.106e+07  44.7%  1.729e+05       69.9%  2.603e+04  79.4%
 1:        MG Apply: 8.2763e+02  35.0%  1.6233e+14  14.0%  3.836e+07  55.3%  6.019e+04       30.1%  6.755e+03  20.6%

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

BuildTwoSided       2808 1.0 1.4395e+02 3.2 0.00e+00 0.0 7.0e+05 4.0e+00 2.6e+03  4  0  1  0  8   6  0  2  0 10    -0
BuildTwoSidedF      2486 1.0 1.4444e+02 3.0 0.00e+00 0.0 1.1e+06 1.4e+06 2.5e+03  4  0  2 21  8   6  0  4 30 10    -0
SFSetGraph           329 1.1 1.5776e-02 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              322 1.1 4.8247e+00 126.7 0.00e+00 0.0 3.0e+05 1.1e+03 9.8e+01  0  0  0  0  0   0  0  1  0  0    -0
SFBcastBegin        1926 1.0 1.0899e+00 3.4 0.00e+00 0.0 4.2e+06 1.1e+05 0.0e+00  0  0  6  6  0   0  0 14  8  0    -0
SFBcastEnd          1926 1.0 3.8379e+01 89.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin       1155 1.0 3.8269e-01 26.5 0.00e+00 0.0 2.6e+06 1.2e+05 0.0e+00  0  0  4  4  0   0  0  8  6  0    -0
SFReduceEnd         1155 1.0 1.3133e+01 47.3 1.28e+08 3.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2850
SFFetchOpBegin         6 1.0 3.2576e-05 4.8 0.00e+00 0.0 1.1e+04 7.1e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           6 1.0 1.0063e-03 22.6 0.00e+00 0.0 1.1e+04 7.1e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          4 1.0 1.6466e-03 2.9 0.00e+00 0.0 5.4e+03 1.1e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         49 1.0 9.2815e-03 1.3 0.00e+00 0.0 2.6e+05 7.9e+01 5.8e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           51 1.0 5.3862e-03 2.7 0.00e+00 0.0 1.2e+05 3.8e+01 5.1e+01  0  0  0  0  0   0  0  0  0  0    -0
SFRemoteOff            2 1.0 3.0179e-04 9.9 0.00e+00 0.0 4.7e+03 1.6e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack           2468018 1.1 4.9161e+00 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack         2468024 1.1 7.6657e-01 4.4 1.28e+08 3.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 48827
VecDot               496 1.0 2.0025e+00 3.9 4.00e+08 1.1 0.0e+00 0.0e+00 5.0e+02  0  0  0  0  2   0  0  0  0  2 81806
VecMDot             9235 1.0 1.2568e+02 2.5 3.90e+10 1.1 0.0e+00 0.0e+00 9.2e+03  4  1  0  0 28   5  2  0  0 35 127191
VecNorm            11837 1.0 4.1011e+01 2.6 9.55e+09 1.1 0.0e+00 0.0e+00 1.2e+04  1  0  0  0 36   2  0  0  0 45 95327
VecScale           10227 1.0 3.3200e+00 1.2 4.12e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 508691
VecCopy             4738 1.0 6.7474e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet             12896 1.0 1.0569e+01 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecAXPY              992 1.0 1.6592e+00 1.2 8.00e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 197462
VecWAXPY            1086 1.0 2.3037e+00 1.2 6.76e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 120141
VecMAXPY           10227 1.0 6.0303e+01 1.1 4.65e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  2  0  0  0   4  2  0  0  0 315658
VecScatterBegin  2464931 1.1 3.2004e+01 1.4 0.00e+00 0.0 2.2e+07 1.2e+05 0.0e+00  1  0 31 34  0   2  0 70 49  0    -0
VecScatterEnd    2464931 1.1 6.4608e+01 20.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecReduceArith       992 1.0 7.6219e-01 2.0 8.00e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 429859
VecReduceComm        496 1.0 6.2973e-01 20.1 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+02  0  0  0  0  2   0  0  0  0  2    -0
VecNormalize        5456 1.0 2.6323e+01 3.0 6.60e+09 1.1 0.0e+00 0.0e+00 5.5e+03  1  0  0  0 17   1  0  0  0 21 102688
MatMult             9731 1.0 4.0933e+02 1.2 2.78e+11 1.1 2.2e+07 1.2e+05 0.0e+00 16 10 31 34  0  25 11 70 49  0 277996
MatSolve         1222144 1.1 1.4184e+02 1.6 7.68e+10 1.1 0.0e+00 0.0e+00 0.0e+00  5  3  0  0  0   8  3  0  0  0 221825
MatLUFactorSym       225 1.1 1.3245e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum    111600 1.1 1.1898e+02 1.0 3.25e+10 1.1 0.0e+00 0.0e+00 0.0e+00  5  1  0  0  0   8  1  0  0  0 109703
MatAssemblyBegin  114631 1.1 1.5321e+02 2.1 0.00e+00 0.0 1.1e+06 1.4e+06 2.5e+03  5  0  2 21  8   7  0  4 30 10    -0
MatAssemblyEnd    114631 1.1 4.1158e+01 6.6 6.00e+08 0.0 8.9e+03 1.5e+04 1.7e+01  1  0  0  0  0   1  0  0  0  0  2438
MatGetRowIJ          224 1.1 3.4401e-05 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats     496 1.0 6.5061e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 2.2e+02  3  0  0  0  1   4  0  0  0  1    -0
MatGetOrdering       224 1.1 4.0120e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       992 1.0 2.1026e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
MatTranspose           2 1.0 1.5131e-02 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 1.2454e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        992 1.0 1.0037e+01 1.3 1.44e+10 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  1  0  0  0 586389
MatPtAPSymbolic        1 1.0 2.1703e-01 1.0 0.00e+00 0.0 6.7e+03 2.0e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       496 1.0 6.7851e+01 1.0 5.76e+10 1.1 1.1e+06 3.6e+05 5.0e+02  3  2  2  5  2   4  2  4  7  2 346836
MatGetLocalMat       496 1.0 3.9131e+00 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        496 1.0 2.0155e+00 2.0 0.00e+00 0.0 1.1e+06 3.6e+05 0.0e+00  0  0  2  5  0   0  0  4  7  0    -0
MatSetPreallCOO       32 1.0 6.5486e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       32 1.0 3.3156e-05 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp              496 1.0 6.9965e+02 1.0 3.64e+11 1.1 1.2e+07 1.4e+05 1.2e+04 30 13 18 23 36  46 15 39 32 45 212357
PCApply             4275 1.0 8.6112e+02 1.1 4.07e+11 1.1 3.8e+07 6.0e+04 6.8e+03 35 14 55 30 21 Multiple stages 188510
PCApplyOnBlocks  1222144 1.1 1.7230e+02 1.5 1.09e+11 1.1 0.0e+00 0.0e+00 0.0e+00  6  4  0  0  0  10  4  0  0  0 258209
KSPSetUp             496 1.0 1.3759e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             496 1.0 1.0677e+03 1.0 5.73e+11 1.1 4.8e+07 7.2e+04 1.6e+04 45 20 69 45 48 Multiple stages 215620
KSPGMRESOrthog      9235 1.0 1.7528e+02 1.7 7.81e+10 1.1 0.0e+00 0.0e+00 9.2e+03  6  3  0  0 28   9  3  0  0 35 182392
DMRefine               2 1.0 2.4729e-01 1.0 2.09e+03 1.0 3.2e+04 3.4e+01 6.3e+01  0  0  0  0  0   0  0  0  0  0     4
DMPlexCreateGmsh       1 1.0 2.5955e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 3.9035e+00 144.9 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Partition         4 1.0 1.4506e-01 1.0 0.00e+00 0.0 7.9e+04 6.2e+01 5.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         4 1.0 2.5144e-02 1.1 0.00e+00 0.0 2.9e+05 7.2e+01 2.4e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 3.8125e-03 1125.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       4 1.0 2.9220e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        4 1.0 6.7262e-03 1.1 0.00e+00 0.0 1.6e+04 4.9e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       4 1.0 3.0107e-03 2.7 0.00e+00 0.0 7.8e+03 1.9e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          4 1.0 2.4592e-03 2.2 0.00e+00 0.0 8.2e+03 2.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          29 1.0 1.0343e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 1.4584e-01 1.0 0.00e+00 0.0 1.7e+04 1.8e+02 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        4 1.0 3.4201e-03 1.2 0.00e+00 0.0 4.5e+04 1.1e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       4 1.0 1.0462e-02 1.0 0.00e+00 0.0 1.5e+05 7.0e+01 1.5e+02  0  0  0  0  0   0  0  0  0  1    -0
DMPlexDistOvrlp        3 1.0 2.7468e-02 1.0 0.00e+00 0.0 3.6e+05 6.8e+01 2.4e+02  0  0  1  0  1   0  0  1  0  1    -0
DMPlexDistField        7 1.0 4.9651e-03 1.3 0.00e+00 0.0 6.6e+04 5.7e+01 2.0e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify        41 1.0 9.2163e-03 6.9 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      41 1.0 5.8293e-04 10.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          2 1.0 1.4065e-04 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          2 1.0 4.0431e-03 1.6 0.00e+00 0.0 1.8e+04 2.8e+01 1.9e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          2 1.0 1.1243e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          2 1.0 7.4108e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             2 1.0 5.9900e-04 3.1 0.00e+00 0.0 1.4e+04 2.7e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         2 1.0 8.5747e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         2 1.0 8.5734e-04 1.8 0.00e+00 0.0 3.6e+03 3.6e+01 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             28 1.0 2.2976e+03 1.0 2.90e+12 1.1 6.9e+07 1.1e+05 3.2e+04 97 100 99 100 98 Multiple stages 504072
SNESSetUp              1 1.0 5.6390e-05 6.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval    1114 1.0 8.8632e+01 1.2 1.02e+12 1.2 5.0e+06 1.2e+05 0.0e+00  3 34  7  8  0   5 40 16 11  0 4507907
SNESJacobianEval     496 1.0 4.1629e+02 1.0 9.45e+11 1.2 2.2e+06 7.8e+05 2.0e+03 18 32  3 23  6  27 37  7 32  8 895411
SNESLineSearch       496 1.0 1.0269e+02 1.0 1.01e+12 1.2 6.0e+06 1.2e+05 2.6e+03  4 34  9  9  8   7 40 19 13 10 3862173
DualSpaceSetUp         8 1.0 5.4936e-03 1.2 1.08e+02 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     8
FESetUp                8 1.0 2.0924e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 2.3626e+03 1.0 2.90e+12 1.1 6.9e+07 1.1e+05 3.3e+04 100 100 100 100 100 Multiple stages 490224
firedrake.__init__       1 1.0 1.0847e+01 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
CreateMesh             3 1.0 4.1298e+00 16.6 0.00e+00 0.0 7.0e+05 7.4e+01 4.4e+02  0  0  1  0  1   0  0  2  0  2    -0
firedrake.mesh._from_gmsh       1 1.0 3.9043e+00 144.8 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       3 1.0 1.3706e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       3 1.0 6.7330e-06 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        3 1.0 5.1193e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          3 1.0 1.0615e-03 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      16 1.0 3.4777e-02 1.1 0.00e+00 0.0 1.5e+04 8.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      20 1.0 1.9293e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      20 1.0 3.2544e-02 1.1 0.00e+00 0.0 1.5e+04 8.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      19 1.0 3.0094e-02 1.1 0.00e+00 0.0 1.5e+04 8.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      19 1.0 2.9969e-02 1.1 0.00e+00 0.0 1.5e+04 8.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      38 1.0 1.3508e-02 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       6 1.0 1.1332e-02 1.9 0.00e+00 0.0 1.5e+04 8.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__      12 1.0 7.6613e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      12 1.0 1.6211e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      65 1.0 4.8896e-02 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          3 1.0 2.4221e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       3 1.0 2.3652e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       4 1.0 6.0272e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       5 1.0 1.3308e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       3 1.0 2.4156e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     364 1.0 5.9863e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      7574 1.0 4.0125e+02 1.2 1.96e+12 1.2 3.7e+06 1.2e+05 3.2e+01 15 67  5  6  0  24 78 12  8  0 1924449
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       6 1.0 2.3724e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)   15148 1.0 2.6736e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      17 1.0 1.0763e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
GlobalKernel: generate loopy      17 0.0 1.4017e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      17 0.0 8.4825e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      17 1.0 1.5280e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.load      17 1.0 1.5279e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      17 1.0 1.0022e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.make_so      17 1.0 9.8671e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
ParLoopRednBegin    7574 1.0 2.2452e-02 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      7574 1.0 2.0334e-02 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       3 1.0 9.9799e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong       4 1.0 9.1381e+00 1.0 1.36e+07 1.1 3.8e+04 1.3e+04 1.3e+01  0  0  0  0  0   1  0  0  0  0   610
firedrake.interpolation.interpolate      13 1.0 4.7254e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      13 1.0 6.0949e+00 1.0 8.46e+07 1.1 5.8e+04 4.2e+04 3.7e+01  0  0  0  0  0   0  0  0  0  0  5683
firedrake.formmanipulation.split_form      14 1.0 4.2991e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      14 1.0 2.6909e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      13 1.0 1.6151e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       6 1.0 1.0278e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin    1659 1.0 6.2797e+00 9.3 0.00e+00 0.0 3.7e+06 1.2e+05 4.0e+00  0  0  5  6  0   0  0 12  8  0    -0
Parloop_Cells_wrap_expression_kernel      26 1.0 5.5509e+00 1.0 8.46e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  6240
firedrake.halo.Halo.global_to_local_end    1659 1.0 3.8194e+01 153.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       1 1.0 3.6740e+00 57.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ae807efd0_wrap_pyop2_kernel_prolong       4 0.0 7.5124e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ae83b30d0_wrap_pyop2_kernel_prolong       4 0.0 5.1107e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 4.0655e+00 1.0 6.85e+07 1.1 3.5e+04 6.0e+04 1.1e+01  0  0  0  0  0   0  0  0  0  0  6905
firedrake.function.Function.assign     126 1.0 7.8940e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     125 1.0 7.5113e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 3.4694e-04 3.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      52 1.0 6.2936e-04 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 6.1218e-05 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.5779e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.9938e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.3229e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 7.4946e+00 1.0 0.00e+00 0.0 1.4e+04 4.8e+05 2.3e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 6.8632e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.9352e-04 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.1831e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.1831e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateSparsity         2 1.0 4.0675e+00 1.1 0.00e+00 0.0 1.2e+04 2.8e+05 1.8e+01  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         2 1.0 5.6688e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      28 1.0 2.2978e+03 1.0 2.90e+12 1.1 6.9e+07 1.1e+05 3.2e+04 97 100 99 100 98 Multiple stages 504049
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 3.2146e-01 1100.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 1.2098e-05 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 3.2141e-01 1324.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 3.2137e-01 1489.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral    2228 1.0 2.7689e+01 1.6 2.58e+11 1.1 0.0e+00 0.0e+00 0.0e+00  1  9  0  0  0   1 11  0  0  0 3816912
Parloop_Cells_wrap_form0_exterior_facet_top_integral    2228 1.0 1.1084e+00 1.1 3.32e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 12263
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral    2228 1.0 1.6161e+00 1.2 2.22e+09 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 57121
Parloop_Cells_wrap_form0_interior_facet_horiz_integral    2228 1.0 1.6166e+01 1.3 2.45e+11 1.1 0.0e+00 0.0e+00 0.0e+00  1  9  0  0  0   1 10  0  0  0 6213403
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral    2228 1.0 3.5696e+01 1.3 5.13e+11 1.3 0.0e+00 0.0e+00 0.0e+00  1 17  0  0  0   2 19  0  0  0 5414313
firedrake.halo.Halo.local_to_global_begin    1114 1.0 4.1915e-01 10.6 0.00e+00 0.0 2.5e+06 1.2e+05 0.0e+00  0  0  4  4  0   0  0  8  6  0    -0
firedrake.halo.Halo.local_to_global_end    1114 1.0 1.3146e+01 45.1 1.28e+08 3.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2847
Parloop_Cells_wrap_form00_cell_integral     992 1.0 6.0417e+01 1.4 2.13e+11 1.1 0.0e+00 0.0e+00 0.0e+00  2  8  0  0  0   3  9  0  0  0 1446344
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     992 1.0 2.6892e+00 2.4 9.94e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 15376
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     992 1.0 7.5787e+01 1.2 2.81e+11 1.1 0.0e+00 0.0e+00 0.0e+00  3 10  0  0  0   5 12  0  0  0 1516839
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     992 1.0 1.8247e+02 1.4 4.51e+11 1.3 0.0e+00 0.0e+00 0.0e+00  6 15  0  0  0  10 17  0  0  0 933129
firedrake.dmhooks.get_function_space       2 1.0 2.3709e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 5.4850e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0      496 1.0 9.3734e+01 1.0 6.56e+08 31.0 0.0e+00 0.0e+00 2.0e+00  4  0  0  0  0   6  0  0  0  0   269
MGSetup Level 1      496 1.0 5.3752e+02 1.0 3.05e+11 1.1 1.1e+07 1.2e+05 1.1e+04 23 11 16 17 32  35 13 36 25 41 232576
firedrake.constant.Constant.assign      28 1.0 1.3049e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a4dea35110_wrap_pyop2_kernel_prolong       4 0.0 7.5138e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a4dea34250_wrap_pyop2_kernel_prolong       4 0.0 5.6035e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf2395e390_wrap_pyop2_kernel_prolong       4 0.0 7.5126e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf2395c210_wrap_pyop2_kernel_prolong       4 0.0 5.6459e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f68f3601d0_wrap_pyop2_kernel_prolong       4 0.0 7.4987e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f68f37d490_wrap_pyop2_kernel_prolong       4 0.0 5.0123e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456b17a7750_wrap_pyop2_kernel_prolong       4 0.0 7.4996e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456b15c5ad0_wrap_pyop2_kernel_prolong       4 0.0 5.8508e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15500e9473d0_wrap_pyop2_kernel_prolong       4 0.0 7.5016e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15500e7c6010_wrap_pyop2_kernel_prolong       4 0.0 6.2504e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1508bbf41c50_wrap_pyop2_kernel_prolong       4 0.0 7.5110e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1508bbf43990_wrap_pyop2_kernel_prolong       4 0.0 5.4253e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c77eded6d0_wrap_pyop2_kernel_prolong       4 0.0 7.5081e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c77edefc90_wrap_pyop2_kernel_prolong       4 0.0 6.5200e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b7eb0d6710_wrap_pyop2_kernel_prolong       4 0.0 7.4969e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b7ea7d9b50_wrap_pyop2_kernel_prolong       4 0.0 5.4282e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154de9ef7450_wrap_pyop2_kernel_prolong       4 0.0 7.5088e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154de9d8e8d0_wrap_pyop2_kernel_prolong       4 0.0 6.2718e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dfac58da10_wrap_pyop2_kernel_prolong       4 0.0 7.5148e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dfac56de50_wrap_pyop2_kernel_prolong       4 0.0 5.8809e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151647811990_wrap_pyop2_kernel_prolong       4 0.0 7.5052e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15164783e3d0_wrap_pyop2_kernel_prolong       4 0.0 5.6411e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a2c50b6950_wrap_pyop2_kernel_prolong       4 0.0 7.4986e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a2c50eee50_wrap_pyop2_kernel_prolong       4 0.0 7.1235e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1501dc21fed0_wrap_pyop2_kernel_prolong       4 0.0 7.4956e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1501dcc715d0_wrap_pyop2_kernel_prolong       4 0.0 5.5841e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a9e4eb1610_wrap_pyop2_kernel_prolong       4 0.0 7.5114e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a9e4d91fd0_wrap_pyop2_kernel_prolong       4 0.0 5.5261e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bfa9abdc90_wrap_pyop2_kernel_prolong       4 0.0 7.4963e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bfa90c1390_wrap_pyop2_kernel_prolong       4 0.0 6.3096e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14690e7cd090_wrap_pyop2_kernel_prolong       4 0.0 7.5101e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14690e7e9d10_wrap_pyop2_kernel_prolong       4 0.0 5.2087e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f190a52550_wrap_pyop2_kernel_prolong       4 0.0 7.5125e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f190a51f50_wrap_pyop2_kernel_prolong       4 0.0 6.0115e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14805bb69690_wrap_pyop2_kernel_prolong       4 0.0 7.5152e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14805bb6b210_wrap_pyop2_kernel_prolong       4 0.0 6.8420e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e1f7642390_wrap_pyop2_kernel_prolong       4 0.0 7.5149e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e1f7642190_wrap_pyop2_kernel_prolong       4 0.0 6.1082e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b564b3a390_wrap_pyop2_kernel_prolong       4 0.0 7.5149e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b564b5f0d0_wrap_pyop2_kernel_prolong       4 0.0 6.0475e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c70f308d0_wrap_pyop2_kernel_prolong       4 0.0 7.5100e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c70f32210_wrap_pyop2_kernel_prolong       4 0.0 6.3573e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148bf3553850_wrap_pyop2_kernel_prolong       4 0.0 7.5114e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148bf34f2b90_wrap_pyop2_kernel_prolong       4 0.0 6.7146e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b70ae5290_wrap_pyop2_kernel_prolong       4 0.0 7.5156e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b70090c90_wrap_pyop2_kernel_prolong       4 0.0 5.9496e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148841f991d0_wrap_pyop2_kernel_prolong       4 0.0 7.5116e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148841f32550_wrap_pyop2_kernel_prolong       4 0.0 6.2638e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ceff2a94d0_wrap_pyop2_kernel_prolong       4 0.0 7.5111e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ceff186710_wrap_pyop2_kernel_prolong       4 0.0 6.0455e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d723ecdf10_wrap_pyop2_kernel_prolong       4 0.0 7.5113e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d723ed57d0_wrap_pyop2_kernel_prolong       4 0.0 5.8681e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14910904de90_wrap_pyop2_kernel_prolong       4 0.0 7.5140e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149109084990_wrap_pyop2_kernel_prolong       4 0.0 6.7307e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a439257a10_wrap_pyop2_kernel_prolong       4 0.0 7.5128e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a4394e9bd0_wrap_pyop2_kernel_prolong       4 0.0 6.7019e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14efe0440090_wrap_pyop2_kernel_prolong       4 0.0 7.4997e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14efe02f3d10_wrap_pyop2_kernel_prolong       4 0.0 6.0132e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1548671b5ed0_wrap_pyop2_kernel_prolong       4 0.0 7.5003e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15486719b1d0_wrap_pyop2_kernel_prolong       4 0.0 6.0567e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c89470a50_wrap_pyop2_kernel_prolong       4 0.0 7.4978e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c893b5710_wrap_pyop2_kernel_prolong       4 0.0 6.0593e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e10044f450_wrap_pyop2_kernel_prolong       4 0.0 7.5078e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e100471c90_wrap_pyop2_kernel_prolong       4 0.0 5.6428e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1525c6ec5790_wrap_pyop2_kernel_prolong       4 0.0 7.5064e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1525c76dbbd0_wrap_pyop2_kernel_prolong       4 0.0 5.8427e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e10f67f710_wrap_pyop2_kernel_prolong       4 0.0 7.5021e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e10f5bdf10_wrap_pyop2_kernel_prolong       4 0.0 7.0954e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153559e7cfd0_wrap_pyop2_kernel_prolong       4 0.0 7.5118e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153559d4f7d0_wrap_pyop2_kernel_prolong       4 0.0 6.1697e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ca0a6bc050_wrap_pyop2_kernel_prolong       4 0.0 7.5100e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ca0a6e7bd0_wrap_pyop2_kernel_prolong       4 0.0 6.2404e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c2c3224090_wrap_pyop2_kernel_prolong       4 0.0 7.5058e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c2c3225ed0_wrap_pyop2_kernel_prolong       4 0.0 5.1517e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ab7d0d1d0_wrap_pyop2_kernel_prolong       4 0.0 7.5190e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ab7d19ed0_wrap_pyop2_kernel_prolong       4 0.0 6.3891e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f3f0eaa2d0_wrap_pyop2_kernel_prolong       4 0.0 7.5114e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f3f0eaa550_wrap_pyop2_kernel_prolong       4 0.0 5.1709e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1544d8b14650_wrap_pyop2_kernel_prolong       4 0.0 7.5107e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1544d8b10410_wrap_pyop2_kernel_prolong       4 0.0 6.9406e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1543d9772650_wrap_pyop2_kernel_prolong       4 0.0 7.5143e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1543d99aa710_wrap_pyop2_kernel_prolong       4 0.0 5.6353e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa199e1f10_wrap_pyop2_kernel_prolong       4 0.0 7.5135e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa1989c750_wrap_pyop2_kernel_prolong       4 0.0 5.8359e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc0bd7c790_wrap_pyop2_kernel_prolong       4 0.0 7.5010e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc0bd55310_wrap_pyop2_kernel_prolong       4 0.0 6.0271e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fde666cf50_wrap_pyop2_kernel_prolong       4 0.0 7.4980e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fde6681790_wrap_pyop2_kernel_prolong       4 0.0 5.8314e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f4c5767d0_wrap_pyop2_kernel_prolong       4 0.0 7.5130e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f4c575fd0_wrap_pyop2_kernel_prolong       4 0.0 6.7579e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a9de49fa90_wrap_pyop2_kernel_prolong       4 0.0 7.5132e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a9de4b9e50_wrap_pyop2_kernel_prolong       4 0.0 6.0254e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ebaadd7510_wrap_pyop2_kernel_prolong       4 0.0 7.4999e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ebab085690_wrap_pyop2_kernel_prolong       4 0.0 6.4448e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1474cf079f50_wrap_pyop2_kernel_prolong       4 0.0 7.5007e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1474ce705e10_wrap_pyop2_kernel_prolong       4 0.0 6.4402e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148025349d90_wrap_pyop2_kernel_prolong       4 0.0 7.5206e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14801ffe1e10_wrap_pyop2_kernel_prolong       4 0.0 6.9163e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e5372a790_wrap_pyop2_kernel_prolong       4 0.0 7.5030e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e582cec10_wrap_pyop2_kernel_prolong       4 0.0 6.0192e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab40945d50_wrap_pyop2_kernel_prolong       4 0.0 7.5075e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab409461d0_wrap_pyop2_kernel_prolong       4 0.0 6.9156e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1533c0be8f90_wrap_pyop2_kernel_prolong       4 0.0 7.4907e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1533c0bea350_wrap_pyop2_kernel_prolong       4 0.0 5.0586e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15489c976910_wrap_pyop2_kernel_prolong       4 0.0 7.5093e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15489c975950_wrap_pyop2_kernel_prolong       4 0.0 5.1788e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1526642c5e10_wrap_pyop2_kernel_prolong       4 0.0 7.4924e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1526642c7410_wrap_pyop2_kernel_prolong       4 0.0 6.0561e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1507b81f9110_wrap_pyop2_kernel_prolong       4 0.0 7.4870e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1507b821a210_wrap_pyop2_kernel_prolong       4 0.0 5.4465e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151133726090_wrap_pyop2_kernel_prolong       4 0.0 7.5090e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151133725890_wrap_pyop2_kernel_prolong       4 0.0 5.3943e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ebf2b72310_wrap_pyop2_kernel_prolong       4 0.0 7.5100e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ebf2b71f90_wrap_pyop2_kernel_prolong       4 0.0 6.2094e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f11936c950_wrap_pyop2_kernel_prolong       4 0.0 7.5086e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1193ae150_wrap_pyop2_kernel_prolong       4 0.0 5.0259e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bef8150310_wrap_pyop2_kernel_prolong       4 0.0 7.5141e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bef893d090_wrap_pyop2_kernel_prolong       4 0.0 5.5902e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c06f6b8e90_wrap_pyop2_kernel_prolong       4 0.0 7.5024e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c06f6ba150_wrap_pyop2_kernel_prolong       4 0.0 7.3384e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f5750af390_wrap_pyop2_kernel_prolong       4 0.0 7.4998e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f5751a4bd0_wrap_pyop2_kernel_prolong       4 0.0 6.0297e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b9ba404950_wrap_pyop2_kernel_prolong       4 0.0 7.5021e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b9ba431a90_wrap_pyop2_kernel_prolong       4 0.0 6.0536e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1515df24ab90_wrap_pyop2_kernel_prolong       4 0.0 7.5018e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1515df262090_wrap_pyop2_kernel_prolong       4 0.0 6.8887e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa2b843fd0_wrap_pyop2_kernel_prolong       4 0.0 7.5108e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa2ba92010_wrap_pyop2_kernel_prolong       4 0.0 6.7008e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe581bc890_wrap_pyop2_kernel_prolong       4 0.0 7.4990e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe537e88d0_wrap_pyop2_kernel_prolong       4 0.0 4.5478e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1462da090890_wrap_pyop2_kernel_prolong       4 0.0 7.5181e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1462d95fc450_wrap_pyop2_kernel_prolong       4 0.0 5.6271e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f3cf83350_wrap_pyop2_kernel_prolong       4 0.0 7.4907e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f3cf812d0_wrap_pyop2_kernel_prolong       4 0.0 5.7799e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b3a10a4c90_wrap_pyop2_kernel_prolong       4 0.0 7.5035e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b3a10d1a10_wrap_pyop2_kernel_prolong       4 0.0 6.9041e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145c1da72490_wrap_pyop2_kernel_prolong       4 0.0 7.5008e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145c1da71b10_wrap_pyop2_kernel_prolong       4 0.0 6.7455e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c5d0dbca50_wrap_pyop2_kernel_prolong       4 0.0 7.4984e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c5d0fc0a90_wrap_pyop2_kernel_prolong       4 0.0 7.1401e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab08094a50_wrap_pyop2_kernel_prolong       4 0.0 7.4981e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab06d21fd0_wrap_pyop2_kernel_prolong       4 0.0 6.7018e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1543981c7410_wrap_pyop2_kernel_prolong       4 0.0 7.5065e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1543981e1810_wrap_pyop2_kernel_prolong       4 0.0 6.2244e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150c029ad950_wrap_pyop2_kernel_prolong       4 0.0 7.5029e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150c02085b10_wrap_pyop2_kernel_prolong       4 0.0 6.0239e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14631a660bd0_wrap_pyop2_kernel_prolong       4 0.0 7.4928e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14631a43a990_wrap_pyop2_kernel_prolong       4 0.0 5.8944e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14578eadca50_wrap_pyop2_kernel_prolong       4 0.0 7.4970e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14578e041950_wrap_pyop2_kernel_prolong       4 0.0 6.3090e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab81c7b650_wrap_pyop2_kernel_prolong       4 0.0 7.5061e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab81dbe010_wrap_pyop2_kernel_prolong       4 0.0 5.4121e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ebe173890_wrap_pyop2_kernel_prolong       4 0.0 7.4971e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ebe1715d0_wrap_pyop2_kernel_prolong       4 0.0 6.4699e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150359e99dd0_wrap_pyop2_kernel_prolong       4 0.0 7.4889e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150359ec59d0_wrap_pyop2_kernel_prolong       4 0.0 4.6990e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e9f6a0e250_wrap_pyop2_kernel_prolong       4 0.0 7.5046e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e9f6a0dd90_wrap_pyop2_kernel_prolong       4 0.0 5.7425e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe95213090_wrap_pyop2_kernel_prolong       4 0.0 7.4963e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe94901e90_wrap_pyop2_kernel_prolong       4 0.0 6.0020e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14817f432910_wrap_pyop2_kernel_prolong       4 0.0 7.4960e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14817f431990_wrap_pyop2_kernel_prolong       4 0.0 5.1932e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1516e9229ed0_wrap_pyop2_kernel_prolong       4 0.0 7.5058e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1516e9178990_wrap_pyop2_kernel_prolong       4 0.0 6.4402e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152ff8d92510_wrap_pyop2_kernel_prolong       4 0.0 7.5004e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152ff8d91ed0_wrap_pyop2_kernel_prolong       4 0.0 7.5877e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a89e4a0d0_wrap_pyop2_kernel_prolong       4 0.0 7.5020e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a89e48310_wrap_pyop2_kernel_prolong       4 0.0 5.7675e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e5f759810_wrap_pyop2_kernel_prolong       4 0.0 7.4992e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e5f75ae90_wrap_pyop2_kernel_prolong       4 0.0 6.0398e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15057fa90c90_wrap_pyop2_kernel_prolong       4 0.0 7.4932e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15057fa92d10_wrap_pyop2_kernel_prolong       4 0.0 6.4241e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a03772290_wrap_pyop2_kernel_prolong       4 0.0 7.5062e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a03772950_wrap_pyop2_kernel_prolong       4 0.0 6.6105e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c41dbc1e10_wrap_pyop2_kernel_prolong       4 0.0 7.5093e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c41dbe1c90_wrap_pyop2_kernel_prolong       4 0.0 6.0536e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1538e5984c90_wrap_pyop2_kernel_prolong       4 0.0 7.5101e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1538e4f61a90_wrap_pyop2_kernel_prolong       4 0.0 6.8744e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152a35284190_wrap_pyop2_kernel_prolong       4 0.0 7.5103e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152a35285e90_wrap_pyop2_kernel_prolong       4 0.0 6.7077e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d2d3011b90_wrap_pyop2_kernel_prolong       4 0.0 7.5020e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d2d3204c10_wrap_pyop2_kernel_prolong       4 0.0 5.6228e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145c352ac950_wrap_pyop2_kernel_prolong       4 0.0 7.5005e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145c348f1c50_wrap_pyop2_kernel_prolong       4 0.0 6.4157e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1459012af5d0_wrap_pyop2_kernel_prolong       4 0.0 7.5016e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1459015335d0_wrap_pyop2_kernel_prolong       4 0.0 7.5720e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15370618ee90_wrap_pyop2_kernel_prolong       4 0.0 7.4926e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1537061bc310_wrap_pyop2_kernel_prolong       4 0.0 6.2268e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14749d212c90_wrap_pyop2_kernel_prolong       4 0.0 7.5061e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14749c7190d0_wrap_pyop2_kernel_prolong       4 0.0 6.1529e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14871d84c950_wrap_pyop2_kernel_prolong       4 0.0 7.5028e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14871d826bd0_wrap_pyop2_kernel_prolong       4 0.0 5.9762e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac8febbfd0_wrap_pyop2_kernel_prolong       4 0.0 7.4872e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac8fc59810_wrap_pyop2_kernel_prolong       4 0.0 4.8268e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eaf33b7e10_wrap_pyop2_kernel_prolong       4 0.0 7.4898e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eaf33b5c50_wrap_pyop2_kernel_prolong       4 0.0 5.7858e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1465878fa610_wrap_pyop2_kernel_prolong       4 0.0 7.4979e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14658791e190_wrap_pyop2_kernel_prolong       4 0.0 6.8592e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f23a877510_wrap_pyop2_kernel_prolong       4 0.0 7.4966e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f238215c50_wrap_pyop2_kernel_prolong       4 0.0 6.7075e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f4508bed0_wrap_pyop2_kernel_prolong       4 0.0 7.5041e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f45089950_wrap_pyop2_kernel_prolong       4 0.0 6.0759e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d851b329d0_wrap_pyop2_kernel_prolong       4 0.0 7.5039e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d851b5ed10_wrap_pyop2_kernel_prolong       4 0.0 6.8915e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f306e6510_wrap_pyop2_kernel_prolong       4 0.0 7.4962e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f306e5cd0_wrap_pyop2_kernel_prolong       4 0.0 6.8716e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458833d4e50_wrap_pyop2_kernel_prolong       4 0.0 7.6077e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458833edf10_wrap_pyop2_kernel_prolong       4 0.0 5.0541e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149209d027d0_wrap_pyop2_kernel_prolong       4 0.0 7.6081e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149209d01ed0_wrap_pyop2_kernel_prolong       4 0.0 5.1901e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc0180df50_wrap_pyop2_kernel_prolong       4 0.0 7.5884e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc019fef90_wrap_pyop2_kernel_prolong       4 0.0 6.0647e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d184b4350_wrap_pyop2_kernel_prolong       4 0.0 7.5946e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d18496610_wrap_pyop2_kernel_prolong       4 0.0 5.6399e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1524a8337910_wrap_pyop2_kernel_prolong       4 0.0 7.6016e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1524a8335a90_wrap_pyop2_kernel_prolong       4 0.0 5.5586e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148173a8eb50_wrap_pyop2_kernel_prolong       4 0.0 7.5914e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148173a8e910_wrap_pyop2_kernel_prolong       4 0.0 6.1168e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a52cef4790_wrap_pyop2_kernel_prolong       4 0.0 7.6057e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a52cecb650_wrap_pyop2_kernel_prolong       4 0.0 4.6349e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1531654207d0_wrap_pyop2_kernel_prolong       4 0.0 7.6105e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15316553e290_wrap_pyop2_kernel_prolong       4 0.0 5.7513e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b34380b550_wrap_pyop2_kernel_prolong       4 0.0 7.5857e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b343751fd0_wrap_pyop2_kernel_prolong       4 0.0 5.4144e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15474ffcf550_wrap_pyop2_kernel_prolong       4 0.0 7.6058e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15474ffcf7d0_wrap_pyop2_kernel_prolong       4 0.0 4.8432e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e6012924d0_wrap_pyop2_kernel_prolong       4 0.0 7.6091e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e60127f310_wrap_pyop2_kernel_prolong       4 0.0 5.7852e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154d680f8410_wrap_pyop2_kernel_prolong       4 0.0 7.6083e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154d680c8150_wrap_pyop2_kernel_prolong       4 0.0 6.4898e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bcf8d8fa50_wrap_pyop2_kernel_prolong       4 0.0 7.6160e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bcf8d8c510_wrap_pyop2_kernel_prolong       4 0.0 7.1130e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15050b65fd50_wrap_pyop2_kernel_prolong       4 0.0 7.5847e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15050b683010_wrap_pyop2_kernel_prolong       4 0.0 5.4053e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b1be15dbd0_wrap_pyop2_kernel_prolong       4 0.0 7.5948e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b1be1baf90_wrap_pyop2_kernel_prolong       4 0.0 5.3127e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f51a6ef9d0_wrap_pyop2_kernel_prolong       4 0.0 7.5942e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f519c465d0_wrap_pyop2_kernel_prolong       4 0.0 6.2643e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1492e0af73d0_wrap_pyop2_kernel_prolong       4 0.0 7.6021e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1492e0af6c50_wrap_pyop2_kernel_prolong       4 0.0 6.4638e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad6f952910_wrap_pyop2_kernel_prolong       4 0.0 7.6106e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad6f6f5c10_wrap_pyop2_kernel_prolong       4 0.0 6.2613e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15122a928b10_wrap_pyop2_kernel_prolong       4 0.0 7.5888e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15122a950250_wrap_pyop2_kernel_prolong       4 0.0 6.2715e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152a8dd22d50_wrap_pyop2_kernel_prolong       4 0.0 7.5881e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152a8dd20650_wrap_pyop2_kernel_prolong       4 0.0 6.2175e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d478cb6cd0_wrap_pyop2_kernel_prolong       4 0.0 7.5939e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d478cb65d0_wrap_pyop2_kernel_prolong       4 0.0 5.1882e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad01436650_wrap_pyop2_kernel_prolong       4 0.0 7.5957e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad01435b10_wrap_pyop2_kernel_prolong       4 0.0 6.9338e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d49eef2e50_wrap_pyop2_kernel_prolong       4 0.0 7.5886e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d49eef0ad0_wrap_pyop2_kernel_prolong       4 0.0 6.1734e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149433d3df10_wrap_pyop2_kernel_prolong       4 0.0 7.6095e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149433fc1810_wrap_pyop2_kernel_prolong       4 0.0 7.6327e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154dbddde110_wrap_pyop2_kernel_prolong       4 0.0 7.6127e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154dbe079a10_wrap_pyop2_kernel_prolong       4 0.0 6.4671e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d93302f150_wrap_pyop2_kernel_prolong       4 0.0 7.6170e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d9332a1110_wrap_pyop2_kernel_prolong       4 0.0 7.6086e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456f01a68d0_wrap_pyop2_kernel_prolong       4 0.0 7.5960e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456f01a5fd0_wrap_pyop2_kernel_prolong       4 0.0 5.6070e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151589a8dc50_wrap_pyop2_kernel_prolong       4 0.0 7.5989e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1515898ce290_wrap_pyop2_kernel_prolong       4 0.0 5.5245e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149314ac2950_wrap_pyop2_kernel_prolong       4 0.0 7.6156e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149314ac1a10_wrap_pyop2_kernel_prolong       4 0.0 6.8047e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d5c3dc54d0_wrap_pyop2_kernel_prolong       4 0.0 7.6111e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d5c3d67a50_wrap_pyop2_kernel_prolong       4 0.0 6.2500e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef501e3850_wrap_pyop2_kernel_prolong       4 0.0 7.6000e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef5046c150_wrap_pyop2_kernel_prolong       4 0.0 5.8296e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1517b0138050_wrap_pyop2_kernel_prolong       4 0.0 7.6053e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1517b036dc90_wrap_pyop2_kernel_prolong       4 0.0 7.1110e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152a376c7090_wrap_pyop2_kernel_prolong       4 0.0 7.6042e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152a376c0b10_wrap_pyop2_kernel_prolong       4 0.0 5.8344e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce663355d0_wrap_pyop2_kernel_prolong       4 0.0 7.5850e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce663223d0_wrap_pyop2_kernel_prolong       4 0.0 5.2988e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bad1e8ed90_wrap_pyop2_kernel_prolong       4 0.0 7.5897e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bad1e8da50_wrap_pyop2_kernel_prolong       4 0.0 5.4528e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148629929910_wrap_pyop2_kernel_prolong       4 0.0 7.5948e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148628f8a010_wrap_pyop2_kernel_prolong       4 0.0 6.4283e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c73c176510_wrap_pyop2_kernel_prolong       4 0.0 7.6063e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c73c175f90_wrap_pyop2_kernel_prolong       4 0.0 6.3216e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e1ca483d50_wrap_pyop2_kernel_prolong       4 0.0 7.6140e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e1c99cc2d0_wrap_pyop2_kernel_prolong       4 0.0 6.6579e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150b07bad190_wrap_pyop2_kernel_prolong       4 0.0 7.6006e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150b07b96650_wrap_pyop2_kernel_prolong       4 0.0 7.6388e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15104a80cbd0_wrap_pyop2_kernel_prolong       4 0.0 7.5883e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15104a88cbd0_wrap_pyop2_kernel_prolong       4 0.0 5.0567e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147482d9d3d0_wrap_pyop2_kernel_prolong       4 0.0 7.5996e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147482f09e10_wrap_pyop2_kernel_prolong       4 0.0 5.3967e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad083b2150_wrap_pyop2_kernel_prolong       4 0.0 7.6070e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad083b1a50_wrap_pyop2_kernel_prolong       4 0.0 5.8549e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14791f519dd0_wrap_pyop2_kernel_prolong       4 0.0 7.6061e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14791f564fd0_wrap_pyop2_kernel_prolong       4 0.0 6.8060e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e96059b90_wrap_pyop2_kernel_prolong       4 0.0 7.5975e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e9605bcd0_wrap_pyop2_kernel_prolong       4 0.0 6.2339e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a07e96f3d0_wrap_pyop2_kernel_prolong       4 0.0 7.6087e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a07e98da90_wrap_pyop2_kernel_prolong       4 0.0 6.9303e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a152205ed0_wrap_pyop2_kernel_prolong       4 0.0 7.6109e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a152b4f990_wrap_pyop2_kernel_prolong       4 0.0 6.6379e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f10b6dc50_wrap_pyop2_kernel_prolong       4 0.0 7.6045e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f101eff10_wrap_pyop2_kernel_prolong       4 0.0 6.8133e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c85a8d61d0_wrap_pyop2_kernel_prolong       4 0.0 7.6032e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c85a8d59d0_wrap_pyop2_kernel_prolong       4 0.0 7.3338e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a3ef7cad0_wrap_pyop2_kernel_prolong       4 0.0 7.6151e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a4027a4d0_wrap_pyop2_kernel_prolong       4 0.0 6.6836e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1476f0d4f6d0_wrap_pyop2_kernel_prolong       4 0.0 7.6032e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1476f0d4ca10_wrap_pyop2_kernel_prolong       4 0.0 6.2064e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d407fac90_wrap_pyop2_kernel_prolong       4 0.0 7.6075e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d407f9890_wrap_pyop2_kernel_prolong       4 0.0 7.0154e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a5eb3d190_wrap_pyop2_kernel_prolong       4 0.0 7.5961e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a5eb615d0_wrap_pyop2_kernel_prolong       4 0.0 7.0276e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a3d3a50510_wrap_pyop2_kernel_prolong       4 0.0 7.5854e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a3d3a75590_wrap_pyop2_kernel_prolong       4 0.0 5.1818e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152b83934d10_wrap_pyop2_kernel_prolong       4 0.0 7.5968e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152b8394e0d0_wrap_pyop2_kernel_prolong       4 0.0 5.4809e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e2a33471d0_wrap_pyop2_kernel_prolong       4 0.0 7.5882e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e2a3cc9110_wrap_pyop2_kernel_prolong       4 0.0 5.7776e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c3b3d77c50_wrap_pyop2_kernel_prolong       4 0.0 7.6045e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c3b3d99250_wrap_pyop2_kernel_prolong       4 0.0 5.6364e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1490ca346d10_wrap_pyop2_kernel_prolong       4 0.0 7.6054e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1490ca3723d0_wrap_pyop2_kernel_prolong       4 0.0 6.1745e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14644f6ef090_wrap_pyop2_kernel_prolong       4 0.0 7.6150e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14644e4cf890_wrap_pyop2_kernel_prolong       4 0.0 6.5047e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1518aa926710_wrap_pyop2_kernel_prolong       4 0.0 7.5877e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1518aa937310_wrap_pyop2_kernel_prolong       4 0.0 5.9596e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eec90f5650_wrap_pyop2_kernel_prolong       4 0.0 7.6066e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eec8ee9510_wrap_pyop2_kernel_prolong       4 0.0 5.5396e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1467b9842410_wrap_pyop2_kernel_prolong       4 0.0 7.6114e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1467ba299e50_wrap_pyop2_kernel_prolong       4 0.0 7.5229e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145efe6b5410_wrap_pyop2_kernel_prolong       4 0.0 7.5973e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145efe6fe010_wrap_pyop2_kernel_prolong       4 0.0 5.6841e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a69322f50_wrap_pyop2_kernel_prolong       4 0.0 7.6074e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a69aa8a10_wrap_pyop2_kernel_prolong       4 0.0 6.2232e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145f0a3fa650_wrap_pyop2_kernel_prolong       4 0.0 7.6070e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145f0a2a62d0_wrap_pyop2_kernel_prolong       4 0.0 6.3342e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c66d5d7bd0_wrap_pyop2_kernel_prolong       4 0.0 7.6026e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c66cdd5d10_wrap_pyop2_kernel_prolong       4 0.0 7.5477e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15236a6478d0_wrap_pyop2_kernel_prolong       4 0.0 7.5984e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15236a6471d0_wrap_pyop2_kernel_prolong       4 0.0 6.2378e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15215f4d3110_wrap_pyop2_kernel_prolong       4 0.0 7.6063e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15215f51a590_wrap_pyop2_kernel_prolong       4 0.0 5.9193e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154d318bf790_wrap_pyop2_kernel_prolong       4 0.0 7.6040e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154d318be910_wrap_pyop2_kernel_prolong       4 0.0 7.2980e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d690dc0d90_wrap_pyop2_kernel_prolong       4 0.0 7.6028e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d690ffdf50_wrap_pyop2_kernel_prolong       4 0.0 5.4551e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15053d4aca90_wrap_pyop2_kernel_prolong       4 0.0 7.5946e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15053d2dd2d0_wrap_pyop2_kernel_prolong       4 0.0 6.1475e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b7dd9d6450_wrap_pyop2_kernel_prolong       4 0.0 7.6103e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b7dd9d5410_wrap_pyop2_kernel_prolong       4 0.0 7.1287e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a706e81610_wrap_pyop2_kernel_prolong       4 0.0 7.6013e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a707b05fd0_wrap_pyop2_kernel_prolong       4 0.0 6.0969e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154dea70aad0_wrap_pyop2_kernel_prolong       4 0.0 7.6146e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154dea7348d0_wrap_pyop2_kernel_prolong       4 0.0 6.7693e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1b767c690_wrap_pyop2_kernel_prolong       4 0.0 7.5963e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1b7411b50_wrap_pyop2_kernel_prolong       4 0.0 6.6041e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147180daa590_wrap_pyop2_kernel_prolong       4 0.0 7.5981e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147180da9b10_wrap_pyop2_kernel_prolong       4 0.0 6.0466e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe95333a10_wrap_pyop2_kernel_prolong       4 0.0 7.6020e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe95311510_wrap_pyop2_kernel_prolong       4 0.0 7.0784e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e7634a8110_wrap_pyop2_kernel_prolong       4 0.0 7.5902e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e7634fa310_wrap_pyop2_kernel_prolong       4 0.0 7.0043e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1468a89d24d0_wrap_pyop2_kernel_prolong       4 0.0 7.6012e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1468a93fad10_wrap_pyop2_kernel_prolong       4 0.0 7.6193e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15221d86f190_wrap_pyop2_kernel_prolong       4 0.0 7.5955e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15221d86c250_wrap_pyop2_kernel_prolong       4 0.0 5.8836e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148aec17e050_wrap_pyop2_kernel_prolong       4 0.0 7.5968e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148aec17d7d0_wrap_pyop2_kernel_prolong       4 0.0 4.6684e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1552fae5e010_wrap_pyop2_kernel_prolong       4 0.0 7.6060e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1552fae5d850_wrap_pyop2_kernel_prolong       4 0.0 5.6650e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f8e5db6290_wrap_pyop2_kernel_prolong       4 0.0 7.5947e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f8e5dc6850_wrap_pyop2_kernel_prolong       4 0.0 6.3887e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c556d39d0_wrap_pyop2_kernel_prolong       4 0.0 7.5973e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c556ee8d0_wrap_pyop2_kernel_prolong       4 0.0 6.5792e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1494b990db90_wrap_pyop2_kernel_prolong       4 0.0 7.6058e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1494b990d590_wrap_pyop2_kernel_prolong       4 0.0 7.2874e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a6bda96050_wrap_pyop2_kernel_prolong       4 0.0 7.5904e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a6bda7ac10_wrap_pyop2_kernel_prolong       4 0.0 5.2453e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14800e338a90_wrap_pyop2_kernel_prolong       4 0.0 7.5912e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14800e32fbd0_wrap_pyop2_kernel_prolong       4 0.0 6.5761e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151976b1b410_wrap_pyop2_kernel_prolong       4 0.0 7.6101e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151976b19c50_wrap_pyop2_kernel_prolong       4 0.0 7.7600e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d93ef59590_wrap_pyop2_kernel_prolong       4 0.0 7.6074e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d93efac910_wrap_pyop2_kernel_prolong       4 0.0 7.1100e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14754d97cd10_wrap_pyop2_kernel_prolong       4 0.0 7.5985e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14754d9a5a10_wrap_pyop2_kernel_prolong       4 0.0 6.0850e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1543f0c52290_wrap_pyop2_kernel_prolong       4 0.0 7.6106e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1543f0abd690_wrap_pyop2_kernel_prolong       4 0.0 6.3261e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456e8d41090_wrap_pyop2_kernel_prolong       4 0.0 7.6046e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456e8d41150_wrap_pyop2_kernel_prolong       4 0.0 6.3997e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15003d081e10_wrap_pyop2_kernel_prolong       4 0.0 7.6072e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15003d0817d0_wrap_pyop2_kernel_prolong       4 0.0 5.5768e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e835dded0_wrap_pyop2_kernel_prolong       4 0.0 7.5977e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e835d3610_wrap_pyop2_kernel_prolong       4 0.0 7.5295e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1501360bfb50_wrap_pyop2_kernel_prolong       4 0.0 7.6130e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150136071390_wrap_pyop2_kernel_prolong       4 0.0 6.7554e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cb3e0c9810_wrap_pyop2_kernel_prolong       4 0.0 7.6019e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cb3d742a90_wrap_pyop2_kernel_prolong       4 0.0 6.2605e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149747fc1d10_wrap_pyop2_kernel_prolong       4 0.0 7.5877e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149747fa9750_wrap_pyop2_kernel_prolong       4 0.0 6.0665e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151f933ee990_wrap_pyop2_kernel_prolong       4 0.0 7.6035e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151f933ed290_wrap_pyop2_kernel_prolong       4 0.0 7.5124e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e6ad978d0_wrap_pyop2_kernel_prolong       4 0.0 7.5881e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e6a429cd0_wrap_pyop2_kernel_prolong       4 0.0 5.4940e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14932793a650_wrap_pyop2_kernel_prolong       4 0.0 7.5985e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149327939c90_wrap_pyop2_kernel_prolong       4 0.0 6.4479e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ee5c05bd0_wrap_pyop2_kernel_prolong       4 0.0 7.5998e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ee5be8810_wrap_pyop2_kernel_prolong       4 0.0 7.0235e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14797784b4d0_wrap_pyop2_kernel_prolong       4 0.0 7.5899e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14797784a290_wrap_pyop2_kernel_prolong       4 0.0 5.8925e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154311123850_wrap_pyop2_kernel_prolong       4 0.0 7.5979e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154311123450_wrap_pyop2_kernel_prolong       4 0.0 7.7611e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c0b797850_wrap_pyop2_kernel_prolong       4 0.0 7.5930e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c0b795850_wrap_pyop2_kernel_prolong       4 0.0 7.2851e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f47347aa10_wrap_pyop2_kernel_prolong       4 0.0 7.6033e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f472b4bd10_wrap_pyop2_kernel_prolong       4 0.0 7.6855e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15458e404b50_wrap_pyop2_kernel_prolong       4 0.0 7.6632e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15458e435ad0_wrap_pyop2_kernel_prolong       4 0.0 4.8445e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148eab4e65d0_wrap_pyop2_kernel_prolong       4 0.0 7.7133e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148eab4e5e90_wrap_pyop2_kernel_prolong       4 0.0 5.4277e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1541f6058d90_wrap_pyop2_kernel_prolong       4 0.0 7.6734e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1541f635b2d0_wrap_pyop2_kernel_prolong       4 0.0 5.6151e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1529141ea8d0_wrap_pyop2_kernel_prolong       4 0.0 7.6604e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1529140a5590_wrap_pyop2_kernel_prolong       4 0.0 4.6364e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f5051bce10_wrap_pyop2_kernel_prolong       4 0.0 7.6511e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f5051fb310_wrap_pyop2_kernel_prolong       4 0.0 5.5544e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb98cf65d0_wrap_pyop2_kernel_prolong       4 0.0 7.6792e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb98cf5c10_wrap_pyop2_kernel_prolong       4 0.0 7.0330e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1468fdaaa750_wrap_pyop2_kernel_prolong       4 0.0 7.6596e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1468fd04e510_wrap_pyop2_kernel_prolong       4 0.0 5.6365e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad74a6dd90_wrap_pyop2_kernel_prolong       4 0.0 7.6389e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad74a6ce10_wrap_pyop2_kernel_prolong       4 0.0 5.6206e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cabf29b5d0_wrap_pyop2_kernel_prolong       4 0.0 7.7094e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cabe8a0350_wrap_pyop2_kernel_prolong       4 0.0 6.6508e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15525628e410_wrap_pyop2_kernel_prolong       4 0.0 7.6543e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1552562ec4d0_wrap_pyop2_kernel_prolong       4 0.0 5.5957e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a21becf950_wrap_pyop2_kernel_prolong       4 0.0 7.7123e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a21becc290_wrap_pyop2_kernel_prolong       4 0.0 6.1480e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d7d20e850_wrap_pyop2_kernel_prolong       4 0.0 7.7131e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d7d22f150_wrap_pyop2_kernel_prolong       4 0.0 6.6751e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491fa9f7810_wrap_pyop2_kernel_prolong       4 0.0 7.6995e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491fa9f7110_wrap_pyop2_kernel_prolong       4 0.0 6.7328e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c09c2b810_wrap_pyop2_kernel_prolong       4 0.0 7.6099e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c092c1e50_wrap_pyop2_kernel_prolong       4 0.0 4.8119e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d39e451010_wrap_pyop2_kernel_prolong       4 0.0 7.6777e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d39e46d9d0_wrap_pyop2_kernel_prolong       4 0.0 5.9726e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab07416410_wrap_pyop2_kernel_prolong       4 0.0 7.6371e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab07689f10_wrap_pyop2_kernel_prolong       4 0.0 5.8102e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14838dae1dd0_wrap_pyop2_kernel_prolong       4 0.0 7.7014e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14838d9969d0_wrap_pyop2_kernel_prolong       4 0.0 6.1950e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458730fb890_wrap_pyop2_kernel_prolong       4 0.0 7.6383e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145873170ad0_wrap_pyop2_kernel_prolong       4 0.0 5.3947e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab418e1bd0_wrap_pyop2_kernel_prolong       4 0.0 7.7027e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab418d6d90_wrap_pyop2_kernel_prolong       4 0.0 7.2578e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1480ef2a0f10_wrap_pyop2_kernel_prolong       4 0.0 7.6658e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1480ef2d01d0_wrap_pyop2_kernel_prolong       4 0.0 6.4587e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1512200dc9d0_wrap_pyop2_kernel_prolong       4 0.0 7.6406e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15122011cdd0_wrap_pyop2_kernel_prolong       4 0.0 5.6729e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c25f2fd310_wrap_pyop2_kernel_prolong       4 0.0 7.6597e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c25dfc36d0_wrap_pyop2_kernel_prolong       4 0.0 6.3760e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e83a66fc10_wrap_pyop2_kernel_prolong       4 0.0 7.7171e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e839e56450_wrap_pyop2_kernel_prolong       4 0.0 6.6510e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b77fe4cb50_wrap_pyop2_kernel_prolong       4 0.0 7.6595e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b77fe65990_wrap_pyop2_kernel_prolong       4 0.0 6.8520e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1535ebb6f790_wrap_pyop2_kernel_prolong       4 0.0 7.6442e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1535eb17ff10_wrap_pyop2_kernel_prolong       4 0.0 6.8861e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155236ffbe90_wrap_pyop2_kernel_prolong       4 0.0 7.6208e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155237205210_wrap_pyop2_kernel_prolong       4 0.0 7.3531e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154062e80f50_wrap_pyop2_kernel_prolong       4 0.0 7.6474e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154062602110_wrap_pyop2_kernel_prolong       4 0.0 5.2172e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152efd9973d0_wrap_pyop2_kernel_prolong       4 0.0 7.6845e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152efd9955d0_wrap_pyop2_kernel_prolong       4 0.0 4.9433e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154d0d09b590_wrap_pyop2_kernel_prolong       4 0.0 7.6460e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154d0ce6cc10_wrap_pyop2_kernel_prolong       4 0.0 6.3053e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c03022e590_wrap_pyop2_kernel_prolong       4 0.0 7.6647e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c03022dcd0_wrap_pyop2_kernel_prolong       4 0.0 5.2803e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522d34a4b90_wrap_pyop2_kernel_prolong       4 0.0 7.7018e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522d1f61890_wrap_pyop2_kernel_prolong       4 0.0 5.5886e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1542c88b4990_wrap_pyop2_kernel_prolong       4 0.0 7.6798e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1542c88b5b50_wrap_pyop2_kernel_prolong       4 0.0 7.2030e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a1683edbd0_wrap_pyop2_kernel_prolong       4 0.0 7.6630e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a168411710_wrap_pyop2_kernel_prolong       4 0.0 5.8122e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1494e05a0a50_wrap_pyop2_kernel_prolong       4 0.0 7.6612e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1494e0e99d50_wrap_pyop2_kernel_prolong       4 0.0 5.9865e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147efc0f4e90_wrap_pyop2_kernel_prolong       4 0.0 7.6492e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147efc0dd610_wrap_pyop2_kernel_prolong       4 0.0 6.3961e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15503f5effd0_wrap_pyop2_kernel_prolong       4 0.0 7.6899e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15503f5edc10_wrap_pyop2_kernel_prolong       4 0.0 5.6586e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148de676d650_wrap_pyop2_kernel_prolong       4 0.0 7.7041e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148de676f410_wrap_pyop2_kernel_prolong       4 0.0 6.3722e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e56c3bfad0_wrap_pyop2_kernel_prolong       4 0.0 7.6869e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e56794dad0_wrap_pyop2_kernel_prolong       4 0.0 7.2803e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc43d56cd0_wrap_pyop2_kernel_prolong       4 0.0 7.7031e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc43f61bd0_wrap_pyop2_kernel_prolong       4 0.0 6.8200e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146668352490_wrap_pyop2_kernel_prolong       4 0.0 7.6663e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146668351d50_wrap_pyop2_kernel_prolong       4 0.0 5.2628e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1539c8bba250_wrap_pyop2_kernel_prolong       4 0.0 7.6860e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1539c8cb9dd0_wrap_pyop2_kernel_prolong       4 0.0 5.8532e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1553739d2bd0_wrap_pyop2_kernel_prolong       4 0.0 7.6706e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155378111a10_wrap_pyop2_kernel_prolong       4 0.0 6.0028e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1481e5111e10_wrap_pyop2_kernel_prolong       4 0.0 7.6479e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1481e5113510_wrap_pyop2_kernel_prolong       4 0.0 5.8015e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14707aba2790_wrap_pyop2_kernel_prolong       4 0.0 7.6460e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14707a16e710_wrap_pyop2_kernel_prolong       4 0.0 5.1820e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147cb00be790_wrap_pyop2_kernel_prolong       4 0.0 7.6820e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147cb00bd7d0_wrap_pyop2_kernel_prolong       4 0.0 5.7675e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1454876a0050_wrap_pyop2_kernel_prolong       4 0.0 7.6466e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1454876a0310_wrap_pyop2_kernel_prolong       4 0.0 5.8994e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1525eb4b9390_wrap_pyop2_kernel_prolong       4 0.0 7.6864e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1525eb4d57d0_wrap_pyop2_kernel_prolong       4 0.0 6.1830e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152cd50cca10_wrap_pyop2_kernel_prolong       4 0.0 7.6631e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152cd50cfc50_wrap_pyop2_kernel_prolong       4 0.0 6.8683e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1460013f6550_wrap_pyop2_kernel_prolong       4 0.0 7.6844e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1460013a3090_wrap_pyop2_kernel_prolong       4 0.0 6.6550e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15509c5a7750_wrap_pyop2_kernel_prolong       4 0.0 7.7001e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15509c5a4a10_wrap_pyop2_kernel_prolong       4 0.0 6.4573e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15026520aed0_wrap_pyop2_kernel_prolong       4 0.0 7.7096e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150265233510_wrap_pyop2_kernel_prolong       4 0.0 6.1842e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1482722d1c90_wrap_pyop2_kernel_prolong       4 0.0 7.7175e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1482722eaed0_wrap_pyop2_kernel_prolong       4 0.0 8.3885e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c1aad65d0_wrap_pyop2_kernel_prolong       4 0.0 7.5992e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c1aabde50_wrap_pyop2_kernel_prolong       4 0.0 4.7745e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1531c5b2cb50_wrap_pyop2_kernel_prolong       4 0.0 7.6023e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1531c5950690_wrap_pyop2_kernel_prolong       4 0.0 5.8090e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151107f4a810_wrap_pyop2_kernel_prolong       4 0.0 7.6045e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151107f92590_wrap_pyop2_kernel_prolong       4 0.0 5.8152e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f67b5aa50_wrap_pyop2_kernel_prolong       4 0.0 7.6117e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f67b80a50_wrap_pyop2_kernel_prolong       4 0.0 5.8399e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f9d8f5c490_wrap_pyop2_kernel_prolong       4 0.0 7.6095e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f9d8f06b90_wrap_pyop2_kernel_prolong       4 0.0 6.1644e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14594f636290_wrap_pyop2_kernel_prolong       4 0.0 7.6026e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14594f69a090_wrap_pyop2_kernel_prolong       4 0.0 5.4842e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a73b697550_wrap_pyop2_kernel_prolong       4 0.0 7.6075e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a73b6964d0_wrap_pyop2_kernel_prolong       4 0.0 5.4974e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519c790a010_wrap_pyop2_kernel_prolong       4 0.0 7.6012e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519c7935fd0_wrap_pyop2_kernel_prolong       4 0.0 5.3691e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f25c852550_wrap_pyop2_kernel_prolong       4 0.0 7.6273e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f25d319b10_wrap_pyop2_kernel_prolong       4 0.0 7.0728e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151251abf310_wrap_pyop2_kernel_prolong       4 0.0 7.6019e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151251abfc90_wrap_pyop2_kernel_prolong       4 0.0 5.3520e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456dbbab8d0_wrap_pyop2_kernel_prolong       4 0.0 7.6373e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456dbbaab90_wrap_pyop2_kernel_prolong       4 0.0 7.4945e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f4dd768d10_wrap_pyop2_kernel_prolong       4 0.0 7.6213e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f4dcdcc3d0_wrap_pyop2_kernel_prolong       4 0.0 6.3486e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a3ffe82710_wrap_pyop2_kernel_prolong       4 0.0 7.6060e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a3ffe82110_wrap_pyop2_kernel_prolong       4 0.0 5.8676e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e8f93a790_wrap_pyop2_kernel_prolong       4 0.0 7.6100e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e8f71bb50_wrap_pyop2_kernel_prolong       4 0.0 5.4830e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d9e8685210_wrap_pyop2_kernel_prolong       4 0.0 7.5981e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d9e87e2550_wrap_pyop2_kernel_prolong       4 0.0 4.5022e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150496359810_wrap_pyop2_kernel_prolong       4 0.0 7.6080e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15049633a710_wrap_pyop2_kernel_prolong       4 0.0 6.4221e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d39feaa590_wrap_pyop2_kernel_prolong       4 0.0 7.6073e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d39feaa010_wrap_pyop2_kernel_prolong       4 0.0 5.2732e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154edcedb110_wrap_pyop2_kernel_prolong       4 0.0 7.6367e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154edce29990_wrap_pyop2_kernel_prolong       4 0.0 5.6214e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1506bd5e8910_wrap_pyop2_kernel_prolong       4 0.0 7.6138e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1506bcc6dd50_wrap_pyop2_kernel_prolong       4 0.0 6.8867e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc53ea6350_wrap_pyop2_kernel_prolong       4 0.0 7.6197e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc53ea59d0_wrap_pyop2_kernel_prolong       4 0.0 4.8507e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be3e967e50_wrap_pyop2_kernel_prolong       4 0.0 7.6106e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be3e981ed0_wrap_pyop2_kernel_prolong       4 0.0 6.2293e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154422e15f50_wrap_pyop2_kernel_prolong       4 0.0 7.6265e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154422d4f910_wrap_pyop2_kernel_prolong       4 0.0 5.8183e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145bfece2c90_wrap_pyop2_kernel_prolong       4 0.0 7.6292e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145bfecc2b50_wrap_pyop2_kernel_prolong       4 0.0 5.9277e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152f1a9df410_wrap_pyop2_kernel_prolong       4 0.0 7.6414e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152f1a9dd1d0_wrap_pyop2_kernel_prolong       4 0.0 7.0382e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c7c44e010_wrap_pyop2_kernel_prolong       4 0.0 7.6062e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c7c44d850_wrap_pyop2_kernel_prolong       4 0.0 6.1516e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eec35e42d0_wrap_pyop2_kernel_prolong       4 0.0 7.6171e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eec3e17210_wrap_pyop2_kernel_prolong       4 0.0 7.4324e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497e1d748d0_wrap_pyop2_kernel_prolong       4 0.0 7.6048e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497e1f79550_wrap_pyop2_kernel_prolong       4 0.0 4.9180e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15294e0ce6d0_wrap_pyop2_kernel_prolong       4 0.0 7.6294e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15294e0cdf50_wrap_pyop2_kernel_prolong       4 0.0 5.1630e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e2f09022d0_wrap_pyop2_kernel_prolong       4 0.0 7.6258e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e2f0901c90_wrap_pyop2_kernel_prolong       4 0.0 5.4666e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155069f55a10_wrap_pyop2_kernel_prolong       4 0.0 7.6190e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155069f54b90_wrap_pyop2_kernel_prolong       4 0.0 5.9141e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d495adb690_wrap_pyop2_kernel_prolong       4 0.0 7.6099e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d495d176d0_wrap_pyop2_kernel_prolong       4 0.0 6.2175e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d075aef850_wrap_pyop2_kernel_prolong       4 0.0 7.6289e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d075189990_wrap_pyop2_kernel_prolong       4 0.0 7.1126e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a1b32c0490_wrap_pyop2_kernel_prolong       4 0.0 7.6065e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a1b3559d90_wrap_pyop2_kernel_prolong       4 0.0 6.2137e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d8707eae50_wrap_pyop2_kernel_prolong       4 0.0 7.6113e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d87081a3d0_wrap_pyop2_kernel_prolong       4 0.0 6.8578e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15360f6c3990_wrap_pyop2_kernel_prolong       4 0.0 7.6091e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15360f6ddf90_wrap_pyop2_kernel_prolong       4 0.0 6.6500e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149770921810_wrap_pyop2_kernel_prolong       4 0.0 7.6036e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149770b1dbd0_wrap_pyop2_kernel_prolong       4 0.0 6.2389e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d458d1450_wrap_pyop2_kernel_prolong       4 0.0 7.6105e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d458ab4d0_wrap_pyop2_kernel_prolong       4 0.0 6.4660e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f6cb34cf90_wrap_pyop2_kernel_prolong       4 0.0 7.6086e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f6cbd9ddd0_wrap_pyop2_kernel_prolong       4 0.0 7.0306e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153d7d8ac310_wrap_pyop2_kernel_prolong       4 0.0 7.6103e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153d7d8ae090_wrap_pyop2_kernel_prolong       4 0.0 7.2413e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151eca8c71d0_wrap_pyop2_kernel_prolong       4 0.0 7.6053e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151eca982c90_wrap_pyop2_kernel_prolong       4 0.0 5.5919e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14966e960710_wrap_pyop2_kernel_prolong       4 0.0 7.6046e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14966e962090_wrap_pyop2_kernel_prolong       4 0.0 5.6527e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155124784a50_wrap_pyop2_kernel_prolong       4 0.0 7.6113e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15511fd161d0_wrap_pyop2_kernel_prolong       4 0.0 7.5909e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d35c1b2010_wrap_pyop2_kernel_prolong       4 0.0 7.6086e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d35c1b1950_wrap_pyop2_kernel_prolong       4 0.0 6.5320e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ca6531e310_wrap_pyop2_kernel_prolong       4 0.0 7.6040e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ca6531db50_wrap_pyop2_kernel_prolong       4 0.0 4.8805e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151df609dc50_wrap_pyop2_kernel_prolong       4 0.0 7.6160e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151df60c9e50_wrap_pyop2_kernel_prolong       4 0.0 6.9941e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14618193a350_wrap_pyop2_kernel_prolong       4 0.0 7.6040e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14618193a3d0_wrap_pyop2_kernel_prolong       4 0.0 6.1815e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de01dba990_wrap_pyop2_kernel_prolong       4 0.0 7.6107e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de01db8610_wrap_pyop2_kernel_prolong       4 0.0 6.7269e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15389da60b10_wrap_pyop2_kernel_prolong       4 0.0 7.6176e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15389dc269d0_wrap_pyop2_kernel_prolong       4 0.0 7.2360e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153bcf333550_wrap_pyop2_kernel_prolong       4 0.0 7.6349e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153bcf332890_wrap_pyop2_kernel_prolong       4 0.0 5.1077e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef7ac6f950_wrap_pyop2_kernel_prolong       4 0.0 7.6162e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef7ac6d1d0_wrap_pyop2_kernel_prolong       4 0.0 7.3287e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a101e6d450_wrap_pyop2_kernel_prolong       4 0.0 7.6560e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a101ea4b10_wrap_pyop2_kernel_prolong       4 0.0 7.9738e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1547762d4250_wrap_pyop2_kernel_prolong       4 0.0 7.6178e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1547762d5e10_wrap_pyop2_kernel_prolong       4 0.0 7.5642e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15395b996410_wrap_pyop2_kernel_prolong       4 0.0 7.6862e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15395b995e10_wrap_pyop2_kernel_prolong       4 0.0 5.5805e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14656c3f7490_wrap_pyop2_kernel_prolong       4 0.0 7.6575e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14656c152950_wrap_pyop2_kernel_prolong       4 0.0 5.4452e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14853bb7d190_wrap_pyop2_kernel_prolong       4 0.0 7.6388e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14853bb9f450_wrap_pyop2_kernel_prolong       4 0.0 5.9673e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd4cac6a50_wrap_pyop2_kernel_prolong       4 0.0 7.6032e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd4cac6110_wrap_pyop2_kernel_prolong       4 0.0 5.6221e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f11b29b50_wrap_pyop2_kernel_prolong       4 0.0 7.6322e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f119d0c50_wrap_pyop2_kernel_prolong       4 0.0 5.2754e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d94ed55050_wrap_pyop2_kernel_prolong       4 0.0 7.6771e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d94ed567d0_wrap_pyop2_kernel_prolong       4 0.0 5.7585e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152a578a0cd0_wrap_pyop2_kernel_prolong       4 0.0 7.6543e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152a577b5250_wrap_pyop2_kernel_prolong       4 0.0 4.6489e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a3f3195890_wrap_pyop2_kernel_prolong       4 0.0 7.5985e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a3f3197590_wrap_pyop2_kernel_prolong       4 0.0 5.1766e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a27f65eb90_wrap_pyop2_kernel_prolong       4 0.0 7.6293e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a27f65e390_wrap_pyop2_kernel_prolong       4 0.0 5.5106e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a6f7675750_wrap_pyop2_kernel_prolong       4 0.0 7.6285e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a6f7676910_wrap_pyop2_kernel_prolong       4 0.0 6.0848e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ae8ecee450_wrap_pyop2_kernel_prolong       4 0.0 7.6243e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ae8eb73b50_wrap_pyop2_kernel_prolong       4 0.0 5.6440e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154fc222f110_wrap_pyop2_kernel_prolong       4 0.0 7.6622e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154fc2270c90_wrap_pyop2_kernel_prolong       4 0.0 5.5188e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f8870f1cd0_wrap_pyop2_kernel_prolong       4 0.0 7.6511e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f88711e090_wrap_pyop2_kernel_prolong       4 0.0 6.9334e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f74fa4b050_wrap_pyop2_kernel_prolong       4 0.0 7.5780e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f74fab4d10_wrap_pyop2_kernel_prolong       4 0.0 5.6561e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c1c0a12490_wrap_pyop2_kernel_prolong       4 0.0 7.5778e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c1c0a11350_wrap_pyop2_kernel_prolong       4 0.0 5.2886e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f890b0a050_wrap_pyop2_kernel_prolong       4 0.0 7.6160e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f890b298d0_wrap_pyop2_kernel_prolong       4 0.0 4.8528e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b6432f510_wrap_pyop2_kernel_prolong       4 0.0 7.5695e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b643853d0_wrap_pyop2_kernel_prolong       4 0.0 5.2450e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153cbc371c50_wrap_pyop2_kernel_prolong       4 0.0 7.6084e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153cbc312050_wrap_pyop2_kernel_prolong       4 0.0 5.5968e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c28467450_wrap_pyop2_kernel_prolong       4 0.0 7.6435e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c284f40d0_wrap_pyop2_kernel_prolong       4 0.0 7.3881e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f955f3410_wrap_pyop2_kernel_prolong       4 0.0 7.5954e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f95615c10_wrap_pyop2_kernel_prolong       4 0.0 5.8414e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b432ab4e50_wrap_pyop2_kernel_prolong       4 0.0 7.5784e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b432238d90_wrap_pyop2_kernel_prolong       4 0.0 5.7839e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b92d0a27d0_wrap_pyop2_kernel_prolong       4 0.0 7.6111e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b92d049050_wrap_pyop2_kernel_prolong       4 0.0 7.1976e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145dd559a250_wrap_pyop2_kernel_prolong       4 0.0 7.5743e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145dd5599690_wrap_pyop2_kernel_prolong       4 0.0 6.4316e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1551ffbe5ad0_wrap_pyop2_kernel_prolong       4 0.0 7.6033e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1551ff21cb10_wrap_pyop2_kernel_prolong       4 0.0 6.6791e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152b791cc050_wrap_pyop2_kernel_prolong       4 0.0 7.5793e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152b791cd6d0_wrap_pyop2_kernel_prolong       4 0.0 6.8386e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1514806e5950_wrap_pyop2_kernel_prolong       4 0.0 7.5978e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151480901d50_wrap_pyop2_kernel_prolong       4 0.0 7.1590e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e4333a350_wrap_pyop2_kernel_prolong       4 0.0 7.5880e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e43302510_wrap_pyop2_kernel_prolong       4 0.0 5.6526e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15325e35a210_wrap_pyop2_kernel_prolong       4 0.0 7.5717e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15325d9c1fd0_wrap_pyop2_kernel_prolong       4 0.0 5.1200e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149813d95410_wrap_pyop2_kernel_prolong       4 0.0 7.5751e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149813de1a10_wrap_pyop2_kernel_prolong       4 0.0 5.6012e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14835247f310_wrap_pyop2_kernel_prolong       4 0.0 7.6198e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148352495a50_wrap_pyop2_kernel_prolong       4 0.0 6.7597e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1509d82ddf90_wrap_pyop2_kernel_prolong       4 0.0 7.6321e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1509d82c1e90_wrap_pyop2_kernel_prolong       4 0.0 6.0718e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147018751fd0_wrap_pyop2_kernel_prolong       4 0.0 7.6082e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147018959690_wrap_pyop2_kernel_prolong       4 0.0 6.2845e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e24107cd0_wrap_pyop2_kernel_prolong       4 0.0 7.5715e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e24105b90_wrap_pyop2_kernel_prolong       4 0.0 5.2395e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b46812b50_wrap_pyop2_kernel_prolong       4 0.0 7.5757e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b45d41990_wrap_pyop2_kernel_prolong       4 0.0 6.2418e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ea22466cd0_wrap_pyop2_kernel_prolong       4 0.0 7.5782e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ea225696d0_wrap_pyop2_kernel_prolong       4 0.0 6.5070e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f93c4c2f90_wrap_pyop2_kernel_prolong       4 0.0 7.6429e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f93c4c0290_wrap_pyop2_kernel_prolong       4 0.0 6.6741e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ed519f650_wrap_pyop2_kernel_prolong       4 0.0 7.5847e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ed519d950_wrap_pyop2_kernel_prolong       4 0.0 7.1703e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1529393011d0_wrap_pyop2_kernel_prolong       4 0.0 7.5823e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1529392a8bd0_wrap_pyop2_kernel_prolong       4 0.0 6.2766e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1510254a8310_wrap_pyop2_kernel_prolong       4 0.0 7.5782e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1510253ed790_wrap_pyop2_kernel_prolong       4 0.0 6.4436e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14865429e390_wrap_pyop2_kernel_prolong       4 0.0 7.7194e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14864f7b1d90_wrap_pyop2_kernel_prolong       4 0.0 6.1764e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146eb7ba6590_wrap_pyop2_kernel_prolong       4 0.0 7.5757e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146eb7a9e290_wrap_pyop2_kernel_prolong       4 0.0 6.2387e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147cab006090_wrap_pyop2_kernel_prolong       4 0.0 7.5744e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147cab029b10_wrap_pyop2_kernel_prolong       4 0.0 6.2387e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1516b5d15350_wrap_pyop2_kernel_prolong       4 0.0 7.5781e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1516b5f93050_wrap_pyop2_kernel_prolong       4 0.0 5.7599e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152cea23fd10_wrap_pyop2_kernel_prolong       4 0.0 7.5803e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152ce95b7d50_wrap_pyop2_kernel_prolong       4 0.0 5.9713e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f01f8c7b10_wrap_pyop2_kernel_prolong       4 0.0 7.5985e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f01f91e1d0_wrap_pyop2_kernel_prolong       4 0.0 5.9640e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15453dfde390_wrap_pyop2_kernel_prolong       4 0.0 7.6064e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15453dfde210_wrap_pyop2_kernel_prolong       4 0.0 5.6336e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14761f5d7050_wrap_pyop2_kernel_prolong       4 0.0 7.5703e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14761f819910_wrap_pyop2_kernel_prolong       4 0.0 4.8166e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155296b8aad0_wrap_pyop2_kernel_prolong       4 0.0 7.5782e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155296b8b510_wrap_pyop2_kernel_prolong       4 0.0 7.1123e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cc8f0c2c50_wrap_pyop2_kernel_prolong       4 0.0 7.6110e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cc8f0de110_wrap_pyop2_kernel_prolong       4 0.0 5.1829e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b26b2fe050_wrap_pyop2_kernel_prolong       4 0.0 7.5857e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b26b15df50_wrap_pyop2_kernel_prolong       4 0.0 6.9252e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b9c9ad2d90_wrap_pyop2_kernel_prolong       4 0.0 7.6126e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b9c9c263d0_wrap_pyop2_kernel_prolong       4 0.0 6.0730e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fcf8ca2490_wrap_pyop2_kernel_prolong       4 0.0 7.6270e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fcf8ca2850_wrap_pyop2_kernel_prolong       4 0.0 6.9182e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cbdd836750_wrap_pyop2_kernel_prolong       4 0.0 7.6119e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cbdd7d6fd0_wrap_pyop2_kernel_prolong       4 0.0 4.8749e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1514cd342050_wrap_pyop2_kernel_prolong       4 0.0 7.6742e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1514cd230f50_wrap_pyop2_kernel_prolong       4 0.0 5.7667e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc1a104dd0_wrap_pyop2_kernel_prolong       4 0.0 7.5723e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc1aa00210_wrap_pyop2_kernel_prolong       4 0.0 6.0717e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155238781bd0_wrap_pyop2_kernel_prolong       4 0.0 7.5880e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1552333f2410_wrap_pyop2_kernel_prolong       4 0.0 6.2359e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a360ec3b50_wrap_pyop2_kernel_prolong       4 0.0 7.5722e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a360ee3010_wrap_pyop2_kernel_prolong       4 0.0 5.0411e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e69f4e3c10_wrap_pyop2_kernel_prolong       4 0.0 7.5759e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e69f4c1cd0_wrap_pyop2_kernel_prolong       4 0.0 6.5883e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d6fb8e8c50_wrap_pyop2_kernel_prolong       4 0.0 7.5717e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d6fb943090_wrap_pyop2_kernel_prolong       4 0.0 5.6114e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe5c1d3150_wrap_pyop2_kernel_prolong       4 0.0 7.5733e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe5af3d550_wrap_pyop2_kernel_prolong       4 0.0 4.8896e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1485ceacde10_wrap_pyop2_kernel_prolong       4 0.0 7.5774e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1485ce8d27d0_wrap_pyop2_kernel_prolong       4 0.0 6.0406e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147863eba410_wrap_pyop2_kernel_prolong       4 0.0 7.5735e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478635f4ad0_wrap_pyop2_kernel_prolong       4 0.0 6.0442e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a70c8a9710_wrap_pyop2_kernel_prolong       4 0.0 7.6490e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a70c0e8a90_wrap_pyop2_kernel_prolong       4 0.0 5.4837e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d416d0db90_wrap_pyop2_kernel_prolong       4 0.0 7.5918e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d416d0d650_wrap_pyop2_kernel_prolong       4 0.0 5.8086e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d22a58a410_wrap_pyop2_kernel_prolong       4 0.0 7.6672e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d22a589290_wrap_pyop2_kernel_prolong       4 0.0 5.9282e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151199917e90_wrap_pyop2_kernel_prolong       4 0.0 7.6621e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151199916750_wrap_pyop2_kernel_prolong       4 0.0 4.8424e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd2b23c150_wrap_pyop2_kernel_prolong       4 0.0 7.6225e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd2b44d1d0_wrap_pyop2_kernel_prolong       4 0.0 5.8847e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cfa91f95d0_wrap_pyop2_kernel_prolong       4 0.0 7.6747e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cfa8fde750_wrap_pyop2_kernel_prolong       4 0.0 6.1518e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145bae9adf10_wrap_pyop2_kernel_prolong       4 0.0 7.5765e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145bae9acdd0_wrap_pyop2_kernel_prolong       4 0.0 6.4506e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15523432e750_wrap_pyop2_kernel_prolong       4 0.0 7.6155e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155234345f10_wrap_pyop2_kernel_prolong       4 0.0 6.6558e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146eea334dd0_wrap_pyop2_kernel_prolong       4 0.0 7.6891e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146ee9c9a450_wrap_pyop2_kernel_prolong       4 0.0 6.7020e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1528f10722d0_wrap_pyop2_kernel_prolong       4 0.0 7.6829e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1528f1072390_wrap_pyop2_kernel_prolong       4 0.0 6.1648e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1505c71e20d0_wrap_pyop2_kernel_prolong       4 0.0 7.6894e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1505c71e1850_wrap_pyop2_kernel_prolong       4 0.0 6.0581e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14baa1a048d0_wrap_pyop2_kernel_prolong       4 0.0 7.6593e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14baa1064dd0_wrap_pyop2_kernel_prolong       4 0.0 6.4947e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d54bdbfc10_wrap_pyop2_kernel_prolong       4 0.0 7.6615e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d54bdbc310_wrap_pyop2_kernel_prolong       4 0.0 5.5155e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c7282e550_wrap_pyop2_kernel_prolong       4 0.0 7.5797e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c71f1cd90_wrap_pyop2_kernel_prolong       4 0.0 6.6258e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1460a70dfe10_wrap_pyop2_kernel_prolong       4 0.0 7.6852e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1460a70dcd10_wrap_pyop2_kernel_prolong       4 0.0 6.5088e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150461acdc50_wrap_pyop2_kernel_prolong       4 0.0 7.6332e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150460e73010_wrap_pyop2_kernel_prolong       4 0.0 7.5413e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1534d9398810_wrap_pyop2_kernel_prolong       4 0.0 7.5795e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1534d93716d0_wrap_pyop2_kernel_prolong       4 0.0 5.8210e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb65b1dd90_wrap_pyop2_kernel_prolong       4 0.0 7.5870e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb65b1e190_wrap_pyop2_kernel_prolong       4 0.0 5.8568e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d9c7b37210_wrap_pyop2_kernel_prolong       4 0.0 7.5887e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d9c7b771d0_wrap_pyop2_kernel_prolong       4 0.0 6.9125e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155423512f50_wrap_pyop2_kernel_prolong       4 0.0 7.6344e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1554234fdd10_wrap_pyop2_kernel_prolong       4 0.0 4.8688e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1f01f1850_wrap_pyop2_kernel_prolong       4 0.0 7.6498e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1f0200510_wrap_pyop2_kernel_prolong       4 0.0 6.6509e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153d2e643990_wrap_pyop2_kernel_prolong       4 0.0 7.6603e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153d2e622190_wrap_pyop2_kernel_prolong       4 0.0 6.8020e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1531e5ef6250_wrap_pyop2_kernel_prolong       4 0.0 7.5738e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1531e5d9f6d0_wrap_pyop2_kernel_prolong       4 0.0 6.2297e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15289e8a2fd0_wrap_pyop2_kernel_prolong       4 0.0 7.5738e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15289e8a2b10_wrap_pyop2_kernel_prolong       4 0.0 5.7716e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15096fba5950_wrap_pyop2_kernel_prolong       4 0.0 7.5786e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15096fac7490_wrap_pyop2_kernel_prolong       4 0.0 6.1907e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151479037510_wrap_pyop2_kernel_prolong       4 0.0 7.5712e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151479279810_wrap_pyop2_kernel_prolong       4 0.0 4.6768e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15225a779e90_wrap_pyop2_kernel_prolong       4 0.0 7.5857e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15225a779f10_wrap_pyop2_kernel_prolong       4 0.0 6.6668e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d9cf07a590_wrap_pyop2_kernel_prolong       4 0.0 7.6508e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d9ce689a90_wrap_pyop2_kernel_prolong       4 0.0 6.4438e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a571772390_wrap_pyop2_kernel_prolong       4 0.0 7.6509e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a571771510_wrap_pyop2_kernel_prolong       4 0.0 6.8496e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bda13307d0_wrap_pyop2_kernel_prolong       4 0.0 7.5784e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bda1359c10_wrap_pyop2_kernel_prolong       4 0.0 6.9166e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1545263a0210_wrap_pyop2_kernel_prolong       4 0.0 7.6397e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15452516d810_wrap_pyop2_kernel_prolong       4 0.0 5.6186e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b0c23c5bd0_wrap_pyop2_kernel_prolong       4 0.0 7.6836e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b0c261dc50_wrap_pyop2_kernel_prolong       4 0.0 6.6893e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15340746e5d0_wrap_pyop2_kernel_prolong       4 0.0 7.5804e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15340745bb50_wrap_pyop2_kernel_prolong       4 0.0 6.6390e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e114788d50_wrap_pyop2_kernel_prolong       4 0.0 7.5781e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e10fee9bd0_wrap_pyop2_kernel_prolong       4 0.0 5.7601e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152b793c6a50_wrap_pyop2_kernel_prolong       4 0.0 7.6851e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152b73f95850_wrap_pyop2_kernel_prolong       4 0.0 7.3790e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb8013e990_wrap_pyop2_kernel_prolong       4 0.0 7.6616e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb8016ab50_wrap_pyop2_kernel_prolong       4 0.0 5.2980e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c83e418d0_wrap_pyop2_kernel_prolong       4 0.0 7.5816e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c83e42c50_wrap_pyop2_kernel_prolong       4 0.0 6.7060e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a4dada750_wrap_pyop2_kernel_prolong       4 0.0 7.6741e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a4dd0ef50_wrap_pyop2_kernel_prolong       4 0.0 6.6861e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1525e9b542d0_wrap_pyop2_kernel_prolong       4 0.0 7.6564e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1525e9b75c90_wrap_pyop2_kernel_prolong       4 0.0 6.5041e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ebea729bd0_wrap_pyop2_kernel_prolong       4 0.0 7.5963e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ebea791210_wrap_pyop2_kernel_prolong       4 0.0 6.4758e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153a37967550_wrap_pyop2_kernel_prolong       4 0.0 7.5818e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153a37938b90_wrap_pyop2_kernel_prolong       4 0.0 6.6497e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf27b30c10_wrap_pyop2_kernel_prolong       4 0.0 7.6470e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf27b4acd0_wrap_pyop2_kernel_prolong       4 0.0 7.3122e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided        496 1.0 1.7721e-01 3.8 0.00e+00 0.0 1.4e+06 4.0e+00 5.0e+02  0  0  2  0  2   0  0  4  0  7    -0
SFSetGraph           496 1.0 2.0644e-02 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              496 1.0 2.0369e-01 2.4 0.00e+00 0.0 2.8e+06 2.0e+02 5.0e+02  0  0  4  0  2   0  0  7  0  7    -0
SFPack           3868875 1.1 3.9952e+00 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack         3868875 1.1 2.0622e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy            12825 1.0 1.4981e+01 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecSet             34199 1.0 1.8804e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecAYPX            17100 1.0 2.6667e+01 1.8 1.03e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  3  0  0  0 158844
VecScatterBegin  3868875 1.1 5.1046e+01 1.3 0.00e+00 0.0 3.1e+07 7.4e+04 0.0e+00  2  0 45 30  0   5  0 82 100  0    -0
VecScatterEnd    3868875 1.1 6.0993e+01 17.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
MatMult             8550 1.0 3.7028e+02 1.2 2.44e+11 1.1 1.9e+07 1.2e+05 0.0e+00 14  9 28 30  0  41 62 50 100  0 270017
MatMultAdd          4275 1.0 2.2405e+01 1.2 1.03e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  3  0  0  0 189055
MatMultTranspose    4275 1.0 1.8293e+01 1.8 1.03e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  3  0  0  0 231559
MatSolve         1919475 1.1 4.0095e+02 1.3 1.31e+11 1.2 1.9e+07 5.7e+02 2.5e+03 15  4 28  0  8  42 31 50  0 37 123811
MatResidual         4275 1.0 2.0862e+02 1.4 1.24e+11 1.1 9.6e+06 1.2e+05 0.0e+00  8  4 14 15  0  21 31 25 50  0 243011
PCApply            12825 1.0 4.6864e+02 1.3 1.31e+11 1.2 1.9e+07 5.7e+02 2.5e+03 18  4 28  0  8  50 31 50  0 37 105927
PCApplyOnBlocks  1915200 1.1 2.7882e+02 1.7 1.20e+11 1.1 0.0e+00 0.0e+00 0.0e+00  9  4  0  0  0  26 30  0  0  0 176837
KSPSolve           12825 1.0 6.6383e+02 1.2 2.62e+11 1.1 2.9e+07 4.0e+04 6.8e+03 26  9 41 15 21  74 64 75 50 100 155404
MGSmooth Level 0    4275 1.0 1.5253e+02 1.2 1.08e+10 54.3 1.9e+07 5.7e+02 6.8e+03  6  0 28  0 21  17  0 50  0 100  2207
MGSmooth Level 1    8550 1.0 5.3603e+02 1.3 2.51e+11 1.1 9.6e+06 1.2e+05 0.0e+00 20  9 14 15  0  57 63 25 50  0 191826
MGResid Level 1     4275 1.0 2.0864e+02 1.4 1.24e+11 1.1 9.6e+06 1.2e+05 0.0e+00  8  4 14 15  0  21 31 25 50  0 242989
MGInterp Level 1    8550 1.0 3.9405e+01 1.3 2.07e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   4  5  0  0  0 214991
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   135            135
              Viewer     3              3
           Index Set  4427           4427
   IS L to G Mapping   431            431
             Section   472            472
   Star Forest Graph   594           1090
              Vector  2827           2827
              Matrix  1248           1248
      Preconditioner   230            230
       Krylov Solver   228            228
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

           Index Set   992            992
   Star Forest Graph   496              0
              Vector   496            496
========================================================================================================================
Average time to get PetscTime(): 2.6e-08
Average time for MPI_Barrier(): 1.16374e-05
Average time for zero size MPI_Send(): 2.55376e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murr_monthly3/vlumping_linesmooth/h4.profile # (source: code)
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

