****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0103.gadi.nci.org.au with 416 processes, by sg8812 on Sat Aug 29 07:37:55 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           1.879e+03     1.000   1.879e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                2.176e+12     1.131   2.089e+12  8.691e+14
Flops/sec:            1.158e+09     1.131   1.112e+09  4.625e+11
MPI Msg Count:        3.183e+05     4.585   1.395e+05  5.803e+07
MPI Msg Len (bytes):  2.136e+10     3.193   1.074e+05  6.231e+12
MPI Reductions:       2.221e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 8.8514e+02  47.1%  6.6668e+14  76.7%  1.969e+07  33.9%  1.773e+05       56.0%  1.646e+04  74.1%
 1:        MG Apply: 9.9385e+02  52.9%  2.0241e+14  23.3%  3.834e+07  66.1%  7.151e+04       44.0%  5.728e+03  25.8%

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

BuildTwoSided       2015 1.0 9.4047e+01 2.8 0.00e+00 0.0 5.8e+05 4.0e+00 1.8e+03  3  0  1  0  8   7  0  3  0 11    -0
BuildTwoSidedF      1693 1.0 9.2973e+01 2.8 0.00e+00 0.0 8.7e+05 1.4e+06 1.7e+03  3  0  2 20  8   6  0  4 36 10    -0
SFSetGraph           329 1.1 1.5753e-02 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              322 1.1 4.0774e+00 95.8 0.00e+00 0.0 3.0e+05 1.1e+03 9.8e+01  0  0  1  0  0   0  0  2  0  1    -0
SFBcastBegin        1444 1.0 7.8592e-01 3.6 0.00e+00 0.0 3.1e+06 1.0e+05 0.0e+00  0  0  5  5  0   0  0 16  9  0    -0
SFBcastEnd          1444 1.0 2.8254e+01 71.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        756 1.0 2.6270e-01 27.3 0.00e+00 0.0 1.7e+06 1.1e+05 0.0e+00  0  0  3  3  0   0  0  9  6  0    -0
SFReduceEnd          756 1.0 9.3025e+00 76.0 8.24e+07 3.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2582
SFFetchOpBegin         6 1.0 3.7205e-05 8.1 0.00e+00 0.0 1.1e+04 7.1e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           6 1.0 9.8583e-04 23.1 0.00e+00 0.0 1.1e+04 7.1e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          4 1.0 1.3915e-03 2.3 0.00e+00 0.0 5.4e+03 1.1e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         49 1.0 9.3633e-03 1.3 0.00e+00 0.0 2.6e+05 7.9e+01 5.8e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           51 1.0 5.4163e-03 2.7 0.00e+00 0.0 1.2e+05 3.8e+01 5.1e+01  0  0  0  0  0   0  0  1  0  0    -0
SFRemoteOff            2 1.0 8.8453e-05 2.8 0.00e+00 0.0 4.7e+03 1.6e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack            239952 1.1 3.3721e+00 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack          239958 1.1 4.3891e-01 6.2 8.24e+07 3.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 54734
VecDot               382 1.0 1.3520e+00 3.2 3.08e+08 1.1 0.0e+00 0.0e+00 3.8e+02  0  0  0  0  2   0  0  0  0  2 93321
VecMDot             5568 1.0 7.1069e+01 1.6 3.91e+10 1.1 0.0e+00 0.0e+00 5.6e+03  3  2  0  0 25   6  2  0  0 34 225129
VecNorm             7278 1.0 2.1444e+01 3.0 5.87e+09 1.1 0.0e+00 0.0e+00 7.3e+03  1  0  0  0 33   1  0  0  0 44 112093
VecScale            6028 1.0 2.0082e+00 1.3 2.43e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 495705
VecCopy             3051 1.0 4.1678e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              1880 1.0 1.6016e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              460 1.0 8.2016e-01 1.2 3.71e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 185242
VecWAXPY             709 1.0 1.4715e+00 1.2 3.99e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 111103
VecMAXPY            6028 1.0 5.4751e+01 1.1 4.36e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3  2  0  0  0   6  3  0  0  0 325815
VecScatterBegin   237746 1.1 5.3287e+00 1.4 0.00e+00 0.0 1.3e+07 1.2e+05 0.0e+00  0  0 23 26  0   1  0 68 46  0    -0
VecScatterEnd     237746 1.1 4.3070e+01 46.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecSetRandom          24 1.0 1.3952e-01 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecReduceArith       764 1.0 5.8977e-01 2.1 6.16e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 427852
VecReduceComm        382 1.0 5.3516e-01 26.3 0.00e+00 0.0 0.0e+00 0.0e+00 3.8e+02  0  0  0  0  2   0  0  0  0  2    -0
VecNormalize         515 1.0 1.8131e+00 2.7 6.23e+08 1.1 0.0e+00 0.0e+00 5.2e+02  0  0  0  0  2   0  0  0  0  3 140718
MatMult             5996 1.0 2.6080e+02 1.2 1.71e+11 1.1 1.3e+07 1.2e+05 0.0e+00 12  8 23 26  0  26 11 68 46  0 268849
MatSolve          115360 1.1 1.2783e+01 1.2 7.25e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0 232334
MatLUFactorSym       225 1.1 1.3165e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum      5507 1.1 2.9156e+01 1.0 1.71e+09 1.2 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0 21846
MatCopy              129 1.0 6.9553e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
MatConvert             1 1.0 1.5386e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin    7380 1.1 9.9825e+01 2.3 0.00e+00 0.0 8.7e+05 1.4e+06 1.7e+03  3  0  2 20  8   7  0  4 36 10    -0
MatAssemblyEnd      7380 1.1 2.3327e+01 7.9 4.71e+08 0.0 8.9e+03 1.5e+04 1.7e+01  1  0  0  0  0   2  0  0  0  0  3374
MatGetRowIJ          224 1.1 3.3202e-05 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats      24 1.0 3.2693e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  1   0  0  0  0  1    -0
MatGetOrdering       224 1.1 3.9894e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       520 1.0 1.5361e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
MatTranspose           2 1.0 1.4909e-02 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 1.2500e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        262 1.0 3.1724e+00 1.5 3.80e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 490005
MatPtAPSymbolic        1 1.0 2.1234e-01 1.0 0.00e+00 0.0 6.7e+03 2.0e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       131 1.0 2.1739e+01 1.0 1.52e+10 1.1 3.0e+05 3.6e+05 1.4e+02  1  1  1  2  1   2  1  1  3  1 285911
MatGetLocalMat       131 1.0 9.6812e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        131 1.0 5.5789e-01 2.1 0.00e+00 0.0 3.0e+05 3.6e+05 0.0e+00  0  0  1  2  0   0  0  2  3  0    -0
MatSetPreallCOO       32 1.0 7.1494e-05 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       32 1.0 2.6496e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp              389 1.0 1.1396e+02 1.0 4.76e+10 1.1 1.4e+06 1.7e+05 1.7e+03  6  2  2  4  8  13  3  7  7 10 170180
PCApply             5078 1.0 1.0125e+03 1.0 5.06e+11 1.1 3.8e+07 7.2e+04 5.7e+03 53 23 66 44 26 Multiple stages 199905
PCApplyOnBlocks   115360 1.1 1.4401e+01 1.2 8.79e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 249990
KSPSetUp             389 1.0 1.9282e-02 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             389 1.0 1.3013e+03 1.0 7.34e+11 1.1 5.0e+07 8.3e+04 1.6e+04 69 34 86 66 73 Multiple stages 227092
KSPGMRESOrthog      5568 1.0 1.1841e+02 1.3 7.81e+10 1.1 0.0e+00 0.0e+00 5.6e+03  5  4  0  0 25  12  5  0  0 34 270239
DMRefine               2 1.0 2.3163e-01 1.0 2.09e+03 1.0 3.2e+04 3.4e+01 6.3e+01  0  0  0  0  0   0  0  0  0  0     4
DMPlexCreateGmsh       1 1.0 2.5160e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 4.1667e+00 172.7 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Partition         4 1.0 1.4993e-01 1.0 0.00e+00 0.0 7.9e+04 6.2e+01 5.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         4 1.0 2.6182e-02 1.1 0.00e+00 0.0 2.9e+05 7.2e+01 2.4e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 3.8743e-03 1167.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       4 1.0 3.3185e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        4 1.0 6.8259e-03 1.1 0.00e+00 0.0 1.6e+04 4.9e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       4 1.0 3.0669e-03 1.5 0.00e+00 0.0 7.8e+03 1.9e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          4 1.0 2.8056e-03 2.3 0.00e+00 0.0 8.2e+03 2.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          29 1.0 1.0849e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 1.4783e-01 1.0 0.00e+00 0.0 1.7e+04 1.8e+02 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        4 1.0 3.8020e-03 1.2 0.00e+00 0.0 4.5e+04 1.1e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       4 1.0 1.0635e-02 1.0 0.00e+00 0.0 1.5e+05 7.0e+01 1.5e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistOvrlp        3 1.0 3.1969e-02 1.0 0.00e+00 0.0 3.6e+05 6.8e+01 2.4e+02  0  0  1  0  1   0  0  2  0  1    -0
DMPlexDistField        7 1.0 5.0058e-03 1.3 0.00e+00 0.0 6.6e+04 5.7e+01 2.0e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify        41 1.0 9.0712e-03 7.4 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      41 1.0 5.6738e-04 10.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          2 1.0 1.2784e-04 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          2 1.0 3.5373e-03 1.6 0.00e+00 0.0 1.8e+04 2.8e+01 1.9e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          2 1.0 1.1495e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          2 1.0 3.5784e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             2 1.0 3.9974e-04 2.0 0.00e+00 0.0 1.4e+04 2.7e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         2 1.0 9.3644e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         2 1.0 8.9540e-04 2.0 0.00e+00 0.0 3.6e+03 3.6e+01 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             52 1.0 1.8079e+03 1.0 2.18e+12 1.1 5.7e+07 1.1e+05 2.1e+04 96 100 98 100 96 Multiple stages 480695
SNESSetUp              1 1.0 6.0269e-05 7.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     715 1.0 6.2997e+01 1.2 6.52e+11 1.2 3.3e+06 1.2e+05 0.0e+00  3 30  6  6  0   6 38 17 11  0 4070660
SNESJacobianEval     389 1.0 3.1045e+02 1.0 7.41e+11 1.2 1.7e+06 7.8e+05 1.6e+03 17 34  3 22  7  35 44  9 39  9 941658
SNESLineSearch       382 1.0 6.8620e+01 1.0 6.18e+11 1.2 3.8e+06 1.2e+05 1.8e+03  4 28  7  7  8   8 36 19 13 11 3543222
DualSpaceSetUp         8 1.0 5.8304e-03 1.3 1.08e+02 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     8
FESetUp                8 1.0 1.9407e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 1.8766e+03 1.0 2.18e+12 1.1 5.8e+07 1.1e+05 2.2e+04 100 100 100 100 100 Multiple stages 463117
firedrake.__init__       1 1.0 1.5159e+01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateMesh             3 1.0 4.3978e+00 17.3 0.00e+00 0.0 7.0e+05 7.4e+01 4.4e+02  0  0  1  0  2   0  0  4  0  3    -0
firedrake.mesh._from_gmsh       1 1.0 4.1675e+00 172.5 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       3 1.0 1.0101e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       3 1.0 6.5130e-06 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        3 1.0 5.0871e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          3 1.0 1.0753e-03 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      16 1.0 3.5864e-02 1.1 0.00e+00 0.0 1.5e+04 8.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      20 1.0 1.8708e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      20 1.0 3.3867e-02 1.1 0.00e+00 0.0 1.5e+04 8.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      19 1.0 3.1387e-02 1.1 0.00e+00 0.0 1.5e+04 8.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      19 1.0 3.1261e-02 1.1 0.00e+00 0.0 1.5e+04 8.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      38 1.0 1.4440e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       6 1.0 6.7669e-03 1.2 0.00e+00 0.0 1.5e+04 8.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__      12 1.0 7.7588e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      12 1.0 1.6152e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      65 1.0 3.6332e-02 3.7 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          3 1.0 2.3716e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       3 1.0 2.6429e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       4 1.0 6.0086e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       5 1.0 1.3426e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       3 1.0 2.3650e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     508 1.0 7.4860e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      5151 1.0 3.0802e+02 1.2 1.39e+12 1.2 2.6e+06 1.2e+05 3.2e+01 15 63  5  5  0  32 82 13  9  0 1781412
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       6 1.0 2.3221e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)   10302 1.0 2.6451e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      17 1.0 1.0755e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
GlobalKernel: generate loopy      17 0.0 1.5664e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      17 0.0 8.4094e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      17 1.0 1.5199e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.load      17 1.0 1.5198e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      17 1.0 9.9413e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.make_so      17 1.0 9.7612e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
ParLoopRednBegin    5151 1.0 1.5121e-02 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      5151 1.0 1.3651e-02 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       3 1.0 1.5235e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong       4 1.0 8.0909e+00 1.0 1.36e+07 1.1 3.8e+04 1.3e+04 1.3e+01  0  0  0  0  0   1  0  0  0  0   689
firedrake.interpolation.interpolate      13 1.0 4.7759e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      13 1.0 6.0497e+00 1.0 8.46e+07 1.1 5.8e+04 4.2e+04 3.7e+01  0  0  0  0  0   1  0  0  0  0  5726
firedrake.formmanipulation.split_form      14 1.0 5.3536e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      14 1.0 2.6855e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      13 1.0 1.5527e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       6 1.2 1.0070e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin    1177 1.0 4.9720e+00 8.7 0.00e+00 0.0 2.7e+06 1.2e+05 4.0e+00  0  0  5  5  0   0  0 14  9  0    -0
Parloop_Cells_wrap_expression_kernel      26 1.0 5.5292e+00 1.0 8.46e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  6265
firedrake.halo.Halo.global_to_local_end    1177 1.0 2.8205e+01 160.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       1 1.0 3.4475e+00 54.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d70b51b4d0_wrap_pyop2_kernel_prolong       4 0.0 7.6031e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d70b51b2d0_wrap_pyop2_kernel_prolong       4 0.0 5.0541e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 3.9835e+00 1.0 6.85e+07 1.1 3.5e+04 6.0e+04 1.1e+01  0  0  0  0  0   0  0  0  0  0  7048
firedrake.function.Function.assign     222 1.0 1.2735e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     221 1.0 1.2196e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.5100e-04 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      92 1.0 1.3968e-03 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 5.8068e-05 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.4863e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.9755e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.2219e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 7.5669e+00 1.0 0.00e+00 0.0 1.4e+04 4.8e+05 2.3e+01  0  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 6.9006e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.8632e-04 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.2859e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.2859e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
CreateSparsity         2 1.0 4.1407e+00 1.1 0.00e+00 0.0 1.2e+04 2.8e+05 1.8e+01  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         2 1.0 5.6627e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      52 1.0 1.8081e+03 1.0 2.18e+12 1.1 5.7e+07 1.1e+05 2.2e+04 96 100 98 100 97 Multiple stages 480644
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 3.1770e-01 992.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 1.5218e-05 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 3.1765e-01 1170.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 3.1761e-01 1319.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral    1430 1.0 1.7324e+01 1.5 1.66e+11 1.1 0.0e+00 0.0e+00 0.0e+00  1  8  0  0  0   2 10  0  0  0 3915488
Parloop_Cells_wrap_form0_exterior_facet_top_integral    1430 1.0 1.0547e+00 1.1 2.13e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  8272
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral    1430 1.0 1.5289e+00 1.1 1.42e+09 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 38753
Parloop_Cells_wrap_form0_interior_facet_horiz_integral    1430 1.0 1.0994e+01 1.2 1.57e+11 1.1 0.0e+00 0.0e+00 0.0e+00  1  7  0  0  0   1 10  0  0  0 5863880
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral    1430 1.0 2.5370e+01 1.4 3.29e+11 1.3 0.0e+00 0.0e+00 0.0e+00  1 14  0  0  0   2 19  0  0  0 4889377
firedrake.halo.Halo.local_to_global_begin     715 1.0 2.9036e-01 11.8 0.00e+00 0.0 1.6e+06 1.2e+05 0.0e+00  0  0  3  3  0   0  0  8  6  0    -0
firedrake.halo.Halo.local_to_global_end     715 1.0 9.3099e+00 72.7 8.24e+07 3.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2580
Parloop_Cells_wrap_form00_cell_integral     778 1.0 5.0326e+01 1.5 1.67e+11 1.1 0.0e+00 0.0e+00 0.0e+00  2  8  0  0  0   5 10  0  0  0 1361764
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     778 1.0 2.3546e+00 2.1 7.80e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 13773
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     778 1.0 6.3829e+01 1.3 2.20e+11 1.1 0.0e+00 0.0e+00 0.0e+00  3 10  0  0  0   6 14  0  0  0 1412490
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     778 1.0 1.3926e+02 1.4 3.54e+11 1.3 0.0e+00 0.0e+00 0.0e+00  6 15  0  0  0  14 20  0  0  0 958874
firedrake.dmhooks.get_function_space       2 1.0 2.1207e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 5.2742e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0      131 1.0 2.9135e+01 1.0 1.73e+08 31.8 0.0e+00 0.0e+00 2.0e+00  2  0  0  0  0   3  0  0  0  0   227
MGSetup Level 1      131 1.0 1.7626e+00 1.0 6.16e+08 1.1 2.2e+04 1.2e+05 2.5e+02  0  0  0  0  1   0  0  0  0  2 142998
firedrake.constant.Constant.assign      52 1.0 2.5389e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ebba45a10_wrap_pyop2_kernel_prolong       4 0.0 7.5257e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ebba62b50_wrap_pyop2_kernel_prolong       4 0.0 6.0590e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f460a2490_wrap_pyop2_kernel_prolong       4 0.0 7.5261e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f460a2a10_wrap_pyop2_kernel_prolong       4 0.0 5.4056e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150fcb8e2c50_wrap_pyop2_kernel_prolong       4 0.0 7.5439e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150fcb92ac10_wrap_pyop2_kernel_prolong       4 0.0 5.0686e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478d8150290_wrap_pyop2_kernel_prolong       4 0.0 7.5249e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478d8151ad0_wrap_pyop2_kernel_prolong       4 0.0 5.6267e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f630aba10_wrap_pyop2_kernel_prolong       4 0.0 7.5266e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f630aa210_wrap_pyop2_kernel_prolong       4 0.0 6.0624e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eb4652b450_wrap_pyop2_kernel_prolong       4 0.0 7.5478e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eb45c54e50_wrap_pyop2_kernel_prolong       4 0.0 5.4389e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c8c88ed610_wrap_pyop2_kernel_prolong       4 0.0 7.5588e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c8c890dd50_wrap_pyop2_kernel_prolong       4 0.0 6.2325e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149202c53cd0_wrap_pyop2_kernel_prolong       4 0.0 7.5292e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1492028c9590_wrap_pyop2_kernel_prolong       4 0.0 5.4265e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe7b22fd90_wrap_pyop2_kernel_prolong       4 0.0 7.5712e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe7b252210_wrap_pyop2_kernel_prolong       4 0.0 6.0721e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1461f22e9d50_wrap_pyop2_kernel_prolong       4 0.0 7.5540e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1461f22e9690_wrap_pyop2_kernel_prolong       4 0.0 5.8871e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14af3bf66350_wrap_pyop2_kernel_prolong       4 0.0 7.5286e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14af3bf82150_wrap_pyop2_kernel_prolong       4 0.0 5.3975e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c26542a5d0_wrap_pyop2_kernel_prolong       4 0.0 7.6160e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c265429f90_wrap_pyop2_kernel_prolong       4 0.0 7.1128e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154dca355790_wrap_pyop2_kernel_prolong       4 0.0 7.6036e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154dc98da050_wrap_pyop2_kernel_prolong       4 0.0 5.3882e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c5b4728290_wrap_pyop2_kernel_prolong       4 0.0 7.5867e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c5b47122d0_wrap_pyop2_kernel_prolong       4 0.0 5.7685e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15372ac1fc50_wrap_pyop2_kernel_prolong       4 0.0 7.6036e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15372ab6e2d0_wrap_pyop2_kernel_prolong       4 0.0 6.0760e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153837002550_wrap_pyop2_kernel_prolong       4 0.0 7.5126e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153837001ed0_wrap_pyop2_kernel_prolong       4 0.0 5.0108e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1527974dc0d0_wrap_pyop2_kernel_prolong       4 0.0 7.5261e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15279767dfd0_wrap_pyop2_kernel_prolong       4 0.0 6.2050e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14780697d650_wrap_pyop2_kernel_prolong       4 0.0 7.5296e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478069985d0_wrap_pyop2_kernel_prolong       4 0.0 7.0849e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a6480760d0_wrap_pyop2_kernel_prolong       4 0.0 7.5232e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a648074690_wrap_pyop2_kernel_prolong       4 0.0 5.8288e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145fe43b2690_wrap_pyop2_kernel_prolong       4 0.0 7.5245e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145fe43b2050_wrap_pyop2_kernel_prolong       4 0.0 5.9438e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ff0d07310_wrap_pyop2_kernel_prolong       4 0.0 7.5334e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ff00ea690_wrap_pyop2_kernel_prolong       4 0.0 6.3626e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f4ae6e390_wrap_pyop2_kernel_prolong       4 0.0 7.5236e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f4ae6d890_wrap_pyop2_kernel_prolong       4 0.0 6.4151e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cec41dca90_wrap_pyop2_kernel_prolong       4 0.0 7.5244e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cec40846d0_wrap_pyop2_kernel_prolong       4 0.0 5.8907e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab0691f610_wrap_pyop2_kernel_prolong       4 0.0 7.5221e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab06999890_wrap_pyop2_kernel_prolong       4 0.0 6.0117e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150401d8fb90_wrap_pyop2_kernel_prolong       4 0.0 7.5219e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150401dae590_wrap_pyop2_kernel_prolong       4 0.0 6.0529e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15526e282e50_wrap_pyop2_kernel_prolong       4 0.0 7.5298e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15526e280050_wrap_pyop2_kernel_prolong       4 0.0 5.6270e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f61bd6a90_wrap_pyop2_kernel_prolong       4 0.0 7.5496e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f61b12150_wrap_pyop2_kernel_prolong       4 0.0 6.4350e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152ee5749150_wrap_pyop2_kernel_prolong       4 0.0 7.5228e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152ee57184d0_wrap_pyop2_kernel_prolong       4 0.0 6.4680e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c4b5ee990_wrap_pyop2_kernel_prolong       4 0.0 7.5142e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c4ac9d390_wrap_pyop2_kernel_prolong       4 0.0 6.0341e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f7763a050_wrap_pyop2_kernel_prolong       4 0.0 7.5256e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f77639a50_wrap_pyop2_kernel_prolong       4 0.0 5.8568e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493d01ad010_wrap_pyop2_kernel_prolong       4 0.0 7.5421e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493d0191650_wrap_pyop2_kernel_prolong       4 0.0 6.0421e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e2eda3acd0_wrap_pyop2_kernel_prolong       4 0.0 7.5159e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e2eda38150_wrap_pyop2_kernel_prolong       4 0.0 5.5934e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e0346b8b90_wrap_pyop2_kernel_prolong       4 0.0 7.5175e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e02fc06290_wrap_pyop2_kernel_prolong       4 0.0 5.8256e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147cc348fc50_wrap_pyop2_kernel_prolong       4 0.0 7.5635e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147cc348c790_wrap_pyop2_kernel_prolong       4 0.0 6.8371e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b544c61310_wrap_pyop2_kernel_prolong       4 0.0 7.5190e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b544c91a10_wrap_pyop2_kernel_prolong       4 0.0 6.1023e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145ea8ccebd0_wrap_pyop2_kernel_prolong       4 0.0 7.5677e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145ea83a5e50_wrap_pyop2_kernel_prolong       4 0.0 6.1473e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15352702ddd0_wrap_pyop2_kernel_prolong       4 0.0 7.5326e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153526f06190_wrap_pyop2_kernel_prolong       4 0.0 5.1857e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cc4ec0af90_wrap_pyop2_kernel_prolong       4 0.0 7.5195e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cc4eb75c50_wrap_pyop2_kernel_prolong       4 0.0 6.3699e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f66e80d90_wrap_pyop2_kernel_prolong       4 0.0 7.5126e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f66ea5c50_wrap_pyop2_kernel_prolong       4 0.0 4.9981e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15128e10f490_wrap_pyop2_kernel_prolong       4 0.0 7.5227e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15128e0eda50_wrap_pyop2_kernel_prolong       4 0.0 6.9322e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15349aee1a10_wrap_pyop2_kernel_prolong       4 0.0 7.5171e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15349b116710_wrap_pyop2_kernel_prolong       4 0.0 5.5970e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d805d82250_wrap_pyop2_kernel_prolong       4 0.0 7.5283e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d8052e7b10_wrap_pyop2_kernel_prolong       4 0.0 5.8591e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146dd2052a90_wrap_pyop2_kernel_prolong       4 0.0 7.5236e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146dd2273950_wrap_pyop2_kernel_prolong       4 0.0 6.0069e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef1651a750_wrap_pyop2_kernel_prolong       4 0.0 7.5312e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef164f99d0_wrap_pyop2_kernel_prolong       4 0.0 5.8476e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee7c841d90_wrap_pyop2_kernel_prolong       4 0.0 7.5248e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee7c71dad0_wrap_pyop2_kernel_prolong       4 0.0 6.4360e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149be447d750_wrap_pyop2_kernel_prolong       4 0.0 7.5297e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149be447fcd0_wrap_pyop2_kernel_prolong       4 0.0 6.0809e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f2d368b850_wrap_pyop2_kernel_prolong       4 0.0 7.5656e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f2d38f17d0_wrap_pyop2_kernel_prolong       4 0.0 6.5045e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f5ce2a1b90_wrap_pyop2_kernel_prolong       4 0.0 7.5305e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f5ce27f7d0_wrap_pyop2_kernel_prolong       4 0.0 6.4123e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c7a0d5c90_wrap_pyop2_kernel_prolong       4 0.0 7.5323e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c7a0d4b90_wrap_pyop2_kernel_prolong       4 0.0 6.6905e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ca7d62350_wrap_pyop2_kernel_prolong       4 0.0 7.5254e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ca7d81c50_wrap_pyop2_kernel_prolong       4 0.0 5.8393e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145b65629290_wrap_pyop2_kernel_prolong       4 0.0 7.5454e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145b6562a950_wrap_pyop2_kernel_prolong       4 0.0 6.9109e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f8dad26710_wrap_pyop2_kernel_prolong       4 0.0 7.5113e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f8dad26a10_wrap_pyop2_kernel_prolong       4 0.0 5.0038e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1482cec5eed0_wrap_pyop2_kernel_prolong       4 0.0 7.5215e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1482cebeb4d0_wrap_pyop2_kernel_prolong       4 0.0 5.2149e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ccf88b9090_wrap_pyop2_kernel_prolong       4 0.0 7.5150e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ccf889a050_wrap_pyop2_kernel_prolong       4 0.0 6.0408e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146eeacfff50_wrap_pyop2_kernel_prolong       4 0.0 7.5194e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146eeacfd790_wrap_pyop2_kernel_prolong       4 0.0 6.0674e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff4a55a910_wrap_pyop2_kernel_prolong       4 0.0 7.5177e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff4a55a050_wrap_pyop2_kernel_prolong       4 0.0 5.3794e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14741448d690_wrap_pyop2_kernel_prolong       4 0.0 7.5994e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14741451fbd0_wrap_pyop2_kernel_prolong       4 0.0 6.0470e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fdc2394150_wrap_pyop2_kernel_prolong       4 0.0 7.5097e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fdc1a7da50_wrap_pyop2_kernel_prolong       4 0.0 5.0474e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149739a86450_wrap_pyop2_kernel_prolong       4 0.0 7.5869e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149739a87dd0_wrap_pyop2_kernel_prolong       4 0.0 5.7880e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b0ecde590_wrap_pyop2_kernel_prolong       4 0.0 7.5654e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b0ead6610_wrap_pyop2_kernel_prolong       4 0.0 7.0913e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149089c37610_wrap_pyop2_kernel_prolong       4 0.0 7.5212e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149089ede3d0_wrap_pyop2_kernel_prolong       4 0.0 5.7730e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14883d6f8fd0_wrap_pyop2_kernel_prolong       4 0.0 7.5785e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14883d714250_wrap_pyop2_kernel_prolong       4 0.0 5.8004e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c489062790_wrap_pyop2_kernel_prolong       4 0.0 7.6081e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c483d9e210_wrap_pyop2_kernel_prolong       4 0.0 6.9263e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c0e9dc2110_wrap_pyop2_kernel_prolong       4 0.0 7.5184e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c0e9ef5ed0_wrap_pyop2_kernel_prolong       4 0.0 6.6986e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14941766c050_wrap_pyop2_kernel_prolong       4 0.0 7.5178e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14941766d590_wrap_pyop2_kernel_prolong       4 0.0 4.3312e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15273d4ba450_wrap_pyop2_kernel_prolong       4 0.0 7.5579e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15273d64df50_wrap_pyop2_kernel_prolong       4 0.0 5.3798e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a9de7706d0_wrap_pyop2_kernel_prolong       4 0.0 7.5745e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a9de7b1dd0_wrap_pyop2_kernel_prolong       4 0.0 5.7913e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14911a307e50_wrap_pyop2_kernel_prolong       4 0.0 7.5540e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14911a384350_wrap_pyop2_kernel_prolong       4 0.0 6.9598e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5d1fe7990_wrap_pyop2_kernel_prolong       4 0.0 7.5232e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5d202d790_wrap_pyop2_kernel_prolong       4 0.0 6.6750e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151f9bf84190_wrap_pyop2_kernel_prolong       4 0.0 7.5486e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151f9b3edc50_wrap_pyop2_kernel_prolong       4 0.0 7.1321e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14adc58e5bd0_wrap_pyop2_kernel_prolong       4 0.0 7.5454e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14adc593acd0_wrap_pyop2_kernel_prolong       4 0.0 6.6942e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146df1299990_wrap_pyop2_kernel_prolong       4 0.0 7.5253e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146df107a690_wrap_pyop2_kernel_prolong       4 0.0 6.2255e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148950f35b10_wrap_pyop2_kernel_prolong       4 0.0 7.5387e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148950f35690_wrap_pyop2_kernel_prolong       4 0.0 6.2821e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe0dea2710_wrap_pyop2_kernel_prolong       4 0.0 7.5625e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe0dd0df10_wrap_pyop2_kernel_prolong       4 0.0 5.8968e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d6d2e7e850_wrap_pyop2_kernel_prolong       4 0.0 7.5835e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d6d30afc10_wrap_pyop2_kernel_prolong       4 0.0 6.0249e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f62473d750_wrap_pyop2_kernel_prolong       4 0.0 7.6054e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f624759290_wrap_pyop2_kernel_prolong       4 0.0 5.6535e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a7d6592450_wrap_pyop2_kernel_prolong       4 0.0 7.6027e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a7d65904d0_wrap_pyop2_kernel_prolong       4 0.0 6.2123e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1474857cd190_wrap_pyop2_kernel_prolong       4 0.0 7.5648e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1474857ce050_wrap_pyop2_kernel_prolong       4 0.0 4.7036e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c3e2420ed0_wrap_pyop2_kernel_prolong       4 0.0 7.5147e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c3e2bfd4d0_wrap_pyop2_kernel_prolong       4 0.0 5.5330e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1511c5cf6bd0_wrap_pyop2_kernel_prolong       4 0.0 7.5260e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1511c5f45390_wrap_pyop2_kernel_prolong       4 0.0 5.8360e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150e3ede1fd0_wrap_pyop2_kernel_prolong       4 0.0 7.5768e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150e3edfdb90_wrap_pyop2_kernel_prolong       4 0.0 5.2061e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cdcb73a550_wrap_pyop2_kernel_prolong       4 0.0 7.5295e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cdcb71a7d0_wrap_pyop2_kernel_prolong       4 0.0 6.4014e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b314f2110_wrap_pyop2_kernel_prolong       4 0.0 7.5344e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b3170dc90_wrap_pyop2_kernel_prolong       4 0.0 7.3714e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d6e1576450_wrap_pyop2_kernel_prolong       4 0.0 7.5299e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d6e12fd790_wrap_pyop2_kernel_prolong       4 0.0 5.7519e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15519aafe6d0_wrap_pyop2_kernel_prolong       4 0.0 7.5221e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15519aab33d0_wrap_pyop2_kernel_prolong       4 0.0 5.8535e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153041212a90_wrap_pyop2_kernel_prolong       4 0.0 7.5959e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15304122d8d0_wrap_pyop2_kernel_prolong       4 0.0 6.4650e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1530041015d0_wrap_pyop2_kernel_prolong       4 0.0 7.5313e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1530042553d0_wrap_pyop2_kernel_prolong       4 0.0 6.6075e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146700d7ff10_wrap_pyop2_kernel_prolong       4 0.0 7.5770e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146700d7e910_wrap_pyop2_kernel_prolong       4 0.0 6.0635e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a8e1fefc50_wrap_pyop2_kernel_prolong       4 0.0 7.5969e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a8e16fa8d0_wrap_pyop2_kernel_prolong       4 0.0 6.9296e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153848bcda90_wrap_pyop2_kernel_prolong       4 0.0 7.5703e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153848a8ba90_wrap_pyop2_kernel_prolong       4 0.0 6.7019e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e67141d210_wrap_pyop2_kernel_prolong       4 0.0 7.5511e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e670a9b050_wrap_pyop2_kernel_prolong       4 0.0 5.6323e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150508a19250_wrap_pyop2_kernel_prolong       4 0.0 7.5151e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1505088ac650_wrap_pyop2_kernel_prolong       4 0.0 6.2132e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14feb160fc90_wrap_pyop2_kernel_prolong       4 0.0 7.5346e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14feb1779f90_wrap_pyop2_kernel_prolong       4 0.0 7.6199e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1502bf16a210_wrap_pyop2_kernel_prolong       4 0.0 7.5738e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1502bf169890_wrap_pyop2_kernel_prolong       4 0.0 6.0302e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e9d615790_wrap_pyop2_kernel_prolong       4 0.0 7.5921e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e9cc6e550_wrap_pyop2_kernel_prolong       4 0.0 6.1792e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1507ece36a50_wrap_pyop2_kernel_prolong       4 0.0 7.5174e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1507ed08bcd0_wrap_pyop2_kernel_prolong       4 0.0 5.6901e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1473071939d0_wrap_pyop2_kernel_prolong       4 0.0 7.5137e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1473059b63d0_wrap_pyop2_kernel_prolong       4 0.0 4.8092e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f13a868510_wrap_pyop2_kernel_prolong       4 0.0 7.5202e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f13a86bf10_wrap_pyop2_kernel_prolong       4 0.0 5.5395e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bfd69123d0_wrap_pyop2_kernel_prolong       4 0.0 7.5204e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bfd67b8250_wrap_pyop2_kernel_prolong       4 0.0 6.6047e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145a39a6a9d0_wrap_pyop2_kernel_prolong       4 0.0 7.5295e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145a39852150_wrap_pyop2_kernel_prolong       4 0.0 6.4126e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15188e77a150_wrap_pyop2_kernel_prolong       4 0.0 7.5159e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15188e74ac50_wrap_pyop2_kernel_prolong       4 0.0 5.8595e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ffcecd4d10_wrap_pyop2_kernel_prolong       4 0.0 7.6006e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ffcecd5d90_wrap_pyop2_kernel_prolong       4 0.0 6.9440e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1459c1d096d0_wrap_pyop2_kernel_prolong       4 0.0 7.5893e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1459c1b699d0_wrap_pyop2_kernel_prolong       4 0.0 6.9104e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e26c9a1f50_wrap_pyop2_kernel_prolong       4 0.0 7.6320e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e26c9ded10_wrap_pyop2_kernel_prolong       4 0.0 4.8974e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14566ecb43d0_wrap_pyop2_kernel_prolong       4 0.0 7.5595e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14566ecb4d10_wrap_pyop2_kernel_prolong       4 0.0 5.4478e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1552ed49ddd0_wrap_pyop2_kernel_prolong       4 0.0 7.6923e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1552ed49f310_wrap_pyop2_kernel_prolong       4 0.0 6.0615e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d0059c9c50_wrap_pyop2_kernel_prolong       4 0.0 7.6786e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d0059e5090_wrap_pyop2_kernel_prolong       4 0.0 5.8708e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a4ba0f41d0_wrap_pyop2_kernel_prolong       4 0.0 7.6184e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a4ba0b9490_wrap_pyop2_kernel_prolong       4 0.0 5.9011e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c89b43510_wrap_pyop2_kernel_prolong       4 0.0 7.6205e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c889455d0_wrap_pyop2_kernel_prolong       4 0.0 6.4364e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151bc202a750_wrap_pyop2_kernel_prolong       4 0.0 7.4979e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151bc204dbd0_wrap_pyop2_kernel_prolong       4 0.0 4.8248e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b8daa8f7d0_wrap_pyop2_kernel_prolong       4 0.0 7.5410e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b8daa8d8d0_wrap_pyop2_kernel_prolong       4 0.0 6.0063e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1465b8dbf490_wrap_pyop2_kernel_prolong       4 0.0 7.5676e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1465b8dda310_wrap_pyop2_kernel_prolong       4 0.0 5.6250e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb84c85450_wrap_pyop2_kernel_prolong       4 0.0 7.5334e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb84ee0250_wrap_pyop2_kernel_prolong       4 0.0 4.8413e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14628a80a310_wrap_pyop2_kernel_prolong       4 0.0 7.5745e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146289f21290_wrap_pyop2_kernel_prolong       4 0.0 5.8462e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d062f1bfd0_wrap_pyop2_kernel_prolong       4 0.0 7.5596e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d062f445d0_wrap_pyop2_kernel_prolong       4 0.0 6.2563e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b93ef97310_wrap_pyop2_kernel_prolong       4 0.0 7.5710e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b93ee85cd0_wrap_pyop2_kernel_prolong       4 0.0 7.1755e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148befbad510_wrap_pyop2_kernel_prolong       4 0.0 7.5279e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148befbada50_wrap_pyop2_kernel_prolong       4 0.0 5.6749e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac4d6a42d0_wrap_pyop2_kernel_prolong       4 0.0 7.5936e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac4d6a5c90_wrap_pyop2_kernel_prolong       4 0.0 5.2730e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15365281b250_wrap_pyop2_kernel_prolong       4 0.0 7.5608e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153651ec6490_wrap_pyop2_kernel_prolong       4 0.0 5.9747e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1469036ffe10_wrap_pyop2_kernel_prolong       4 0.0 7.5256e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1469039abcd0_wrap_pyop2_kernel_prolong       4 0.0 6.5330e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b537956890_wrap_pyop2_kernel_prolong       4 0.0 7.5673e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b537984350_wrap_pyop2_kernel_prolong       4 0.0 6.5356e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15270dbd3650_wrap_pyop2_kernel_prolong       4 0.0 7.5862e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15270dc1cbd0_wrap_pyop2_kernel_prolong       4 0.0 6.5506e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a1f22e9790_wrap_pyop2_kernel_prolong       4 0.0 7.5237e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a1f2139b50_wrap_pyop2_kernel_prolong       4 0.0 6.2799e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1548a8bda110_wrap_pyop2_kernel_prolong       4 0.0 7.5470e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1548a8bd9c90_wrap_pyop2_kernel_prolong       4 0.0 5.1916e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c9e2b033d0_wrap_pyop2_kernel_prolong       4 0.0 7.7101e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c9e1896c50_wrap_pyop2_kernel_prolong       4 0.0 6.9155e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc26d4fbd0_wrap_pyop2_kernel_prolong       4 0.0 7.5817e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc26d66350_wrap_pyop2_kernel_prolong       4 0.0 6.2228e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c2bae27dd0_wrap_pyop2_kernel_prolong       4 0.0 7.5891e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c2bae25490_wrap_pyop2_kernel_prolong       4 0.0 7.6131e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151f92917910_wrap_pyop2_kernel_prolong       4 0.0 7.6370e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151f92905a50_wrap_pyop2_kernel_prolong       4 0.0 6.7478e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f8f1131d0_wrap_pyop2_kernel_prolong       4 0.0 7.5392e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f8f099bd0_wrap_pyop2_kernel_prolong       4 0.0 7.3445e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147132833750_wrap_pyop2_kernel_prolong       4 0.0 7.5472e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1471327e9a50_wrap_pyop2_kernel_prolong       4 0.0 6.2576e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d46f1e590_wrap_pyop2_kernel_prolong       4 0.0 7.5792e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d46cbe110_wrap_pyop2_kernel_prolong       4 0.0 5.5998e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151334a0bcd0_wrap_pyop2_kernel_prolong       4 0.0 7.6377e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151334764f10_wrap_pyop2_kernel_prolong       4 0.0 6.5384e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f87cf2f410_wrap_pyop2_kernel_prolong       4 0.0 7.5566e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f87cf2d9d0_wrap_pyop2_kernel_prolong       4 0.0 6.4719e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15194ab47b90_wrap_pyop2_kernel_prolong       4 0.0 7.5087e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151949f90fd0_wrap_pyop2_kernel_prolong       4 0.0 5.8977e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145984141590_wrap_pyop2_kernel_prolong       4 0.0 7.5080e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145984188510_wrap_pyop2_kernel_prolong       4 0.0 7.0865e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14644616f690_wrap_pyop2_kernel_prolong       4 0.0 7.5015e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1464461b7110_wrap_pyop2_kernel_prolong       4 0.0 6.0323e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1532e4ca9c50_wrap_pyop2_kernel_prolong       4 0.0 7.5140e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1532e4e63450_wrap_pyop2_kernel_prolong       4 0.0 5.3103e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c322d71ed0_wrap_pyop2_kernel_prolong       4 0.0 7.5178e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c322368250_wrap_pyop2_kernel_prolong       4 0.0 5.5200e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1524f779e390_wrap_pyop2_kernel_prolong       4 0.0 7.5143e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1524f77ed890_wrap_pyop2_kernel_prolong       4 0.0 6.8359e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dbdde1f810_wrap_pyop2_kernel_prolong       4 0.0 7.5044e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dbdde1f750_wrap_pyop2_kernel_prolong       4 0.0 6.4446e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15416dd0edd0_wrap_pyop2_kernel_prolong       4 0.0 7.5155e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15416dd0c290_wrap_pyop2_kernel_prolong       4 0.0 6.2280e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15293793f810_wrap_pyop2_kernel_prolong       4 0.0 7.5109e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152937978250_wrap_pyop2_kernel_prolong       4 0.0 7.6888e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152be1f072d0_wrap_pyop2_kernel_prolong       4 0.0 7.4953e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152be1f06f10_wrap_pyop2_kernel_prolong       4 0.0 5.0917e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1506b0687950_wrap_pyop2_kernel_prolong       4 0.0 7.5394e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1506b0699050_wrap_pyop2_kernel_prolong       4 0.0 5.3991e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1512b7108fd0_wrap_pyop2_kernel_prolong       4 0.0 7.4987e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1512b6ee6310_wrap_pyop2_kernel_prolong       4 0.0 5.8780e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1462ac132110_wrap_pyop2_kernel_prolong       4 0.0 7.6530e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1462ac130810_wrap_pyop2_kernel_prolong       4 0.0 6.9074e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149be4c6cd50_wrap_pyop2_kernel_prolong       4 0.0 7.5064e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149be49a3510_wrap_pyop2_kernel_prolong       4 0.0 6.2345e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e99f6dbd0_wrap_pyop2_kernel_prolong       4 0.0 7.5326e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e98cbd9d0_wrap_pyop2_kernel_prolong       4 0.0 6.9314e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151bd32e7850_wrap_pyop2_kernel_prolong       4 0.0 7.5557e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151bd32c65d0_wrap_pyop2_kernel_prolong       4 0.0 6.6170e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e04230790_wrap_pyop2_kernel_prolong       4 0.0 7.5271e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e04232290_wrap_pyop2_kernel_prolong       4 0.0 6.8489e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e94153e450_wrap_pyop2_kernel_prolong       4 0.0 7.5392e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e94153f290_wrap_pyop2_kernel_prolong       4 0.0 7.4010e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1489944d2cd0_wrap_pyop2_kernel_prolong       4 0.0 7.5066e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14898fba2910_wrap_pyop2_kernel_prolong       4 0.0 6.7708e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1512bf391b50_wrap_pyop2_kernel_prolong       4 0.0 7.5036e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1512bf4da090_wrap_pyop2_kernel_prolong       4 0.0 6.2688e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e69319250_wrap_pyop2_kernel_prolong       4 0.0 7.5100e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e69318510_wrap_pyop2_kernel_prolong       4 0.0 6.8673e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149bbc1e6650_wrap_pyop2_kernel_prolong       4 0.0 7.5089e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149bbc201bd0_wrap_pyop2_kernel_prolong       4 0.0 7.1281e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1537bf8fea50_wrap_pyop2_kernel_prolong       4 0.0 7.4955e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1537bf925ed0_wrap_pyop2_kernel_prolong       4 0.0 4.8360e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d8ef37dd90_wrap_pyop2_kernel_prolong       4 0.0 7.5454e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d8ef37d850_wrap_pyop2_kernel_prolong       4 0.0 5.6521e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce2fbb9b10_wrap_pyop2_kernel_prolong       4 0.0 7.5676e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce2fb93910_wrap_pyop2_kernel_prolong       4 0.0 5.6069e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150507360d10_wrap_pyop2_kernel_prolong       4 0.0 7.4994e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1505068e1590_wrap_pyop2_kernel_prolong       4 0.0 5.5551e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151283949290_wrap_pyop2_kernel_prolong       4 0.0 7.5014e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1512839c5290_wrap_pyop2_kernel_prolong       4 0.0 6.1659e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1534cc54e2d0_wrap_pyop2_kernel_prolong       4 0.0 7.5288e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1534cc564e50_wrap_pyop2_kernel_prolong       4 0.0 6.0834e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b0f8c69d0_wrap_pyop2_kernel_prolong       4 0.0 7.6115e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b0f8ec750_wrap_pyop2_kernel_prolong       4 0.0 5.8342e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b61ea2f10_wrap_pyop2_kernel_prolong       4 0.0 7.6191e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b620b9e90_wrap_pyop2_kernel_prolong       4 0.0 5.4568e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146bd7b82b50_wrap_pyop2_kernel_prolong       4 0.0 7.5561e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146bd7b8d8d0_wrap_pyop2_kernel_prolong       4 0.0 7.3582e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15057fe822d0_wrap_pyop2_kernel_prolong       4 0.0 7.5959e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15057fe81250_wrap_pyop2_kernel_prolong       4 0.0 5.8728e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c44a172390_wrap_pyop2_kernel_prolong       4 0.0 7.5939e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c44a171410_wrap_pyop2_kernel_prolong       4 0.0 6.5152e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1524316b29d0_wrap_pyop2_kernel_prolong       4 0.0 7.5012e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1524316b0750_wrap_pyop2_kernel_prolong       4 0.0 6.2302e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf1a293190_wrap_pyop2_kernel_prolong       4 0.0 7.6217e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf1aac2d10_wrap_pyop2_kernel_prolong       4 0.0 7.3226e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1511574db3d0_wrap_pyop2_kernel_prolong       4 0.0 7.6129e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151157524210_wrap_pyop2_kernel_prolong       4 0.0 6.0392e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1524b4b7aa50_wrap_pyop2_kernel_prolong       4 0.0 7.6265e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1524b4b7aa90_wrap_pyop2_kernel_prolong       4 0.0 5.8104e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15133fb727d0_wrap_pyop2_kernel_prolong       4 0.0 7.5631e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15133fb72050_wrap_pyop2_kernel_prolong       4 0.0 7.1111e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e4808fb90_wrap_pyop2_kernel_prolong       4 0.0 7.5010e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e480aa390_wrap_pyop2_kernel_prolong       4 0.0 5.4210e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e167951090_wrap_pyop2_kernel_prolong       4 0.0 7.5075e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e1679b5b50_wrap_pyop2_kernel_prolong       4 0.0 6.0181e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1527cbb35f10_wrap_pyop2_kernel_prolong       4 0.0 7.5785e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1527cb175ed0_wrap_pyop2_kernel_prolong       4 0.0 7.3008e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1469ac95b450_wrap_pyop2_kernel_prolong       4 0.0 7.5013e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1469ac972390_wrap_pyop2_kernel_prolong       4 0.0 5.7643e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dbac0a0450_wrap_pyop2_kernel_prolong       4 0.0 7.6072e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dbac0a1bd0_wrap_pyop2_kernel_prolong       4 0.0 6.9943e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150e595fa150_wrap_pyop2_kernel_prolong       4 0.0 7.5144e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150e595f9610_wrap_pyop2_kernel_prolong       4 0.0 6.4621e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15170b6a7f10_wrap_pyop2_kernel_prolong       4 0.0 7.6108e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15170b6a4c50_wrap_pyop2_kernel_prolong       4 0.0 6.2680e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150123e82010_wrap_pyop2_kernel_prolong       4 0.0 7.5077e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150123e81950_wrap_pyop2_kernel_prolong       4 0.0 6.9504e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c19480db10_wrap_pyop2_kernel_prolong       4 0.0 7.5385e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c194a55210_wrap_pyop2_kernel_prolong       4 0.0 6.9029e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152def3aa3d0_wrap_pyop2_kernel_prolong       4 0.0 7.5852e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152def40d610_wrap_pyop2_kernel_prolong       4 0.0 7.3770e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e245937e90_wrap_pyop2_kernel_prolong       4 0.0 7.5965e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e245944450_wrap_pyop2_kernel_prolong       4 0.0 5.7822e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d7fd42510_wrap_pyop2_kernel_prolong       4 0.0 7.6047e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d7fd659d0_wrap_pyop2_kernel_prolong       4 0.0 4.5182e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15153e262c10_wrap_pyop2_kernel_prolong       4 0.0 7.5316e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15153e24b010_wrap_pyop2_kernel_prolong       4 0.0 5.5048e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e7a44d8d0_wrap_pyop2_kernel_prolong       4 0.0 7.5387e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e7a44f150_wrap_pyop2_kernel_prolong       4 0.0 6.2408e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d5b0194d50_wrap_pyop2_kernel_prolong       4 0.0 7.5170e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d5ab742250_wrap_pyop2_kernel_prolong       4 0.0 6.4915e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145ff6b58350_wrap_pyop2_kernel_prolong       4 0.0 7.6359e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145ff6991090_wrap_pyop2_kernel_prolong       4 0.0 7.1051e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a57e0fa190_wrap_pyop2_kernel_prolong       4 0.0 7.5847e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a57e9dda50_wrap_pyop2_kernel_prolong       4 0.0 5.1425e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15055fbcf310_wrap_pyop2_kernel_prolong       4 0.0 7.5008e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15055fdfad10_wrap_pyop2_kernel_prolong       4 0.0 6.4008e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a098245a10_wrap_pyop2_kernel_prolong       4 0.0 7.6003e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a093894610_wrap_pyop2_kernel_prolong       4 0.0 7.5710e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e65849e90_wrap_pyop2_kernel_prolong       4 0.0 7.5488e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e650b13d0_wrap_pyop2_kernel_prolong       4 0.0 6.9492e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146dd25c77d0_wrap_pyop2_kernel_prolong       4 0.0 7.5699e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146dd25c4fd0_wrap_pyop2_kernel_prolong       4 0.0 5.8546e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14afed112410_wrap_pyop2_kernel_prolong       4 0.0 7.6097e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14afed136350_wrap_pyop2_kernel_prolong       4 0.0 6.1887e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac9f94a550_wrap_pyop2_kernel_prolong       4 0.0 7.5912e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac9f8cfa10_wrap_pyop2_kernel_prolong       4 0.0 6.2502e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1485ff59e1d0_wrap_pyop2_kernel_prolong       4 0.0 7.6344e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1485ff59d410_wrap_pyop2_kernel_prolong       4 0.0 5.4749e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a6db2f0a90_wrap_pyop2_kernel_prolong       4 0.0 7.5870e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a6da6a8490_wrap_pyop2_kernel_prolong       4 0.0 7.1011e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a5ea12290_wrap_pyop2_kernel_prolong       4 0.0 7.5475e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a5e9d9890_wrap_pyop2_kernel_prolong       4 0.0 6.9791e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f39f64ae90_wrap_pyop2_kernel_prolong       4 0.0 7.6012e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f39f648190_wrap_pyop2_kernel_prolong       4 0.0 6.0769e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e41cc1f850_wrap_pyop2_kernel_prolong       4 0.0 7.5780e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e41cc1d250_wrap_pyop2_kernel_prolong       4 0.0 6.1911e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a06fa9950_wrap_pyop2_kernel_prolong       4 0.0 7.5063e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a06f8c790_wrap_pyop2_kernel_prolong       4 0.0 7.3013e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d7b7c3bd0_wrap_pyop2_kernel_prolong       4 0.0 7.5223e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d7b9fda50_wrap_pyop2_kernel_prolong       4 0.0 5.4579e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e4f00d2f90_wrap_pyop2_kernel_prolong       4 0.0 7.6371e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e4f00d1fd0_wrap_pyop2_kernel_prolong       4 0.0 6.6532e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c3fc372ad0_wrap_pyop2_kernel_prolong       4 0.0 7.6101e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c3fc395c10_wrap_pyop2_kernel_prolong       4 0.0 6.8592e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1500c025a050_wrap_pyop2_kernel_prolong       4 0.0 7.5843e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1500bbf6aa50_wrap_pyop2_kernel_prolong       4 0.0 5.8518e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14967a472650_wrap_pyop2_kernel_prolong       4 0.0 7.6022e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14967b7a9e90_wrap_pyop2_kernel_prolong       4 0.0 7.6035e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14979c34a190_wrap_pyop2_kernel_prolong       4 0.0 7.5227e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14979c349590_wrap_pyop2_kernel_prolong       4 0.0 7.0292e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152eaf7db990_wrap_pyop2_kernel_prolong       4 0.0 7.6171e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152eaee89410_wrap_pyop2_kernel_prolong       4 0.0 7.8960e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14654b151550_wrap_pyop2_kernel_prolong       4 0.0 7.5959e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14654b0d2150_wrap_pyop2_kernel_prolong       4 0.0 5.0333e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a794450ad0_wrap_pyop2_kernel_prolong       4 0.0 7.5950e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a7943c5e90_wrap_pyop2_kernel_prolong       4 0.0 5.6540e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153ef07b4e50_wrap_pyop2_kernel_prolong       4 0.0 7.6225e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153ef062d5d0_wrap_pyop2_kernel_prolong       4 0.0 5.6146e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c76272d510_wrap_pyop2_kernel_prolong       4 0.0 7.6398e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c76272fe50_wrap_pyop2_kernel_prolong       4 0.0 4.6372e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1474ace6bbd0_wrap_pyop2_kernel_prolong       4 0.0 7.6337e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1474acec0e90_wrap_pyop2_kernel_prolong       4 0.0 5.5436e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15113f7f5b10_wrap_pyop2_kernel_prolong       4 0.0 7.6215e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15113f7f5a50_wrap_pyop2_kernel_prolong       4 0.0 7.3387e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1547ed238c10_wrap_pyop2_kernel_prolong       4 0.0 7.6397e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1547ed288c10_wrap_pyop2_kernel_prolong       4 0.0 5.8324e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac45716b10_wrap_pyop2_kernel_prolong       4 0.0 7.5835e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac44caa090_wrap_pyop2_kernel_prolong       4 0.0 5.8587e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152f90c52390_wrap_pyop2_kernel_prolong       4 0.0 7.5581e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152f90eca650_wrap_pyop2_kernel_prolong       4 0.0 6.6568e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15332c9e3fd0_wrap_pyop2_kernel_prolong       4 0.0 7.6337e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15332c9e1fd0_wrap_pyop2_kernel_prolong       4 0.0 5.8258e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15229eb4aa90_wrap_pyop2_kernel_prolong       4 0.0 7.6286e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15229eb490d0_wrap_pyop2_kernel_prolong       4 0.0 6.1895e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a282e0e50_wrap_pyop2_kernel_prolong       4 0.0 7.6354e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a28585050_wrap_pyop2_kernel_prolong       4 0.0 6.9333e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a4a455e90_wrap_pyop2_kernel_prolong       4 0.0 7.6223e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a491ecb10_wrap_pyop2_kernel_prolong       4 0.0 6.7407e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cb93799390_wrap_pyop2_kernel_prolong       4 0.0 7.6163e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cb937c1e50_wrap_pyop2_kernel_prolong       4 0.0 5.0383e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14739b318b10_wrap_pyop2_kernel_prolong       4 0.0 7.5557e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14739b57e010_wrap_pyop2_kernel_prolong       4 0.0 6.1685e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147363ff2bd0_wrap_pyop2_kernel_prolong       4 0.0 7.6257e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147363e91350_wrap_pyop2_kernel_prolong       4 0.0 6.0185e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f95e77b850_wrap_pyop2_kernel_prolong       4 0.0 7.5565e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f95e77be10_wrap_pyop2_kernel_prolong       4 0.0 6.4106e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed74c95cd0_wrap_pyop2_kernel_prolong       4 0.0 7.5542e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed74b00e10_wrap_pyop2_kernel_prolong       4 0.0 5.2114e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cadcc44310_wrap_pyop2_kernel_prolong       4 0.0 7.5619e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cadc451b90_wrap_pyop2_kernel_prolong       4 0.0 7.3201e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146284e9e950_wrap_pyop2_kernel_prolong       4 0.0 7.5679e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14627fba9e10_wrap_pyop2_kernel_prolong       4 0.0 6.7203e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e783635d90_wrap_pyop2_kernel_prolong       4 0.0 7.5853e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e78346e9d0_wrap_pyop2_kernel_prolong       4 0.0 5.6815e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148d462ab510_wrap_pyop2_kernel_prolong       4 0.0 7.5662e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148d46232d50_wrap_pyop2_kernel_prolong       4 0.0 6.4586e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c9fe902d0_wrap_pyop2_kernel_prolong       4 0.0 7.5944e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c9fe934d0_wrap_pyop2_kernel_prolong       4 0.0 6.4462e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f4f7bb750_wrap_pyop2_kernel_prolong       4 0.0 7.6276e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f4ed1ad50_wrap_pyop2_kernel_prolong       4 0.0 6.9736e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e176c14e10_wrap_pyop2_kernel_prolong       4 0.0 7.5807e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e176e666d0_wrap_pyop2_kernel_prolong       4 0.0 6.9286e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d4f2461d0_wrap_pyop2_kernel_prolong       4 0.0 7.6273e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d4f269a10_wrap_pyop2_kernel_prolong       4 0.0 7.5816e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1487b86291d0_wrap_pyop2_kernel_prolong       4 0.0 7.5498e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1487b84288d0_wrap_pyop2_kernel_prolong       4 0.0 5.2388e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15136a00fa50_wrap_pyop2_kernel_prolong       4 0.0 7.5764e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15136a00d5d0_wrap_pyop2_kernel_prolong       4 0.0 5.2293e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154d065629d0_wrap_pyop2_kernel_prolong       4 0.0 7.6104e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154d06589450_wrap_pyop2_kernel_prolong       4 0.0 6.1420e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151142f24bd0_wrap_pyop2_kernel_prolong       4 0.0 7.5988e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151142f4d990_wrap_pyop2_kernel_prolong       4 0.0 5.2907e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1c35f5e90_wrap_pyop2_kernel_prolong       4 0.0 7.5815e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1c2d21610_wrap_pyop2_kernel_prolong       4 0.0 5.7930e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151507f70e10_wrap_pyop2_kernel_prolong       4 0.0 7.5843e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151507febf50_wrap_pyop2_kernel_prolong       4 0.0 7.2909e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b0d5d9d90_wrap_pyop2_kernel_prolong       4 0.0 7.5503e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b0d591b50_wrap_pyop2_kernel_prolong       4 0.0 5.8449e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d20984f990_wrap_pyop2_kernel_prolong       4 0.0 7.5535e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d2098742d0_wrap_pyop2_kernel_prolong       4 0.0 6.0390e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1514c7feffd0_wrap_pyop2_kernel_prolong       4 0.0 7.5563e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1514c7fef110_wrap_pyop2_kernel_prolong       4 0.0 6.3948e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c0c42fc10_wrap_pyop2_kernel_prolong       4 0.0 7.5593e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c0c42c510_wrap_pyop2_kernel_prolong       4 0.0 5.7320e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c57aea650_wrap_pyop2_kernel_prolong       4 0.0 7.5559e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c570fc190_wrap_pyop2_kernel_prolong       4 0.0 6.2301e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c97fa647d0_wrap_pyop2_kernel_prolong       4 0.0 7.6079e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c97fa89c10_wrap_pyop2_kernel_prolong       4 0.0 7.3300e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1551b77396d0_wrap_pyop2_kernel_prolong       4 0.0 7.6045e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1551b754a850_wrap_pyop2_kernel_prolong       4 0.0 7.0786e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15536c84d850_wrap_pyop2_kernel_prolong       4 0.0 7.5647e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15536c871b10_wrap_pyop2_kernel_prolong       4 0.0 5.7285e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146777fcd950_wrap_pyop2_kernel_prolong       4 0.0 7.6044e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1467776dd010_wrap_pyop2_kernel_prolong       4 0.0 5.8272e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d30c7cea50_wrap_pyop2_kernel_prolong       4 0.0 7.5773e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d30c80b9d0_wrap_pyop2_kernel_prolong       4 0.0 6.0328e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14800e148210_wrap_pyop2_kernel_prolong       4 0.0 7.6410e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14800e131910_wrap_pyop2_kernel_prolong       4 0.0 5.8706e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1549b8c6b2d0_wrap_pyop2_kernel_prolong       4 0.0 7.6030e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1549b8e1dc90_wrap_pyop2_kernel_prolong       4 0.0 5.2157e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a01b053b90_wrap_pyop2_kernel_prolong       4 0.0 7.6020e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a007161690_wrap_pyop2_kernel_prolong       4 0.0 5.7897e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c4fb3f950_wrap_pyop2_kernel_prolong       4 0.0 7.6115e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c544c7cd0_wrap_pyop2_kernel_prolong       4 0.0 5.9443e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1542634de010_wrap_pyop2_kernel_prolong       4 0.0 7.6190e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1542634da490_wrap_pyop2_kernel_prolong       4 0.0 6.2966e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e16bb43d0_wrap_pyop2_kernel_prolong       4 0.0 7.5944e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e16bb7850_wrap_pyop2_kernel_prolong       4 0.0 6.8979e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1524e7d54450_wrap_pyop2_kernel_prolong       4 0.0 7.5708e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1524e7d1a950_wrap_pyop2_kernel_prolong       4 0.0 6.6646e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e0aa9f9c10_wrap_pyop2_kernel_prolong       4 0.0 7.5872e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e0aa0897d0_wrap_pyop2_kernel_prolong       4 0.0 6.4755e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15271be69fd0_wrap_pyop2_kernel_prolong       4 0.0 7.5712e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15271bd61510_wrap_pyop2_kernel_prolong       4 0.0 6.2176e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d3bc8e1450_wrap_pyop2_kernel_prolong       4 0.0 7.6608e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d3bc8e1410_wrap_pyop2_kernel_prolong       4 0.0 7.8495e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15465c5ced10_wrap_pyop2_kernel_prolong       4 0.0 7.6612e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15465c3b7950_wrap_pyop2_kernel_prolong       4 0.0 4.9283e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd3d05e450_wrap_pyop2_kernel_prolong       4 0.0 7.6625e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd3cedcbd0_wrap_pyop2_kernel_prolong       4 0.0 6.0341e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c9a65af90_wrap_pyop2_kernel_prolong       4 0.0 7.5521e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c9a6574d0_wrap_pyop2_kernel_prolong       4 0.0 5.9853e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad72e5f110_wrap_pyop2_kernel_prolong       4 0.0 7.5506e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad72e20110_wrap_pyop2_kernel_prolong       4 0.0 6.1724e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c254400450_wrap_pyop2_kernel_prolong       4 0.0 7.5516e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c254401a10_wrap_pyop2_kernel_prolong       4 0.0 6.2740e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150207edd310_wrap_pyop2_kernel_prolong       4 0.0 7.5509e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150207dc8090_wrap_pyop2_kernel_prolong       4 0.0 5.6594e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14816fd2e6d0_wrap_pyop2_kernel_prolong       4 0.0 7.5556e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14816ffbf310_wrap_pyop2_kernel_prolong       4 0.0 5.8844e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478065265d0_wrap_pyop2_kernel_prolong       4 0.0 7.5553e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478065740d0_wrap_pyop2_kernel_prolong       4 0.0 5.6882e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e9d3322690_wrap_pyop2_kernel_prolong       4 0.0 7.5558e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e9d3321d90_wrap_pyop2_kernel_prolong       4 0.0 7.5631e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d33032210_wrap_pyop2_kernel_prolong       4 0.0 7.5529e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d33031810_wrap_pyop2_kernel_prolong       4 0.0 5.5541e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149000fdaf10_wrap_pyop2_kernel_prolong       4 0.0 7.5972e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149001047a90_wrap_pyop2_kernel_prolong       4 0.0 6.8299e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1492a152eb10_wrap_pyop2_kernel_prolong       4 0.0 7.5566e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1492a15105d0_wrap_pyop2_kernel_prolong       4 0.0 6.5131e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152fd42060d0_wrap_pyop2_kernel_prolong       4 0.0 7.5521e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152fd4207650_wrap_pyop2_kernel_prolong       4 0.0 6.0818e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1487eed37090_wrap_pyop2_kernel_prolong       4 0.0 7.6427e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1487eed35f50_wrap_pyop2_kernel_prolong       4 0.0 5.7329e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cdb2d53510_wrap_pyop2_kernel_prolong       4 0.0 7.5480e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cdb2d50450_wrap_pyop2_kernel_prolong       4 0.0 4.6875e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e0cbbdbbd0_wrap_pyop2_kernel_prolong       4 0.0 7.5778e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e0cafd42d0_wrap_pyop2_kernel_prolong       4 0.0 6.6007e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1488740b0d10_wrap_pyop2_kernel_prolong       4 0.0 7.6683e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148874301d90_wrap_pyop2_kernel_prolong       4 0.0 5.4853e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bc327aa5d0_wrap_pyop2_kernel_prolong       4 0.0 7.5481e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bc327a9650_wrap_pyop2_kernel_prolong       4 0.0 5.9508e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d2818fb210_wrap_pyop2_kernel_prolong       4 0.0 7.5538e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d281966090_wrap_pyop2_kernel_prolong       4 0.0 7.1062e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15170fd320d0_wrap_pyop2_kernel_prolong       4 0.0 7.5697e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15170ef9e110_wrap_pyop2_kernel_prolong       4 0.0 5.0317e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150999a701d0_wrap_pyop2_kernel_prolong       4 0.0 7.6390e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150998da5590_wrap_pyop2_kernel_prolong       4 0.0 6.4992e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d6e94d3750_wrap_pyop2_kernel_prolong       4 0.0 7.6673e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d6e8369ad0_wrap_pyop2_kernel_prolong       4 0.0 6.1767e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd05404850_wrap_pyop2_kernel_prolong       4 0.0 7.5591e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd053ddfd0_wrap_pyop2_kernel_prolong       4 0.0 6.5936e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1537edf165d0_wrap_pyop2_kernel_prolong       4 0.0 7.6011e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1537ededd950_wrap_pyop2_kernel_prolong       4 0.0 7.3102e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1457f92c9e50_wrap_pyop2_kernel_prolong       4 0.0 7.5546e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1457f92ca1d0_wrap_pyop2_kernel_prolong       4 0.0 6.4380e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a125080390_wrap_pyop2_kernel_prolong       4 0.0 7.5782e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a1247601d0_wrap_pyop2_kernel_prolong       4 0.0 7.5238e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1463fa3b9b10_wrap_pyop2_kernel_prolong       4 0.0 7.5439e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1463fa3c6fd0_wrap_pyop2_kernel_prolong       4 0.0 5.0784e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f24ba51b90_wrap_pyop2_kernel_prolong       4 0.0 7.5441e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f24ba50a10_wrap_pyop2_kernel_prolong       4 0.0 5.3957e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146abe85bf90_wrap_pyop2_kernel_prolong       4 0.0 7.5500e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146abe62e910_wrap_pyop2_kernel_prolong       4 0.0 5.6974e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eed76b0bd0_wrap_pyop2_kernel_prolong       4 0.0 7.5565e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eed6c97010_wrap_pyop2_kernel_prolong       4 0.0 6.1527e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eebfa5d7d0_wrap_pyop2_kernel_prolong       4 0.0 7.5604e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eec4737d50_wrap_pyop2_kernel_prolong       4 0.0 6.4601e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d0f74d6890_wrap_pyop2_kernel_prolong       4 0.0 7.5578e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d0f7461ed0_wrap_pyop2_kernel_prolong       4 0.0 7.3013e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153a458c5bd0_wrap_pyop2_kernel_prolong       4 0.0 7.5488e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153a458d6990_wrap_pyop2_kernel_prolong       4 0.0 6.0845e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1503543f9c50_wrap_pyop2_kernel_prolong       4 0.0 7.5590e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1503541f5a90_wrap_pyop2_kernel_prolong       4 0.0 7.5926e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e37e89e50_wrap_pyop2_kernel_prolong       4 0.0 7.5927e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e37470090_wrap_pyop2_kernel_prolong       4 0.0 6.8078e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14562a2f5250_wrap_pyop2_kernel_prolong       4 0.0 7.5584e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14562a356bd0_wrap_pyop2_kernel_prolong       4 0.0 6.4429e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1543bd0c2190_wrap_pyop2_kernel_prolong       4 0.0 7.5549e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1543bd0c2850_wrap_pyop2_kernel_prolong       4 0.0 6.5921e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd871f2250_wrap_pyop2_kernel_prolong       4 0.0 7.5569e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd8717aed0_wrap_pyop2_kernel_prolong       4 0.0 7.3260e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa1e153ed0_wrap_pyop2_kernel_prolong       4 0.0 7.5570e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa1e356390_wrap_pyop2_kernel_prolong       4 0.0 7.4851e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c890e4f850_wrap_pyop2_kernel_prolong       4 0.0 7.5549e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c890e4c4d0_wrap_pyop2_kernel_prolong       4 0.0 5.8033e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153877602590_wrap_pyop2_kernel_prolong       4 0.0 7.5567e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15387760a7d0_wrap_pyop2_kernel_prolong       4 0.0 5.4905e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a94cd5a110_wrap_pyop2_kernel_prolong       4 0.0 7.5577e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a94cdba410_wrap_pyop2_kernel_prolong       4 0.0 7.7802e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ee0776210_wrap_pyop2_kernel_prolong       4 0.0 7.6318e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ee074de10_wrap_pyop2_kernel_prolong       4 0.0 6.6420e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1496ead9e350_wrap_pyop2_kernel_prolong       4 0.0 7.6072e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1496ead89b90_wrap_pyop2_kernel_prolong       4 0.0 5.0416e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f15169590_wrap_pyop2_kernel_prolong       4 0.0 7.5641e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f15169ad0_wrap_pyop2_kernel_prolong       4 0.0 7.1982e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15438b9b6050_wrap_pyop2_kernel_prolong       4 0.0 7.6728e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15438b801f50_wrap_pyop2_kernel_prolong       4 0.0 6.3926e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154df8de75d0_wrap_pyop2_kernel_prolong       4 0.0 7.5629e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154df8435bd0_wrap_pyop2_kernel_prolong       4 0.0 6.9329e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14afb0773310_wrap_pyop2_kernel_prolong       4 0.0 7.5643e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14afb0773690_wrap_pyop2_kernel_prolong       4 0.0 7.4776e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146cc46fe750_wrap_pyop2_kernel_prolong       4 0.0 7.5512e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146cbfcec250_wrap_pyop2_kernel_prolong       4 0.0 5.4833e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14824aa46410_wrap_pyop2_kernel_prolong       4 0.0 7.6389e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14824ac95450_wrap_pyop2_kernel_prolong       4 0.0 7.5781e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15145f54c190_wrap_pyop2_kernel_prolong       4 0.0 7.6716e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15145f575ed0_wrap_pyop2_kernel_prolong       4 0.0 7.4081e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14924ce4a550_wrap_pyop2_kernel_prolong       4 0.0 7.5593e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14924ce71bd0_wrap_pyop2_kernel_prolong       4 0.0 8.0109e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1496efb39490_wrap_pyop2_kernel_prolong       4 0.0 7.6908e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1496efdc9390_wrap_pyop2_kernel_prolong       4 0.0 5.5252e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1479dfdd3790_wrap_pyop2_kernel_prolong       4 0.0 7.6171e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1479dfdd0c50_wrap_pyop2_kernel_prolong       4 0.0 5.7816e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15244ffc4e10_wrap_pyop2_kernel_prolong       4 0.0 7.7333e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15244ff86e90_wrap_pyop2_kernel_prolong       4 0.0 6.3242e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1495a64b74d0_wrap_pyop2_kernel_prolong       4 0.0 7.5366e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1495a64b4310_wrap_pyop2_kernel_prolong       4 0.0 5.9911e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15290d5b6a90_wrap_pyop2_kernel_prolong       4 0.0 7.7207e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15290d5d9f90_wrap_pyop2_kernel_prolong       4 0.0 5.6451e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ced05b9a90_wrap_pyop2_kernel_prolong       4 0.0 7.6318e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ced03196d0_wrap_pyop2_kernel_prolong       4 0.0 6.1216e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a07acbb810_wrap_pyop2_kernel_prolong       4 0.0 7.5886e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a07ad3e110_wrap_pyop2_kernel_prolong       4 0.0 4.6526e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145f47f93e50_wrap_pyop2_kernel_prolong       4 0.0 7.5851e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145f47f91610_wrap_pyop2_kernel_prolong       4 0.0 5.5491e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c877965d0_wrap_pyop2_kernel_prolong       4 0.0 7.6631e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c87796190_wrap_pyop2_kernel_prolong       4 0.0 5.9667e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c695515310_wrap_pyop2_kernel_prolong       4 0.0 7.7192e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c6955179d0_wrap_pyop2_kernel_prolong       4 0.0 5.9650e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154099de7050_wrap_pyop2_kernel_prolong       4 0.0 7.6605e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154099de5150_wrap_pyop2_kernel_prolong       4 0.0 5.6746e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1477263fbf90_wrap_pyop2_kernel_prolong       4 0.0 7.6371e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147726692490_wrap_pyop2_kernel_prolong       4 0.0 5.5747e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d630331a90_wrap_pyop2_kernel_prolong       4 0.0 7.7273e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d62b89d990_wrap_pyop2_kernel_prolong       4 0.0 6.8591e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d27bed84d0_wrap_pyop2_kernel_prolong       4 0.0 7.6090e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d27bdc7e10_wrap_pyop2_kernel_prolong       4 0.0 5.9912e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ea53eab10_wrap_pyop2_kernel_prolong       4 0.0 7.6373e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ea53e9f10_wrap_pyop2_kernel_prolong       4 0.0 5.3772e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e2a24415d0_wrap_pyop2_kernel_prolong       4 0.0 7.5870e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e2a22577d0_wrap_pyop2_kernel_prolong       4 0.0 5.2573e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15261bfc7c90_wrap_pyop2_kernel_prolong       4 0.0 7.6093e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15261bfc4210_wrap_pyop2_kernel_prolong       4 0.0 5.2810e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14696fb3b7d0_wrap_pyop2_kernel_prolong       4 0.0 7.5801e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14696fb56710_wrap_pyop2_kernel_prolong       4 0.0 5.8835e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e6875629d0_wrap_pyop2_kernel_prolong       4 0.0 7.5837e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e6877dd350_wrap_pyop2_kernel_prolong       4 0.0 7.4470e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1469d4204dd0_wrap_pyop2_kernel_prolong       4 0.0 7.6231e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1469d40a24d0_wrap_pyop2_kernel_prolong       4 0.0 6.1742e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c02ebb35d0_wrap_pyop2_kernel_prolong       4 0.0 7.5965e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c02ebb1010_wrap_pyop2_kernel_prolong       4 0.0 5.8282e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15163a8ff2d0_wrap_pyop2_kernel_prolong       4 0.0 7.7500e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15163a8fed90_wrap_pyop2_kernel_prolong       4 0.0 7.6105e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d8731e46d0_wrap_pyop2_kernel_prolong       4 0.0 7.5548e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d8733ef610_wrap_pyop2_kernel_prolong       4 0.0 6.5199e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14740281f890_wrap_pyop2_kernel_prolong       4 0.0 7.5997e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147402a82290_wrap_pyop2_kernel_prolong       4 0.0 6.7703e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c56543d6d0_wrap_pyop2_kernel_prolong       4 0.0 7.6108e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c56537a450_wrap_pyop2_kernel_prolong       4 0.0 6.9566e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ee8e29c10_wrap_pyop2_kernel_prolong       4 0.0 7.5963e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ee8e28b90_wrap_pyop2_kernel_prolong       4 0.0 7.6443e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eaf081d9d0_wrap_pyop2_kernel_prolong       4 0.0 7.5382e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eaf0a999d0_wrap_pyop2_kernel_prolong       4 0.0 6.0224e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150de3966290_wrap_pyop2_kernel_prolong       4 0.0 7.5818e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150de398a110_wrap_pyop2_kernel_prolong       4 0.0 5.4825e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cbac259790_wrap_pyop2_kernel_prolong       4 0.0 7.7252e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cbac20edd0_wrap_pyop2_kernel_prolong       4 0.0 5.4596e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154a1b611950_wrap_pyop2_kernel_prolong       4 0.0 7.6074e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154a1b610550_wrap_pyop2_kernel_prolong       4 0.0 6.8934e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b92f541e10_wrap_pyop2_kernel_prolong       4 0.0 7.5739e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b92f541250_wrap_pyop2_kernel_prolong       4 0.0 6.4317e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15408a2aa990_wrap_pyop2_kernel_prolong       4 0.0 7.7324e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15408a2c1b50_wrap_pyop2_kernel_prolong       4 0.0 6.5832e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1cde0c310_wrap_pyop2_kernel_prolong       4 0.0 7.6040e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1cddcbf50_wrap_pyop2_kernel_prolong       4 0.0 5.5654e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e3310416d0_wrap_pyop2_kernel_prolong       4 0.0 7.5389e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e330678250_wrap_pyop2_kernel_prolong       4 0.0 6.3278e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153a49c83b10_wrap_pyop2_kernel_prolong       4 0.0 7.5953e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153a49c82390_wrap_pyop2_kernel_prolong       4 0.0 6.9088e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b71a789a50_wrap_pyop2_kernel_prolong       4 0.0 7.6378e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b719e1da90_wrap_pyop2_kernel_prolong       4 0.0 6.9715e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ea50c68110_wrap_pyop2_kernel_prolong       4 0.0 7.6674e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ea50e5d410_wrap_pyop2_kernel_prolong       4 0.0 7.6264e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154149aa1dd0_wrap_pyop2_kernel_prolong       4 0.0 7.7238e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154149aa37d0_wrap_pyop2_kernel_prolong       4 0.0 6.6348e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1476dfb71a90_wrap_pyop2_kernel_prolong       4 0.0 7.6184e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1476de889010_wrap_pyop2_kernel_prolong       4 0.0 6.8508e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c115201f90_wrap_pyop2_kernel_prolong       4 0.0 7.6059e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c115200ed0_wrap_pyop2_kernel_prolong       4 0.0 6.5782e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e2d69f6610_wrap_pyop2_kernel_prolong       4 0.0 7.5738e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e2d69c8a10_wrap_pyop2_kernel_prolong       4 0.0 6.6785e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1315d97d0_wrap_pyop2_kernel_prolong       4 0.0 7.6193e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1315bb2d0_wrap_pyop2_kernel_prolong       4 0.0 6.6276e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151627344bd0_wrap_pyop2_kernel_prolong       4 0.0 7.5501e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15162738f250_wrap_pyop2_kernel_prolong       4 0.0 6.1310e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a47767090_wrap_pyop2_kernel_prolong       4 0.0 7.6517e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a477821d0_wrap_pyop2_kernel_prolong       4 0.0 6.3595e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f32da76ad0_wrap_pyop2_kernel_prolong       4 0.0 7.6595e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f32da76fd0_wrap_pyop2_kernel_prolong       4 0.0 6.3160e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14702f856a90_wrap_pyop2_kernel_prolong       4 0.0 7.5987e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14702f8548d0_wrap_pyop2_kernel_prolong       4 0.0 5.9543e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1543216f16d0_wrap_pyop2_kernel_prolong       4 0.0 7.5729e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1543216c9e90_wrap_pyop2_kernel_prolong       4 0.0 5.1310e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1489638ce690_wrap_pyop2_kernel_prolong       4 0.0 7.7519e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1489638cde10_wrap_pyop2_kernel_prolong       4 0.0 7.5213e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1503d954d1d0_wrap_pyop2_kernel_prolong       4 0.0 7.5980e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1503d95e4c10_wrap_pyop2_kernel_prolong       4 0.0 5.5330e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14878f77d8d0_wrap_pyop2_kernel_prolong       4 0.0 7.6270e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14878f6e42d0_wrap_pyop2_kernel_prolong       4 0.0 7.3403e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15491467ea50_wrap_pyop2_kernel_prolong       4 0.0 7.6529e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1549148ba010_wrap_pyop2_kernel_prolong       4 0.0 6.4274e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac031efbd0_wrap_pyop2_kernel_prolong       4 0.0 7.5535e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac031ee050_wrap_pyop2_kernel_prolong       4 0.0 7.3038e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15129a296a90_wrap_pyop2_kernel_prolong       4 0.0 7.5402e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15129a27c690_wrap_pyop2_kernel_prolong       4 0.0 5.0236e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1466992ab210_wrap_pyop2_kernel_prolong       4 0.0 7.5596e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146699c92390_wrap_pyop2_kernel_prolong       4 0.0 6.0074e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e533c5f10_wrap_pyop2_kernel_prolong       4 0.0 7.5548e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e532524d0_wrap_pyop2_kernel_prolong       4 0.0 6.2502e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c3028f6a10_wrap_pyop2_kernel_prolong       4 0.0 7.5694e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c3027e2450_wrap_pyop2_kernel_prolong       4 0.0 6.4525e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee9f91d450_wrap_pyop2_kernel_prolong       4 0.0 7.6256e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee9f930f10_wrap_pyop2_kernel_prolong       4 0.0 5.2483e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e56d84ebd0_wrap_pyop2_kernel_prolong       4 0.0 7.6420e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e56cfa2290_wrap_pyop2_kernel_prolong       4 0.0 6.6056e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154a24d10cd0_wrap_pyop2_kernel_prolong       4 0.0 7.5362e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154a24cbc9d0_wrap_pyop2_kernel_prolong       4 0.0 5.8657e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147440e82710_wrap_pyop2_kernel_prolong       4 0.0 7.5550e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147440e80c10_wrap_pyop2_kernel_prolong       4 0.0 5.4678e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f70ce83590_wrap_pyop2_kernel_prolong       4 0.0 7.6466e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f70d255b90_wrap_pyop2_kernel_prolong       4 0.0 6.3762e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e612809b10_wrap_pyop2_kernel_prolong       4 0.0 7.5579e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e612809450_wrap_pyop2_kernel_prolong       4 0.0 6.2621e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b1fb4cf50_wrap_pyop2_kernel_prolong       4 0.0 7.5404e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b1fb310d0_wrap_pyop2_kernel_prolong       4 0.0 5.6807e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e6afe52650_wrap_pyop2_kernel_prolong       4 0.0 7.6548e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e6afe9d2d0_wrap_pyop2_kernel_prolong       4 0.0 5.8499e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dddcdd2a90_wrap_pyop2_kernel_prolong       4 0.0 7.6353e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dddcdb3350_wrap_pyop2_kernel_prolong       4 0.0 6.1949e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1509c8daaf90_wrap_pyop2_kernel_prolong       4 0.0 7.5478e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1509c8daa190_wrap_pyop2_kernel_prolong       4 0.0 4.9970e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a02dcca450_wrap_pyop2_kernel_prolong       4 0.0 7.6313e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a02dd49410_wrap_pyop2_kernel_prolong       4 0.0 6.1505e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150c62f652d0_wrap_pyop2_kernel_prolong       4 0.0 7.5833e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150c62f288d0_wrap_pyop2_kernel_prolong       4 0.0 6.4002e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154df37bdc10_wrap_pyop2_kernel_prolong       4 0.0 7.5390e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154df2e3e650_wrap_pyop2_kernel_prolong       4 0.0 6.6589e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b3e8f9450_wrap_pyop2_kernel_prolong       4 0.0 7.5399e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b3e91edd0_wrap_pyop2_kernel_prolong       4 0.0 6.9339e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1496e69d9dd0_wrap_pyop2_kernel_prolong       4 0.0 7.5587e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1496e75d9bd0_wrap_pyop2_kernel_prolong       4 0.0 6.8694e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef76566f10_wrap_pyop2_kernel_prolong       4 0.0 7.5729e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef767a9590_wrap_pyop2_kernel_prolong       4 0.0 6.4233e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da17f837d0_wrap_pyop2_kernel_prolong       4 0.0 7.5446e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da17fa6110_wrap_pyop2_kernel_prolong       4 0.0 6.1864e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a218c6550_wrap_pyop2_kernel_prolong       4 0.0 7.5494e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a21926150_wrap_pyop2_kernel_prolong       4 0.0 6.6971e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c96007ad0_wrap_pyop2_kernel_prolong       4 0.0 7.5608e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c9626ead0_wrap_pyop2_kernel_prolong       4 0.0 5.7710e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a21c60d490_wrap_pyop2_kernel_prolong       4 0.0 7.5700e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a21c60fed0_wrap_pyop2_kernel_prolong       4 0.0 6.9096e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a26d8666d0_wrap_pyop2_kernel_prolong       4 0.0 7.6759e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a26db65850_wrap_pyop2_kernel_prolong       4 0.0 6.6973e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bdc2aeb590_wrap_pyop2_kernel_prolong       4 0.0 7.5457e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bdc2d8ccd0_wrap_pyop2_kernel_prolong       4 0.0 7.8416e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14abfdcb28d0_wrap_pyop2_kernel_prolong       4 0.0 7.5835e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14abfdcb1910_wrap_pyop2_kernel_prolong       4 0.0 6.0415e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1548e9e80990_wrap_pyop2_kernel_prolong       4 0.0 7.5863e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1548e9ec3310_wrap_pyop2_kernel_prolong       4 0.0 6.0333e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d8f440b90_wrap_pyop2_kernel_prolong       4 0.0 7.5839e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d8f440c10_wrap_pyop2_kernel_prolong       4 0.0 7.0929e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1463b0dff690_wrap_pyop2_kernel_prolong       4 0.0 7.6516e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1463b10314d0_wrap_pyop2_kernel_prolong       4 0.0 5.0968e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1454ee30a490_wrap_pyop2_kernel_prolong       4 0.0 7.5735e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1454ee303e50_wrap_pyop2_kernel_prolong       4 0.0 6.9171e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149218f45f90_wrap_pyop2_kernel_prolong       4 0.0 7.5807e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149218392dd0_wrap_pyop2_kernel_prolong       4 0.0 7.1157e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c04f7ea90_wrap_pyop2_kernel_prolong       4 0.0 7.6477e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c04f7e210_wrap_pyop2_kernel_prolong       4 0.0 6.4565e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c6b4a76690_wrap_pyop2_kernel_prolong       4 0.0 7.6683e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c6b4a75dd0_wrap_pyop2_kernel_prolong       4 0.0 5.7590e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153324bb10d0_wrap_pyop2_kernel_prolong       4 0.0 7.6703e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153324bb0510_wrap_pyop2_kernel_prolong       4 0.0 6.4265e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1501f2121d90_wrap_pyop2_kernel_prolong       4 0.0 7.5601e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1501f23b9a10_wrap_pyop2_kernel_prolong       4 0.0 4.8688e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497dcfd3bd0_wrap_pyop2_kernel_prolong       4 0.0 7.6254e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497dc4aba50_wrap_pyop2_kernel_prolong       4 0.0 7.0125e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1496c594d450_wrap_pyop2_kernel_prolong       4 0.0 7.6505e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1496c59c09d0_wrap_pyop2_kernel_prolong       4 0.0 6.6515e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a6de2edbd0_wrap_pyop2_kernel_prolong       4 0.0 7.6325e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a6de2ef610_wrap_pyop2_kernel_prolong       4 0.0 6.8115e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478817a4850_wrap_pyop2_kernel_prolong       4 0.0 7.6140e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478817a7390_wrap_pyop2_kernel_prolong       4 0.0 7.1304e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e21b13e250_wrap_pyop2_kernel_prolong       4 0.0 7.6636e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e21bb19cd0_wrap_pyop2_kernel_prolong       4 0.0 5.8935e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148dc5012090_wrap_pyop2_kernel_prolong       4 0.0 7.5668e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148dc5e58a50_wrap_pyop2_kernel_prolong       4 0.0 6.9430e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153d87b333d0_wrap_pyop2_kernel_prolong       4 0.0 7.6756e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153d87b794d0_wrap_pyop2_kernel_prolong       4 0.0 6.0892e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15197672dcd0_wrap_pyop2_kernel_prolong       4 0.0 7.5980e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151976705b10_wrap_pyop2_kernel_prolong       4 0.0 5.9790e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c8558e5d0_wrap_pyop2_kernel_prolong       4 0.0 7.6625e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c8424aa50_wrap_pyop2_kernel_prolong       4 0.0 7.5928e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146b6daf8a50_wrap_pyop2_kernel_prolong       4 0.0 7.5347e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146b6db39310_wrap_pyop2_kernel_prolong       4 0.0 5.7846e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a86f095f10_wrap_pyop2_kernel_prolong       4 0.0 7.6178e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a86f095850_wrap_pyop2_kernel_prolong       4 0.0 6.9228e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1466a3d211d0_wrap_pyop2_kernel_prolong       4 0.0 7.6317e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1466a3161dd0_wrap_pyop2_kernel_prolong       4 0.0 6.9045e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1544d2919190_wrap_pyop2_kernel_prolong       4 0.0 7.6740e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1544d1ff78d0_wrap_pyop2_kernel_prolong       4 0.0 6.7263e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1525beb5d050_wrap_pyop2_kernel_prolong       4 0.0 7.5389e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1525beb5f090_wrap_pyop2_kernel_prolong       4 0.0 6.6932e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146672ee0ed0_wrap_pyop2_kernel_prolong       4 0.0 7.5414e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146672ee0890_wrap_pyop2_kernel_prolong       4 0.0 6.8835e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a56b137ad0_wrap_pyop2_kernel_prolong       4 0.0 7.6576e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a56b135490_wrap_pyop2_kernel_prolong       4 0.0 7.5994e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided        130 1.0 4.9716e-02 4.8 0.00e+00 0.0 3.5e+05 4.0e+00 1.3e+02  0  0  1  0  1   0  0  1  0  2    -0
SFSetGraph           130 1.0 5.6696e-03 6.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              130 1.0 5.8569e-02 2.4 0.00e+00 0.0 7.1e+05 2.0e+02 1.3e+02  0  0  1  0  1   0  0  2  0  2    -0
SFPack           4595590 1.1 4.7127e+00 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack         4595590 1.1 2.4320e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             5078 1.0 6.7880e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecSet             40623 1.0 2.1612e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecAXPY            10156 1.0 1.8260e+01 2.0 8.19e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  2  0  0  0 183697
VecAYPX            10156 1.0 1.6762e+01 2.0 4.09e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  1  0  0  0 100059
VecScatterBegin  4595590 1.1 6.1700e+01 1.3 0.00e+00 0.0 3.7e+07 7.5e+04 0.0e+00  3  0 63 44  0   6  0 95 100  0    -0
VecScatterEnd    4595590 1.1 5.8321e+01 17.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
MatMult            10156 1.0 4.2657e+02 1.2 2.90e+11 1.1 2.3e+07 1.2e+05 0.0e+00 21 14 39 44  0  40 59 59 100  0 278407
MatMultAdd          5078 1.0 2.5379e+01 1.1 1.23e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 198252
MatMultTranspose    5078 1.0 2.1694e+01 1.7 1.23e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 231926
MatSolve         2280022 1.1 4.0820e+02 1.2 1.56e+11 1.2 1.6e+07 7.4e+02 6.5e+02 20  7 27  0  3  38 29 41  0 11 144452
MatLUFactorNum     81760 1.1 2.0198e+01 1.2 2.34e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  5  0  0  0 474626
MatResidual         5078 1.0 2.3544e+02 1.3 1.47e+11 1.1 1.1e+07 1.2e+05 0.0e+00 11  7 20 22  0  21 30 30 50  0 255771
MatAssemblyBegin   81760 1.1 1.7538e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyEnd     81760 1.1 1.9530e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats     365 1.0 4.7472e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
PCSetUp            82125 1.1 6.7717e+01 1.2 2.34e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3  1  0  0  0   6  5  0  0  0 141565
PCApply            15234 1.0 5.5077e+02 1.2 1.79e+11 1.2 1.6e+07 7.4e+02 6.5e+02 28  8 27  0  3  52 34 41  0 11 124464
PCApplyOnBlocks  2274944 1.1 2.9446e+02 1.3 1.66e+11 1.1 0.0e+00 0.0e+00 0.0e+00 14  8  0  0  0  26 34  0  0  0 231449
KSPSetUp           81760 1.1 7.2209e-03 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve           15234 1.0 7.6994e+02 1.1 3.35e+11 1.1 2.7e+07 5.1e+04 5.7e+03 39 15 47 22 26  75 65 70 50 100 171604
MGSmooth Level 0    5078 1.0 1.5233e+02 1.2 1.27e+10 52.7 1.6e+07 7.4e+02 5.7e+03  7  0 27  0 26  14  0 41  0 100  2616
MGSmooth Level 1   10156 1.0 6.3617e+02 1.2 3.22e+11 1.1 1.1e+07 1.2e+05 0.0e+00 32 15 20 22  0  61 65 30 50  0 207062
MGResid Level 1     5078 1.0 2.3546e+02 1.3 1.47e+11 1.1 1.1e+07 1.2e+05 0.0e+00 11  7 20 22  0  21 30 30 50  0 255747
MGInterp Level 1   10156 1.0 4.6836e+01 1.3 2.46e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  1  0  0  0   4  5  0  0  0 214852
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   183            183
              Viewer     3              3
         PetscRandom    24             24
           Index Set  4427           4427
   IS L to G Mapping   431            431
             Section   472            472
   Star Forest Graph   642            772
              Vector  1908           1908
              Matrix  1251           1251
      Preconditioner   230            230
       Krylov Solver   252            252
     DMKSP interface     1              1
                SNES     1              1
              DMSNES     1              1
      SNESLineSearch     1              1
    Distributed Mesh   134            134
            DM Label   333            333
          Quadrature   144            144
      Mesh Transform     2              2
    GraphPartitioner    41             41
     Discrete System   189            189
           Weak Form   189            189
        Linear Space    12             12
          Dual Space    52             52
            FE Space     8              8

--- Event Stage 1: MG Apply

           Index Set   260            260
   Star Forest Graph   130              0
              Vector   130            130
========================================================================================================================
Average time to get PetscTime(): 2.57e-08
Average time for MPI_Barrier(): 1.17788e-05
Average time for zero size MPI_Send(): 2.61599e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murr_seasonal/vlumping_linesmooth/h4.profile # (source: code)
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

