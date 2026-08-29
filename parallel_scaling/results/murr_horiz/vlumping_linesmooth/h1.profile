****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0071.gadi.nci.org.au with 104 processes, by sg8812 on Sat Aug 29 07:10:44 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           7.371e+02     1.000   7.371e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                1.031e+12     1.206   9.686e+11  1.007e+14
Flops/sec:            1.399e+09     1.206   1.314e+09  1.367e+11
MPI Msg Count:        6.611e+04     2.668   4.851e+04  5.045e+06
MPI Msg Len (bytes):  8.088e+09     2.993   1.177e+05  5.935e+11
MPI Reductions:       9.299e+03     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 4.1822e+02  56.7%  8.2454e+13  81.9%  1.949e+06  38.6%  1.942e+05       63.8%  7.212e+03  77.6%
 1:        MG Apply: 3.1889e+02  43.3%  1.8280e+13  18.1%  3.095e+06  61.4%  6.944e+04       36.2%  2.068e+03  22.2%

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

BuildTwoSided       1321 1.0 4.4298e+01 9.5 0.00e+00 0.0 9.4e+04 4.0e+00 1.1e+03  3  0  2  0 12   5  0  5  0 15    -0
BuildTwoSidedF       983 1.0 4.4212e+01 9.6 0.00e+00 0.0 1.2e+05 1.5e+06 9.8e+02  3  0  2 29 11   5  0  6 46 14    -0
SFSetGraph           345 1.1 1.6024e-02 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              338 1.1 1.1463e+00 32.9 0.00e+00 0.0 6.9e+04 1.1e+03 9.8e+01  0  0  1  0  1   0  0  4  0  1    -0
SFBcastBegin         888 1.0 4.1510e-01 3.4 0.00e+00 0.0 4.4e+05 8.8e+04 0.0e+00  0  0  9  7  0   0  0 22 10  0    -0
SFBcastEnd           888 1.0 1.5821e+01 89.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        341 1.0 6.4315e-02 15.6 0.00e+00 0.0 1.7e+05 1.1e+05 0.0e+00  0  0  3  3  0   0  0  9  5  0    -0
SFReduceEnd          341 1.0 3.2248e+00 62.3 3.24e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   737
SFFetchOpBegin         6 1.0 2.5139e-05 3.9 0.00e+00 0.0 2.5e+03 7.3e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           6 1.0 3.4832e-04 9.2 0.00e+00 0.0 2.5e+03 7.3e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          4 1.0 6.7453e-04 1.2 0.00e+00 0.0 1.2e+03 1.2e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         49 1.0 4.6715e-03 1.3 0.00e+00 0.0 5.9e+04 8.2e+01 5.8e+01  0  0  1  0  1   0  0  3  0  1    -0
SFSectionSF           51 1.0 3.0332e-03 2.1 0.00e+00 0.0 2.9e+04 3.8e+01 5.1e+01  0  0  1  0  1   0  0  1  0  1    -0
SFRemoteOff            2 1.0 8.0249e-05 2.2 0.00e+00 0.0 1.1e+03 1.6e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack             99738 1.1 1.4161e+00 3.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           99744 1.1 1.8084e-01 12.0 3.24e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 13139
VecDot               225 1.0 9.0835e-01 5.2 1.94e+08 1.2 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  2   0  0  0  0  3 21459
VecMDot             1878 1.0 1.6710e+01 2.5 8.29e+09 1.2 0.0e+00 0.0e+00 1.9e+03  1  1  0  0 20   2  1  0  0 26 49717
VecNorm             2722 1.0 8.4934e+00 3.7 2.35e+09 1.2 0.0e+00 0.0e+00 2.7e+03  1  0  0  0 29   1  0  0  0 38 27764
VecScale            2113 1.0 8.4828e-01 1.3 9.13e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 107895
VecCopy             1587 1.0 2.1996e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               861 1.0 7.6653e-01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              235 1.0 4.2705e-01 1.2 2.03e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 47672
VecWAXPY             225 1.0 4.6814e-01 1.2 9.72e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 20819
VecMAXPY            2113 1.0 1.2867e+01 1.2 9.91e+09 1.2 0.0e+00 0.0e+00 0.0e+00  2  1  0  0  0   3  1  0  0  0 77210
VecScatterBegin    98503 1.1 2.1492e+00 1.6 0.00e+00 0.0 1.1e+06 1.2e+05 0.0e+00  0  0 22 22  0   0  0 57 35  0    -0
VecScatterEnd      98503 1.1 1.5623e+01 34.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecSetRandom           9 1.0 4.5606e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecReduceArith       450 1.0 3.5685e-01 2.2 3.89e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 109243
VecReduceComm        225 1.0 3.9099e-01 153.8 0.00e+00 0.0 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  2   0  0  0  0  3    -0
VecNormalize         200 1.0 1.5610e+00 2.4 2.59e+08 1.2 0.0e+00 0.0e+00 2.0e+02  0  0  0  0  2   0  0  0  0  3 16649
MatMult             2103 1.0 9.3304e+01 1.2 6.44e+10 1.2 1.1e+06 1.2e+05 0.0e+00 12  6 22 22  0  20  8 57 35  0 69032
MatSolve           48000 1.2 5.1519e+00 1.2 3.02e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0 58718
MatLUFactorSym       241 1.2 7.3675e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum      2237 1.1 3.4329e+00 1.1 6.47e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0 18290
MatCopy               75 1.0 4.2439e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
MatConvert             1 1.0 4.3911e-01 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin    3346 1.1 4.4231e+01 3.6 0.00e+00 0.0 1.2e+05 1.5e+06 9.8e+02  4  0  2 29 11   6  0  6 46 14    -0
MatAssemblyEnd      3346 1.1 1.1315e+01 9.6 2.53e+08 0.0 2.1e+03 1.5e+04 1.7e+01  1  0  0  0  0   1  0  0  0  0   946
MatGetRowIJ          240 1.2 4.9472e-05 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats       9 1.0 1.3781e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.4e+02  0  0  0  0  3   0  0  0  0  3    -0
MatGetOrdering       240 1.2 5.2507e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       302 1.0 8.2113e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
MatTranspose           2 1.0 1.4963e-02 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 1.3518e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        154 1.0 1.3114e+00 1.1 2.40e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 182363
MatPtAPSymbolic        1 1.0 2.6344e-01 1.0 0.00e+00 0.0 1.6e+03 2.0e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric        77 1.0 8.1639e+00 1.0 9.57e+09 1.2 4.1e+04 3.5e+05 8.2e+01  1  1  1  2  1   2  1  2  4  1 117188
MatGetLocalMat        77 1.0 6.0435e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol         77 1.0 3.0372e-01 1.9 0.00e+00 0.0 4.1e+04 3.6e+05 0.0e+00  0  0  1  2  0   0  0  2  4  0    -0
MatSetPreallCOO       32 1.0 5.9751e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       32 1.0 3.6834e-05 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp              225 1.0 4.0189e+01 1.0 2.29e+10 1.2 1.4e+05 1.9e+05 9.1e+02  5  2  3  5 10  10  3  7  7 13 57026
PCApply             1688 1.0 3.2367e+02 1.0 1.83e+11 1.2 3.1e+06 6.9e+04 2.1e+03 43 18 61 36 22 Multiple stages 56478
PCApplyOnBlocks    48000 1.2 5.8751e+00 1.2 3.64e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0 62043
KSPSetUp             225 1.0 2.1343e-02 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             225 1.0 4.1005e+02 1.0 2.52e+11 1.2 4.0e+06 8.1e+04 5.7e+03 56 25 79 54 61 Multiple stages 61429
KSPGMRESOrthog      1878 1.0 2.6467e+01 1.5 1.66e+10 1.2 0.0e+00 0.0e+00 1.9e+03  3  2  0  0 20   5  2  0  0 26 62780
DMRefine               2 1.0 2.2162e-01 1.0 2.09e+03 1.0 7.4e+03 3.5e+01 6.3e+01  0  0  0  0  1   0  0  0  0  1     1
DMPlexCreateGmsh       1 1.0 9.7656e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 5.6396e+00 524.8 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   1  0  0  0  0    -0
Mesh Partition         4 1.0 1.7752e-01 1.0 0.00e+00 0.0 1.8e+04 6.4e+01 5.1e+01  0  0  0  0  1   0  0  1  0  1    -0
Mesh Migration         4 1.0 1.2042e-02 1.1 0.00e+00 0.0 6.7e+04 7.4e+01 2.4e+02  0  0  1  0  3   0  0  3  0  3    -0
DMPlexPartSelf         1 1.0 1.1896e-03 568.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       4 1.0 8.1407e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        4 1.0 4.3896e-03 1.1 0.00e+00 0.0 3.6e+03 5.1e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       4 1.0 1.9090e-03 1.4 0.00e+00 0.0 1.8e+03 1.9e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          4 1.0 1.0710e-03 2.7 0.00e+00 0.0 1.9e+03 2.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          29 1.0 4.1002e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 1.8243e-01 1.0 0.00e+00 0.0 4.3e+03 1.8e+02 6.3e+01  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistCones        4 1.0 1.7247e-03 1.0 0.00e+00 0.0 1.1e+04 1.1e+02 8.0e+00  0  0  0  0  0   0  0  1  0  0    -0
DMPlexDistLabels       4 1.0 4.9004e-03 1.0 0.00e+00 0.0 3.5e+04 7.1e+01 1.5e+02  0  0  1  0  2   0  0  2  0  2    -0
DMPlexDistOvrlp        3 1.0 8.3840e-03 1.0 0.00e+00 0.0 8.3e+04 7.0e+01 2.4e+02  0  0  2  0  3   0  0  4  0  3    -0
DMPlexDistField        7 1.0 2.1906e-03 1.1 0.00e+00 0.0 1.5e+04 5.8e+01 2.0e+01  0  0  0  0  0   0  0  1  0  0    -0
DMPlexStratify        41 1.0 3.1268e-03 3.6 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      41 1.0 2.0498e-04 3.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          2 1.0 1.0961e-04 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          2 1.0 2.7608e-03 1.6 0.00e+00 0.0 4.1e+03 2.9e+01 1.9e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          2 1.0 1.0896e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          2 1.0 2.8044e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             2 1.0 3.2993e-04 2.2 0.00e+00 0.0 3.3e+03 2.7e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         2 1.0 9.1618e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         2 1.0 6.9944e-04 2.0 0.00e+00 0.0 8.2e+02 3.7e+01 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             75 1.0 6.7027e+02 1.0 1.03e+12 1.2 4.8e+06 1.2e+05 8.5e+03 91 100 96 100 91 Multiple stages 150276
SNESSetUp              1 1.0 6.0524e-05 3.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     300 1.0 3.2587e+01 1.1 2.91e+11 1.2 3.5e+05 1.2e+05 0.0e+00  4 28  7  7  0   7 34 18 11  0 864227
SNESJacobianEval     225 1.0 1.7614e+02 1.0 4.57e+11 1.2 2.4e+05 7.9e+05 9.0e+02 24 44  5 31 10  42 54 12 49 12 251381
SNESLineSearch       225 1.0 2.8455e+01 1.0 2.27e+11 1.2 3.5e+05 1.2e+05 9.0e+02  4 22  7  7 10   7 27 18 11 12 770294
DualSpaceSetUp         8 1.0 4.9196e-03 1.1 1.08e+02 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     2
FESetUp                8 1.0 1.8830e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 7.3497e+02 1.0 1.03e+12 1.2 5.0e+06 1.2e+05 9.3e+03 100 100 100 100 100 Multiple stages 137058
firedrake.__init__       1 1.0 1.1001e+01 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
CreateMesh             3 1.0 5.8649e+00 24.9 0.00e+00 0.0 1.6e+05 7.5e+01 4.4e+02  0  0  3  0  5   1  0  8  0  6    -0
firedrake.mesh._from_gmsh       1 1.0 5.6404e+00 523.3 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       3 1.0 9.7755e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       3 1.0 6.3120e-06 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        3 1.0 4.7590e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          3 1.0 8.6168e-04 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      16 1.0 2.8823e-02 1.2 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      20 1.0 1.9292e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      20 1.0 2.6392e-02 1.2 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      19 1.0 2.3864e-02 1.2 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      19 1.0 2.3738e-02 1.2 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      38 1.0 7.9204e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       6 1.0 4.6953e-03 1.2 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__      12 1.0 7.3677e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      12 1.0 1.5625e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      65 1.0 1.9782e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          3 1.0 1.7210e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       3 1.0 2.3345e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       4 1.0 6.3146e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       5 1.0 1.2587e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       3 1.0 1.7146e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     646 1.0 9.2943e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      2420 1.0 1.8465e+02 1.2 7.49e+11 1.2 3.3e+05 1.2e+05 3.2e+01 23 72  6  7  0  41 88 17 10  0 392287
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       6 1.0 1.6730e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    4840 1.0 2.5086e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   6  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      17 1.0 1.0364e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
GlobalKernel: generate loopy      17 0.0 1.3687e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      17 0.0 8.3573e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      17 1.0 1.4505e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
pyop2.compilation.load      17 1.0 1.4504e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      17 1.0 9.2022e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.make_so      17 1.0 9.0599e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
ParLoopRednBegin    2420 1.0 7.3330e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      2420 1.0 6.2369e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       3 1.0 9.0534e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong       4 1.0 8.6279e+00 1.0 1.46e+07 1.2 8.9e+03 1.3e+04 1.3e+01  1  0  0  0  0   2  0  0  0  0   169
firedrake.interpolation.interpolate      13 1.0 4.6123e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      13 1.0 6.0158e+00 1.0 9.02e+07 1.2 1.4e+04 4.2e+04 3.7e+01  1  0  0  0  0   1  0  1  0  1  1503
firedrake.formmanipulation.split_form      14 1.0 4.7948e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      14 1.0 2.3441e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      13 1.0 2.3846e-01 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       6 1.0 2.0127e-01 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     621 1.0 3.5524e+00 16.2 0.00e+00 0.0 3.3e+05 1.2e+05 4.0e+00  0  0  7  7  0   0  0 17 10  0    -0
Parloop_Cells_wrap_expression_kernel      26 1.0 5.4426e+00 1.0 9.02e+07 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0  1661
firedrake.halo.Halo.global_to_local_end     621 1.0 1.3739e+01 83.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       1 1.0 4.5365e+00 70.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149bdd458490_wrap_pyop2_kernel_prolong       4 0.0 7.5019e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149bdd45aad0_wrap_pyop2_kernel_prolong       4 0.0 5.5283e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 4.0441e+00 1.0 7.30e+07 1.2 8.1e+03 6.1e+04 1.1e+01  1  0  0  0  0   1  0  0  0  0  1810
firedrake.function.Function.assign     314 1.0 1.8407e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     313 1.0 1.7555e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.2064e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate     154 1.0 1.7632e-03 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 5.7565e-05 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.4353e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.8176e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.1980e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 7.2031e+00 1.0 0.00e+00 0.0 3.2e+03 4.9e+05 2.3e+01  1  0  0  0  0   2  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 6.4760e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.5911e-04 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.1561e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.1560e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateSparsity         2 1.0 3.8131e+00 1.1 0.00e+00 0.0 2.7e+03 2.8e+05 1.8e+01  1  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         2 1.0 5.9077e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      75 1.0 6.7055e+02 1.0 1.03e+12 1.2 4.8e+06 1.2e+05 8.6e+03 91 100 96 100 93 Multiple stages 150214
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 3.2881e-01 1232.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 7.9540e-06 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 3.2876e-01 1501.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 3.2873e-01 1717.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     600 1.0 8.0100e+00 1.3 7.42e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  7  0  0  0   2  9  0  0  0 928766
Parloop_Cells_wrap_form0_exterior_facet_top_integral     600 1.0 9.6877e-01 1.0 9.58e+06 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   991
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral     600 1.0 1.3712e+00 1.1 7.08e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  9128
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     600 1.0 5.6156e+00 1.2 7.08e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  7  0  0  0   1  9  0  0  0 1263472
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     600 1.0 1.2421e+01 1.3 1.46e+11 1.3 0.0e+00 0.0e+00 0.0e+00  1 14  0  0  0   3 17  0  0  0 1095919
firedrake.halo.Halo.local_to_global_begin     300 1.0 7.1517e-02 6.8 0.00e+00 0.0 1.6e+05 1.2e+05 0.0e+00  0  0  3  3  0   0  0  8  5  0    -0
firedrake.halo.Halo.local_to_global_end     300 1.0 3.2273e+00 60.6 3.24e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   736
Parloop_Cells_wrap_form00_cell_integral     450 1.0 3.0774e+01 1.4 1.04e+11 1.2 0.0e+00 0.0e+00 0.0e+00  3 10  0  0  0   6 13  0  0  0 337227
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     450 1.0 1.9394e+00 1.8 5.41e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  4929
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     450 1.0 3.6821e+01 1.2 1.36e+11 1.2 0.0e+00 0.0e+00 0.0e+00  5 14  0  0  0   8 17  0  0  0 371478
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     450 1.0 8.1591e+01 1.3 2.17e+11 1.3 0.0e+00 0.0e+00 0.0e+00 10 20  0  0  0  17 25  0  0  0 247605
firedrake.dmhooks.get_function_space       2 1.0 2.3538e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 5.0071e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0       77 1.0 3.2940e+00 1.0 2.88e+07 11.1 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   1  0  0  0  0   239
MGSetup Level 1       77 1.0 2.1099e+00 1.0 6.60e+08 1.2 5.2e+03 1.2e+05 2.7e+02  0  0  0  0  3   1  0  0  0  4 31312
firedrake.constant.Constant.assign      75 1.0 3.6270e-03 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e2e9f9550_wrap_pyop2_kernel_prolong       4 0.0 7.4891e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e2ec5a490_wrap_pyop2_kernel_prolong       4 0.0 5.1222e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148496a24690_wrap_pyop2_kernel_prolong       4 0.0 7.4642e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148496a241d0_wrap_pyop2_kernel_prolong       4 0.0 6.7325e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146597014310_wrap_pyop2_kernel_prolong       4 0.0 7.4849e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146597005f90_wrap_pyop2_kernel_prolong       4 0.0 6.3930e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1534d8e25dd0_wrap_pyop2_kernel_prolong       4 0.0 7.5085e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1534d8e25290_wrap_pyop2_kernel_prolong       4 0.0 6.7712e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c01722a950_wrap_pyop2_kernel_prolong       4 0.0 7.5060e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c017d1e750_wrap_pyop2_kernel_prolong       4 0.0 7.6216e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d6b7ed7950_wrap_pyop2_kernel_prolong       4 0.0 7.4517e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d6b7f45050_wrap_pyop2_kernel_prolong       4 0.0 6.2547e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1540c8c09710_wrap_pyop2_kernel_prolong       4 0.0 7.4790e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1540c8290a90_wrap_pyop2_kernel_prolong       4 0.0 5.2560e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ec79cf12d0_wrap_pyop2_kernel_prolong       4 0.0 7.4492e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ec7a5c6bd0_wrap_pyop2_kernel_prolong       4 0.0 6.7533e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154950486350_wrap_pyop2_kernel_prolong       4 0.0 7.4878e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1549504f59d0_wrap_pyop2_kernel_prolong       4 0.0 5.2597e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f35232810_wrap_pyop2_kernel_prolong       4 0.0 7.4873e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f352322d0_wrap_pyop2_kernel_prolong       4 0.0 7.4909e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150fc9372090_wrap_pyop2_kernel_prolong       4 0.0 7.4583e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150fc9372850_wrap_pyop2_kernel_prolong       4 0.0 6.5590e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15545bff9c50_wrap_pyop2_kernel_prolong       4 0.0 7.5000e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15545b56c550_wrap_pyop2_kernel_prolong       4 0.0 6.7605e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f747947b90_wrap_pyop2_kernel_prolong       4 0.0 7.4997e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f746fcd390_wrap_pyop2_kernel_prolong       4 0.0 5.5195e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145b3c5e1850_wrap_pyop2_kernel_prolong       4 0.0 7.4515e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145b3c4752d0_wrap_pyop2_kernel_prolong       4 0.0 6.4560e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1520aff43b10_wrap_pyop2_kernel_prolong       4 0.0 7.4484e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1520aff420d0_wrap_pyop2_kernel_prolong       4 0.0 6.5402e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d2c250c690_wrap_pyop2_kernel_prolong       4 0.0 7.4453e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d2c250d650_wrap_pyop2_kernel_prolong       4 0.0 5.3957e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1465a46ee8d0_wrap_pyop2_kernel_prolong       4 0.0 7.4850e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1465a45e7110_wrap_pyop2_kernel_prolong       4 0.0 6.9651e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b82201c510_wrap_pyop2_kernel_prolong       4 0.0 7.4549e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b8219e9e90_wrap_pyop2_kernel_prolong       4 0.0 6.2148e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac8368f850_wrap_pyop2_kernel_prolong       4 0.0 7.4544e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac82c85990_wrap_pyop2_kernel_prolong       4 0.0 5.9342e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b9e338b110_wrap_pyop2_kernel_prolong       4 0.0 7.4466e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b9e3391ad0_wrap_pyop2_kernel_prolong       4 0.0 5.9479e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15339e7bb4d0_wrap_pyop2_kernel_prolong       4 0.0 7.4997e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15339e796150_wrap_pyop2_kernel_prolong       4 0.0 8.1060e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c241d8250_wrap_pyop2_kernel_prolong       4 0.0 7.4494e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c1ff66950_wrap_pyop2_kernel_prolong       4 0.0 7.2506e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151d7b1e2b90_wrap_pyop2_kernel_prolong       4 0.0 7.4554e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151d7b0c6990_wrap_pyop2_kernel_prolong       4 0.0 6.5251e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b58efca350_wrap_pyop2_kernel_prolong       4 0.0 7.4625e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b58efcaa90_wrap_pyop2_kernel_prolong       4 0.0 7.2078e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151768ebe5d0_wrap_pyop2_kernel_prolong       4 0.0 7.4696e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151769088bd0_wrap_pyop2_kernel_prolong       4 0.0 8.1852e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cc1c47d490_wrap_pyop2_kernel_prolong       4 0.0 7.4487e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cc1c265090_wrap_pyop2_kernel_prolong       4 0.0 5.3509e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b802184f10_wrap_pyop2_kernel_prolong       4 0.0 7.4684e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b801fb6250_wrap_pyop2_kernel_prolong       4 0.0 5.5619e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14874d35e210_wrap_pyop2_kernel_prolong       4 0.0 7.4573e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14874d35db90_wrap_pyop2_kernel_prolong       4 0.0 6.7762e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148337a5a150_wrap_pyop2_kernel_prolong       4 0.0 7.4528e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148337969290_wrap_pyop2_kernel_prolong       4 0.0 6.0246e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e7799da50_wrap_pyop2_kernel_prolong       4 0.0 7.5046e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e779c4790_wrap_pyop2_kernel_prolong       4 0.0 7.2241e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd357de750_wrap_pyop2_kernel_prolong       4 0.0 7.4970e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd357ddf50_wrap_pyop2_kernel_prolong       4 0.0 6.1614e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1548daaac750_wrap_pyop2_kernel_prolong       4 0.0 7.4523e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1548daab6410_wrap_pyop2_kernel_prolong       4 0.0 5.7617e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e59fe824d0_wrap_pyop2_kernel_prolong       4 0.0 7.4611e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e59fee9290_wrap_pyop2_kernel_prolong       4 0.0 6.1695e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1517077302d0_wrap_pyop2_kernel_prolong       4 0.0 7.4499e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151707014ad0_wrap_pyop2_kernel_prolong       4 0.0 5.9283e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491b9f27fd0_wrap_pyop2_kernel_prolong       4 0.0 7.4734e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491b9cbded0_wrap_pyop2_kernel_prolong       4 0.0 7.0230e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1475e8830e50_wrap_pyop2_kernel_prolong       4 0.0 7.4544e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1475e8a714d0_wrap_pyop2_kernel_prolong       4 0.0 7.1849e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15419c593710_wrap_pyop2_kernel_prolong       4 0.0 7.4735e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15419c7cdbd0_wrap_pyop2_kernel_prolong       4 0.0 7.4455e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478f835bc50_wrap_pyop2_kernel_prolong       4 0.0 7.4611e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478f8235890_wrap_pyop2_kernel_prolong       4 0.0 7.9580e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d9ec46d50_wrap_pyop2_kernel_prolong       4 0.0 7.4416e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d9ec46050_wrap_pyop2_kernel_prolong       4 0.0 5.2416e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478d053a4d0_wrap_pyop2_kernel_prolong       4 0.0 7.4455e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478d0539b50_wrap_pyop2_kernel_prolong       4 0.0 5.9889e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15545b738810_wrap_pyop2_kernel_prolong       4 0.0 7.5110e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15545b959390_wrap_pyop2_kernel_prolong       4 0.0 6.8783e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146425a59910_wrap_pyop2_kernel_prolong       4 0.0 7.4998e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146425037d50_wrap_pyop2_kernel_prolong       4 0.0 5.6946e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14daaab98ed0_wrap_pyop2_kernel_prolong       4 0.0 7.4615e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14daaab9ac90_wrap_pyop2_kernel_prolong       4 0.0 6.5272e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155133084290_wrap_pyop2_kernel_prolong       4 0.0 7.4605e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1551332d5a90_wrap_pyop2_kernel_prolong       4 0.0 7.0676e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b313665750_wrap_pyop2_kernel_prolong       4 0.0 7.4538e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b312419450_wrap_pyop2_kernel_prolong       4 0.0 7.1940e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14af93b46e50_wrap_pyop2_kernel_prolong       4 0.0 7.4589e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14af932cabd0_wrap_pyop2_kernel_prolong       4 0.0 6.7431e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147062d064d0_wrap_pyop2_kernel_prolong       4 0.0 7.4594e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1470619b1dd0_wrap_pyop2_kernel_prolong       4 0.0 6.7197e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15054bba38d0_wrap_pyop2_kernel_prolong       4 0.0 7.4580e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15054bba0ad0_wrap_pyop2_kernel_prolong       4 0.0 6.6151e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15013ec81110_wrap_pyop2_kernel_prolong       4 0.0 7.4912e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15013eb32150_wrap_pyop2_kernel_prolong       4 0.0 7.1677e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150508e095d0_wrap_pyop2_kernel_prolong       4 0.0 7.4819e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150508a5b990_wrap_pyop2_kernel_prolong       4 0.0 7.2457e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150e5a3d7610_wrap_pyop2_kernel_prolong       4 0.0 7.4610e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150e5a635d10_wrap_pyop2_kernel_prolong       4 0.0 6.8686e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad60ea7010_wrap_pyop2_kernel_prolong       4 0.0 7.4519e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad60ea5050_wrap_pyop2_kernel_prolong       4 0.0 5.6461e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c919866310_wrap_pyop2_kernel_prolong       4 0.0 7.4535e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c918d60d50_wrap_pyop2_kernel_prolong       4 0.0 6.1694e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa28957b90_wrap_pyop2_kernel_prolong       4 0.0 7.4706e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa28954690_wrap_pyop2_kernel_prolong       4 0.0 7.9802e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f4064d210_wrap_pyop2_kernel_prolong       4 0.0 7.4508e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f3b4306d0_wrap_pyop2_kernel_prolong       4 0.0 6.5953e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1484aff79990_wrap_pyop2_kernel_prolong       4 0.0 7.4797e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1484af972550_wrap_pyop2_kernel_prolong       4 0.0 6.5878e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1480c75fe8d0_wrap_pyop2_kernel_prolong       4 0.0 7.4485e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1480c738b7d0_wrap_pyop2_kernel_prolong       4 0.0 5.6249e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e740a335d0_wrap_pyop2_kernel_prolong       4 0.0 7.4438e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e740a32010_wrap_pyop2_kernel_prolong       4 0.0 5.4840e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15364d3cbcd0_wrap_pyop2_kernel_prolong       4 0.0 7.4572e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15364d263c10_wrap_pyop2_kernel_prolong       4 0.0 5.4105e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154bf059fa10_wrap_pyop2_kernel_prolong       4 0.0 7.4558e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154bf03abe10_wrap_pyop2_kernel_prolong       4 0.0 6.2537e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1552e7bafa90_wrap_pyop2_kernel_prolong       4 0.0 7.4650e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1552e7bae090_wrap_pyop2_kernel_prolong       4 0.0 7.0025e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155257e5cad0_wrap_pyop2_kernel_prolong       4 0.0 7.4528e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155257c40050_wrap_pyop2_kernel_prolong       4 0.0 6.6597e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1495e7886a10_wrap_pyop2_kernel_prolong       4 0.0 7.4575e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1495e7885a90_wrap_pyop2_kernel_prolong       4 0.0 7.4526e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148bdf173610_wrap_pyop2_kernel_prolong       4 0.0 7.4758e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148bdf173250_wrap_pyop2_kernel_prolong       4 0.0 8.3257e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15326ace2990_wrap_pyop2_kernel_prolong       4 0.0 7.4433e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15326ad0f110_wrap_pyop2_kernel_prolong       4 0.0 5.6809e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d195004d10_wrap_pyop2_kernel_prolong       4 0.0 7.4572e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d194f414d0_wrap_pyop2_kernel_prolong       4 0.0 6.2382e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15514b405790_wrap_pyop2_kernel_prolong       4 0.0 7.4446e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15514ab3a0d0_wrap_pyop2_kernel_prolong       4 0.0 5.5684e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a387c1ce10_wrap_pyop2_kernel_prolong       4 0.0 7.4489e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a38722e050_wrap_pyop2_kernel_prolong       4 0.0 6.5331e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148ebb38dc10_wrap_pyop2_kernel_prolong       4 0.0 7.4603e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148ebb38d4d0_wrap_pyop2_kernel_prolong       4 0.0 6.1346e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1523820c6990_wrap_pyop2_kernel_prolong       4 0.0 7.4564e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15238212e750_wrap_pyop2_kernel_prolong       4 0.0 7.9337e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ca7d599e90_wrap_pyop2_kernel_prolong       4 0.0 7.4495e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ca7d59acd0_wrap_pyop2_kernel_prolong       4 0.0 6.1033e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1508723c2b50_wrap_pyop2_kernel_prolong       4 0.0 7.4528e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1508723eda10_wrap_pyop2_kernel_prolong       4 0.0 6.6855e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14990b279ed0_wrap_pyop2_kernel_prolong       4 0.0 7.4678e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14990b2a1690_wrap_pyop2_kernel_prolong       4 0.0 8.0397e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498e8db0a50_wrap_pyop2_kernel_prolong       4 0.0 7.4472e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498e8db2fd0_wrap_pyop2_kernel_prolong       4 0.0 5.7331e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145a8d84f810_wrap_pyop2_kernel_prolong       4 0.0 7.4918e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145a8da3e1d0_wrap_pyop2_kernel_prolong       4 0.0 7.1409e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1499ecbd79d0_wrap_pyop2_kernel_prolong       4 0.0 7.4574e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1499ec2e97d0_wrap_pyop2_kernel_prolong       4 0.0 7.3921e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e1b391b0d0_wrap_pyop2_kernel_prolong       4 0.0 7.4551e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e1b391b3d0_wrap_pyop2_kernel_prolong       4 0.0 6.5334e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15013d332810_wrap_pyop2_kernel_prolong       4 0.0 7.4442e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15013cab86d0_wrap_pyop2_kernel_prolong       4 0.0 5.2228e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d45cd73590_wrap_pyop2_kernel_prolong       4 0.0 7.4551e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d45cc9a090_wrap_pyop2_kernel_prolong       4 0.0 7.1538e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15182640b690_wrap_pyop2_kernel_prolong       4 0.0 7.4625e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15182643b0d0_wrap_pyop2_kernel_prolong       4 0.0 7.1432e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d100083c50_wrap_pyop2_kernel_prolong       4 0.0 7.4549e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d1000dcb90_wrap_pyop2_kernel_prolong       4 0.0 6.5923e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d948e4c3d0_wrap_pyop2_kernel_prolong       4 0.0 7.4797e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d948dff110_wrap_pyop2_kernel_prolong       4 0.0 6.7460e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1531fab96810_wrap_pyop2_kernel_prolong       4 0.0 7.4664e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1531fa2208d0_wrap_pyop2_kernel_prolong       4 0.0 7.0785e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14902300d1d0_wrap_pyop2_kernel_prolong       4 0.0 7.4454e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149022631710_wrap_pyop2_kernel_prolong       4 0.0 5.8712e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1485df9fb250_wrap_pyop2_kernel_prolong       4 0.0 7.4606e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1485df0eadd0_wrap_pyop2_kernel_prolong       4 0.0 6.7181e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e1c9ace750_wrap_pyop2_kernel_prolong       4 0.0 7.4474e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e1c9cd7850_wrap_pyop2_kernel_prolong       4 0.0 6.4632e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15055ab31d10_wrap_pyop2_kernel_prolong       4 0.0 7.4593e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15055ab32d90_wrap_pyop2_kernel_prolong       4 0.0 6.5348e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14872e15a290_wrap_pyop2_kernel_prolong       4 0.0 7.4687e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14872e159b50_wrap_pyop2_kernel_prolong       4 0.0 7.4699e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a20441f90_wrap_pyop2_kernel_prolong       4 0.0 7.4534e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a20443850_wrap_pyop2_kernel_prolong       4 0.0 6.1042e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f76df62950_wrap_pyop2_kernel_prolong       4 0.0 7.4561e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f76df8e3d0_wrap_pyop2_kernel_prolong       4 0.0 6.4792e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f8c60fbc90_wrap_pyop2_kernel_prolong       4 0.0 7.4537e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f8c635d4d0_wrap_pyop2_kernel_prolong       4 0.0 5.5463e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14adb6c63090_wrap_pyop2_kernel_prolong       4 0.0 7.4803e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14adb6c61450_wrap_pyop2_kernel_prolong       4 0.0 7.1958e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152a59449f10_wrap_pyop2_kernel_prolong       4 0.0 7.4620e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152a59699610_wrap_pyop2_kernel_prolong       4 0.0 5.9537e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15254fe59f90_wrap_pyop2_kernel_prolong       4 0.0 7.4559e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15254fe59810_wrap_pyop2_kernel_prolong       4 0.0 7.3566e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e2114a6d0_wrap_pyop2_kernel_prolong       4 0.0 7.4610e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e21149c50_wrap_pyop2_kernel_prolong       4 0.0 6.9447e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c945cc610_wrap_pyop2_kernel_prolong       4 0.0 7.4557e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c945cf550_wrap_pyop2_kernel_prolong       4 0.0 7.3607e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b6fffb1990_wrap_pyop2_kernel_prolong       4 0.0 7.4536e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b6ffdc14d0_wrap_pyop2_kernel_prolong       4 0.0 6.6789e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c516e4f50_wrap_pyop2_kernel_prolong       4 0.0 7.4596e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c51708810_wrap_pyop2_kernel_prolong       4 0.0 5.7397e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149db3393710_wrap_pyop2_kernel_prolong       4 0.0 7.4697e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149db3392690_wrap_pyop2_kernel_prolong       4 0.0 7.9697e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e13a07e650_wrap_pyop2_kernel_prolong       4 0.0 7.4481e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e13a050fd0_wrap_pyop2_kernel_prolong       4 0.0 6.4929e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148ef133f7d0_wrap_pyop2_kernel_prolong       4 0.0 7.4625e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148ef133c210_wrap_pyop2_kernel_prolong       4 0.0 8.2728e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b2d4f2b110_wrap_pyop2_kernel_prolong       4 0.0 7.4646e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b2d4f29d10_wrap_pyop2_kernel_prolong       4 0.0 7.2499e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ac6e3a7d0_wrap_pyop2_kernel_prolong       4 0.0 7.4640e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ac6cbbf10_wrap_pyop2_kernel_prolong       4 0.0 7.7308e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided         76 1.0 4.3520e-03 3.0 0.00e+00 0.0 4.9e+04 4.0e+00 7.6e+01  0  0  1  0  1   0  0  2  0  4    -0
SFSetGraph            76 1.0 3.6631e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               76 1.0 8.0655e-03 1.6 0.00e+00 0.0 9.7e+04 2.3e+02 7.6e+01  0  0  2  0  1   0  0  3  0  4    -0
SFPack           1635672 1.2 1.6330e+00 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack         1635672 1.2 9.3248e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             1688 1.0 2.3844e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecSet             13503 1.0 7.4742e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecAXPY             3376 1.0 5.9292e+00 1.9 2.92e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  2  0  0  0 49326
VecAYPX             3376 1.0 6.0635e+00 3.4 1.46e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  1  0  0  0 24117
VecScatterBegin  1635672 1.2 2.0944e+01 1.2 0.00e+00 0.0 2.9e+06 7.5e+04 0.0e+00  3  0 57 36  0   6  0 92 100  0    -0
VecScatterEnd    1635672 1.2 2.7072e+01 22.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
MatMult             3376 1.0 1.5097e+02 1.2 1.03e+11 1.2 1.8e+06 1.2e+05 0.0e+00 18 10 35 36  0  43 57 57 100  0 68489
MatMultAdd          1688 1.0 8.6459e+00 1.2 4.38e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  2  0  0  0 50740
MatMultTranspose    1688 1.0 7.6422e+00 2.0 4.38e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  2  0  0  0 57404
MatSolve          811928 1.2 1.0156e+02 1.3 5.21e+10 1.2 1.3e+06 7.8e+02 3.8e+02 12  5 26  0  4  28 28 43  0 18 50572
MatLUFactorNum     51840 1.2 1.2140e+01 1.2 1.48e+10 1.2 0.0e+00 0.0e+00 0.0e+00  2  1  0  0  0   4  8  0  0  0 122568
MatResidual         1688 1.0 8.5365e+01 1.3 5.24e+10 1.2 8.8e+05 1.2e+05 0.0e+00 10  5 18 18  0  23 29 29 50  0 61419
MatAssemblyBegin   51840 1.2 7.8729e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyEnd     51840 1.2 1.1986e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats     216 1.0 2.8137e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  4  0  0  0  0   8  0  0  0  0    -0
PCSetUp            52056 1.2 4.0306e+01 1.2 1.48e+10 1.2 0.0e+00 0.0e+00 0.0e+00  5  1  0  0  0  12  8  0  0  0 36917
PCApply             5064 1.0 1.6395e+02 1.2 6.70e+10 1.2 1.3e+06 7.8e+02 3.8e+02 21  7 26  0  4  48 36 43  0 18 40403
PCApplyOnBlocks   810240 1.2 9.9170e+01 1.2 6.58e+10 1.2 0.0e+00 0.0e+00 0.0e+00 13  7  0  0  0  29 36  0  0  0 66496
KSPSetUp           51840 1.2 2.8791e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve            5064 1.0 2.3819e+02 1.1 1.22e+11 1.2 2.2e+06 4.9e+04 2.1e+03 31 12 44 18 22  72 67 71 50 100 51050
MGSmooth Level 0    1688 1.0 1.9637e+01 3.2 1.22e+09 14.2 1.3e+06 7.8e+02 2.1e+03  1  0 26  0 22   3  0 43  0 100  1518
MGSmooth Level 1    3376 1.0 2.3181e+02 1.1 1.21e+11 1.2 8.8e+05 1.2e+05 0.0e+00 30 12 18 18  0  70 66 29 50  0 52328
MGResid Level 1     1688 1.0 8.5371e+01 1.3 5.24e+10 1.2 8.8e+05 1.2e+05 0.0e+00 10  5 18 18  0  23 29 29 50  0 61415
MGInterp Level 1    3376 1.0 1.6263e+01 1.4 8.75e+09 1.2 0.0e+00 0.0e+00 0.0e+00  2  1  0  0  0   5  5  0  0  0 53950
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   229            229
              Viewer     3              3
         PetscRandom     9              9
           Index Set  3673           3673
   IS L to G Mapping   447            447
             Section   472            472
   Star Forest Graph   628            704
              Vector  1338           1338
              Matrix  1331           1331
      Preconditioner   246            246
       Krylov Solver   253            253
     DMKSP interface     1              1
                SNES     1              1
              DMSNES     1              1
      SNESLineSearch     1              1
    Distributed Mesh   119            119
            DM Label   333            333
          Quadrature   144            144
      Mesh Transform     2              2
    GraphPartitioner    41             41
     Discrete System   174            174
           Weak Form   174            174
        Linear Space    12             12
          Dual Space    52             52
            FE Space     8              8

--- Event Stage 1: MG Apply

           Index Set   152            152
   Star Forest Graph    76              0
              Vector    76             76
========================================================================================================================
Average time to get PetscTime(): 2.55e-08
Average time for MPI_Barrier(): 4.5188e-06
Average time for zero size MPI_Send(): 2.74244e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murr_horiz/vlumping_linesmooth/h1.profile # (source: code)
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

