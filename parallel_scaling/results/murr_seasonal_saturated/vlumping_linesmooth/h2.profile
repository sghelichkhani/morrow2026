****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0424.gadi.nci.org.au with 208 processes, by sg8812 on Sat Aug 29 13:53:12 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           1.890e+03     1.000   1.890e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                3.173e+12     1.146   3.017e+12  6.276e+14
Flops/sec:            1.679e+09     1.146   1.596e+09  3.321e+11
MPI Msg Count:        2.289e+05     3.138   1.432e+05  2.978e+07
MPI Msg Len (bytes):  2.719e+10     3.593   1.116e+05  3.325e+12
MPI Reductions:       2.554e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 1.1106e+03  58.8%  5.4313e+14  86.5%  1.120e+07  37.6%  2.045e+05       68.9%  1.832e+04  71.7%
 1:        MG Apply: 7.7935e+02  41.2%  8.4453e+13  13.5%  1.858e+07  62.4%  5.566e+04       31.1%  7.207e+03  28.2%

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

BuildTwoSided       3473 1.0 1.6342e+02 3.1 0.00e+00 0.0 4.2e+05 4.0e+00 3.2e+03  5  0  1  0 13   9  0  4  0 18    -0
BuildTwoSidedF      3151 1.0 1.7468e+02 2.6 0.00e+00 0.0 6.9e+05 1.4e+06 3.2e+03  6  0  2 29 12  10  0  6 42 17    -0
SFSetGraph           329 1.1 1.6773e-02 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              322 1.1 4.2863e+00 124.6 0.00e+00 0.0 1.4e+05 1.1e+03 9.8e+01  0  0  0  0  0   0  0  1  0  1    -0
SFBcastBegin        2369 1.0 1.4437e+00 3.7 0.00e+00 0.0 2.5e+06 1.0e+05 0.0e+00  0  0  8  8  0   0  0 23 12  0    -0
SFBcastEnd          2369 1.0 4.5028e+01 96.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin       1464 1.0 5.0267e-01 5.9 0.00e+00 0.0 1.6e+06 1.1e+05 0.0e+00  0  0  5  5  0   0  0 14  8  0    -0
SFReduceEnd         1464 1.0 1.3799e+01 40.4 1.84e+08 3.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1632
SFFetchOpBegin         6 1.0 3.5028e-05 5.8 0.00e+00 0.0 5.3e+03 7.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           6 1.0 7.4351e-04 16.7 0.00e+00 0.0 5.3e+03 7.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          4 1.0 1.2333e-03 2.3 0.00e+00 0.0 2.6e+03 1.1e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         49 1.0 6.5053e-03 1.5 0.00e+00 0.0 1.2e+05 7.8e+01 5.8e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           51 1.0 4.4218e-03 2.8 0.00e+00 0.0 5.9e+04 3.7e+01 5.1e+01  0  0  0  0  0   0  0  1  0  0    -0
SFRemoteOff            2 1.0 1.0248e-04 3.1 0.00e+00 0.0 2.3e+03 1.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack            202890 1.1 3.5508e+00 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack          202896 1.1 9.5486e-01 6.0 1.84e+08 3.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 23584
VecDot               629 1.0 2.6561e+00 6.5 5.07e+08 1.1 0.0e+00 0.0e+00 6.3e+02  0  0  0  0  2   0  0  0  0  3 38821
VecMDot             4472 1.0 4.8474e+01 2.6 1.60e+10 1.1 0.0e+00 0.0e+00 4.5e+03  2  1  0  0 18   3  1  0  0 24 67166
VecNorm             7823 1.0 2.2156e+01 3.8 6.31e+09 1.1 0.0e+00 0.0e+00 7.8e+03  1  0  0  0 31   1  0  0  0 43 57880
VecScale            5122 1.0 1.6595e+00 1.2 2.07e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 252986
VecCopy             5414 1.0 7.1966e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecSet              2142 1.0 1.7776e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              650 1.0 1.1518e+00 1.2 5.24e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 92515
VecWAXPY            1394 1.0 2.9216e+00 1.2 8.71e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 60571
VecMAXPY            5122 1.0 2.5876e+01 1.1 1.96e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  1  0  0  0 154156
VecScatterBegin   199051 1.1 3.8746e+00 1.5 0.00e+00 0.0 5.6e+06 1.2e+05 0.0e+00  0  0 19 19  0   0  0 50 28  0    -0
VecScatterEnd     199051 1.1 5.3633e+01 24.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecSetRandom          20 1.0 7.2445e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecReduceArith      1258 1.0 9.2272e-01 2.0 1.01e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 223495
VecReduceComm        629 1.0 6.3329e-01 12.7 0.00e+00 0.0 0.0e+00 0.0e+00 6.3e+02  0  0  0  0  2   0  0  0  0  3    -0
VecNormalize         431 1.0 1.4391e+00 2.8 5.21e+08 1.1 0.0e+00 0.0e+00 4.3e+02  0  0  0  0  2   0  0  0  0  2 73645
MatMult             5101 1.0 2.3596e+02 1.3 1.46e+11 1.1 5.6e+06 1.2e+05 0.0e+00 11  5 19 19  0  18  5 50 28  0 125392
MatSolve           96544 1.1 1.1889e+01 1.7 6.07e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0 103759
MatLUFactorSym       225 1.1 6.2596e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum      5109 1.1 3.5849e+01 1.0 1.67e+09 1.4 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0  7649
MatAssemblyBegin    8938 1.0 1.8834e+02 2.6 0.00e+00 0.0 6.9e+05 1.4e+06 3.2e+03  7  0  2 29 12  11  0  6 42 17    -0
MatAssemblyEnd      8938 1.0 5.4380e+01 6.1 7.00e+08 0.0 4.4e+03 1.5e+04 1.7e+01  2  0  0  0  0   3  0  0  0  0  1101
MatGetRowIJ          224 1.1 3.3889e-05 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats      20 1.0 2.7808e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  1   0  0  0  0  1    -0
MatGetOrdering       224 1.1 3.9137e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries      1258 1.0 2.5956e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
MatTranspose           2 1.0 1.5578e-02 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 1.2444e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum       1258 1.0 1.0915e+01 1.2 1.83e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   1  1  0  0  0 339088
MatPtAPSymbolic        1 1.0 2.1802e-01 1.0 0.00e+00 0.0 3.3e+03 1.9e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       629 1.0 7.7069e+01 1.0 7.30e+10 1.1 6.9e+05 3.5e+05 6.3e+02  4  2  2  7  2   7  3  6 10  3 192062
MatGetLocalMat       629 1.0 4.8823e+00 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        629 1.0 2.7132e+00 2.2 0.00e+00 0.0 6.9e+05 3.5e+05 0.0e+00  0  0  2  7  0   0  0  6 10  0    -0
MatSetPreallCOO       32 1.0 6.0329e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       32 1.0 3.8680e-05 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp              629 1.0 1.6542e+02 1.0 1.01e+11 1.1 1.1e+06 2.6e+05 3.0e+03  9  3  4  9 12  15  4 10 13 16 123123
PCApply             4062 1.0 8.0310e+02 1.1 4.20e+11 1.1 1.9e+07 5.6e+04 7.2e+03 41 13 62 31 28 Multiple stages 105159
PCApplyOnBlocks    96544 1.1 1.3273e+01 1.6 7.35e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0 112586
KSPSetUp             629 1.0 1.3483e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             629 1.0 9.9439e+02 1.0 5.70e+11 1.1 2.3e+07 6.7e+04 1.6e+04 53 18 77 47 62 Multiple stages 115702
KSPGMRESOrthog      4472 1.0 6.7326e+01 1.8 3.20e+10 1.1 0.0e+00 0.0e+00 4.5e+03  3  1  0  0 18   4  1  0  0 24 96717
DMRefine               2 1.0 2.7583e-02 1.0 2.09e+03 1.0 1.6e+04 3.3e+01 6.3e+01  0  0  0  0  0   0  0  0  0  0    16
DMPlexCreateGmsh       1 1.0 1.2841e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 5.2142e+00 395.5 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Partition         4 1.0 6.9316e-02 1.0 0.00e+00 0.0 3.8e+04 6.1e+01 5.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         4 1.0 1.7147e-02 1.1 0.00e+00 0.0 1.4e+05 7.1e+01 2.4e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 2.0210e-03 846.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       4 1.0 1.4037e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        4 1.0 3.5851e-03 1.2 0.00e+00 0.0 7.5e+03 4.8e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       4 1.0 1.3726e-03 2.4 0.00e+00 0.0 3.7e+03 1.9e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          4 1.0 1.9805e-03 2.7 0.00e+00 0.0 3.9e+03 2.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          29 1.0 6.1598e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 7.2287e-02 1.0 0.00e+00 0.0 8.6e+03 1.8e+02 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        4 1.0 1.9414e-03 1.1 0.00e+00 0.0 2.2e+04 1.1e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       4 1.0 6.7161e-03 1.0 0.00e+00 0.0 7.1e+04 6.8e+01 1.5e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistOvrlp        3 1.0 1.6338e-02 1.0 0.00e+00 0.0 1.7e+05 6.7e+01 2.4e+02  0  0  1  0  1   0  0  2  0  1    -0
DMPlexDistField        7 1.0 3.5873e-03 1.3 0.00e+00 0.0 3.2e+04 5.5e+01 2.0e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify        41 1.0 4.3661e-03 4.2 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      41 1.0 3.1188e-04 5.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          2 1.0 1.2875e-04 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          2 1.0 3.1848e-03 1.6 0.00e+00 0.0 8.6e+03 2.8e+01 1.9e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          2 1.0 1.1308e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          2 1.0 3.5009e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             2 1.0 3.4989e-04 1.9 0.00e+00 0.0 6.9e+03 2.6e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         2 1.0 8.5487e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         2 1.0 8.1118e-04 1.9 0.00e+00 0.0 1.7e+03 3.5e+01 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             29 1.0 1.8250e+03 1.0 3.17e+12 1.1 2.9e+07 1.1e+05 2.5e+04 97 100 99 100 97 Multiple stages 343877
SNESSetUp              1 1.0 5.3023e-05 4.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval    1423 1.0 1.0876e+02 1.2 1.29e+12 1.2 3.1e+06 1.2e+05 0.0e+00  5 40 11 11  0   9 47 28 16  0 2327908
SNESJacobianEval     629 1.0 5.2475e+02 1.0 1.19e+12 1.2 1.4e+06 7.6e+05 2.5e+03 28 37  5 31 10  47 43 12 45 14 446864
SNESLineSearch       629 1.0 1.2903e+02 1.0 1.29e+12 1.2 3.7e+06 1.2e+05 3.3e+03  7 40 13 13 13  12 46 33 19 18 1956914
DualSpaceSetUp         8 1.0 5.6475e-03 1.2 1.08e+02 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     4
FESetUp                8 1.0 1.1232e-02 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 1.8879e+03 1.0 3.17e+12 1.1 3.0e+07 1.1e+05 2.6e+04 100 100 100 100 100 Multiple stages 332426
firedrake.__init__       1 1.0 1.0934e+01 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
CreateMesh             3 1.0 5.3410e+00 38.2 0.00e+00 0.0 3.4e+05 7.2e+01 4.4e+02  0  0  1  0  2   0  0  3  0  2    -0
firedrake.mesh._from_gmsh       1 1.0 5.2152e+00 394.7 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       3 1.0 1.0610e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       3 1.0 6.7300e-06 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        3 1.0 4.9143e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          3 1.0 1.2413e-03 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      16 1.0 2.8968e-02 1.2 0.00e+00 0.0 7.1e+03 8.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      20 1.0 2.0310e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      20 1.0 2.6708e-02 1.2 0.00e+00 0.0 7.1e+03 8.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      19 1.0 2.4190e-02 1.2 0.00e+00 0.0 7.1e+03 8.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      19 1.0 2.4057e-02 1.2 0.00e+00 0.0 7.1e+03 8.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      38 1.0 8.3352e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       6 1.0 5.0231e-03 1.2 0.00e+00 0.0 7.1e+03 8.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__      12 1.0 7.5072e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      12 1.0 1.6183e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      65 1.0 2.8717e-02 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          3 1.0 1.0583e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       3 1.0 2.5319e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       4 1.0 5.6675e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       5 1.0 1.3205e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       3 1.0 1.0517e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     370 1.0 5.8876e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      9651 1.0 4.9901e+02 1.2 2.48e+12 1.2 2.3e+06 1.2e+05 3.2e+01 24 78  8  8  0  41 90 20 12  0 977159
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       6 1.0 1.0088e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)   19302 1.0 2.5461e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      17 1.0 1.0579e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
GlobalKernel: generate loopy      17 0.0 1.3503e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      17 0.0 8.4301e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      17 1.0 1.3901e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.load      17 1.0 1.3900e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      17 1.0 9.1143e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.make_so      17 1.0 8.9347e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
ParLoopRednBegin    9651 1.0 2.6957e-02 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      9651 1.0 2.7254e-02 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       3 1.0 9.2672e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong       4 1.0 7.8334e+00 1.0 1.36e+07 1.1 1.9e+04 1.3e+04 1.3e+01  0  0  0  0  0   1  0  0  0  0   353
firedrake.interpolation.interpolate      13 1.0 4.9214e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      13 1.0 5.9056e+00 1.0 8.46e+07 1.1 2.8e+04 4.0e+04 3.7e+01  0  0  0  0  0   1  0  0  0  0  2911
firedrake.formmanipulation.split_form      14 1.0 4.7749e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      14 1.0 3.4381e-04 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      13 1.0 1.5860e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       6 1.2 1.0046e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin    2102 1.0 5.7650e+00 6.0 0.00e+00 0.0 2.3e+06 1.1e+05 4.0e+00  0  0  8  8  0   0  0 21 12  0    -0
Parloop_Cells_wrap_expression_kernel      26 1.0 5.4298e+00 1.0 8.46e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  3166
firedrake.halo.Halo.global_to_local_end    2102 1.0 4.2783e+01 135.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       1 1.0 3.6363e+00 56.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a2cf92bed0_wrap_pyop2_kernel_prolong       4 0.0 7.5298e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a2cf978bd0_wrap_pyop2_kernel_prolong       4 0.0 4.8318e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 3.9297e+00 1.0 6.85e+07 1.1 1.7e+04 5.8e+04 1.1e+01  0  0  0  0  0   0  0  0  0  0  3546
firedrake.function.Function.assign     130 1.0 8.4514e-01 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     129 1.0 8.0869e-01 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.0381e-04 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      52 1.0 9.7102e-04 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 4.9398e-05 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.5048e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.9559e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.2502e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 8.5943e+00 1.0 0.00e+00 0.0 6.7e+03 4.7e+05 2.3e+01  0  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 1.6705e-03 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.9625e-04 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.2740e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.2740e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateSparsity         2 1.0 5.1110e+00 1.1 0.00e+00 0.0 5.7e+03 2.7e+05 1.8e+01  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         2 1.0 5.6359e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      29 1.0 1.8251e+03 1.0 3.17e+12 1.1 2.9e+07 1.1e+05 2.5e+04 97 100 99 100 97 Multiple stages 343857
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 3.2919e-01 1210.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 9.3360e-06 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 3.2914e-01 1464.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 3.2911e-01 1686.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral    2846 1.0 3.1182e+01 1.4 3.30e+11 1.1 0.0e+00 0.0e+00 0.0e+00  1 11  0  0  0   2 12  0  0  0 2148887
Parloop_Cells_wrap_form0_exterior_facet_top_integral    2846 1.0 1.1393e+00 1.1 4.24e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  7564
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral    2846 1.0 1.6590e+00 1.3 3.40e+09 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 49891
Parloop_Cells_wrap_form0_interior_facet_horiz_integral    2846 1.0 1.9147e+01 1.2 3.13e+11 1.1 0.0e+00 0.0e+00 0.0e+00  1 10  0  0  0   2 12  0  0  0 3325982
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral    2846 1.0 4.4242e+01 1.3 6.48e+11 1.3 0.0e+00 0.0e+00 0.0e+00  2 20  0  0  0   4 23  0  0  0 2766147
firedrake.halo.Halo.local_to_global_begin    1423 1.0 5.5400e-01 4.7 0.00e+00 0.0 1.6e+06 1.2e+05 0.0e+00  0  0  5  5  0   0  0 14  8  0    -0
firedrake.halo.Halo.local_to_global_end    1423 1.0 1.3815e+01 38.2 1.84e+08 3.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1630
Parloop_Cells_wrap_form00_cell_integral    1258 1.0 7.9301e+01 1.5 2.71e+11 1.1 0.0e+00 0.0e+00 0.0e+00  3  9  0  0  0   6 10  0  0  0 693581
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral    1258 1.0 3.6369e+00 2.8 1.51e+09 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 10120
Parloop_Cells_wrap_form00_interior_facet_horiz_integral    1258 1.0 9.7756e+01 1.3 3.56e+11 1.1 0.0e+00 0.0e+00 0.0e+00  5 12  0  0  0   8 13  0  0  0 740185
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral    1258 1.0 2.2847e+02 1.5 5.66e+11 1.3 0.0e+00 0.0e+00 0.0e+00 10 17  0  0  0  17 20  0  0  0 468502
firedrake.dmhooks.get_function_space       2 1.0 1.9907e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 5.0629e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0      629 1.0 3.5365e+01 1.0 3.83e+08 15.4 0.0e+00 0.0e+00 2.0e+00  2  0  0  0  0   3  0  0  0  0   382
MGSetup Level 1      629 1.0 1.8457e+00 1.0 6.16e+08 1.1 1.1e+04 1.2e+05 2.5e+02  0  0  0  0  1   0  0  0  0  1 67759
firedrake.constant.Constant.assign      29 1.0 1.5769e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b41dc53590_wrap_pyop2_kernel_prolong       4 0.0 7.5333e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b41dc42290_wrap_pyop2_kernel_prolong       4 0.0 4.8144e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f6f462e2d0_wrap_pyop2_kernel_prolong       4 0.0 7.4962e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f6f463d890_wrap_pyop2_kernel_prolong       4 0.0 6.2119e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f30b370bd0_wrap_pyop2_kernel_prolong       4 0.0 7.4701e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f30a8d7950_wrap_pyop2_kernel_prolong       4 0.0 5.5859e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c14f874d0_wrap_pyop2_kernel_prolong       4 0.0 7.5236e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c14f843d0_wrap_pyop2_kernel_prolong       4 0.0 6.7379e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1510e5b2f150_wrap_pyop2_kernel_prolong       4 0.0 7.5370e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1510e5ada410_wrap_pyop2_kernel_prolong       4 0.0 5.9393e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1484d811a790_wrap_pyop2_kernel_prolong       4 0.0 7.5069e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1484d811a190_wrap_pyop2_kernel_prolong       4 0.0 5.0148e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478ab836650_wrap_pyop2_kernel_prolong       4 0.0 7.5321e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478aba30e50_wrap_pyop2_kernel_prolong       4 0.0 5.0330e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15302fa6e750_wrap_pyop2_kernel_prolong       4 0.0 7.5302e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15302fa6df50_wrap_pyop2_kernel_prolong       4 0.0 5.2435e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1489ca38a190_wrap_pyop2_kernel_prolong       4 0.0 7.5113e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1489ca38ba10_wrap_pyop2_kernel_prolong       4 0.0 5.3245e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd03a2edd0_wrap_pyop2_kernel_prolong       4 0.0 7.5306e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd08178550_wrap_pyop2_kernel_prolong       4 0.0 6.1462e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147300218150_wrap_pyop2_kernel_prolong       4 0.0 7.5238e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147300263550_wrap_pyop2_kernel_prolong       4 0.0 5.8077e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1467c57ab4d0_wrap_pyop2_kernel_prolong       4 0.0 7.5092e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1467c5a462d0_wrap_pyop2_kernel_prolong       4 0.0 6.6913e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14769e117bd0_wrap_pyop2_kernel_prolong       4 0.0 7.4639e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14769e15a6d0_wrap_pyop2_kernel_prolong       4 0.0 5.3676e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14622dcf1a50_wrap_pyop2_kernel_prolong       4 0.0 7.4893e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14622dce6710_wrap_pyop2_kernel_prolong       4 0.0 5.9849e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152538bcf410_wrap_pyop2_kernel_prolong       4 0.0 7.4529e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152538b57510_wrap_pyop2_kernel_prolong       4 0.0 7.3828e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14688ed06c10_wrap_pyop2_kernel_prolong       4 0.0 7.4029e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14688ed005d0_wrap_pyop2_kernel_prolong       4 0.0 4.7913e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aab6b68850_wrap_pyop2_kernel_prolong       4 0.0 7.4906e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aab697db90_wrap_pyop2_kernel_prolong       4 0.0 5.6500e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c249f75090_wrap_pyop2_kernel_prolong       4 0.0 7.4145e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c249f6dc90_wrap_pyop2_kernel_prolong       4 0.0 7.1037e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1517d617df10_wrap_pyop2_kernel_prolong       4 0.0 7.4077e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1517d6135610_wrap_pyop2_kernel_prolong       4 0.0 5.6346e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f4f719b890_wrap_pyop2_kernel_prolong       4 0.0 7.4586e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f4f7198b90_wrap_pyop2_kernel_prolong       4 0.0 4.8662e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1538968f1310_wrap_pyop2_kernel_prolong       4 0.0 7.4067e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1538960f1e50_wrap_pyop2_kernel_prolong       4 0.0 5.3323e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15012092ab50_wrap_pyop2_kernel_prolong       4 0.0 7.5267e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150120929610_wrap_pyop2_kernel_prolong       4 0.0 6.1824e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1546c0b9c990_wrap_pyop2_kernel_prolong       4 0.0 7.4596e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1546c0bfc310_wrap_pyop2_kernel_prolong       4 0.0 6.8497e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148109d99ed0_wrap_pyop2_kernel_prolong       4 0.0 7.4080e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148109d9b310_wrap_pyop2_kernel_prolong       4 0.0 5.8999e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150ba171ae10_wrap_pyop2_kernel_prolong       4 0.0 7.4141e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150ba1718510_wrap_pyop2_kernel_prolong       4 0.0 7.3075e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149cf5789dd0_wrap_pyop2_kernel_prolong       4 0.0 7.4081e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149cf5789390_wrap_pyop2_kernel_prolong       4 0.0 5.2793e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15047a2208d0_wrap_pyop2_kernel_prolong       4 0.0 7.4049e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15047a1e5290_wrap_pyop2_kernel_prolong       4 0.0 5.0786e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd1f9a5bd0_wrap_pyop2_kernel_prolong       4 0.0 7.4144e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd1f6ff310_wrap_pyop2_kernel_prolong       4 0.0 5.8479e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ae0f1bf90_wrap_pyop2_kernel_prolong       4 0.0 7.4886e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ae0edf050_wrap_pyop2_kernel_prolong       4 0.0 6.0245e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e23fce350_wrap_pyop2_kernel_prolong       4 0.0 7.4709e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e23f51b90_wrap_pyop2_kernel_prolong       4 0.0 6.0413e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1533b795e0d0_wrap_pyop2_kernel_prolong       4 0.0 7.4080e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1533b795d890_wrap_pyop2_kernel_prolong       4 0.0 5.4298e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1536e0e34f90_wrap_pyop2_kernel_prolong       4 0.0 7.4069e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1536e04d5e10_wrap_pyop2_kernel_prolong       4 0.0 5.4278e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151d69941b10_wrap_pyop2_kernel_prolong       4 0.0 7.4732e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151d695c1fd0_wrap_pyop2_kernel_prolong       4 0.0 5.7980e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f78d6b290_wrap_pyop2_kernel_prolong       4 0.0 7.4147e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f78d68c50_wrap_pyop2_kernel_prolong       4 0.0 6.3009e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e3dec57a10_wrap_pyop2_kernel_prolong       4 0.0 7.4400e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e3de9d5890_wrap_pyop2_kernel_prolong       4 0.0 5.3648e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146065597b10_wrap_pyop2_kernel_prolong       4 0.0 7.4121e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146065fbd410_wrap_pyop2_kernel_prolong       4 0.0 6.6942e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152a271ff490_wrap_pyop2_kernel_prolong       4 0.0 7.4802e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152a274319d0_wrap_pyop2_kernel_prolong       4 0.0 6.1199e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1520541ede90_wrap_pyop2_kernel_prolong       4 0.0 7.5124e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15204f9eb410_wrap_pyop2_kernel_prolong       4 0.0 7.6663e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aaea300550_wrap_pyop2_kernel_prolong       4 0.0 7.4093e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aaead35bd0_wrap_pyop2_kernel_prolong       4 0.0 5.5111e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15217961a910_wrap_pyop2_kernel_prolong       4 0.0 7.4325e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152179861d10_wrap_pyop2_kernel_prolong       4 0.0 5.9960e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a758bac910_wrap_pyop2_kernel_prolong       4 0.0 7.4134e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a758b731d0_wrap_pyop2_kernel_prolong       4 0.0 6.0641e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146184d8a7d0_wrap_pyop2_kernel_prolong       4 0.0 7.4688e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146184d884d0_wrap_pyop2_kernel_prolong       4 0.0 6.0681e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b079836d0_wrap_pyop2_kernel_prolong       4 0.0 7.4349e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b07981210_wrap_pyop2_kernel_prolong       4 0.0 5.2569e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c7a2d164d0_wrap_pyop2_kernel_prolong       4 0.0 7.4211e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c7a2d77dd0_wrap_pyop2_kernel_prolong       4 0.0 7.0994e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a052944bd0_wrap_pyop2_kernel_prolong       4 0.0 7.4317e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a052935a50_wrap_pyop2_kernel_prolong       4 0.0 5.6269e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1499eea43c50_wrap_pyop2_kernel_prolong       4 0.0 7.4138e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1499eea41390_wrap_pyop2_kernel_prolong       4 0.0 7.0120e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd1df8b6d0_wrap_pyop2_kernel_prolong       4 0.0 7.4303e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd1df89110_wrap_pyop2_kernel_prolong       4 0.0 6.4328e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14920976ab10_wrap_pyop2_kernel_prolong       4 0.0 7.4091e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14920976a910_wrap_pyop2_kernel_prolong       4 0.0 5.8005e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab5b254650_wrap_pyop2_kernel_prolong       4 0.0 7.4157e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab5b224d50_wrap_pyop2_kernel_prolong       4 0.0 6.8496e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a291315490_wrap_pyop2_kernel_prolong       4 0.0 7.4886e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a2909e9410_wrap_pyop2_kernel_prolong       4 0.0 6.1278e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154bce98ea10_wrap_pyop2_kernel_prolong       4 0.0 7.4431e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154bce038990_wrap_pyop2_kernel_prolong       4 0.0 7.3659e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14699d4d2690_wrap_pyop2_kernel_prolong       4 0.0 7.4032e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14699d4d2210_wrap_pyop2_kernel_prolong       4 0.0 5.0665e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1544cd86ee50_wrap_pyop2_kernel_prolong       4 0.0 7.4887e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1544cd86ca10_wrap_pyop2_kernel_prolong       4 0.0 5.0303e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e4ca0d690_wrap_pyop2_kernel_prolong       4 0.0 7.4048e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e4ca4ef90_wrap_pyop2_kernel_prolong       4 0.0 5.2631e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df9037e290_wrap_pyop2_kernel_prolong       4 0.0 7.4048e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df90391bd0_wrap_pyop2_kernel_prolong       4 0.0 4.8882e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15122b52d090_wrap_pyop2_kernel_prolong       4 0.0 7.4488e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15122a9c4610_wrap_pyop2_kernel_prolong       4 0.0 5.6308e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145e56766350_wrap_pyop2_kernel_prolong       4 0.0 7.4044e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145e564b3350_wrap_pyop2_kernel_prolong       4 0.0 6.0030e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458c2afce90_wrap_pyop2_kernel_prolong       4 0.0 7.4044e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458c2139f10_wrap_pyop2_kernel_prolong       4 0.0 4.2954e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ca4aef8990_wrap_pyop2_kernel_prolong       4 0.0 7.4246e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ca4aef3e50_wrap_pyop2_kernel_prolong       4 0.0 5.5873e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d42a56390_wrap_pyop2_kernel_prolong       4 0.0 7.4279e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d42005ed0_wrap_pyop2_kernel_prolong       4 0.0 5.4097e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b510ba490_wrap_pyop2_kernel_prolong       4 0.0 7.4095e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b50749ed0_wrap_pyop2_kernel_prolong       4 0.0 5.4243e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15177f664910_wrap_pyop2_kernel_prolong       4 0.0 7.4242e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15177f665d10_wrap_pyop2_kernel_prolong       4 0.0 5.9607e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1495761864d0_wrap_pyop2_kernel_prolong       4 0.0 7.4178e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149576185f50_wrap_pyop2_kernel_prolong       4 0.0 6.5254e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1531899c3cd0_wrap_pyop2_kernel_prolong       4 0.0 7.4120e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15318a303010_wrap_pyop2_kernel_prolong       4 0.0 6.6782e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b057bad0d0_wrap_pyop2_kernel_prolong       4 0.0 7.4072e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b057a90450_wrap_pyop2_kernel_prolong       4 0.0 5.1888e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d27f3e3090_wrap_pyop2_kernel_prolong       4 0.0 7.4125e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d27f542250_wrap_pyop2_kernel_prolong       4 0.0 5.9222e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb904758d0_wrap_pyop2_kernel_prolong       4 0.0 7.4235e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb90315dd0_wrap_pyop2_kernel_prolong       4 0.0 6.4787e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150d276a3bd0_wrap_pyop2_kernel_prolong       4 0.0 7.4403e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150d2634a150_wrap_pyop2_kernel_prolong       4 0.0 5.6851e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d1af23ba90_wrap_pyop2_kernel_prolong       4 0.0 7.4097e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d1af29bad0_wrap_pyop2_kernel_prolong       4 0.0 5.9429e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1492557e02d0_wrap_pyop2_kernel_prolong       4 0.0 7.4593e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149256232d10_wrap_pyop2_kernel_prolong       4 0.0 6.7889e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c6826d0290_wrap_pyop2_kernel_prolong       4 0.0 7.4132e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c682591cd0_wrap_pyop2_kernel_prolong       4 0.0 6.0062e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1503a92508d0_wrap_pyop2_kernel_prolong       4 0.0 7.4346e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1503a92d8310_wrap_pyop2_kernel_prolong       4 0.0 5.0463e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145f49a50850_wrap_pyop2_kernel_prolong       4 0.0 7.4470e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145f49a53c10_wrap_pyop2_kernel_prolong       4 0.0 6.5749e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b20af55190_wrap_pyop2_kernel_prolong       4 0.0 7.4894e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b20af50a10_wrap_pyop2_kernel_prolong       4 0.0 5.5389e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147335003690_wrap_pyop2_kernel_prolong       4 0.0 7.4528e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147335001090_wrap_pyop2_kernel_prolong       4 0.0 6.0567e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1503d66e0690_wrap_pyop2_kernel_prolong       4 0.0 7.4340e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1503d6592bd0_wrap_pyop2_kernel_prolong       4 0.0 6.7786e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152bb698b450_wrap_pyop2_kernel_prolong       4 0.0 7.4237e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152bb6ae1690_wrap_pyop2_kernel_prolong       4 0.0 7.1456e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e7530ee290_wrap_pyop2_kernel_prolong       4 0.0 7.4223e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e7530f9310_wrap_pyop2_kernel_prolong       4 0.0 5.8145e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148aecf96a90_wrap_pyop2_kernel_prolong       4 0.0 7.4103e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148aecf95650_wrap_pyop2_kernel_prolong       4 0.0 5.8471e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14805720e3d0_wrap_pyop2_kernel_prolong       4 0.0 7.4427e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148057281790_wrap_pyop2_kernel_prolong       4 0.0 5.9122e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d2a94862d0_wrap_pyop2_kernel_prolong       4 0.0 7.4616e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d2a9485790_wrap_pyop2_kernel_prolong       4 0.0 5.9179e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c2cd87b10_wrap_pyop2_kernel_prolong       4 0.0 7.5136e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c2c591a50_wrap_pyop2_kernel_prolong       4 0.0 5.1758e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146047bae590_wrap_pyop2_kernel_prolong       4 0.0 7.4569e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146047a78550_wrap_pyop2_kernel_prolong       4 0.0 7.1035e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14734c5c7550_wrap_pyop2_kernel_prolong       4 0.0 7.4540e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14734c5c55d0_wrap_pyop2_kernel_prolong       4 0.0 5.6710e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b83a5e0d0_wrap_pyop2_kernel_prolong       4 0.0 7.4853e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b83a5db10_wrap_pyop2_kernel_prolong       4 0.0 5.3781e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eb63d57a10_wrap_pyop2_kernel_prolong       4 0.0 7.4593e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eb63d9d4d0_wrap_pyop2_kernel_prolong       4 0.0 6.3424e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145bbb8ad8d0_wrap_pyop2_kernel_prolong       4 0.0 7.4374e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145bbafd9f90_wrap_pyop2_kernel_prolong       4 0.0 6.4231e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d16eb5550_wrap_pyop2_kernel_prolong       4 0.0 7.5026e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d15764990_wrap_pyop2_kernel_prolong       4 0.0 5.5717e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d886838710_wrap_pyop2_kernel_prolong       4 0.0 7.5124e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d886829c50_wrap_pyop2_kernel_prolong       4 0.0 6.4397e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152329a49590_wrap_pyop2_kernel_prolong       4 0.0 7.4870e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152329a28c50_wrap_pyop2_kernel_prolong       4 0.0 6.7904e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150c86ee7510_wrap_pyop2_kernel_prolong       4 0.0 7.5010e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150c87806310_wrap_pyop2_kernel_prolong       4 0.0 6.0633e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e59ecd5dd0_wrap_pyop2_kernel_prolong       4 0.0 7.5131e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e59ecca110_wrap_pyop2_kernel_prolong       4 0.0 5.3689e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15148bdcf510_wrap_pyop2_kernel_prolong       4 0.0 7.5163e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15148bdcdd50_wrap_pyop2_kernel_prolong       4 0.0 6.6827e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eead086cd0_wrap_pyop2_kernel_prolong       4 0.0 7.4996e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eead075150_wrap_pyop2_kernel_prolong       4 0.0 5.3297e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1466440ce710_wrap_pyop2_kernel_prolong       4 0.0 7.4782e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146644337150_wrap_pyop2_kernel_prolong       4 0.0 6.6173e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c95d414390_wrap_pyop2_kernel_prolong       4 0.0 7.4252e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c95d2d4210_wrap_pyop2_kernel_prolong       4 0.0 6.7926e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e37115ba10_wrap_pyop2_kernel_prolong       4 0.0 7.4639e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e372b00710_wrap_pyop2_kernel_prolong       4 0.0 5.8514e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152333fd6390_wrap_pyop2_kernel_prolong       4 0.0 7.4948e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152333e8a050_wrap_pyop2_kernel_prolong       4 0.0 6.0358e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b8121e65d0_wrap_pyop2_kernel_prolong       4 0.0 7.5334e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b8121e5b90_wrap_pyop2_kernel_prolong       4 0.0 6.4715e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a356812490_wrap_pyop2_kernel_prolong       4 0.0 7.4501e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a356811b50_wrap_pyop2_kernel_prolong       4 0.0 6.4797e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14771fd1e790_wrap_pyop2_kernel_prolong       4 0.0 7.4988e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14771fd1e9d0_wrap_pyop2_kernel_prolong       4 0.0 6.1753e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148230f4d050_wrap_pyop2_kernel_prolong       4 0.0 7.5422e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148230f4f650_wrap_pyop2_kernel_prolong       4 0.0 6.1704e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5ae839a90_wrap_pyop2_kernel_prolong       4 0.0 7.4842e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5ae825c10_wrap_pyop2_kernel_prolong       4 0.0 7.1231e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150e8e816390_wrap_pyop2_kernel_prolong       4 0.0 7.5975e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150e8e816710_wrap_pyop2_kernel_prolong       4 0.0 5.2692e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145cc5801650_wrap_pyop2_kernel_prolong       4 0.0 7.5765e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145cc5a1a150_wrap_pyop2_kernel_prolong       4 0.0 5.2604e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad9d7d1dd0_wrap_pyop2_kernel_prolong       4 0.0 7.5121e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad9cf65510_wrap_pyop2_kernel_prolong       4 0.0 5.6266e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15058fb5fd50_wrap_pyop2_kernel_prolong       4 0.0 7.5525e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15058fb5d150_wrap_pyop2_kernel_prolong       4 0.0 6.2976e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148880146c10_wrap_pyop2_kernel_prolong       4 0.0 7.5561e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14887baa0850_wrap_pyop2_kernel_prolong       4 0.0 6.3422e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c13670c750_wrap_pyop2_kernel_prolong       4 0.0 7.5266e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c135af6690_wrap_pyop2_kernel_prolong       4 0.0 7.3653e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb05bd79d0_wrap_pyop2_kernel_prolong       4 0.0 7.5131e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb049cf090_wrap_pyop2_kernel_prolong       4 0.0 5.6650e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14773da1f490_wrap_pyop2_kernel_prolong       4 0.0 7.5470e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14773da1db10_wrap_pyop2_kernel_prolong       4 0.0 6.0955e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15254df667d0_wrap_pyop2_kernel_prolong       4 0.0 7.5588e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15254d827f90_wrap_pyop2_kernel_prolong       4 0.0 5.8389e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b5985f5050_wrap_pyop2_kernel_prolong       4 0.0 7.5356e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b598628f10_wrap_pyop2_kernel_prolong       4 0.0 5.9499e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e0f767410_wrap_pyop2_kernel_prolong       4 0.0 7.4929e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e0f765590_wrap_pyop2_kernel_prolong       4 0.0 6.4030e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ab5c5b050_wrap_pyop2_kernel_prolong       4 0.0 7.5618e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ab5c09ed0_wrap_pyop2_kernel_prolong       4 0.0 6.7254e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498e231d650_wrap_pyop2_kernel_prolong       4 0.0 7.5770e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498e198a190_wrap_pyop2_kernel_prolong       4 0.0 6.7149e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150afabe2790_wrap_pyop2_kernel_prolong       4 0.0 7.4762e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150afae2c750_wrap_pyop2_kernel_prolong       4 0.0 5.0580e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f0522e6c50_wrap_pyop2_kernel_prolong       4 0.0 7.5023e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f0522e6190_wrap_pyop2_kernel_prolong       4 0.0 5.9288e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b731ffbb50_wrap_pyop2_kernel_prolong       4 0.0 7.5135e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b731ff8290_wrap_pyop2_kernel_prolong       4 0.0 6.3636e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a7f0e2ff90_wrap_pyop2_kernel_prolong       4 0.0 7.4799e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a7f0e2c850_wrap_pyop2_kernel_prolong       4 0.0 5.3966e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1501f5898c10_wrap_pyop2_kernel_prolong       4 0.0 7.4782e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1501f58d15d0_wrap_pyop2_kernel_prolong       4 0.0 5.8337e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146870312910_wrap_pyop2_kernel_prolong       4 0.0 7.4872e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14686b9c9790_wrap_pyop2_kernel_prolong       4 0.0 6.4236e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14626475b710_wrap_pyop2_kernel_prolong       4 0.0 7.4761e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146264758750_wrap_pyop2_kernel_prolong       4 0.0 5.3959e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15214866eed0_wrap_pyop2_kernel_prolong       4 0.0 7.4785e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152148639750_wrap_pyop2_kernel_prolong       4 0.0 4.8140e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f3d927290_wrap_pyop2_kernel_prolong       4 0.0 7.4823e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f3e36c8d0_wrap_pyop2_kernel_prolong       4 0.0 5.9834e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d54b864a90_wrap_pyop2_kernel_prolong       4 0.0 7.4771e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d54af35450_wrap_pyop2_kernel_prolong       4 0.0 5.7572e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a935bcc550_wrap_pyop2_kernel_prolong       4 0.0 7.5119e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a935e3c8d0_wrap_pyop2_kernel_prolong       4 0.0 7.1231e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14595b665650_wrap_pyop2_kernel_prolong       4 0.0 7.4762e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14595ace1d50_wrap_pyop2_kernel_prolong       4 0.0 5.4891e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb0814fd50_wrap_pyop2_kernel_prolong       4 0.0 7.4839e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb08144510_wrap_pyop2_kernel_prolong       4 0.0 7.1702e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ecc374a890_wrap_pyop2_kernel_prolong       4 0.0 7.5347e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ecc371b790_wrap_pyop2_kernel_prolong       4 0.0 5.2794e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f21563b910_wrap_pyop2_kernel_prolong       4 0.0 7.4816e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f215639550_wrap_pyop2_kernel_prolong       4 0.0 6.0445e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147bc23bf910_wrap_pyop2_kernel_prolong       4 0.0 7.4879e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147bc234bbd0_wrap_pyop2_kernel_prolong       4 0.0 6.5399e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d1cd58fb50_wrap_pyop2_kernel_prolong       4 0.0 7.4747e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d1cd58d010_wrap_pyop2_kernel_prolong       4 0.0 5.6627e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b913a0850_wrap_pyop2_kernel_prolong       4 0.0 7.4826e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b913a9f90_wrap_pyop2_kernel_prolong       4 0.0 6.3250e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146cc42bcb10_wrap_pyop2_kernel_prolong       4 0.0 7.4886e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146cc4cfd650_wrap_pyop2_kernel_prolong       4 0.0 6.6177e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1531e436b790_wrap_pyop2_kernel_prolong       4 0.0 7.5268e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1531e435e1d0_wrap_pyop2_kernel_prolong       4 0.0 5.2852e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15263502bdd0_wrap_pyop2_kernel_prolong       4 0.0 7.4998e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1526345fac90_wrap_pyop2_kernel_prolong       4 0.0 6.5909e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14833f6039d0_wrap_pyop2_kernel_prolong       4 0.0 7.5604e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14833f3c6d10_wrap_pyop2_kernel_prolong       4 0.0 5.5486e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f737d3810_wrap_pyop2_kernel_prolong       4 0.0 7.5677e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f737d2c90_wrap_pyop2_kernel_prolong       4 0.0 6.0936e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1476aa832750_wrap_pyop2_kernel_prolong       4 0.0 7.5280e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1476aa831c50_wrap_pyop2_kernel_prolong       4 0.0 6.8678e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1467b883ae50_wrap_pyop2_kernel_prolong       4 0.0 7.5550e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1467b87e0650_wrap_pyop2_kernel_prolong       4 0.0 6.2094e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146aedcc1d90_wrap_pyop2_kernel_prolong       4 0.0 7.5247e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146aedcbc390_wrap_pyop2_kernel_prolong       4 0.0 6.5304e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b34839390_wrap_pyop2_kernel_prolong       4 0.0 7.4852e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b2fd7ebd0_wrap_pyop2_kernel_prolong       4 0.0 6.0407e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14642005d0d0_wrap_pyop2_kernel_prolong       4 0.0 7.5312e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14642024d150_wrap_pyop2_kernel_prolong       4 0.0 6.5415e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e84884fd10_wrap_pyop2_kernel_prolong       4 0.0 7.5417e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e843ece290_wrap_pyop2_kernel_prolong       4 0.0 5.8199e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1507e42cb8d0_wrap_pyop2_kernel_prolong       4 0.0 7.4844e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1507e42c9d50_wrap_pyop2_kernel_prolong       4 0.0 5.8525e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc4a3f0b10_wrap_pyop2_kernel_prolong       4 0.0 7.5345e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc49b35050_wrap_pyop2_kernel_prolong       4 0.0 6.4569e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151896dd6050_wrap_pyop2_kernel_prolong       4 0.0 7.5418e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151897004450_wrap_pyop2_kernel_prolong       4 0.0 7.1706e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f6b4ec7710_wrap_pyop2_kernel_prolong       4 0.0 7.5261e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f6b4edc8d0_wrap_pyop2_kernel_prolong       4 0.0 5.9473e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14adde182fd0_wrap_pyop2_kernel_prolong       4 0.0 7.5734e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14adde1817d0_wrap_pyop2_kernel_prolong       4 0.0 6.3753e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ecd314bd0_wrap_pyop2_kernel_prolong       4 0.0 7.5011e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ecd2e2490_wrap_pyop2_kernel_prolong       4 0.0 5.9866e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f0c5afb8d0_wrap_pyop2_kernel_prolong       4 0.0 7.4925e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f0c641f450_wrap_pyop2_kernel_prolong       4 0.0 5.9786e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146146b0a010_wrap_pyop2_kernel_prolong       4 0.0 7.5271e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146146aa9ad0_wrap_pyop2_kernel_prolong       4 0.0 7.4056e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147eba472910_wrap_pyop2_kernel_prolong       4 0.0 7.5854e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147eba4c63d0_wrap_pyop2_kernel_prolong       4 0.0 6.9455e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c59f69fdd0_wrap_pyop2_kernel_prolong       4 0.0 7.5047e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c59f69d010_wrap_pyop2_kernel_prolong       4 0.0 7.1070e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1533920971d0_wrap_pyop2_kernel_prolong       4 0.0 7.4764e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153392094410_wrap_pyop2_kernel_prolong       4 0.0 5.6493e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a03672350_wrap_pyop2_kernel_prolong       4 0.0 7.5424e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a02d0d710_wrap_pyop2_kernel_prolong       4 0.0 6.2816e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c442d1dd50_wrap_pyop2_kernel_prolong       4 0.0 7.5949e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c442d1fe10_wrap_pyop2_kernel_prolong       4 0.0 6.7070e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1507a8246a10_wrap_pyop2_kernel_prolong       4 0.0 7.4844e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1507a8245c50_wrap_pyop2_kernel_prolong       4 0.0 5.8047e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152465756510_wrap_pyop2_kernel_prolong       4 0.0 7.4807e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152465749050_wrap_pyop2_kernel_prolong       4 0.0 6.1942e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15220ce9a3d0_wrap_pyop2_kernel_prolong       4 0.0 7.4791e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15220ce99b50_wrap_pyop2_kernel_prolong       4 0.0 5.2973e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146ca02e1dd0_wrap_pyop2_kernel_prolong       4 0.0 7.4754e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146ca032cd10_wrap_pyop2_kernel_prolong       4 0.0 4.7300e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b2e2a33810_wrap_pyop2_kernel_prolong       4 0.0 7.4776e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b2e2a30bd0_wrap_pyop2_kernel_prolong       4 0.0 5.6254e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152a43695e90_wrap_pyop2_kernel_prolong       4 0.0 7.4790e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152a436f5cd0_wrap_pyop2_kernel_prolong       4 0.0 6.4068e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f5df83990_wrap_pyop2_kernel_prolong       4 0.0 7.4917e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f5df87cd0_wrap_pyop2_kernel_prolong       4 0.0 6.1906e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15113ad3e9d0_wrap_pyop2_kernel_prolong       4 0.0 7.5008e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15113ad4ebd0_wrap_pyop2_kernel_prolong       4 0.0 7.1014e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14af09a72390_wrap_pyop2_kernel_prolong       4 0.0 7.4945e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14af09a70890_wrap_pyop2_kernel_prolong       4 0.0 5.8242e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f812ee7050_wrap_pyop2_kernel_prolong       4 0.0 7.4905e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f812ee4c90_wrap_pyop2_kernel_prolong       4 0.0 7.1975e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1540ccf62990_wrap_pyop2_kernel_prolong       4 0.0 7.5838e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1540cc32af10_wrap_pyop2_kernel_prolong       4 0.0 6.0260e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456450ed310_wrap_pyop2_kernel_prolong       4 0.0 7.5466e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145644936e90_wrap_pyop2_kernel_prolong       4 0.0 5.8029e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145c438760d0_wrap_pyop2_kernel_prolong       4 0.0 7.6028e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145c43629110_wrap_pyop2_kernel_prolong       4 0.0 6.9368e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa83fcd7d0_wrap_pyop2_kernel_prolong       4 0.0 7.4844e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa83fcfe50_wrap_pyop2_kernel_prolong       4 0.0 6.6933e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc6f993910_wrap_pyop2_kernel_prolong       4 0.0 7.4834e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc6e785ed0_wrap_pyop2_kernel_prolong       4 0.0 6.2688e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1457b1117690_wrap_pyop2_kernel_prolong       4 0.0 7.4895e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1457b1117150_wrap_pyop2_kernel_prolong       4 0.0 7.4363e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf17e3ea10_wrap_pyop2_kernel_prolong       4 0.0 7.4776e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf21275b50_wrap_pyop2_kernel_prolong       4 0.0 4.9874e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15469bfa6310_wrap_pyop2_kernel_prolong       4 0.0 7.5028e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15469be012d0_wrap_pyop2_kernel_prolong       4 0.0 6.0902e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148279aae750_wrap_pyop2_kernel_prolong       4 0.0 7.5786e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148279aae050_wrap_pyop2_kernel_prolong       4 0.0 6.4966e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f8706b390_wrap_pyop2_kernel_prolong       4 0.0 7.4779e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f8706bbd0_wrap_pyop2_kernel_prolong       4 0.0 5.7855e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1552a9abc890_wrap_pyop2_kernel_prolong       4 0.0 7.4878e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1552a9aa60d0_wrap_pyop2_kernel_prolong       4 0.0 7.1145e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150902d03610_wrap_pyop2_kernel_prolong       4 0.0 7.5676e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1508e83fbc10_wrap_pyop2_kernel_prolong       4 0.0 6.4069e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be8e321310_wrap_pyop2_kernel_prolong       4 0.0 7.4925e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be8db46790_wrap_pyop2_kernel_prolong       4 0.0 7.5544e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd1a11a950_wrap_pyop2_kernel_prolong       4 0.0 7.5996e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd1a0e5010_wrap_pyop2_kernel_prolong       4 0.0 6.0276e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac9e449e50_wrap_pyop2_kernel_prolong       4 0.0 7.5518e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac9e4498d0_wrap_pyop2_kernel_prolong       4 0.0 5.2800e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150be5a28810_wrap_pyop2_kernel_prolong       4 0.0 7.4816e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150be5a24f50_wrap_pyop2_kernel_prolong       4 0.0 5.7650e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd2fb627d0_wrap_pyop2_kernel_prolong       4 0.0 7.5832e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd2fba7450_wrap_pyop2_kernel_prolong       4 0.0 5.3997e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ba50fe2290_wrap_pyop2_kernel_prolong       4 0.0 7.5951e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ba50fe2a10_wrap_pyop2_kernel_prolong       4 0.0 6.4945e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c6d17d6d0_wrap_pyop2_kernel_prolong       4 0.0 7.5889e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c6c7f9490_wrap_pyop2_kernel_prolong       4 0.0 7.0248e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15246d5639d0_wrap_pyop2_kernel_prolong       4 0.0 7.5464e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15246d565f10_wrap_pyop2_kernel_prolong       4 0.0 5.6118e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c37214cd50_wrap_pyop2_kernel_prolong       4 0.0 7.5875e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c3721ab150_wrap_pyop2_kernel_prolong       4 0.0 6.4730e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1465cf9724d0_wrap_pyop2_kernel_prolong       4 0.0 7.5122e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1465cf965490_wrap_pyop2_kernel_prolong       4 0.0 6.6039e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15514415ae90_wrap_pyop2_kernel_prolong       4 0.0 7.4796e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1551442818d0_wrap_pyop2_kernel_prolong       4 0.0 6.5281e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151eb7664190_wrap_pyop2_kernel_prolong       4 0.0 7.4921e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151eb7526d50_wrap_pyop2_kernel_prolong       4 0.0 7.3771e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151c8fc5f290_wrap_pyop2_kernel_prolong       4 0.0 7.5283e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151c8fc65b50_wrap_pyop2_kernel_prolong       4 0.0 6.2052e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15002350ce10_wrap_pyop2_kernel_prolong       4 0.0 7.6049e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150023541c50_wrap_pyop2_kernel_prolong       4 0.0 7.6284e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150b682a4d50_wrap_pyop2_kernel_prolong       4 0.0 7.4824e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150b682e3810_wrap_pyop2_kernel_prolong       4 0.0 5.6856e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a018938710_wrap_pyop2_kernel_prolong       4 0.0 7.5930e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a01899bbd0_wrap_pyop2_kernel_prolong       4 0.0 5.7002e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152253ba3950_wrap_pyop2_kernel_prolong       4 0.0 7.5773e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152253ba0690_wrap_pyop2_kernel_prolong       4 0.0 7.1333e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147209d50590_wrap_pyop2_kernel_prolong       4 0.0 7.5654e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147209d6f290_wrap_pyop2_kernel_prolong       4 0.0 6.6389e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa3e409d10_wrap_pyop2_kernel_prolong       4 0.0 7.5198e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa3e6985d0_wrap_pyop2_kernel_prolong       4 0.0 6.6877e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1517f3eda0d0_wrap_pyop2_kernel_prolong       4 0.0 7.5423e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1517f3dcde90_wrap_pyop2_kernel_prolong       4 0.0 6.7264e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a4ceae2b10_wrap_pyop2_kernel_prolong       4 0.0 7.4793e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a4ce8c3bd0_wrap_pyop2_kernel_prolong       4 0.0 5.9881e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154929dd3d90_wrap_pyop2_kernel_prolong       4 0.0 7.5046e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154929dd0610_wrap_pyop2_kernel_prolong       4 0.0 5.9578e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d4b9a72610_wrap_pyop2_kernel_prolong       4 0.0 7.5811e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d4b8f52210_wrap_pyop2_kernel_prolong       4 0.0 7.0684e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14649e25a590_wrap_pyop2_kernel_prolong       4 0.0 7.5455e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14649d135010_wrap_pyop2_kernel_prolong       4 0.0 6.1702e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1485fd6b2550_wrap_pyop2_kernel_prolong       4 0.0 7.5152e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1485fceadc90_wrap_pyop2_kernel_prolong       4 0.0 6.8963e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ce59557d0_wrap_pyop2_kernel_prolong       4 0.0 7.5941e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ce5957810_wrap_pyop2_kernel_prolong       4 0.0 7.0320e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c1245ce510_wrap_pyop2_kernel_prolong       4 0.0 7.5220e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c1245ce610_wrap_pyop2_kernel_prolong       4 0.0 7.4272e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided        629 1.0 9.9749e-02 3.3 0.00e+00 0.0 8.5e+05 4.0e+00 6.3e+02  0  0  3  0  2   0  0  5  0  9    -0
SFSetGraph           629 1.0 2.9118e-02 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              629 1.0 1.4606e-01 2.0 0.00e+00 0.0 1.7e+06 2.0e+02 6.3e+02  0  0  6  0  2   0  0  9  0  9    -0
SFPack           3676110 1.1 3.6910e+00 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack         3676110 1.1 2.2065e-01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             4062 1.0 5.3413e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecSet             32495 1.0 1.6671e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecAXPY             8124 1.0 1.1319e+01 1.9 6.55e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  2  0  0  0 117656
VecAYPX             8124 1.0 1.2408e+01 3.2 3.28e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 53666
VecScatterBegin  3676110 1.1 4.4269e+01 1.3 0.00e+00 0.0 1.4e+07 7.2e+04 0.0e+00  2  0 48 31  0   5  0 77 100  0    -0
VecScatterEnd    3676110 1.1 7.1770e+01 16.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
MatMult             8124 1.0 3.6158e+02 1.3 2.32e+11 1.1 8.9e+06 1.2e+05 0.0e+00 17  8 30 31  0  41 56 48 99  0 130321
MatMultAdd          4062 1.0 2.0594e+01 1.3 9.83e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  2  0  0  0 97003
MatMultTranspose    4062 1.0 1.7848e+01 2.3 9.83e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  2  0  0  0 111923
MatSolve         1823838 1.1 2.7758e+02 1.6 1.19e+11 1.1 9.7e+06 5.6e+02 3.1e+03 13  4 33  0 12  31 28 52  1 44 84300
MatLUFactorNum    136416 1.1 3.5443e+01 1.4 3.91e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  1  0  0  0   4  9  0  0  0 223985
MatResidual         4062 1.0 2.1152e+02 1.5 1.18e+11 1.1 4.4e+06 1.2e+05 0.0e+00  9  4 15 15  0  22 28 24 50  0 112960
MatAssemblyBegin  136416 1.1 2.8190e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyEnd    136416 1.1 3.2086e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats     609 1.0 8.1064e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  4  0  0  0  0   9  0  0  0  0    -0
PCSetUp           137025 1.1 1.1706e+02 1.3 3.91e+10 1.1 0.0e+00 0.0e+00 0.0e+00  6  1  0  0  0  14  9  0  0  0 67818
PCApply            12186 1.0 4.4769e+02 1.4 1.58e+11 1.1 9.7e+06 5.6e+02 3.1e+03 21  5 33  0 12  52 37 52  1 44 70001
PCApplyOnBlocks  1819776 1.1 2.6594e+02 1.7 1.53e+11 1.1 0.0e+00 0.0e+00 0.0e+00 12  5  0  0  0  29 37  0  0  0 117288
KSPSetUp          136417 1.1 1.4098e-02 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve           12186 1.0 6.1880e+02 1.2 2.82e+11 1.1 1.4e+07 3.7e+04 7.2e+03 30  9 48 16 28  74 67 76 50 100 91409
MGSmooth Level 0    4062 1.0 7.4267e+01 1.8 4.75e+09 22.7 9.7e+06 5.6e+02 7.2e+03  3  0 33  0 28   6  0 52  1 100  1982
MGSmooth Level 1    8124 1.0 5.7507e+02 1.3 2.78e+11 1.1 4.4e+06 1.2e+05 0.0e+00 28  9 15 15  0  68 67 24 50  0 98105
MGResid Level 1     4062 1.0 2.1154e+02 1.5 1.18e+11 1.1 4.4e+06 1.2e+05 0.0e+00  9  4 15 15  0  22 28 24 50  0 112951
MGInterp Level 1    8124 1.0 3.7967e+01 1.5 1.97e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  1  0  0  0   4  5  0  0  0 105229
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   137            137
              Viewer     3              3
         PetscRandom    20             20
           Index Set  3833           3833
   IS L to G Mapping   431            431
             Section   472            472
   Star Forest Graph   634           1263
              Vector  2744           2743
              Matrix  1248           1248
      Preconditioner   230            230
       Krylov Solver   248            248
     DMKSP interface     1              1
                SNES     1              1
              DMSNES     1              1
      SNESLineSearch     1              1
    Distributed Mesh   130            130
            DM Label   333            333
          Quadrature   144            144
      Mesh Transform     2              2
    GraphPartitioner    41             41
     Discrete System   185            185
           Weak Form   185            185
        Linear Space    12             12
          Dual Space    52             52
            FE Space     8              8

--- Event Stage 1: MG Apply

           Index Set  1258           1258
   Star Forest Graph   629              0
              Vector   631            632
========================================================================================================================
Average time to get PetscTime(): 2.69e-08
Average time for MPI_Barrier(): 8.2414e-06
Average time for zero size MPI_Send(): 2.4935e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murr_seasonal_saturated/vlumping_linesmooth/h2.profile # (source: code)
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

