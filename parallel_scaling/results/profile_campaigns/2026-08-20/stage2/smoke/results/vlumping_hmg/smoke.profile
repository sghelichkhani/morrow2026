****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026-profile-stage2-20260820T053301Z/source/morrow/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0057.gadi.nci.org.au with 104 processes, by sg8812 on Thu Aug 20 15:50:34 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           9.450e+01     1.000   9.450e+01
Objects:              0.000e+00     0.000   0.000e+00
Flops:                1.614e+10     1.136   1.526e+10  1.587e+12
Flops/sec:            1.708e+08     1.136   1.615e+08  1.679e+10
MPI Msg Count:        7.738e+03     3.203   4.105e+03  4.269e+05
MPI Msg Len (bytes):  1.303e+08     2.270   2.483e+04  1.060e+10
MPI Reductions:       1.357e+03     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 9.1204e+01  96.5%  1.4068e+12  88.6%  2.618e+05  61.3%  3.191e+04       78.8%  1.227e+03  90.4%
 1:        MG Apply: 3.2922e+00   3.5%  1.8026e+11  11.4%  1.652e+05  38.7%  1.360e+04       21.2%  1.110e+02   8.2%

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

BuildTwoSided        363 1.1 1.5372e+00 4.9 0.00e+00 0.0 2.8e+04 4.0e+00 1.4e+02  1  0  7  0 10   1  0 11  0 11    -0
BuildTwoSidedF        54 1.0 9.7169e-01 5.4 0.00e+00 0.0 4.8e+03 6.6e+05 5.4e+01  1  0  1 30  4   1  0  2 38  4    -0
SFSetGraph           315 1.1 7.6750e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              309 1.1 8.4435e-01 38.7 0.00e+00 0.0 5.1e+04 7.2e+02 8.1e+01  0  0 12  0  6   0  0 20  0  7    -0
SFBcastBegin         236 1.0 2.2474e-02 2.7 0.00e+00 0.0 9.9e+04 8.5e+03 0.0e+00  0  0 23  8  0   0  0 38 10  0    -0
SFBcastEnd           236 1.0 4.4670e+00 260.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
SFReduceBegin         40 1.0 2.0684e-03 2.9 0.00e+00 0.0 1.7e+04 1.5e+04 0.0e+00  0  0  4  3  0   0  0  7  3  0    -0
SFReduceEnd           40 1.0 4.8529e-02 19.2 4.05e+05 2.3 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   679
SFFetchOpBegin         4 1.0 2.3157e-05 5.4 0.00e+00 0.0 1.6e+03 8.7e+01 0.0e+00  0  0  0  0  0   0  0  1  0  0    -0
SFFetchOpEnd           4 1.0 3.4095e-04 14.5 0.00e+00 0.0 1.6e+03 8.7e+01 0.0e+00  0  0  0  0  0   0  0  1  0  0    -0
SFCreateEmbed          3 1.0 8.0600e-04 1.4 0.00e+00 0.0 9.2e+02 3.4e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         36 1.0 5.6354e-03 1.3 0.00e+00 0.0 4.0e+04 1.1e+02 4.2e+01  0  0  9  0  3   0  0 15  0  3    -0
SFSectionSF           37 1.0 3.0864e-03 2.3 0.00e+00 0.0 2.0e+04 5.3e+01 3.7e+01  0  0  5  0  3   0  0  8  0  3    -0
SFRemoteOff            1 1.0 4.4039e-05 2.0 0.00e+00 0.0 5.4e+02 2.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack             35689 1.1 2.4210e-02 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           35693 1.1 5.2628e-03 2.8 4.05e+05 2.3 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  6258
VecDot                 7 1.0 1.2592e-02 5.9 2.87e+06 1.1 0.0e+00 0.0e+00 7.0e+00  0  0  0  0  1   0  0  0  0  1 22951
VecMDot              136 1.0 5.8939e-01 3.3 2.19e+08 1.1 0.0e+00 0.0e+00 1.4e+02  0  1  0  0 10   0  2  0  0 11 37351
VecNorm              173 1.0 2.0825e-01 3.9 5.67e+07 1.1 0.0e+00 0.0e+00 1.7e+02  0  0  0  0 13   0  0  0  0 14 27382
VecScale             157 1.0 1.0905e-02 1.1 2.51e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 231154
VecCopy               63 1.0 3.0473e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               196 1.0 6.9496e-02 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY               21 1.0 1.0482e-02 1.3 5.76e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 55230
VecWAXPY               7 1.0 6.1512e-03 1.1 1.44e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 23491
VecMAXPY             157 1.0 2.7412e-01 1.1 2.63e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  2  0  0  0   0  2  0  0  0 96590
VecScatterBegin    35409 1.1 1.9625e-01 1.3 0.00e+00 0.0 7.7e+04 4.4e+04 0.0e+00  0  0 18 32  0   0  0 29 40  0    -0
VecScatterEnd      35409 1.1 3.1987e-01 19.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecReduceArith        14 1.0 3.4720e-03 1.4 5.75e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 166472
VecReduceComm          7 1.0 4.1937e-03 44.7 0.00e+00 0.0 0.0e+00 0.0e+00 7.0e+00  0  0  0  0  1   0  0  0  0  1    -0
VecNormalize         112 1.0 1.4360e-01 4.3 4.75e+07 1.1 0.0e+00 0.0e+00 1.1e+02  0  0  0  0  8   0  0  0  0  9 33255
MatMult              143 1.0 2.3867e+00 1.2 1.67e+09 1.1 7.7e+04 4.4e+04 0.0e+00  2 11 18 32  0   2 12 29 40  0 70263
MatSolve           17591 1.1 1.0252e+00 1.5 5.51e+08 1.1 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   1  4  0  0  0 54068
MatLUFactorSym       229 1.1 1.0293e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum      1604 1.1 2.4263e-01 1.2 2.28e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   0  2  0  0  0 94582
MatILUFactorSym        1 1.0 8.3186e-05 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin    1714 1.1 1.0151e+00 3.3 0.00e+00 0.0 4.8e+03 6.6e+05 5.4e+01  1  0  1 30  4   1  0  2 38  4    -0
MatAssemblyEnd      1714 1.1 3.2340e-01 2.3 3.48e+06 0.0 3.2e+03 4.6e+03 4.4e+01  0  0  1  0  3   0  0  1  0  4   475
MatGetRowIJ          229 1.1 4.5288e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats       7 1.0 5.1714e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.3e+02  1  0  0  0 17   1  0  0  0 19    -0
MatGetOrdering       229 1.1 2.9658e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries        21 1.0 1.1469e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatTranspose           5 1.0 5.9741e-03 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  1   0  0  0  0  1    -0
MatMatMultSym          5 1.0 6.6885e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  1   0  0  0  0  1    -0
MatMatMultNum         29 1.0 6.4491e-02 1.1 1.04e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   0  1  0  0  0 161041
MatPtAPSymbolic        2 1.0 9.4731e-02 1.0 0.00e+00 0.0 3.2e+03 4.6e+04 1.4e+01  0  0  1  1  1   0  0  1  2  1    -0
MatPtAPNumeric        14 1.0 3.9042e-01 1.0 4.14e+08 1.1 8.6e+03 6.2e+04 2.4e+01  0  3  2  5  2   0  3  3  6  2 106229
MatGetLocalMat        16 1.0 2.9092e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol         16 1.0 2.6108e-02 2.3 0.00e+00 0.0 9.6e+03 7.0e+04 0.0e+00  0  0  2  6  0   0  0  4  8  0    -0
MatSetPreallCOO       16 1.0 4.3516e-05 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       16 1.0 1.6839e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp                7 1.0 9.7259e+00 1.0 2.61e+09 1.1 7.5e+04 3.7e+04 6.0e+02 10 16 17 26 44  11 19 28 33 49 26922
PCApply               38 1.0 3.4119e+00 1.1 1.80e+09 1.1 1.7e+05 1.4e+04 1.1e+02  3 11 39 21  8   4 13 63 27  9 52833
PCApplyOnBlocks    17591 1.1 1.2915e+00 1.4 7.79e+08 1.1 0.0e+00 0.0e+00 0.0e+00  1  5  0  0  0   1  6  0  0  0 60661
KSPSetUp               7 1.0 7.8386e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve               7 1.0 4.2514e+00 1.0 2.52e+09 1.1 1.9e+05 1.8e+04 1.9e+02  4 16 43 32 14   5 18 71 40 16 59397
KSPGMRESOrthog       136 1.0 8.0919e-01 2.1 4.38e+08 1.1 0.0e+00 0.0e+00 1.4e+02  1  3  0  0 10   1  3  0  0 11 54411
DMRefine               1 1.0 2.1454e-01 1.0 1.04e+03 1.0 3.2e+03 4.3e+01 3.0e+01  0  0  1  0  2   0  0  1  0  2     1
DMPlexCreateGmsh       1 1.0 2.0334e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  1   0  0  0  0  1    -0
DMPlexCrFromFile       1 1.0 5.5826e-01 26.4 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  1   0  0  0  0  1    -0
Mesh Partition         3 1.0 6.0745e-02 1.0 0.00e+00 0.0 1.2e+04 9.8e+01 3.8e+01  0  0  3  0  3   0  0  5  0  3    -0
Mesh Migration         3 1.0 1.4951e-02 1.1 0.00e+00 0.0 4.6e+04 1.1e+02 1.8e+02  0  0 11  0 13   0  0 17  0 14    -0
DMPlexPartSelf         1 1.0 2.5352e-03 1223.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       3 1.0 6.6921e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  1   0  0  0  0  1    -0
DMPlexPartLblSF        3 1.0 4.3644e-03 1.1 0.00e+00 0.0 2.4e+03 8.3e+01 3.0e+00  0  0  1  0  0   0  0  1  0  0    -0
DMPlexPartStrtSF       3 1.0 1.1205e-03 1.7 0.00e+00 0.0 1.2e+03 3.3e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          3 1.0 2.0027e-03 2.8 0.00e+00 0.0 1.3e+03 4.8e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          15 1.0 8.8981e-03 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 6.9867e-02 1.0 0.00e+00 0.0 4.4e+03 6.1e+02 6.3e+01  0  0  1  0  5   0  0  2  0  5    -0
DMPlexDistCones        3 1.0 1.7794e-03 1.0 0.00e+00 0.0 7.1e+03 2.0e+02 6.0e+00  0  0  2  0  0   0  0  3  0  0    -0
DMPlexDistLabels       3 1.0 6.0831e-03 1.0 0.00e+00 0.0 2.3e+04 1.1e+02 1.1e+02  0  0  5  0  8   0  0  9  0  9    -0
DMPlexDistOvrlp        2 1.0 7.5677e-03 1.0 0.00e+00 0.0 5.5e+04 8.0e+01 1.6e+02  0  0 13  0 12   0  0 21  0 13    -0
DMPlexDistField        5 1.0 2.8211e-03 1.2 0.00e+00 0.0 1.0e+04 7.3e+01 1.4e+01  0  0  2  0  1   0  0  4  0  1    -0
DMPlexDistData         1 1.0 1.3639e-04 1.2 0.00e+00 0.0 2.7e+03 3.5e+01 2.0e+00  0  0  1  0  0   0  0  1  0  0    -0
DMPlexStratify        23 1.0 7.8542e-03 8.9 0.00e+00 0.0 0.0e+00 0.0e+00 7.0e+00  0  0  0  0  1   0  0  0  0  1    -0
DMPlexSymmetrize      23 1.0 5.5675e-04 11.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          1 1.0 5.3952e-05 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          1 1.0 2.2072e-03 1.9 0.00e+00 0.0 1.6e+03 3.3e+01 8.0e+00  0  0  0  0  1   0  0  1  0  1    -0
DMPlexTrSizes          1 1.0 8.7945e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          1 1.0 2.6072e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             1 1.0 2.6737e-04 3.2 0.00e+00 0.0 1.6e+03 3.3e+01 1.0e+00  0  0  0  0  0   0  0  1  0  0    -0
DMPlexTrLabels         1 1.0 5.8981e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         1 1.0 5.2310e-04 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMSwarmSetSizes        2 1.0 3.0869e-05 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve              2 1.0 3.6104e+01 1.0 1.61e+10 1.1 2.8e+05 3.4e+04 8.5e+02 38 100 66 91 63 Multiple stages 43844
SNESSetUp              1 1.0 4.2835e-05 5.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval       9 1.0 1.0283e+01 1.0 4.13e+09 1.2 1.2e+04 5.5e+04 0.0e+00 11 25  3  6  0  11 29  5  8  0 39050
SNESJacobianEval       7 1.0 1.1660e+01 1.0 6.73e+09 1.2 7.5e+03 3.6e+05 2.8e+01 12 41  2 25  2  13 47  3 32  2 56190
SNESLineSearch         7 1.0 4.2513e-01 1.0 3.33e+09 1.2 1.1e+04 5.5e+04 2.8e+01  0 20  3  6  2   0 23  4  7  2 762375
DualSpaceSetUp         4 1.0 3.0417e-03 1.1 5.40e+01 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     2
FESetUp                4 1.0 1.8471e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 9.2228e+01 1.0 1.61e+10 1.1 4.3e+05 2.5e+04 1.3e+03 98 100 100 100 98 Multiple stages 17208
firedrake.__init__       1 1.0 6.9396e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  7  0  0  0  0   8  0  0  0  0    -0
CreateMesh             2 1.0 6.7120e-01 5.0 0.00e+00 0.0 1.1e+05 1.1e+02 3.2e+02  0  0 26  0 24   0  0 42  0 26    -0
firedrake.mesh._from_gmsh       1 1.0 5.5915e-01 26.4 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  1   0  0  0  0  1    -0
firedrake.mesh.MeshTopology._set_partitioner       2 1.0 9.7805e-04 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       2 1.0 4.2960e-06 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        4 1.0 6.6121e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  1   0  0  0  0  1    -0
Mesh: reorder          2 1.0 1.4237e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      24 1.0 3.1688e-02 1.1 0.00e+00 0.0 4.3e+03 1.2e+02 2.0e+00  0  0  1  0  0   0  0  2  0  0    -0
firedrake.functionspace.make_scalar_element      29 1.0 2.0928e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      26 1.0 2.9271e-02 1.1 0.00e+00 0.0 4.3e+03 1.2e+02 2.0e+00  0  0  1  0  0   0  0  2  0  0    -0
firedrake.functionspacedata.get_shared_data      25 1.0 2.6657e-02 1.1 0.00e+00 0.0 4.3e+03 1.2e+02 2.0e+00  0  0  1  0  0   0  0  2  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      25 1.0 2.6523e-02 1.1 0.00e+00 0.0 4.3e+03 1.2e+02 2.0e+00  0  0  1  0  0   0  0  2  0  0    -0
FunctionSpaceData: CreateElement      50 1.0 1.2367e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       4 1.0 3.4984e-03 1.1 0.00e+00 0.0 2.2e+03 1.1e+02 0.0e+00  0  0  1  0  0   0  0  1  0  0    -0
firedrake.mesh._Facets.__init__       8 1.0 5.3430e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      16 1.0 1.8286e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      66 1.0 1.2240e-02 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          2 1.0 1.6909e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  2  0  0  0  0   2  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       2 1.0 1.6796e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       5 1.0 4.8695e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       4 1.0 9.8552e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       2 1.0 1.6859e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  2  0  0  0  0   2  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     210 1.0 3.8958e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute        91 1.0 2.8905e+01 1.0 1.09e+10 1.2 2.1e+04 4.0e+04 2.6e+01 30 67  5  8  2  31 75  8 10  2 36697
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       4 1.0 1.6482e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)     182 1.0 2.6275e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 28  0  0  0  0  29  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      19 1.0 1.0539e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 11  0  0  0  0  11  0  0  0  0    -0
GlobalKernel: generate loopy      19 0.0 1.4090e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      19 0.0 8.6745e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      20 1.0 1.6905e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 18  0  0  0  0  18  0  0  0  0    -0
pyop2.compilation.load      20 1.0 1.6904e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 18  0  0  0  0  18  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      20 1.0 1.0309e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 11  0  0  0  0  11  0  0  0  0    -0
pyop2.compilation.make_so      20 1.0 1.0138e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 11  0  0  0  0  11  0  0  0  0    -0
ParLoopRednBegin      91 1.0 5.5275e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd        91 1.0 2.2833e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       2 1.0 6.5426e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong       2 1.0 7.5569e+00 1.0 5.54e+06 1.1 5.4e+03 8.0e+03 7.0e+00  8  0  1  0  1   8  0  2  1  1    74
firedrake.interpolation.interpolate      16 1.0 4.6168e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      13 1.0 9.9436e+00 1.0 4.15e+07 1.1 2.1e+04 1.2e+04 1.1e+02 11  0  5  2  8  11  0  8  3  9   420
firedrake.formmanipulation.split_form      14 1.0 5.5613e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      14 1.0 1.3778e-03 8.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      14 1.0 2.8359e-01 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       8 1.0 2.1955e-01 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin      36 1.0 4.4917e+00 188.5 0.00e+00 0.0 2.4e+04 3.5e+04 3.0e+00  2  0  6  8  0   2  0  9 10  0    -0
Parloop_Cells_wrap_expression_kernel      28 1.0 6.8760e+00 1.0 4.15e+07 1.1 0.0e+00 0.0e+00 0.0e+00  7  0  0  0  0   8  0  0  0  0   607
firedrake.halo.Halo.global_to_local_end      36 1.0 2.0393e-01 72.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       2 1.0 6.0544e+00 40.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
Parloop_set_#x14f521587d90_wrap_pyop2_kernel_prolong       4 0.0 7.4935e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 3.8377e+00 1.0 3.47e+07 1.1 8.1e+03 2.8e+04 1.1e+01  4  0  2  2  1   4  0  3  3  1   909
firedrake.function.Function.assign      22 1.0 6.7995e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  1   0  0  0  0  1    -0
firedrake.assign.Assigner.assign      21 1.0 5.8336e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.7815e-04 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate       8 1.0 7.1310e-05 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 4.9025e-05 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.4697e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.9500e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.2142e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 4.8932e+00 1.0 0.00e+00 0.0 3.2e+03 2.2e+05 2.3e+01  5  0  1  7  2   5  0  1  9  2    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 6.0927e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.3542e-04 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.0357e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  5  0  0  0  0   5  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.0356e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  5  0  0  0  0   5  0  0  0  0    -0
CreateSparsity         3 1.0 1.8204e+00 1.2 0.00e+00 0.0 4.9e+03 7.2e+04 3.2e+01  2  0  1  3  2   2  0  2  4  3    -0
MatZeroInitial         3 1.0 2.6885e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve       2 1.0 3.6109e+01 1.0 1.61e+10 1.1 2.8e+05 3.4e+04 8.6e+02 38 100 66 91 63 Multiple stages 43838
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 2.1311e-01 863.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 7.1570e-06 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 2.1305e-01 1061.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 2.1302e-01 1231.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral      18 1.0 1.7871e+00 1.1 1.05e+09 1.1 0.0e+00 0.0e+00 0.0e+00  2  7  0  0  0   2  8  0  0  0 59098
Parloop_Cells_wrap_form0_exterior_facet_top_integral      18 1.0 1.0872e+00 1.0 2.73e+05 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    25
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral      18 1.0 1.1732e+00 1.0 8.86e+06 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0   157
Parloop_Cells_wrap_form0_interior_facet_horiz_integral      18 1.0 1.8003e+00 1.0 1.00e+09 1.1 0.0e+00 0.0e+00 0.0e+00  2  6  0  0  0   2  7  0  0  0 56157
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral      18 1.0 2.5661e+00 1.0 2.08e+09 1.2 0.0e+00 0.0e+00 0.0e+00  3 12  0  0  0   3 14  0  0  0 75827
firedrake.halo.Halo.local_to_global_begin       9 1.0 2.1168e-03 3.5 0.00e+00 0.0 4.8e+03 5.5e+04 0.0e+00  0  0  1  2  0   0  0  2  3  0    -0
firedrake.halo.Halo.local_to_global_end       9 1.0 4.8531e-02 20.7 4.05e+05 2.3 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   679
Parloop_Cells_wrap_form00_cell_integral      14 1.0 2.5989e+00 1.1 1.52e+09 1.1 0.0e+00 0.0e+00 0.0e+00  3 10  0  0  0   3 11  0  0  0 58982
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral      14 1.0 1.1144e+00 1.0 7.01e+06 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0   131
Parloop_Cells_wrap_form00_interior_facet_horiz_integral      14 1.0 2.8876e+00 1.0 2.01e+09 1.1 0.0e+00 0.0e+00 0.0e+00  3 13  0  0  0   3 14  0  0  0 69997
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral      14 1.0 4.6164e+00 1.1 3.19e+09 1.2 0.0e+00 0.0e+00 0.0e+00  5 19  0  0  0   5 21  0  0  0 64873
firedrake.dmhooks.get_function_space       2 1.0 2.0083e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       2 1.0 8.2618e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.VertexOnlyMesh       1 1.0 2.6067e+00 1.0 0.00e+00 0.0 7.0e+03 9.8e+01 1.1e+01  3  0  2  0  1   3  0  3  0  1    -0
firedrake.mesh._pic_swarm_in_mesh       1 1.0 2.5995e+00 1.0 0.00e+00 0.0 4.9e+03 8.0e+01 6.0e+00  3  0  1  0  0   3  0  2  0  0    -0
firedrake.mesh._parent_mesh_embedding       1 1.0 2.4509e+00 1.0 0.00e+00 0.0 2.7e+03 3.5e+01 4.0e+00  3  0  1  0  0   3  0  1  0  0    -0
firedrake.mesh.MeshGeometry.locate_cells_ref_coords_and_dists       1 1.0 1.4989e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  2  0  0  0  0   2  0  0  0  0    -0
firedrake.mesh.MeshGeometry._c_locator       1 1.0 1.4933e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
firedrake.pointquery_utils.src_locate_cell       1 1.0 1.0883e+00 3.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.compile_coordinate_element       1 1.0 1.0799e+00 9.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.pointquery_utils.make_wrapper       1 1.0 9.0709e-01 131.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.parloop.generate_single_cell_wrapper       1 1.0 9.0700e-01 132.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
c_locator_run          1 1.0 7.4833e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._ctypes       1 1.0 4.5600e-03 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._constant_ctypes       1 1.0 8.4616e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.rtree       1 1.0 1.6210e-03 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.bounding_box_coords       1 1.0 1.1926e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
rtree_build            1 1.0 1.4502e-03 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._dmswarm_create       2 1.0 1.9570e-03 5.6 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._swarm_original_ordering_preserve       1 1.0 1.4815e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.VertexOnlyMeshTopology.__init__       2 1.0 7.7767e-03 1.4 0.00e+00 0.0 2.1e+03 1.4e+02 6.0e+00  0  0  1  0  0   0  0  1  0  0    -0
firedrake.mesh.make_vom_from_vom_topology       2 1.0 2.4471e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.action       1 1.0 2.5808e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0        7 1.0 1.2668e-01 1.0 2.26e+06 1.1 2.1e+04 2.4e+02 9.3e+01  0  0  5  0  7   0  0  8  0  8  1743
MGSetup Level 1        7 1.0 3.9262e+00 1.0 2.19e+09 1.1 3.8e+04 5.5e+04 3.8e+02  4 14  9 19 28   4 16 14 25 31 56053
firedrake.constant.Constant.assign       2 1.0 4.0149e-04 8.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14621ad70c10_wrap_pyop2_kernel_prolong       4 0.0 7.4947e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e70f990d0_wrap_pyop2_kernel_prolong       4 0.0 7.4992e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1496a17eca10_wrap_pyop2_kernel_prolong       4 0.0 7.4979e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c1f8d66c10_wrap_pyop2_kernel_prolong       4 0.0 7.4975e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1486715a3c50_wrap_pyop2_kernel_prolong       4 0.0 7.5016e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1500831ce510_wrap_pyop2_kernel_prolong       4 0.0 7.4984e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f0c0dd410_wrap_pyop2_kernel_prolong       4 0.0 7.4966e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f2701f9fd0_wrap_pyop2_kernel_prolong       4 0.0 7.5033e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1518881204d0_wrap_pyop2_kernel_prolong       4 0.0 7.4967e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a9454b150_wrap_pyop2_kernel_prolong       4 0.0 7.4980e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d7966f7390_wrap_pyop2_kernel_prolong       4 0.0 7.5002e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f17379490_wrap_pyop2_kernel_prolong       4 0.0 7.5068e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ea0ccec2d0_wrap_pyop2_kernel_prolong       4 0.0 7.4935e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1508796de310_wrap_pyop2_kernel_prolong       4 0.0 7.4938e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fcc5a25710_wrap_pyop2_kernel_prolong       4 0.0 7.4861e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153a3ea3e090_wrap_pyop2_kernel_prolong       4 0.0 7.4818e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1547c2788450_wrap_pyop2_kernel_prolong       4 0.0 7.4780e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152ade35ed50_wrap_pyop2_kernel_prolong       4 0.0 7.4902e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522e41f6f50_wrap_pyop2_kernel_prolong       4 0.0 7.4782e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1545bbb41890_wrap_pyop2_kernel_prolong       4 0.0 7.4958e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1535e03d57d0_wrap_pyop2_kernel_prolong       4 0.0 7.5019e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f3f3fee50_wrap_pyop2_kernel_prolong       4 0.0 7.4939e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c39140e50_wrap_pyop2_kernel_prolong       4 0.0 7.4814e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1462db373c10_wrap_pyop2_kernel_prolong       4 0.0 7.4988e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14954e23ac50_wrap_pyop2_kernel_prolong       4 0.0 7.4980e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cdd0558810_wrap_pyop2_kernel_prolong       4 0.0 7.4922e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a9678c9b90_wrap_pyop2_kernel_prolong       4 0.0 7.4821e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151938c5bad0_wrap_pyop2_kernel_prolong       4 0.0 7.4868e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e391f09d0_wrap_pyop2_kernel_prolong       4 0.0 7.4929e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148de1d0f790_wrap_pyop2_kernel_prolong       4 0.0 7.4895e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1469cc5e3350_wrap_pyop2_kernel_prolong       4 0.0 7.5002e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15062828ebd0_wrap_pyop2_kernel_prolong       4 0.0 7.4927e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14707cc18f10_wrap_pyop2_kernel_prolong       4 0.0 7.4827e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151936f902d0_wrap_pyop2_kernel_prolong       4 0.0 7.5016e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d5710efd0_wrap_pyop2_kernel_prolong       4 0.0 7.5010e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c40924390_wrap_pyop2_kernel_prolong       4 0.0 7.4823e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1510bdf79e50_wrap_pyop2_kernel_prolong       4 0.0 7.4875e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ba0a3ea910_wrap_pyop2_kernel_prolong       4 0.0 7.4984e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a3662f3c90_wrap_pyop2_kernel_prolong       4 0.0 7.4948e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e23341e50_wrap_pyop2_kernel_prolong       4 0.0 7.4991e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b9cb7a550_wrap_pyop2_kernel_prolong       4 0.0 7.4855e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522b8ddcf50_wrap_pyop2_kernel_prolong       4 0.0 7.4847e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d21fe4550_wrap_pyop2_kernel_prolong       4 0.0 7.4791e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a30f0bd090_wrap_pyop2_kernel_prolong       4 0.0 7.4997e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15368107f450_wrap_pyop2_kernel_prolong       4 0.0 7.4923e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb2ab62dd0_wrap_pyop2_kernel_prolong       4 0.0 7.4844e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150cc8297110_wrap_pyop2_kernel_prolong       4 0.0 7.5009e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150387941490_wrap_pyop2_kernel_prolong       4 0.0 7.4783e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1499280e2910_wrap_pyop2_kernel_prolong       4 0.0 7.4926e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a9df1de6d0_wrap_pyop2_kernel_prolong       4 0.0 7.5005e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f9f80c8d0_wrap_pyop2_kernel_prolong       4 0.0 7.4845e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a30090d210_wrap_pyop2_kernel_prolong       4 0.0 7.4901e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c30c966d90_wrap_pyop2_kernel_prolong       4 0.0 7.4837e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15541ddd1210_wrap_pyop2_kernel_prolong       4 0.0 7.4836e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1526b9c9a7d0_wrap_pyop2_kernel_prolong       4 0.0 7.4762e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15074f9e2a90_wrap_pyop2_kernel_prolong       4 0.0 7.4827e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152dd2200850_wrap_pyop2_kernel_prolong       4 0.0 7.4855e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1471b0171e90_wrap_pyop2_kernel_prolong       4 0.0 7.4822e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e53f6ed10_wrap_pyop2_kernel_prolong       4 0.0 7.4771e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1471d205b310_wrap_pyop2_kernel_prolong       4 0.0 7.4907e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f7da32850_wrap_pyop2_kernel_prolong       4 0.0 7.4849e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e9e2daeb90_wrap_pyop2_kernel_prolong       4 0.0 7.4934e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c491e93b10_wrap_pyop2_kernel_prolong       4 0.0 7.4810e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15357f03ecd0_wrap_pyop2_kernel_prolong       4 0.0 7.4909e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e42beeb250_wrap_pyop2_kernel_prolong       4 0.0 7.4914e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e37fd9910_wrap_pyop2_kernel_prolong       4 0.0 7.4807e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1539e11e9e50_wrap_pyop2_kernel_prolong       4 0.0 7.4917e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1467d09fbc50_wrap_pyop2_kernel_prolong       4 0.0 7.4946e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ea3743710_wrap_pyop2_kernel_prolong       4 0.0 7.4864e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ca0e5cf90_wrap_pyop2_kernel_prolong       4 0.0 7.4986e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15332ab31fd0_wrap_pyop2_kernel_prolong       4 0.0 7.4898e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14956ce44150_wrap_pyop2_kernel_prolong       4 0.0 7.4944e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148119b68e50_wrap_pyop2_kernel_prolong       4 0.0 7.4899e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150e8bdd6ad0_wrap_pyop2_kernel_prolong       4 0.0 7.4996e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e51099f790_wrap_pyop2_kernel_prolong       4 0.0 7.4947e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d9ea9de2d0_wrap_pyop2_kernel_prolong       4 0.0 7.4804e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff4ccc4990_wrap_pyop2_kernel_prolong       4 0.0 7.4972e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147645ec9e10_wrap_pyop2_kernel_prolong       4 0.0 7.4770e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad255278d0_wrap_pyop2_kernel_prolong       4 0.0 7.4763e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152297219c50_wrap_pyop2_kernel_prolong       4 0.0 7.4850e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152284e2d3d0_wrap_pyop2_kernel_prolong       4 0.0 7.4875e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151c142e4150_wrap_pyop2_kernel_prolong       4 0.0 7.4776e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14909a38da90_wrap_pyop2_kernel_prolong       4 0.0 7.4955e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151f0ebd1e90_wrap_pyop2_kernel_prolong       4 0.0 7.4892e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1515e15aadd0_wrap_pyop2_kernel_prolong       4 0.0 7.4833e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153a1f2cb510_wrap_pyop2_kernel_prolong       4 0.0 7.4789e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151d9db1e390_wrap_pyop2_kernel_prolong       4 0.0 7.4824e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d332d1850_wrap_pyop2_kernel_prolong       4 0.0 7.4871e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c3c979f610_wrap_pyop2_kernel_prolong       4 0.0 7.4960e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152f89bb3450_wrap_pyop2_kernel_prolong       4 0.0 7.4851e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f6d8cebd0_wrap_pyop2_kernel_prolong       4 0.0 7.4866e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1462f8ad9150_wrap_pyop2_kernel_prolong       4 0.0 7.4809e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1487c1e78050_wrap_pyop2_kernel_prolong       4 0.0 7.4917e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491d0296e10_wrap_pyop2_kernel_prolong       4 0.0 7.4917e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c4eb60810_wrap_pyop2_kernel_prolong       4 0.0 7.4906e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150cc2da8910_wrap_pyop2_kernel_prolong       4 0.0 7.4986e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c8bb02c8d0_wrap_pyop2_kernel_prolong       4 0.0 7.4789e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e27bfcccd0_wrap_pyop2_kernel_prolong       4 0.0 7.4928e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f873a0d150_wrap_pyop2_kernel_prolong       4 0.0 7.4908e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f63443cd90_wrap_pyop2_kernel_prolong       4 0.0 7.4901e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145812a1d810_wrap_pyop2_kernel_prolong       4 0.0 7.4912e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151fc8d7dbd0_wrap_pyop2_kernel_prolong       4 0.0 7.4978e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a2d103c50_wrap_pyop2_kernel_prolong       4 0.0 7.4858e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided          7 1.0 3.9451e-04 3.9 0.00e+00 0.0 4.1e+03 4.0e+00 7.0e+00  0  0  1  0  1   0  0  2  0  6    -0
SFSetGraph             7 1.0 7.6335e-05 4.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp                7 1.0 5.3710e-04 2.2 0.00e+00 0.0 8.2e+03 6.0e+01 7.0e+00  0  0  2  0  1   0  0  5  0  6    -0
SFPack             35226 1.1 1.5130e-02 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           35226 1.1 1.8357e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy              228 1.0 3.4269e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecSet               416 1.0 7.5852e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   2  0  0  0  0    -0
VecAYPX              380 1.0 7.4540e-02 1.7 4.70e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   2  3  0  0  0 63420
VecAXPBYCZ            76 1.0 6.0850e-05 2.0 2.60e+05 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 429697
VecScatterBegin    35226 1.1 1.9106e-01 1.2 0.00e+00 0.0 1.4e+05 1.6e+04 0.0e+00  0  0 34 21  0   5  0 88 100  0    -0
VecScatterEnd      35226 1.1 3.1135e-01 12.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   3  0  0  0  0    -0
MatMult              228 1.0 1.6816e+00 1.2 1.11e+09 1.1 1.2e+05 1.8e+04 0.0e+00  2  7 29 21  0  45 62 74 100  0 66027
MatMultAdd            76 1.0 1.0802e-01 1.4 4.69e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   3  3  0  0  0 43716
MatMultTranspose      76 1.0 8.4781e-02 1.6 4.69e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   2  3  0  0  0 55698
MatSolve           17518 1.1 1.3294e+00 1.7 5.52e+08 1.1 4.3e+04 1.6e+02 3.5e+01  1  3 10  0  3  34 31 26  0 32 41384
MatLUFactorNum         6 1.0 1.2143e-01 1.1 4.75e+05 25.7 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   3  0  0  0  0    83
MatResidual           76 1.0 9.3462e-01 1.4 5.61e+08 1.1 4.1e+04 2.7e+04 0.0e+00  1  4 10 11  0  23 31 25 50  0 60178
PCSetUp                6 1.0 1.2149e-01 1.1 4.75e+05 25.7 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   3  0  0  0  0    83
PCSetUpOnBlocks       76 1.0 3.2123e-04 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply              114 1.0 1.7741e+00 1.5 5.55e+08 1.1 1.2e+05 1.7e+02 7.3e+01  2  3 29  0  5  47 31 75  1 66 31196
PCApplyOnBlocks    17480 1.1 1.2416e+00 1.8 5.46e+08 1.1 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0  31 30  0  0  0 44205
KSPSolve             114 1.0 2.5705e+00 1.3 1.15e+09 1.1 1.4e+05 7.8e+03 1.1e+02  2  7 34 11  8  72 64 88 50 100 44608
MGSmooth Level 0      38 1.0 3.3819e-01 1.3 1.18e+07 2.2 1.2e+05 1.7e+02 1.1e+02  0  0 29  0  8   9  0 75  1 100  2031
MGSmooth Level 1      76 1.0 2.3030e+00 1.3 1.13e+09 1.1 2.0e+04 5.5e+04 0.0e+00  2  7  5 10  0  63 63 12 50  0 49490
MGResid Level 1       38 1.0 9.2851e-01 1.4 5.60e+08 1.1 2.0e+04 5.5e+04 0.0e+00  1  4  5 10  0  23 31 12 50  0 60507
MGInterp Level 1      76 1.0 1.7766e-01 1.4 9.36e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   5  5  0  0  0 52984
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container    54             53
              Viewer     3              3
           Index Set  2957           2957
   IS L to G Mapping   321            317
             Section   294            294
   Star Forest Graph   477            476
              Vector   856            852
              Matrix  1179           1165
      Preconditioner   222            222
       Krylov Solver   220            220
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

           Index Set    14             14
   Star Forest Graph     9              6
              Vector    13             13
    Distributed Mesh     1              0
     Discrete System     1              0
           Weak Form     1              0
========================================================================================================================
Average time to get PetscTime(): 2.56e-08
Average time for MPI_Barrier(): 4.308e-06
Average time for zero size MPI_Send(): 2.46379e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_mg_coarse_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_mg_levels_1_pc_linesmooth_sub_sub_pc_factor_mat_ordering_type natural # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026-profile-stage2-20260820T053301Z/smoke/results/vlumping_hmg/smoke.profile # (source: code)
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

