****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0593.gadi.nci.org.au with 832 processes, by sg8812 on Thu Aug 20 23:57:10 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           1.656e+03     1.000   1.656e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                1.373e+12     1.154   1.285e+12  1.069e+15
Flops/sec:            8.289e+08     1.154   7.759e+08  6.455e+11
MPI Msg Count:        3.920e+05     3.616   2.028e+05  1.687e+08
MPI Msg Len (bytes):  1.388e+10     2.798   5.081e+04  8.575e+12
MPI Reductions:       2.829e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 8.3425e+02  50.4%  8.0956e+14  75.7%  4.721e+07  28.0%  1.082e+05       59.6%  2.022e+04  71.5%
 1:        MG Apply: 8.2153e+02  49.6%  2.5932e+14  24.3%  1.215e+08  72.0%  2.852e+04       40.4%  8.055e+03  28.5%

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

BuildTwoSided       1671 1.0 6.6446e+01 3.2 0.00e+00 0.0 7.6e+05 4.0e+00 1.4e+03  3  0  0  0  5   6  0  2  0  7    -0
BuildTwoSidedF      1362 1.0 6.6913e+01 2.6 0.00e+00 0.0 1.1e+06 1.3e+06 1.4e+03  3  0  1 16  5   6  0  2 27  7    -0
SFSetGraph           315 1.1 1.4452e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              309 1.1 4.1699e+00 65.1 0.00e+00 0.0 4.4e+05 1.4e+03 8.1e+01  0  0  0  0  0   0  0  1  0  0    -0
SFBcastBegin         818 1.0 3.9143e-01 2.9 0.00e+00 0.0 3.6e+06 8.4e+04 0.0e+00  0  0  2  4  0   0  0  8  6  0    -0
SFBcastEnd           818 1.0 1.6387e+01 103.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        331 1.0 1.0020e-01 6.5 0.00e+00 0.0 1.5e+06 9.8e+04 0.0e+00  0  0  1  2  0   0  0  3  3  0    -0
SFReduceEnd          331 1.0 2.5926e+00 39.2 3.02e+07 2.8 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  7203
SFFetchOpBegin         4 1.0 2.9736e-05 5.1 0.00e+00 0.0 1.4e+04 8.4e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           4 1.0 1.1524e-03 40.5 0.00e+00 0.0 1.4e+04 8.4e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          3 1.0 2.9272e-03 4.0 0.00e+00 0.0 8.0e+03 3.2e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         36 1.0 1.9966e-02 1.4 0.00e+00 0.0 3.5e+05 1.1e+02 4.2e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           37 1.0 1.2117e-02 4.5 0.00e+00 0.0 1.7e+05 5.3e+01 3.7e+01  0  0  0  0  0   0  0  0  0  0    -0
SFRemoteOff            1 1.0 6.2741e-05 3.5 0.00e+00 0.0 4.8e+03 1.9e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack           1142812 1.1 2.5895e+00 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack         1142816 1.1 2.2937e-01 2.8 3.02e+07 2.8 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 81413
VecDot               225 1.0 1.2236e+00 3.3 1.85e+08 1.1 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  1   0  0  0  0  1 119678
VecMDot             7884 1.0 9.3002e+01 2.2 3.56e+10 1.1 0.0e+00 0.0e+00 7.9e+03  4  3  0  0 28   8  3  0  0 39 303253
VecNorm             9084 1.0 2.1935e+01 2.5 5.49e+09 1.1 0.0e+00 0.0e+00 9.1e+03  1  0  0  0 32   2  1  0  0 45 198612
VecScale            8559 1.0 1.8427e+00 1.2 2.53e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 1089363
VecCopy             2026 1.0 2.4869e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              6300 1.0 4.8949e+00 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecAXPY              675 1.0 7.6202e-01 1.4 3.70e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 384645
VecWAXPY             225 1.0 4.3948e-01 1.2 9.23e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 166595
VecMAXPY            8559 1.0 5.0203e+01 1.1 4.03e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3  3  0  0  0   6  4  0  0  0 635908
VecScatterBegin  1141659 1.1 1.5289e+01 1.5 0.00e+00 0.0 3.8e+07 7.7e+04 0.0e+00  1  0 23 35  0   2  0 81 58  0    -0
VecScatterEnd    1141659 1.1 4.2582e+01 42.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecReduceArith       450 1.0 3.5099e-01 3.0 3.69e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 834386
VecReduceComm        225 1.0 4.8269e-01 20.6 0.00e+00 0.0 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  1   0  0  0  0  1    -0
VecNormalize        4869 1.0 1.3184e+01 2.6 3.05e+09 1.1 0.0e+00 0.0e+00 4.9e+03  1  0  0  0 17   1  0  0  0 24 183559
MatMult             8109 1.0 2.5115e+02 1.2 1.73e+11 1.1 3.8e+07 7.7e+04 0.0e+00 14 13 23 35  0  28 17 81 58  0 545326
MatSolve          566694 1.1 6.8440e+01 1.6 3.55e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3  3  0  0  0   6  3  0  0  0 411342
MatLUFactorSym       229 1.1 1.4170e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum     51526 1.1 1.2600e+01 1.2 1.47e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   1  1  0  0  0 924808
MatILUFactorSym        1 1.0 1.0968e-04 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin   53598 1.1 7.0513e+01 2.1 0.00e+00 0.0 1.1e+06 1.3e+06 1.4e+03  3  0  1 16  5   6  0  2 27  7    -0
MatAssemblyEnd     53598 1.1 1.8570e+01 5.4 2.33e+08 0.0 2.8e+04 8.8e+03 4.4e+01  1  0  0  0  0   1  0  0  0  0  4525
MatGetRowIJ          229 1.1 4.8619e-05 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats     225 1.0 2.9146e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 2.3e+02  2  0  0  0  1   3  0  0  0  1    -0
MatGetOrdering       229 1.1 4.2199e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       675 1.0 8.2115e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
MatTranspose           5 1.0 1.4310e-02 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          5 1.0 1.5101e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        451 1.0 4.8178e+00 1.4 6.65e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  1  0  0  0 1092709
MatPtAPSymbolic        2 1.0 2.1464e-01 1.0 0.00e+00 0.0 2.8e+04 8.8e+04 1.4e+01  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       450 1.0 4.1403e+01 1.0 2.66e+10 1.1 2.1e+06 1.6e+05 4.6e+02  2  2  1  4  2   5  3  5  7  2 508677
MatGetLocalMat       452 1.0 1.8423e+00 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        452 1.0 1.0454e+00 2.3 0.00e+00 0.0 2.1e+06 1.6e+05 0.0e+00  0  0  1  4  0   0  0  5  7  0    -0
MatSetPreallCOO       16 1.0 4.9675e-05 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       16 1.0 2.6200e-05 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp              225 1.0 3.1101e+02 1.0 1.68e+11 1.1 2.3e+07 6.3e+04 1.1e+04 19 12 14 17 37  37 16 49 29 52 427411
PCApply             3465 1.0 8.4395e+02 1.1 3.28e+11 1.1 1.2e+08 2.9e+04 8.1e+03 50 24 72 40 28 Multiple stages 307264
PCApplyOnBlocks   566694 1.1 8.2184e+01 1.5 5.02e+10 1.1 0.0e+00 0.0e+00 0.0e+00  4  4  0  0  0   8  5  0  0  0 484231
KSPSetUp             225 1.0 1.4315e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             225 1.0 1.0393e+03 1.0 4.87e+11 1.1 1.4e+08 3.8e+04 1.5e+04 63 36 82 61 54 Multiple stages 370887
KSPGMRESOrthog      7884 1.0 1.3343e+02 1.6 7.11e+10 1.1 0.0e+00 0.0e+00 7.9e+03  7  5  0  0 28  13  7  0  0 39 422729
DMRefine               1 1.0 2.2636e-01 1.0 1.04e+03 1.0 2.9e+04 4.1e+01 3.0e+01  0  0  0  0  0   0  0  0  0  0     4
DMPlexCreateGmsh       1 1.0 1.0839e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 7.5653e+00 69.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Partition         3 1.0 4.6713e-01 1.0 0.00e+00 0.0 1.1e+05 9.3e+01 3.8e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         3 1.0 5.6890e-02 1.0 0.00e+00 0.0 3.9e+05 1.1e+02 1.8e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 1.8931e-02 3727.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       3 1.0 6.7122e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        3 1.0 5.2229e-03 1.5 0.00e+00 0.0 2.1e+04 8.0e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       3 1.0 2.1968e-03 2.2 0.00e+00 0.0 1.0e+04 3.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          3 1.0 7.3230e-03 1.3 0.00e+00 0.0 1.1e+04 4.5e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          15 1.0 5.6492e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 4.9260e-01 1.0 0.00e+00 0.0 3.4e+04 6.2e+02 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        3 1.0 7.4581e-03 1.1 0.00e+00 0.0 6.2e+04 1.9e+02 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       3 1.0 3.0607e-02 1.0 0.00e+00 0.0 2.0e+05 1.1e+02 1.1e+02  0  0  0  0  0   0  0  0  0  1    -0
DMPlexDistOvrlp        2 1.0 4.4265e-02 1.0 0.00e+00 0.0 4.8e+05 7.8e+01 1.6e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistField        5 1.0 9.8368e-03 1.2 0.00e+00 0.0 9.2e+04 7.0e+01 1.4e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         1 1.0 2.2766e-04 1.2 0.00e+00 0.0 2.4e+04 3.4e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify        23 1.0 4.5590e-02 15.6 0.00e+00 0.0 0.0e+00 0.0e+00 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      23 1.0 4.2379e-03 85.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          1 1.0 5.1304e-05 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          1 1.0 3.1064e-03 1.8 0.00e+00 0.0 1.4e+04 3.2e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          1 1.0 8.8524e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          1 1.0 3.0323e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             1 1.0 6.5503e-04 1.5 0.00e+00 0.0 1.4e+04 3.2e+01 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         1 1.0 6.1821e-05 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         1 1.0 6.2848e-04 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMSwarmSetSizes        2 1.0 4.4704e-05 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             75 1.0 1.5793e+03 1.0 1.37e+12 1.2 1.7e+08 5.1e+04 2.8e+04 95 100 99 100 98 Multiple stages 676775
SNESSetUp              1 1.0 5.7135e-05 6.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     300 1.0 3.2265e+01 1.2 2.76e+11 1.2 3.2e+06 1.1e+05 0.0e+00  2 20  2  4  0   4 26  7  7  0 6555326
SNESJacobianEval     225 1.0 1.8538e+02 1.0 4.34e+11 1.2 2.1e+06 6.8e+05 9.0e+02 11 31  1 17  3  22 41  5 29  4 1795625
SNESLineSearch       225 1.0 2.7848e+01 1.0 2.15e+11 1.2 3.2e+06 1.1e+05 9.0e+02  2 15  2  4  3   3 20  7  7  4 5911482
DualSpaceSetUp         4 1.0 3.5742e-03 1.4 5.40e+01 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    13
FESetUp                4 1.0 1.9444e-01 16.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 1.6520e+03 1.0 1.37e+12 1.2 1.7e+08 5.1e+04 2.8e+04 100 100 100 100 100 Multiple stages 647038
firedrake.__init__       1 1.0 1.7027e+01 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
CreateMesh             2 1.0 8.1681e+00 11.5 0.00e+00 0.0 9.4e+05 1.0e+02 3.2e+02  0  0  1  0  1   0  0  2  0  2    -0
firedrake.mesh._from_gmsh       1 1.0 7.5660e+00 69.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       2 1.0 1.3866e-03 40.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       2 1.0 5.2160e-06 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        4 1.0 6.4882e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          2 1.0 1.1156e-03 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      24 1.0 3.7797e-02 1.1 0.00e+00 0.0 3.8e+04 1.2e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      29 1.0 1.9530e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      26 1.0 3.5212e-02 1.1 0.00e+00 0.0 3.8e+04 1.2e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      25 1.0 3.2375e-02 1.2 0.00e+00 0.0 3.8e+04 1.2e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      25 1.0 3.2232e-02 1.2 0.00e+00 0.0 3.8e+04 1.2e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      50 1.0 1.4150e-02 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       4 1.0 1.1486e-02 1.9 0.00e+00 0.0 1.9e+04 1.0e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       8 1.0 5.8943e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      16 1.0 1.9349e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      66 1.0 3.0645e-02 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          2 1.0 2.3628e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       2 1.0 1.9740e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       5 1.0 6.4370e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       4 1.0 1.0662e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       2 1.0 2.3577e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     648 1.0 9.0679e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      2418 1.0 1.8216e+02 1.2 7.11e+11 1.2 2.9e+06 1.0e+05 2.6e+01 10 51  2  4  0  20 67  6  6  0 2988323
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       4 1.0 2.3173e+00 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    4836 1.0 2.8320e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      19 1.0 1.1925e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
GlobalKernel: generate loopy      19 0.0 1.3434e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      19 0.0 9.2330e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      20 1.0 2.0801e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.load      20 1.0 2.0800e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      20 1.0 1.1094e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.make_so      20 1.0 1.0871e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
ParLoopRednBegin    2418 1.0 7.9788e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      2418 1.0 6.7141e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       2 1.0 7.4794e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong       2 1.0 8.4989e+00 1.0 1.11e+07 1.1 4.8e+04 1.5e+04 7.0e+00  1  0  0  0  0   1  0  0  0  0  1034
firedrake.interpolation.interpolate      16 1.0 5.6323e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      13 1.0 2.6295e+01 1.0 8.29e+07 1.1 1.8e+05 2.4e+04 1.1e+02  2  0  0  0  0   3  0  0  0  1  2501
firedrake.formmanipulation.split_form      14 1.0 1.8380e-01 57.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      14 1.0 1.8038e-01 1123.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      14 1.0 4.4719e-01 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       8 1.3 4.0574e-01 3.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     618 1.0 5.5756e+00 21.5 0.00e+00 0.0 3.0e+06 1.0e+05 3.0e+00  0  0  2  4  0   0  0  6  6  0    -0
Parloop_Cells_wrap_expression_kernel      28 1.0 7.1863e+00 1.0 8.29e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  9150
firedrake.halo.Halo.global_to_local_end     618 1.0 1.4341e+01 120.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       2 1.0 7.1054e+00 44.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd934cf0d0_wrap_pyop2_kernel_prolong       4 0.0 8.0923e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 3.8907e+00 1.0 6.94e+07 1.1 7.1e+04 5.4e+04 1.1e+01  0  0  0  0  0   0  0  0  0  0 14135
firedrake.function.Function.assign     314 1.0 1.8337e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     313 1.0 1.7555e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.4525e-04 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate     154 1.0 1.9755e-03 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 7.2055e-05 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.5218e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.9462e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.2666e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 7.3653e+00 1.0 0.00e+00 0.0 2.8e+04 4.3e+05 2.3e+01  0  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 7.1476e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 3.0219e-04 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.1675e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.1675e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
CreateSparsity         3 1.0 4.1694e+00 1.1 0.00e+00 0.0 4.3e+04 1.4e+05 3.2e+01  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         3 1.0 5.6037e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      75 1.0 1.5796e+03 1.0 1.37e+12 1.2 1.7e+08 5.1e+04 2.8e+04 95 100 99 100 98 Multiple stages 676649
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 4.0469e-01 1564.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 1.1287e-05 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 4.0464e-01 1880.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 4.0461e-01 2171.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     600 1.0 9.2775e+00 1.6 7.00e+10 1.1 0.0e+00 0.0e+00 0.0e+00  0  5  0  0  0   1  7  0  0  0 5981935
Parloop_Cells_wrap_form0_exterior_facet_top_integral     600 1.0 1.0088e+00 1.0 9.10e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  7150
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral     600 1.0 1.2703e+00 1.1 5.90e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 27188
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     600 1.0 5.5995e+00 1.2 6.72e+10 1.1 0.0e+00 0.0e+00 0.0e+00  0  5  0  0  0   1  7  0  0  0 9519121
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     600 1.0 1.1799e+01 1.3 1.39e+11 1.3 0.0e+00 0.0e+00 0.0e+00  1 10  0  0  0   1 13  0  0  0 8699925
firedrake.halo.Halo.local_to_global_begin     300 1.0 1.1338e-01 5.2 0.00e+00 0.0 1.4e+06 1.1e+05 0.0e+00  0  0  1  2  0   0  0  3  3  0    -0
firedrake.halo.Halo.local_to_global_end     300 1.0 2.5956e+00 37.4 3.02e+07 2.8 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  7194
Parloop_Cells_wrap_form00_cell_integral     450 1.0 3.2096e+01 1.5 9.80e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  7  0  0  0   3 10  0  0  0 2419908
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     450 1.0 1.9920e+00 1.8 4.51e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 13242
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     450 1.0 3.6805e+01 1.2 1.30e+11 1.1 0.0e+00 0.0e+00 0.0e+00  2 10  0  0  0   4 13  0  0  0 2791880
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     450 1.0 8.0138e+01 1.4 2.06e+11 1.3 0.0e+00 0.0e+00 0.0e+00  4 14  0  0  0   8 19  0  0  0 1900882
firedrake.dmhooks.get_function_space       2 1.0 2.3072e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       2 1.0 9.2667e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.VertexOnlyMesh       1 1.0 1.8271e+01 1.0 0.00e+00 0.0 6.2e+04 9.4e+01 1.1e+01  1  0  0  0  0   2  0  0  0  0    -0
firedrake.mesh._pic_swarm_in_mesh       1 1.0 1.8259e+01 1.0 0.00e+00 0.0 4.3e+04 7.8e+01 6.0e+00  1  0  0  0  0   2  0  0  0  0    -0
firedrake.mesh._parent_mesh_embedding       1 1.0 1.2752e+01 1.0 0.00e+00 0.0 2.4e+04 3.4e+01 4.0e+00  1  0  0  0  0   2  0  0  0  0    -0
firedrake.mesh.MeshGeometry.locate_cells_ref_coords_and_dists       1 1.0 4.8470e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshGeometry._c_locator       1 1.0 4.8122e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.src_locate_cell       1 1.0 4.3873e+00 29.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.pointquery_utils.compile_coordinate_element       1 1.0 4.3793e+00 40.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.pointquery_utils.make_wrapper       1 1.0 3.6194e+00 543.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.parloop.generate_single_cell_wrapper       1 1.0 3.6193e+00 548.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
c_locator_run          1 1.0 4.9162e-02 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._ctypes       1 1.0 2.4581e-02 16.5 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._constant_ctypes       1 1.0 1.3142e-04 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.rtree       1 1.0 1.8704e-03 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.bounding_box_coords       1 1.0 1.8814e-04 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
rtree_build            1 1.0 1.6907e-03 3.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._dmswarm_create       2 1.0 2.3375e-02 70.7 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._swarm_original_ordering_preserve       1 1.0 5.5046e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.VertexOnlyMeshTopology.__init__       2 1.0 3.2547e-02 4.7 0.00e+00 0.0 1.9e+04 1.3e+02 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_vom_from_vom_topology       2 1.0 3.0404e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.action       1 1.0 2.3042e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0      225 1.0 2.4449e+00 1.2 1.40e+08 1.1 1.1e+07 2.1e+02 5.0e+03  0  0  7  0 18   0  0 24  0 25 45000
MGSetup Level 1      225 1.0 2.4650e+02 1.0 1.41e+11 1.1 1.1e+07 1.1e+05 5.0e+03 15 10  6 13 18  30 14 23 22 25 453427
firedrake.constant.Constant.assign      75 1.0 3.5396e-03 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa8fdf5050_wrap_pyop2_kernel_prolong       4 0.0 7.9418e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1496f7d04710_wrap_pyop2_kernel_prolong       4 0.0 8.1015e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145aa1808410_wrap_pyop2_kernel_prolong       4 0.0 8.0300e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f02d959690_wrap_pyop2_kernel_prolong       4 0.0 8.0144e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d8cf449a90_wrap_pyop2_kernel_prolong       4 0.0 8.0327e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f3155f0b10_wrap_pyop2_kernel_prolong       4 0.0 7.9635e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147da2605dd0_wrap_pyop2_kernel_prolong       4 0.0 8.0153e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1500497ebf90_wrap_pyop2_kernel_prolong       4 0.0 8.0339e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478579790d0_wrap_pyop2_kernel_prolong       4 0.0 8.0521e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151d21d17410_wrap_pyop2_kernel_prolong       4 0.0 8.0457e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153ec0e2f810_wrap_pyop2_kernel_prolong       4 0.0 8.0426e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c6d08ba010_wrap_pyop2_kernel_prolong       4 0.0 8.0986e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148716160b10_wrap_pyop2_kernel_prolong       4 0.0 7.9702e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478916fcf10_wrap_pyop2_kernel_prolong       4 0.0 7.9342e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14db8e6d4ed0_wrap_pyop2_kernel_prolong       4 0.0 8.0196e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f755b1ddd0_wrap_pyop2_kernel_prolong       4 0.0 7.9389e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149fe3a58850_wrap_pyop2_kernel_prolong       4 0.0 8.0565e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155091dd78d0_wrap_pyop2_kernel_prolong       4 0.0 8.0549e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1521416f6710_wrap_pyop2_kernel_prolong       4 0.0 8.0429e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a084f27290_wrap_pyop2_kernel_prolong       4 0.0 7.9300e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150fd5458bd0_wrap_pyop2_kernel_prolong       4 0.0 7.9390e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a426d1750_wrap_pyop2_kernel_prolong       4 0.0 7.9494e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145aec726c10_wrap_pyop2_kernel_prolong       4 0.0 8.0324e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1536168413d0_wrap_pyop2_kernel_prolong       4 0.0 7.9439e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ae2febbd0_wrap_pyop2_kernel_prolong       4 0.0 7.9475e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1541f597bb90_wrap_pyop2_kernel_prolong       4 0.0 8.0122e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf1944f910_wrap_pyop2_kernel_prolong       4 0.0 7.9492e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15383812c890_wrap_pyop2_kernel_prolong       4 0.0 7.9786e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1477ba9231d0_wrap_pyop2_kernel_prolong       4 0.0 7.9830e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1543c5e15790_wrap_pyop2_kernel_prolong       4 0.0 7.9763e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a104225650_wrap_pyop2_kernel_prolong       4 0.0 8.0081e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dea23a5490_wrap_pyop2_kernel_prolong       4 0.0 8.0458e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145a27f6fd50_wrap_pyop2_kernel_prolong       4 0.0 7.9871e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145f22e00790_wrap_pyop2_kernel_prolong       4 0.0 8.0507e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c685984b50_wrap_pyop2_kernel_prolong       4 0.0 7.9599e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e2035f18d0_wrap_pyop2_kernel_prolong       4 0.0 7.9734e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15276300d110_wrap_pyop2_kernel_prolong       4 0.0 8.0471e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a078c5990_wrap_pyop2_kernel_prolong       4 0.0 7.9835e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1506eecfc510_wrap_pyop2_kernel_prolong       4 0.0 7.9484e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1534cf407b10_wrap_pyop2_kernel_prolong       4 0.0 7.9687e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149305f3d750_wrap_pyop2_kernel_prolong       4 0.0 8.0042e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cc3628ad10_wrap_pyop2_kernel_prolong       4 0.0 8.0398e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1485c9ce8fd0_wrap_pyop2_kernel_prolong       4 0.0 8.0200e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c956ac1190_wrap_pyop2_kernel_prolong       4 0.0 7.9403e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146b48a9b8d0_wrap_pyop2_kernel_prolong       4 0.0 7.9871e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1543720d3210_wrap_pyop2_kernel_prolong       4 0.0 8.0611e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153ebc05cc50_wrap_pyop2_kernel_prolong       4 0.0 8.0634e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14957923e490_wrap_pyop2_kernel_prolong       4 0.0 8.0475e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15275333a490_wrap_pyop2_kernel_prolong       4 0.0 7.9924e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15353eea9450_wrap_pyop2_kernel_prolong       4 0.0 7.9893e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153be57e6450_wrap_pyop2_kernel_prolong       4 0.0 8.0296e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148581a661d0_wrap_pyop2_kernel_prolong       4 0.0 7.9248e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1523e4767390_wrap_pyop2_kernel_prolong       4 0.0 8.0252e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149551276750_wrap_pyop2_kernel_prolong       4 0.0 7.9329e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145b7ccef550_wrap_pyop2_kernel_prolong       4 0.0 7.9282e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153ac8b5aad0_wrap_pyop2_kernel_prolong       4 0.0 7.9397e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146feeab1650_wrap_pyop2_kernel_prolong       4 0.0 7.9492e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa20d69ed0_wrap_pyop2_kernel_prolong       4 0.0 8.0020e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14af7cd0edd0_wrap_pyop2_kernel_prolong       4 0.0 7.9241e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1520443324d0_wrap_pyop2_kernel_prolong       4 0.0 7.9287e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145cd7649e90_wrap_pyop2_kernel_prolong       4 0.0 8.0633e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151426a4e310_wrap_pyop2_kernel_prolong       4 0.0 7.9487e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154a8b20add0_wrap_pyop2_kernel_prolong       4 0.0 7.9348e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1544101a48d0_wrap_pyop2_kernel_prolong       4 0.0 7.9367e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1540b4870210_wrap_pyop2_kernel_prolong       4 0.0 7.9266e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1520cc3dbbd0_wrap_pyop2_kernel_prolong       4 0.0 7.9331e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1506ea4b21d0_wrap_pyop2_kernel_prolong       4 0.0 7.9480e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148bfbfa1810_wrap_pyop2_kernel_prolong       4 0.0 7.9931e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147505a69cd0_wrap_pyop2_kernel_prolong       4 0.0 8.0879e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e7bd28c5d0_wrap_pyop2_kernel_prolong       4 0.0 7.9361e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c3747d2390_wrap_pyop2_kernel_prolong       4 0.0 7.9266e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14870c8b5a90_wrap_pyop2_kernel_prolong       4 0.0 7.9850e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e81df09d0_wrap_pyop2_kernel_prolong       4 0.0 8.0813e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149076d5b2d0_wrap_pyop2_kernel_prolong       4 0.0 7.9682e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cdcae9e310_wrap_pyop2_kernel_prolong       4 0.0 7.9546e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cca8163210_wrap_pyop2_kernel_prolong       4 0.0 7.9842e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a027495d10_wrap_pyop2_kernel_prolong       4 0.0 8.0027e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1510c3aa87d0_wrap_pyop2_kernel_prolong       4 0.0 7.9555e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a00b5b8e10_wrap_pyop2_kernel_prolong       4 0.0 8.0759e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f5f53363d0_wrap_pyop2_kernel_prolong       4 0.0 8.0827e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff05ce4590_wrap_pyop2_kernel_prolong       4 0.0 7.9732e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e722a07010_wrap_pyop2_kernel_prolong       4 0.0 8.0084e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d9540037d0_wrap_pyop2_kernel_prolong       4 0.0 8.0072e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145e1135c690_wrap_pyop2_kernel_prolong       4 0.0 8.0498e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151968b97bd0_wrap_pyop2_kernel_prolong       4 0.0 8.0219e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b52fbc1bd0_wrap_pyop2_kernel_prolong       4 0.0 7.9846e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14daae6fe250_wrap_pyop2_kernel_prolong       4 0.0 7.9848e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d5364af5d0_wrap_pyop2_kernel_prolong       4 0.0 7.9631e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1460c42c2a90_wrap_pyop2_kernel_prolong       4 0.0 7.9422e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1518332cafd0_wrap_pyop2_kernel_prolong       4 0.0 7.9576e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1496dc433bd0_wrap_pyop2_kernel_prolong       4 0.0 7.9858e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153285407590_wrap_pyop2_kernel_prolong       4 0.0 7.9892e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15286f3096d0_wrap_pyop2_kernel_prolong       4 0.0 7.9979e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e2b2a75550_wrap_pyop2_kernel_prolong       4 0.0 8.0638e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153201c54790_wrap_pyop2_kernel_prolong       4 0.0 8.0674e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aee11c1750_wrap_pyop2_kernel_prolong       4 0.0 8.0310e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f6b0d866d0_wrap_pyop2_kernel_prolong       4 0.0 8.0594e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d467a9290_wrap_pyop2_kernel_prolong       4 0.0 8.0727e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15118c9ecd50_wrap_pyop2_kernel_prolong       4 0.0 8.0793e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152afde8b8d0_wrap_pyop2_kernel_prolong       4 0.0 7.9327e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a2a649910_wrap_pyop2_kernel_prolong       4 0.0 8.0702e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc45e5fad0_wrap_pyop2_kernel_prolong       4 0.0 7.9598e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a271628450_wrap_pyop2_kernel_prolong       4 0.0 8.0686e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f7b8ea910_wrap_pyop2_kernel_prolong       4 0.0 7.9330e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b3de990690_wrap_pyop2_kernel_prolong       4 0.0 7.9220e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b9652f69d0_wrap_pyop2_kernel_prolong       4 0.0 7.9589e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145c50c92950_wrap_pyop2_kernel_prolong       4 0.0 7.9269e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e759f965d0_wrap_pyop2_kernel_prolong       4 0.0 7.9545e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c3f9b70a10_wrap_pyop2_kernel_prolong       4 0.0 7.9697e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154d057c73d0_wrap_pyop2_kernel_prolong       4 0.0 7.9193e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ec5b77250_wrap_pyop2_kernel_prolong       4 0.0 7.9235e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14debdf12190_wrap_pyop2_kernel_prolong       4 0.0 7.9669e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1530f3b25850_wrap_pyop2_kernel_prolong       4 0.0 7.9569e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d5d2651210_wrap_pyop2_kernel_prolong       4 0.0 7.9413e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14955ad68a90_wrap_pyop2_kernel_prolong       4 0.0 7.8607e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e75bf4b150_wrap_pyop2_kernel_prolong       4 0.0 7.9429e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145898f356d0_wrap_pyop2_kernel_prolong       4 0.0 7.8565e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e62e8549d0_wrap_pyop2_kernel_prolong       4 0.0 7.8647e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148fdabb4d90_wrap_pyop2_kernel_prolong       4 0.0 7.8637e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152559ecef90_wrap_pyop2_kernel_prolong       4 0.0 7.9318e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ea4281f5d0_wrap_pyop2_kernel_prolong       4 0.0 7.8674e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1530219d5790_wrap_pyop2_kernel_prolong       4 0.0 7.8713e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478be2435d0_wrap_pyop2_kernel_prolong       4 0.0 7.8662e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c95781e90_wrap_pyop2_kernel_prolong       4 0.0 7.9469e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1504ece46490_wrap_pyop2_kernel_prolong       4 0.0 7.8811e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154d2b996d90_wrap_pyop2_kernel_prolong       4 0.0 7.8670e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c52e589fd0_wrap_pyop2_kernel_prolong       4 0.0 7.8950e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146aea4847d0_wrap_pyop2_kernel_prolong       4 0.0 7.8721e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f05c23ac90_wrap_pyop2_kernel_prolong       4 0.0 7.9121e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eada15eb90_wrap_pyop2_kernel_prolong       4 0.0 7.8856e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1542ff9cce90_wrap_pyop2_kernel_prolong       4 0.0 7.8612e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d7c212b010_wrap_pyop2_kernel_prolong       4 0.0 7.9381e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152a91df7710_wrap_pyop2_kernel_prolong       4 0.0 7.9023e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1549ca461e90_wrap_pyop2_kernel_prolong       4 0.0 7.9302e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146fec9802d0_wrap_pyop2_kernel_prolong       4 0.0 7.9785e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1538a79a64d0_wrap_pyop2_kernel_prolong       4 0.0 7.8658e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e18445dfd0_wrap_pyop2_kernel_prolong       4 0.0 7.8711e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1484fca348d0_wrap_pyop2_kernel_prolong       4 0.0 7.9604e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f922c35110_wrap_pyop2_kernel_prolong       4 0.0 7.8931e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a67fdb2c90_wrap_pyop2_kernel_prolong       4 0.0 7.8739e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150825353490_wrap_pyop2_kernel_prolong       4 0.0 7.8752e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145f945cb990_wrap_pyop2_kernel_prolong       4 0.0 7.9624e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd753bb7d0_wrap_pyop2_kernel_prolong       4 0.0 7.9007e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a0b484fa50_wrap_pyop2_kernel_prolong       4 0.0 7.9154e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da86e3aad0_wrap_pyop2_kernel_prolong       4 0.0 7.9179e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14623fab3210_wrap_pyop2_kernel_prolong       4 0.0 7.9172e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14abd6b7dcd0_wrap_pyop2_kernel_prolong       4 0.0 7.8718e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bed6ac0790_wrap_pyop2_kernel_prolong       4 0.0 7.9354e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a9bb5f4e50_wrap_pyop2_kernel_prolong       4 0.0 7.9375e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154659c2f6d0_wrap_pyop2_kernel_prolong       4 0.0 7.9382e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1553f0175310_wrap_pyop2_kernel_prolong       4 0.0 7.9245e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149747656bd0_wrap_pyop2_kernel_prolong       4 0.0 7.8665e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1474ce701850_wrap_pyop2_kernel_prolong       4 0.0 7.8848e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa38d970d0_wrap_pyop2_kernel_prolong       4 0.0 7.9587e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c6d2db750_wrap_pyop2_kernel_prolong       4 0.0 7.8775e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c992551150_wrap_pyop2_kernel_prolong       4 0.0 7.8614e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1553faa4fe90_wrap_pyop2_kernel_prolong       4 0.0 7.8614e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1486411adbd0_wrap_pyop2_kernel_prolong       4 0.0 7.8818e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154011cdf110_wrap_pyop2_kernel_prolong       4 0.0 7.9180e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150cf0785710_wrap_pyop2_kernel_prolong       4 0.0 7.8835e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15155a5cad50_wrap_pyop2_kernel_prolong       4 0.0 7.8917e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df11f95450_wrap_pyop2_kernel_prolong       4 0.0 7.8663e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491801ca150_wrap_pyop2_kernel_prolong       4 0.0 7.8604e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1507a06e4f90_wrap_pyop2_kernel_prolong       4 0.0 7.8766e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f46ea16890_wrap_pyop2_kernel_prolong       4 0.0 7.8967e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145579220c90_wrap_pyop2_kernel_prolong       4 0.0 7.8765e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b446efad0_wrap_pyop2_kernel_prolong       4 0.0 7.9077e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151caa0bff10_wrap_pyop2_kernel_prolong       4 0.0 7.9331e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e4e18ff10_wrap_pyop2_kernel_prolong       4 0.0 7.9127e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bbc6cfcb90_wrap_pyop2_kernel_prolong       4 0.0 7.8879e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f16c2cbd0_wrap_pyop2_kernel_prolong       4 0.0 7.8810e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15501173fdd0_wrap_pyop2_kernel_prolong       4 0.0 7.8641e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15092d9d8150_wrap_pyop2_kernel_prolong       4 0.0 7.8758e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149151d1ec90_wrap_pyop2_kernel_prolong       4 0.0 7.8716e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe18370950_wrap_pyop2_kernel_prolong       4 0.0 7.8880e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd0f5a38d0_wrap_pyop2_kernel_prolong       4 0.0 7.8621e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148ca4554510_wrap_pyop2_kernel_prolong       4 0.0 7.8812e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14955773b4d0_wrap_pyop2_kernel_prolong       4 0.0 7.8662e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d47c4c3490_wrap_pyop2_kernel_prolong       4 0.0 7.8696e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150c60629cd0_wrap_pyop2_kernel_prolong       4 0.0 7.8623e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154d5eee2150_wrap_pyop2_kernel_prolong       4 0.0 7.8914e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ea9e93f1d0_wrap_pyop2_kernel_prolong       4 0.0 7.8614e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1489742d30d0_wrap_pyop2_kernel_prolong       4 0.0 7.9233e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1473384245d0_wrap_pyop2_kernel_prolong       4 0.0 7.8713e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153843d176d0_wrap_pyop2_kernel_prolong       4 0.0 7.8678e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1481f4bacbd0_wrap_pyop2_kernel_prolong       4 0.0 7.8684e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150fd58cfb50_wrap_pyop2_kernel_prolong       4 0.0 7.8684e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152dd6573690_wrap_pyop2_kernel_prolong       4 0.0 7.8604e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f117a0c90_wrap_pyop2_kernel_prolong       4 0.0 7.8738e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151afc29d810_wrap_pyop2_kernel_prolong       4 0.0 7.8860e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14683dff4690_wrap_pyop2_kernel_prolong       4 0.0 7.9001e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ecd8cffd90_wrap_pyop2_kernel_prolong       4 0.0 7.9070e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e4e6913d50_wrap_pyop2_kernel_prolong       4 0.0 7.8748e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a332b03d90_wrap_pyop2_kernel_prolong       4 0.0 7.8890e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e8a2bcdfd0_wrap_pyop2_kernel_prolong       4 0.0 7.8946e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f9cc1c990_wrap_pyop2_kernel_prolong       4 0.0 7.8974e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad5200e110_wrap_pyop2_kernel_prolong       4 0.0 7.8765e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ea72f3a950_wrap_pyop2_kernel_prolong       4 0.0 7.8770e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c06454710_wrap_pyop2_kernel_prolong       4 0.0 7.8788e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b7a26fe350_wrap_pyop2_kernel_prolong       4 0.0 7.8938e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1475e237de90_wrap_pyop2_kernel_prolong       4 0.0 7.8672e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c6a160fd90_wrap_pyop2_kernel_prolong       4 0.0 7.8663e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d8d686810_wrap_pyop2_kernel_prolong       4 0.0 7.9445e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bce5249e50_wrap_pyop2_kernel_prolong       4 0.0 7.8727e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c399fd6710_wrap_pyop2_kernel_prolong       4 0.0 7.8752e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd094a4950_wrap_pyop2_kernel_prolong       4 0.0 7.9079e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149731a33250_wrap_pyop2_kernel_prolong       4 0.0 7.9133e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1500d3098e90_wrap_pyop2_kernel_prolong       4 0.0 7.9865e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145dc45494d0_wrap_pyop2_kernel_prolong       4 0.0 7.9328e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14995926f050_wrap_pyop2_kernel_prolong       4 0.0 7.9424e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145bcc3e2c90_wrap_pyop2_kernel_prolong       4 0.0 7.9527e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1472d24d7810_wrap_pyop2_kernel_prolong       4 0.0 7.9988e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1524865f56d0_wrap_pyop2_kernel_prolong       4 0.0 7.9292e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bfc12f4250_wrap_pyop2_kernel_prolong       4 0.0 7.9606e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15265140b3d0_wrap_pyop2_kernel_prolong       4 0.0 7.9910e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d0843a8b10_wrap_pyop2_kernel_prolong       4 0.0 7.9258e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ddf87911d0_wrap_pyop2_kernel_prolong       4 0.0 7.9424e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b29b6c7850_wrap_pyop2_kernel_prolong       4 0.0 7.9142e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1517f7ef3b10_wrap_pyop2_kernel_prolong       4 0.0 7.9391e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1e20e8a90_wrap_pyop2_kernel_prolong       4 0.0 7.9691e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146074933450_wrap_pyop2_kernel_prolong       4 0.0 7.8992e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1470d1277a90_wrap_pyop2_kernel_prolong       4 0.0 7.9156e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d7d1a138d0_wrap_pyop2_kernel_prolong       4 0.0 7.9316e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14900c303c10_wrap_pyop2_kernel_prolong       4 0.0 7.9081e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb7ced7f10_wrap_pyop2_kernel_prolong       4 0.0 7.9176e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b137295150_wrap_pyop2_kernel_prolong       4 0.0 7.9310e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493227e5c90_wrap_pyop2_kernel_prolong       4 0.0 7.9055e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146396b390d0_wrap_pyop2_kernel_prolong       4 0.0 7.9177e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b5598eac10_wrap_pyop2_kernel_prolong       4 0.0 7.9196e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1492a31aad10_wrap_pyop2_kernel_prolong       4 0.0 7.9119e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ffed20ad0_wrap_pyop2_kernel_prolong       4 0.0 7.9265e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b191eff890_wrap_pyop2_kernel_prolong       4 0.0 7.9204e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5c2aafad0_wrap_pyop2_kernel_prolong       4 0.0 7.9286e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fcfac5c650_wrap_pyop2_kernel_prolong       4 0.0 7.9174e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf844eaa10_wrap_pyop2_kernel_prolong       4 0.0 7.9041e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150ba6fd9f50_wrap_pyop2_kernel_prolong       4 0.0 7.9202e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d1f755f4d0_wrap_pyop2_kernel_prolong       4 0.0 7.8980e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14929d8d6b50_wrap_pyop2_kernel_prolong       4 0.0 7.9157e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151eff1aedd0_wrap_pyop2_kernel_prolong       4 0.0 7.9247e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14964aead590_wrap_pyop2_kernel_prolong       4 0.0 7.9101e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1549316065d0_wrap_pyop2_kernel_prolong       4 0.0 7.9157e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153ed383f610_wrap_pyop2_kernel_prolong       4 0.0 7.9071e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150c7c652bd0_wrap_pyop2_kernel_prolong       4 0.0 7.9091e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15216cf47bd0_wrap_pyop2_kernel_prolong       4 0.0 7.9194e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f239e6ed50_wrap_pyop2_kernel_prolong       4 0.0 7.9081e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff7c8da090_wrap_pyop2_kernel_prolong       4 0.0 7.9200e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1521303a15d0_wrap_pyop2_kernel_prolong       4 0.0 7.9015e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146222e7f050_wrap_pyop2_kernel_prolong       4 0.0 7.9105e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c8b5fc250_wrap_pyop2_kernel_prolong       4 0.0 7.9204e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ba4be7850_wrap_pyop2_kernel_prolong       4 0.0 7.9143e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e7ac45cd0_wrap_pyop2_kernel_prolong       4 0.0 7.9204e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f3400d2110_wrap_pyop2_kernel_prolong       4 0.0 7.9278e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15060f5dd690_wrap_pyop2_kernel_prolong       4 0.0 7.9193e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15157b6ed150_wrap_pyop2_kernel_prolong       4 0.0 7.9121e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aef35677d0_wrap_pyop2_kernel_prolong       4 0.0 7.9179e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa3b6bc5d0_wrap_pyop2_kernel_prolong       4 0.0 7.9132e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149025aaed10_wrap_pyop2_kernel_prolong       4 0.0 7.9222e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1549525f6fd0_wrap_pyop2_kernel_prolong       4 0.0 7.9230e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148318157910_wrap_pyop2_kernel_prolong       4 0.0 7.9325e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff702be110_wrap_pyop2_kernel_prolong       4 0.0 7.8989e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493973ab5d0_wrap_pyop2_kernel_prolong       4 0.0 7.9082e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154d18065b50_wrap_pyop2_kernel_prolong       4 0.0 8.0008e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a01e424850_wrap_pyop2_kernel_prolong       4 0.0 7.9154e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1477d49c0750_wrap_pyop2_kernel_prolong       4 0.0 7.9870e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f2a63abe90_wrap_pyop2_kernel_prolong       4 0.0 7.9850e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a4568d6c90_wrap_pyop2_kernel_prolong       4 0.0 7.9285e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c36842a890_wrap_pyop2_kernel_prolong       4 0.0 7.9508e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152b78a03650_wrap_pyop2_kernel_prolong       4 0.0 7.9610e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1536cb32f490_wrap_pyop2_kernel_prolong       4 0.0 7.9437e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b87d330690_wrap_pyop2_kernel_prolong       4 0.0 7.9220e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151411113410_wrap_pyop2_kernel_prolong       4 0.0 7.9929e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14643ce8ccd0_wrap_pyop2_kernel_prolong       4 0.0 7.9163e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151c820c6a50_wrap_pyop2_kernel_prolong       4 0.0 7.9513e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148512b25350_wrap_pyop2_kernel_prolong       4 0.0 7.9778e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154d0a72ad90_wrap_pyop2_kernel_prolong       4 0.0 7.9275e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bcc06f97d0_wrap_pyop2_kernel_prolong       4 0.0 7.9795e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef40700950_wrap_pyop2_kernel_prolong       4 0.0 7.9105e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b49c418a90_wrap_pyop2_kernel_prolong       4 0.0 7.9778e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f8eb18ab50_wrap_pyop2_kernel_prolong       4 0.0 7.9154e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147249e16ed0_wrap_pyop2_kernel_prolong       4 0.0 7.9724e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1534e1ec1dd0_wrap_pyop2_kernel_prolong       4 0.0 7.9185e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153908220910_wrap_pyop2_kernel_prolong       4 0.0 7.9162e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1454e07ace50_wrap_pyop2_kernel_prolong       4 0.0 7.9145e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb34b87ad0_wrap_pyop2_kernel_prolong       4 0.0 7.9257e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c7dacdf650_wrap_pyop2_kernel_prolong       4 0.0 7.9403e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151297b900d0_wrap_pyop2_kernel_prolong       4 0.0 7.9179e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15296cb373d0_wrap_pyop2_kernel_prolong       4 0.0 7.9456e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1500ce1a95d0_wrap_pyop2_kernel_prolong       4 0.0 7.9507e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bbab7b3650_wrap_pyop2_kernel_prolong       4 0.0 7.9184e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed18db9190_wrap_pyop2_kernel_prolong       4 0.0 7.9414e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b6d4a8f090_wrap_pyop2_kernel_prolong       4 0.0 7.9517e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1515a6e37dd0_wrap_pyop2_kernel_prolong       4 0.0 7.9213e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1547df09bad0_wrap_pyop2_kernel_prolong       4 0.0 7.9145e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd09746b50_wrap_pyop2_kernel_prolong       4 0.0 7.9307e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f13feb2a50_wrap_pyop2_kernel_prolong       4 0.0 7.9093e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d4913213d0_wrap_pyop2_kernel_prolong       4 0.0 7.9978e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b44210d10_wrap_pyop2_kernel_prolong       4 0.0 7.9178e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d66e33aa10_wrap_pyop2_kernel_prolong       4 0.0 7.9821e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154827fbf810_wrap_pyop2_kernel_prolong       4 0.0 7.9202e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1509bd196d90_wrap_pyop2_kernel_prolong       4 0.0 7.9870e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14af0b900f10_wrap_pyop2_kernel_prolong       4 0.0 7.9628e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1541baf88810_wrap_pyop2_kernel_prolong       4 0.0 7.9160e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14abf8a69190_wrap_pyop2_kernel_prolong       4 0.0 7.9660e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee4665ae90_wrap_pyop2_kernel_prolong       4 0.0 7.9629e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15086630fd50_wrap_pyop2_kernel_prolong       4 0.0 7.9144e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c5f82ab8d0_wrap_pyop2_kernel_prolong       4 0.0 7.9938e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ca1dc1c50_wrap_pyop2_kernel_prolong       4 0.0 7.9831e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14786c425750_wrap_pyop2_kernel_prolong       4 0.0 7.9494e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d68745e10_wrap_pyop2_kernel_prolong       4 0.0 7.9375e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e05fe4d150_wrap_pyop2_kernel_prolong       4 0.0 7.9735e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c5ddd4e750_wrap_pyop2_kernel_prolong       4 0.0 7.9823e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152a0376d950_wrap_pyop2_kernel_prolong       4 0.0 8.0103e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1549fb621a50_wrap_pyop2_kernel_prolong       4 0.0 8.0000e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1536f1343a10_wrap_pyop2_kernel_prolong       4 0.0 7.9405e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150eb780a810_wrap_pyop2_kernel_prolong       4 0.0 7.9853e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b2d8109510_wrap_pyop2_kernel_prolong       4 0.0 7.9978e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c75979b6d0_wrap_pyop2_kernel_prolong       4 0.0 7.9894e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15286638e450_wrap_pyop2_kernel_prolong       4 0.0 8.0045e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d42e27390_wrap_pyop2_kernel_prolong       4 0.0 8.0327e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e8388a9b50_wrap_pyop2_kernel_prolong       4 0.0 8.0233e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c3bd19b3d0_wrap_pyop2_kernel_prolong       4 0.0 8.0068e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dcb3496cd0_wrap_pyop2_kernel_prolong       4 0.0 8.0037e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145b0f99f710_wrap_pyop2_kernel_prolong       4 0.0 7.9982e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153df410f650_wrap_pyop2_kernel_prolong       4 0.0 8.0278e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd90ab7bd0_wrap_pyop2_kernel_prolong       4 0.0 7.9415e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1495aeead0d0_wrap_pyop2_kernel_prolong       4 0.0 7.8726e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14801087cbd0_wrap_pyop2_kernel_prolong       4 0.0 7.8943e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f59f0a9c50_wrap_pyop2_kernel_prolong       4 0.0 7.8751e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148fbd747290_wrap_pyop2_kernel_prolong       4 0.0 7.9320e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152bc5c76d10_wrap_pyop2_kernel_prolong       4 0.0 7.8905e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1535350cc6d0_wrap_pyop2_kernel_prolong       4 0.0 7.8674e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a243ef47d0_wrap_pyop2_kernel_prolong       4 0.0 7.8751e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f39e0e0bd0_wrap_pyop2_kernel_prolong       4 0.0 7.9397e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c43b087bd0_wrap_pyop2_kernel_prolong       4 0.0 7.8942e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1550157f9510_wrap_pyop2_kernel_prolong       4 0.0 7.8837e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154af0c924d0_wrap_pyop2_kernel_prolong       4 0.0 7.9385e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e62fdbf910_wrap_pyop2_kernel_prolong       4 0.0 7.8831e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e59e7b0350_wrap_pyop2_kernel_prolong       4 0.0 7.8649e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ba0c0fb050_wrap_pyop2_kernel_prolong       4 0.0 7.9053e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bee7b3b610_wrap_pyop2_kernel_prolong       4 0.0 7.8980e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ef2acb210_wrap_pyop2_kernel_prolong       4 0.0 7.8939e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b8a55f2b10_wrap_pyop2_kernel_prolong       4 0.0 7.9397e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15221e74f450_wrap_pyop2_kernel_prolong       4 0.0 7.9765e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf3ce62c10_wrap_pyop2_kernel_prolong       4 0.0 7.9058e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d3c9d7350_wrap_pyop2_kernel_prolong       4 0.0 7.9262e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ba0220f050_wrap_pyop2_kernel_prolong       4 0.0 7.9200e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146256fb4590_wrap_pyop2_kernel_prolong       4 0.0 7.9126e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f5c4a1fb90_wrap_pyop2_kernel_prolong       4 0.0 7.9113e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1513dc366910_wrap_pyop2_kernel_prolong       4 0.0 7.9266e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b081678a50_wrap_pyop2_kernel_prolong       4 0.0 7.9514e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f67a0ec90_wrap_pyop2_kernel_prolong       4 0.0 7.8856e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a19cd18310_wrap_pyop2_kernel_prolong       4 0.0 7.9171e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1500c793d1d0_wrap_pyop2_kernel_prolong       4 0.0 7.9078e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d70bd2ed0_wrap_pyop2_kernel_prolong       4 0.0 7.9041e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a01d5439d0_wrap_pyop2_kernel_prolong       4 0.0 7.8738e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147580d77050_wrap_pyop2_kernel_prolong       4 0.0 7.9157e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fdf54d3350_wrap_pyop2_kernel_prolong       4 0.0 7.8942e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146fe5793050_wrap_pyop2_kernel_prolong       4 0.0 7.9249e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d71a84d790_wrap_pyop2_kernel_prolong       4 0.0 7.9374e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1548b67df050_wrap_pyop2_kernel_prolong       4 0.0 7.9127e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1526fc517010_wrap_pyop2_kernel_prolong       4 0.0 8.0323e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1495e3a5d110_wrap_pyop2_kernel_prolong       4 0.0 7.9279e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e3ffa23690_wrap_pyop2_kernel_prolong       4 0.0 7.8916e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15490f55ce90_wrap_pyop2_kernel_prolong       4 0.0 7.9564e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d3b69e8e90_wrap_pyop2_kernel_prolong       4 0.0 8.0014e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147257e50710_wrap_pyop2_kernel_prolong       4 0.0 7.8942e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152358e386d0_wrap_pyop2_kernel_prolong       4 0.0 7.9238e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f48360a8d0_wrap_pyop2_kernel_prolong       4 0.0 7.9318e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155071040810_wrap_pyop2_kernel_prolong       4 0.0 7.9072e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e1c6b8bd0_wrap_pyop2_kernel_prolong       4 0.0 8.0074e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15018f8531d0_wrap_pyop2_kernel_prolong       4 0.0 7.9924e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d496b46410_wrap_pyop2_kernel_prolong       4 0.0 7.8825e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14909c876f90_wrap_pyop2_kernel_prolong       4 0.0 7.9375e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f04e828710_wrap_pyop2_kernel_prolong       4 0.0 7.9820e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf035d0950_wrap_pyop2_kernel_prolong       4 0.0 7.9548e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1510b0565fd0_wrap_pyop2_kernel_prolong       4 0.0 8.0211e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14985ea23f90_wrap_pyop2_kernel_prolong       4 0.0 7.9888e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd3567ded0_wrap_pyop2_kernel_prolong       4 0.0 7.9943e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d95b590710_wrap_pyop2_kernel_prolong       4 0.0 7.9582e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b6e453a950_wrap_pyop2_kernel_prolong       4 0.0 7.8786e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151f1b204550_wrap_pyop2_kernel_prolong       4 0.0 8.0120e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151f3def24d0_wrap_pyop2_kernel_prolong       4 0.0 7.8889e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145ebf868910_wrap_pyop2_kernel_prolong       4 0.0 7.9544e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e0750f750_wrap_pyop2_kernel_prolong       4 0.0 7.8695e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14babe4ea850_wrap_pyop2_kernel_prolong       4 0.0 7.8738e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb1d548a90_wrap_pyop2_kernel_prolong       4 0.0 7.9678e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a539147d0_wrap_pyop2_kernel_prolong       4 0.0 7.9517e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14620afcd610_wrap_pyop2_kernel_prolong       4 0.0 7.8812e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153e7b028a90_wrap_pyop2_kernel_prolong       4 0.0 8.0089e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e8310aee10_wrap_pyop2_kernel_prolong       4 0.0 7.8650e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b1cb927410_wrap_pyop2_kernel_prolong       4 0.0 7.8673e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149de2d81190_wrap_pyop2_kernel_prolong       4 0.0 7.8792e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1481c3e06c10_wrap_pyop2_kernel_prolong       4 0.0 7.8736e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1503bdd258d0_wrap_pyop2_kernel_prolong       4 0.0 7.8785e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152db17d5490_wrap_pyop2_kernel_prolong       4 0.0 7.9034e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c4151a990_wrap_pyop2_kernel_prolong       4 0.0 7.8809e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1536157d1190_wrap_pyop2_kernel_prolong       4 0.0 7.9014e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e823ef5490_wrap_pyop2_kernel_prolong       4 0.0 7.8794e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150c78f47f50_wrap_pyop2_kernel_prolong       4 0.0 8.0035e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152734ce78d0_wrap_pyop2_kernel_prolong       4 0.0 7.9932e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b7649b310_wrap_pyop2_kernel_prolong       4 0.0 7.9255e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bdb498b190_wrap_pyop2_kernel_prolong       4 0.0 7.8922e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148d86ebffd0_wrap_pyop2_kernel_prolong       4 0.0 7.9639e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15520781ee90_wrap_pyop2_kernel_prolong       4 0.0 7.9283e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1503c6c4bf10_wrap_pyop2_kernel_prolong       4 0.0 7.8850e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb5f629110_wrap_pyop2_kernel_prolong       4 0.0 7.9796e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c4e8d44d0_wrap_pyop2_kernel_prolong       4 0.0 7.9615e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e46ae19d90_wrap_pyop2_kernel_prolong       4 0.0 7.9749e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455ce32c750_wrap_pyop2_kernel_prolong       4 0.0 7.9456e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd079cec10_wrap_pyop2_kernel_prolong       4 0.0 7.9638e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1471baa819d0_wrap_pyop2_kernel_prolong       4 0.0 7.9758e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1525484c5550_wrap_pyop2_kernel_prolong       4 0.0 7.9561e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a19c455550_wrap_pyop2_kernel_prolong       4 0.0 7.9539e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f715a6d10_wrap_pyop2_kernel_prolong       4 0.0 8.0296e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1512570f54d0_wrap_pyop2_kernel_prolong       4 0.0 8.0026e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1511b98eb750_wrap_pyop2_kernel_prolong       4 0.0 7.9234e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1529ccf53150_wrap_pyop2_kernel_prolong       4 0.0 7.9266e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c63a102fd0_wrap_pyop2_kernel_prolong       4 0.0 7.8960e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15156b722b90_wrap_pyop2_kernel_prolong       4 0.0 7.8868e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1457db5e01d0_wrap_pyop2_kernel_prolong       4 0.0 7.9068e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1466abb4e890_wrap_pyop2_kernel_prolong       4 0.0 7.9227e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e86c3128d0_wrap_pyop2_kernel_prolong       4 0.0 7.8896e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145cb505c210_wrap_pyop2_kernel_prolong       4 0.0 7.9211e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b61a8ab010_wrap_pyop2_kernel_prolong       4 0.0 7.9499e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14785bba3f50_wrap_pyop2_kernel_prolong       4 0.0 7.9374e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b22283750_wrap_pyop2_kernel_prolong       4 0.0 7.9131e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d02c10aad0_wrap_pyop2_kernel_prolong       4 0.0 7.9503e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1457d5237bd0_wrap_pyop2_kernel_prolong       4 0.0 7.9300e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a615304050_wrap_pyop2_kernel_prolong       4 0.0 7.8839e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151269af1050_wrap_pyop2_kernel_prolong       4 0.0 7.9119e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe626f47d0_wrap_pyop2_kernel_prolong       4 0.0 7.9439e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bcb1b77550_wrap_pyop2_kernel_prolong       4 0.0 7.9133e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14daa88ace50_wrap_pyop2_kernel_prolong       4 0.0 7.9467e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455d85047d0_wrap_pyop2_kernel_prolong       4 0.0 7.8994e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147cde295e50_wrap_pyop2_kernel_prolong       4 0.0 7.8824e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce21d34650_wrap_pyop2_kernel_prolong       4 0.0 7.9033e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1526ad06f610_wrap_pyop2_kernel_prolong       4 0.0 7.9230e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b8276b2390_wrap_pyop2_kernel_prolong       4 0.0 7.8760e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15137fd89a10_wrap_pyop2_kernel_prolong       4 0.0 7.8931e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd81739f90_wrap_pyop2_kernel_prolong       4 0.0 7.9048e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e260a93e90_wrap_pyop2_kernel_prolong       4 0.0 7.9359e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e99ee1dd0_wrap_pyop2_kernel_prolong       4 0.0 7.8860e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153ed30c9c90_wrap_pyop2_kernel_prolong       4 0.0 7.8957e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ec83cb150_wrap_pyop2_kernel_prolong       4 0.0 7.8981e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d229ca4410_wrap_pyop2_kernel_prolong       4 0.0 7.9355e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15514a3331d0_wrap_pyop2_kernel_prolong       4 0.0 7.8900e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd8ce12710_wrap_pyop2_kernel_prolong       4 0.0 7.9040e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15095e75d0d0_wrap_pyop2_kernel_prolong       4 0.0 7.8892e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1550d37d8490_wrap_pyop2_kernel_prolong       4 0.0 7.8944e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ebdcf2d2d0_wrap_pyop2_kernel_prolong       4 0.0 7.8983e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1488dc976650_wrap_pyop2_kernel_prolong       4 0.0 7.8820e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498e5c6b350_wrap_pyop2_kernel_prolong       4 0.0 7.8937e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154fbc8bb2d0_wrap_pyop2_kernel_prolong       4 0.0 7.8974e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b4fcc43b50_wrap_pyop2_kernel_prolong       4 0.0 7.8936e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b1b4454dd0_wrap_pyop2_kernel_prolong       4 0.0 7.8907e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ace4e5d10_wrap_pyop2_kernel_prolong       4 0.0 7.8989e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154bd3a16d50_wrap_pyop2_kernel_prolong       4 0.0 7.8977e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a45831650_wrap_pyop2_kernel_prolong       4 0.0 7.9056e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a52103c910_wrap_pyop2_kernel_prolong       4 0.0 7.8864e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1494f99d9c90_wrap_pyop2_kernel_prolong       4 0.0 7.9063e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cdcb620590_wrap_pyop2_kernel_prolong       4 0.0 7.9380e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14594b4baa10_wrap_pyop2_kernel_prolong       4 0.0 7.8962e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a580710410_wrap_pyop2_kernel_prolong       4 0.0 7.9012e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa79c53190_wrap_pyop2_kernel_prolong       4 0.0 7.8902e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1500bd36f390_wrap_pyop2_kernel_prolong       4 0.0 7.8967e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1527546b1a50_wrap_pyop2_kernel_prolong       4 0.0 7.8984e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a2610d450_wrap_pyop2_kernel_prolong       4 0.0 7.9001e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f652edc090_wrap_pyop2_kernel_prolong       4 0.0 7.8805e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14871d093150_wrap_pyop2_kernel_prolong       4 0.0 7.8828e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1475e172c290_wrap_pyop2_kernel_prolong       4 0.0 7.9048e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a54adb7d0_wrap_pyop2_kernel_prolong       4 0.0 7.9351e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac6db62bd0_wrap_pyop2_kernel_prolong       4 0.0 7.9521e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154bc8d4fbd0_wrap_pyop2_kernel_prolong       4 0.0 7.9083e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15216bb30810_wrap_pyop2_kernel_prolong       4 0.0 7.8899e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e25069c590_wrap_pyop2_kernel_prolong       4 0.0 7.8895e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ba1cad4c50_wrap_pyop2_kernel_prolong       4 0.0 7.8941e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5a65e0690_wrap_pyop2_kernel_prolong       4 0.0 7.8960e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148d48829e90_wrap_pyop2_kernel_prolong       4 0.0 7.8943e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ada139d650_wrap_pyop2_kernel_prolong       4 0.0 7.9069e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1475c2637650_wrap_pyop2_kernel_prolong       4 0.0 7.9077e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14794da89b10_wrap_pyop2_kernel_prolong       4 0.0 7.8852e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1462700e4c90_wrap_pyop2_kernel_prolong       4 0.0 7.8834e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15281587a550_wrap_pyop2_kernel_prolong       4 0.0 7.8833e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b6b566550_wrap_pyop2_kernel_prolong       4 0.0 7.8939e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad3c621650_wrap_pyop2_kernel_prolong       4 0.0 7.8904e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d8d2867450_wrap_pyop2_kernel_prolong       4 0.0 7.9628e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f3629c3bd0_wrap_pyop2_kernel_prolong       4 0.0 7.8944e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c5fe71810_wrap_pyop2_kernel_prolong       4 0.0 7.9212e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cbf2b48310_wrap_pyop2_kernel_prolong       4 0.0 7.9003e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ba714fb810_wrap_pyop2_kernel_prolong       4 0.0 7.8950e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a83e97d250_wrap_pyop2_kernel_prolong       4 0.0 7.9019e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153925db8cd0_wrap_pyop2_kernel_prolong       4 0.0 7.8977e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c39e03090_wrap_pyop2_kernel_prolong       4 0.0 7.9137e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b2aac840d0_wrap_pyop2_kernel_prolong       4 0.0 7.9266e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1492efd4be50_wrap_pyop2_kernel_prolong       4 0.0 7.8908e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1496eb009f90_wrap_pyop2_kernel_prolong       4 0.0 7.8878e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ca1acf090_wrap_pyop2_kernel_prolong       4 0.0 7.8873e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1487fbfbad10_wrap_pyop2_kernel_prolong       4 0.0 7.8931e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455f5badc10_wrap_pyop2_kernel_prolong       4 0.0 7.9146e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a6f5e02dd0_wrap_pyop2_kernel_prolong       4 0.0 7.9231e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a60e806050_wrap_pyop2_kernel_prolong       4 0.0 7.9361e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1531b68ce510_wrap_pyop2_kernel_prolong       4 0.0 7.9008e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14941ed189d0_wrap_pyop2_kernel_prolong       4 0.0 7.8894e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d52ce0c6d0_wrap_pyop2_kernel_prolong       4 0.0 7.9083e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152bf116a790_wrap_pyop2_kernel_prolong       4 0.0 7.8948e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c60d2a2b10_wrap_pyop2_kernel_prolong       4 0.0 7.9620e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1535ec88a3d0_wrap_pyop2_kernel_prolong       4 0.0 7.8932e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1499c91c46d0_wrap_pyop2_kernel_prolong       4 0.0 7.8846e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d600f02790_wrap_pyop2_kernel_prolong       4 0.0 7.9223e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1469279f5610_wrap_pyop2_kernel_prolong       4 0.0 7.8898e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146411feda90_wrap_pyop2_kernel_prolong       4 0.0 7.8989e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1471149cc450_wrap_pyop2_kernel_prolong       4 0.0 7.9052e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15172d06d4d0_wrap_pyop2_kernel_prolong       4 0.0 7.9292e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153ecf2e68d0_wrap_pyop2_kernel_prolong       4 0.0 7.8967e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a56c2e9d90_wrap_pyop2_kernel_prolong       4 0.0 7.8998e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151d06d97950_wrap_pyop2_kernel_prolong       4 0.0 7.9192e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155013c47210_wrap_pyop2_kernel_prolong       4 0.0 7.8926e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e955db5d50_wrap_pyop2_kernel_prolong       4 0.0 7.8942e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153350edbed0_wrap_pyop2_kernel_prolong       4 0.0 7.9053e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1499185a0f50_wrap_pyop2_kernel_prolong       4 0.0 8.0332e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145cf3540110_wrap_pyop2_kernel_prolong       4 0.0 8.0337e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1523e5ac5510_wrap_pyop2_kernel_prolong       4 0.0 8.0464e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146ce6b20890_wrap_pyop2_kernel_prolong       4 0.0 8.0210e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df5beecc50_wrap_pyop2_kernel_prolong       4 0.0 8.0483e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456db1c3dd0_wrap_pyop2_kernel_prolong       4 0.0 8.0207e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155025d9f850_wrap_pyop2_kernel_prolong       4 0.0 8.0451e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de9011c850_wrap_pyop2_kernel_prolong       4 0.0 8.0221e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e8aee35650_wrap_pyop2_kernel_prolong       4 0.0 8.0071e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1524e887c110_wrap_pyop2_kernel_prolong       4 0.0 8.0077e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a49f240d0_wrap_pyop2_kernel_prolong       4 0.0 7.9606e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f6cf226d0_wrap_pyop2_kernel_prolong       4 0.0 8.0006e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b0f3deb950_wrap_pyop2_kernel_prolong       4 0.0 8.0305e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f3ecbabd0_wrap_pyop2_kernel_prolong       4 0.0 8.0038e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14758fdf0510_wrap_pyop2_kernel_prolong       4 0.0 7.9630e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147bfe7ca550_wrap_pyop2_kernel_prolong       4 0.0 8.0256e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14647af85ad0_wrap_pyop2_kernel_prolong       4 0.0 7.9708e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147411534450_wrap_pyop2_kernel_prolong       4 0.0 7.9781e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153fc5207950_wrap_pyop2_kernel_prolong       4 0.0 8.0354e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14619430f550_wrap_pyop2_kernel_prolong       4 0.0 7.9973e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c2ffe5a390_wrap_pyop2_kernel_prolong       4 0.0 7.9622e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f60ec11a90_wrap_pyop2_kernel_prolong       4 0.0 7.9914e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a5e6e2690_wrap_pyop2_kernel_prolong       4 0.0 7.9911e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f46e64ad0_wrap_pyop2_kernel_prolong       4 0.0 7.9894e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f2d2e7610_wrap_pyop2_kernel_prolong       4 0.0 8.0155e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14871ffc2cd0_wrap_pyop2_kernel_prolong       4 0.0 8.0207e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa3c443e50_wrap_pyop2_kernel_prolong       4 0.0 7.9564e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1471737664d0_wrap_pyop2_kernel_prolong       4 0.0 7.9934e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15185c911310_wrap_pyop2_kernel_prolong       4 0.0 7.9799e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1523a322cd10_wrap_pyop2_kernel_prolong       4 0.0 8.0098e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee45e80910_wrap_pyop2_kernel_prolong       4 0.0 7.9541e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be4d8f51d0_wrap_pyop2_kernel_prolong       4 0.0 8.0288e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e8f7f72bd0_wrap_pyop2_kernel_prolong       4 0.0 7.9765e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e71da5790_wrap_pyop2_kernel_prolong       4 0.0 8.0230e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad69328110_wrap_pyop2_kernel_prolong       4 0.0 8.0298e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1487c5043d10_wrap_pyop2_kernel_prolong       4 0.0 7.9918e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bc2ba31950_wrap_pyop2_kernel_prolong       4 0.0 8.0149e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cb2fad0590_wrap_pyop2_kernel_prolong       4 0.0 7.9758e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153145ff55d0_wrap_pyop2_kernel_prolong       4 0.0 8.0139e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c8444a2090_wrap_pyop2_kernel_prolong       4 0.0 7.9665e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155197805490_wrap_pyop2_kernel_prolong       4 0.0 8.0365e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150933bd0a90_wrap_pyop2_kernel_prolong       4 0.0 7.9825e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b9b1e20550_wrap_pyop2_kernel_prolong       4 0.0 7.9807e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f4af1f0c50_wrap_pyop2_kernel_prolong       4 0.0 7.9781e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145e734e2350_wrap_pyop2_kernel_prolong       4 0.0 8.0386e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150dc3024ad0_wrap_pyop2_kernel_prolong       4 0.0 7.9698e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14787e939bd0_wrap_pyop2_kernel_prolong       4 0.0 7.9840e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147cf82ddb10_wrap_pyop2_kernel_prolong       4 0.0 7.9472e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15517f96c950_wrap_pyop2_kernel_prolong       4 0.0 7.9892e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a416509310_wrap_pyop2_kernel_prolong       4 0.0 8.0092e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148eb29aed10_wrap_pyop2_kernel_prolong       4 0.0 8.0461e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1515feea7950_wrap_pyop2_kernel_prolong       4 0.0 8.0571e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d134544690_wrap_pyop2_kernel_prolong       4 0.0 7.9432e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15501170ff50_wrap_pyop2_kernel_prolong       4 0.0 7.9381e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1520fc595cd0_wrap_pyop2_kernel_prolong       4 0.0 7.9463e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15507f9ac610_wrap_pyop2_kernel_prolong       4 0.0 7.9385e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1495091787d0_wrap_pyop2_kernel_prolong       4 0.0 7.9564e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e92d728b90_wrap_pyop2_kernel_prolong       4 0.0 7.9631e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f55386b8d0_wrap_pyop2_kernel_prolong       4 0.0 7.9426e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152708e177d0_wrap_pyop2_kernel_prolong       4 0.0 7.9580e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5a4446250_wrap_pyop2_kernel_prolong       4 0.0 7.9460e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1501e07a2890_wrap_pyop2_kernel_prolong       4 0.0 7.9449e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ec0aa88ed0_wrap_pyop2_kernel_prolong       4 0.0 7.9512e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154a9bdf1290_wrap_pyop2_kernel_prolong       4 0.0 7.9571e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d6cb303410_wrap_pyop2_kernel_prolong       4 0.0 7.9608e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a9f0976590_wrap_pyop2_kernel_prolong       4 0.0 7.9467e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1476ef4b81d0_wrap_pyop2_kernel_prolong       4 0.0 7.9530e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455b21755d0_wrap_pyop2_kernel_prolong       4 0.0 7.9541e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1533a8d14690_wrap_pyop2_kernel_prolong       4 0.0 7.9522e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd6d166bd0_wrap_pyop2_kernel_prolong       4 0.0 7.9420e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d97160a290_wrap_pyop2_kernel_prolong       4 0.0 7.9557e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15349d1c4590_wrap_pyop2_kernel_prolong       4 0.0 7.9468e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f116a34e10_wrap_pyop2_kernel_prolong       4 0.0 7.9953e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e5e67d450_wrap_pyop2_kernel_prolong       4 0.0 7.9799e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152602af5410_wrap_pyop2_kernel_prolong       4 0.0 7.9689e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150937e51790_wrap_pyop2_kernel_prolong       4 0.0 7.9628e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b06ebcad50_wrap_pyop2_kernel_prolong       4 0.0 7.9482e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148583977f10_wrap_pyop2_kernel_prolong       4 0.0 7.9749e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c893565e90_wrap_pyop2_kernel_prolong       4 0.0 7.9424e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e44b871510_wrap_pyop2_kernel_prolong       4 0.0 7.9435e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151af6c27950_wrap_pyop2_kernel_prolong       4 0.0 7.9566e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e65b6ca90_wrap_pyop2_kernel_prolong       4 0.0 7.9483e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154146be0250_wrap_pyop2_kernel_prolong       4 0.0 7.9492e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15384f757450_wrap_pyop2_kernel_prolong       4 0.0 7.9659e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15064d501010_wrap_pyop2_kernel_prolong       4 0.0 7.9397e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149fa97f7310_wrap_pyop2_kernel_prolong       4 0.0 7.9503e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150e1f3e8190_wrap_pyop2_kernel_prolong       4 0.0 7.9449e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa77a52090_wrap_pyop2_kernel_prolong       4 0.0 7.9405e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b3889df10_wrap_pyop2_kernel_prolong       4 0.0 7.9488e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1511bb5dd850_wrap_pyop2_kernel_prolong       4 0.0 7.9480e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bfb8438110_wrap_pyop2_kernel_prolong       4 0.0 7.9532e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d288249610_wrap_pyop2_kernel_prolong       4 0.0 7.9463e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1457d9b19e50_wrap_pyop2_kernel_prolong       4 0.0 7.9431e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151476feb9d0_wrap_pyop2_kernel_prolong       4 0.0 7.9451e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147fbd5971d0_wrap_pyop2_kernel_prolong       4 0.0 7.9526e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b0c35abd0_wrap_pyop2_kernel_prolong       4 0.0 7.9537e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1535e3ab1050_wrap_pyop2_kernel_prolong       4 0.0 7.9522e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153562316c50_wrap_pyop2_kernel_prolong       4 0.0 7.9474e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148ae25fb1d0_wrap_pyop2_kernel_prolong       4 0.0 7.9428e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d8d422ad90_wrap_pyop2_kernel_prolong       4 0.0 7.9570e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b2088acf90_wrap_pyop2_kernel_prolong       4 0.0 7.9462e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14acc5f3d510_wrap_pyop2_kernel_prolong       4 0.0 7.9544e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1480f644f4d0_wrap_pyop2_kernel_prolong       4 0.0 7.9496e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150011f53250_wrap_pyop2_kernel_prolong       4 0.0 7.9592e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e4556e590_wrap_pyop2_kernel_prolong       4 0.0 7.8743e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1523b4432a10_wrap_pyop2_kernel_prolong       4 0.0 7.8702e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ba62802790_wrap_pyop2_kernel_prolong       4 0.0 7.8825e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1468ee693210_wrap_pyop2_kernel_prolong       4 0.0 7.8746e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1518155cf8d0_wrap_pyop2_kernel_prolong       4 0.0 7.8744e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1501a5b73590_wrap_pyop2_kernel_prolong       4 0.0 7.8910e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458fe6df310_wrap_pyop2_kernel_prolong       4 0.0 7.8736e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b5a7b60a90_wrap_pyop2_kernel_prolong       4 0.0 7.8736e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f92e31250_wrap_pyop2_kernel_prolong       4 0.0 7.8698e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a9f15101d0_wrap_pyop2_kernel_prolong       4 0.0 7.8817e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14824136aed0_wrap_pyop2_kernel_prolong       4 0.0 7.8797e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1536f27c3210_wrap_pyop2_kernel_prolong       4 0.0 7.8856e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c25f014910_wrap_pyop2_kernel_prolong       4 0.0 7.8829e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14795e891c10_wrap_pyop2_kernel_prolong       4 0.0 7.8739e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf2c2b0310_wrap_pyop2_kernel_prolong       4 0.0 7.8727e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c5113cbd0_wrap_pyop2_kernel_prolong       4 0.0 7.8721e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15033154b490_wrap_pyop2_kernel_prolong       4 0.0 7.8692e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a41b1c7bd0_wrap_pyop2_kernel_prolong       4 0.0 7.8766e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e1414d610_wrap_pyop2_kernel_prolong       4 0.0 7.8853e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14995b43f410_wrap_pyop2_kernel_prolong       4 0.0 7.8796e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497895469d0_wrap_pyop2_kernel_prolong       4 0.0 7.8772e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fed8531110_wrap_pyop2_kernel_prolong       4 0.0 7.8791e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e8a3102ad0_wrap_pyop2_kernel_prolong       4 0.0 7.8886e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147bd1b06810_wrap_pyop2_kernel_prolong       4 0.0 7.8846e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d400baa510_wrap_pyop2_kernel_prolong       4 0.0 7.8848e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a5134b090_wrap_pyop2_kernel_prolong       4 0.0 7.8852e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14768795e010_wrap_pyop2_kernel_prolong       4 0.0 7.8741e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14654c70ee10_wrap_pyop2_kernel_prolong       4 0.0 7.8610e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f68eee1090_wrap_pyop2_kernel_prolong       4 0.0 7.8834e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146aa237b3d0_wrap_pyop2_kernel_prolong       4 0.0 7.8714e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d970c8a410_wrap_pyop2_kernel_prolong       4 0.0 7.8747e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b036f95a10_wrap_pyop2_kernel_prolong       4 0.0 7.8782e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ac2857b10_wrap_pyop2_kernel_prolong       4 0.0 7.8768e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a7e33e450_wrap_pyop2_kernel_prolong       4 0.0 7.8787e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150df0d70bd0_wrap_pyop2_kernel_prolong       4 0.0 7.8865e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145fb652edd0_wrap_pyop2_kernel_prolong       4 0.0 7.8750e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15347d2e9190_wrap_pyop2_kernel_prolong       4 0.0 7.8716e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1506397a9fd0_wrap_pyop2_kernel_prolong       4 0.0 7.8895e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f45b41af10_wrap_pyop2_kernel_prolong       4 0.0 7.8763e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15274537dfd0_wrap_pyop2_kernel_prolong       4 0.0 7.8736e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153050987050_wrap_pyop2_kernel_prolong       4 0.0 7.8847e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ff1d9f090_wrap_pyop2_kernel_prolong       4 0.0 7.8830e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148d869a1650_wrap_pyop2_kernel_prolong       4 0.0 7.8836e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f7ac81250_wrap_pyop2_kernel_prolong       4 0.0 7.8788e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e66f0fd50_wrap_pyop2_kernel_prolong       4 0.0 7.8902e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1463410b2fd0_wrap_pyop2_kernel_prolong       4 0.0 7.8685e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1538fe668d90_wrap_pyop2_kernel_prolong       4 0.0 7.8758e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab0f4c3750_wrap_pyop2_kernel_prolong       4 0.0 7.8831e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1506ad249750_wrap_pyop2_kernel_prolong       4 0.0 7.8754e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d0efa37f10_wrap_pyop2_kernel_prolong       4 0.0 7.8824e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cc8c9f64d0_wrap_pyop2_kernel_prolong       4 0.0 7.8772e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a86739e6d0_wrap_pyop2_kernel_prolong       4 0.0 7.8863e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153515b25e10_wrap_pyop2_kernel_prolong       4 0.0 7.8569e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c203d31b10_wrap_pyop2_kernel_prolong       4 0.0 7.8623e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f21e31350_wrap_pyop2_kernel_prolong       4 0.0 7.8686e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1508da4414d0_wrap_pyop2_kernel_prolong       4 0.0 7.8602e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1537b4e6ef50_wrap_pyop2_kernel_prolong       4 0.0 7.8705e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ebf6e48bd0_wrap_pyop2_kernel_prolong       4 0.0 7.8769e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147bd7d39b90_wrap_pyop2_kernel_prolong       4 0.0 7.8635e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ea18232010_wrap_pyop2_kernel_prolong       4 0.0 7.8704e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c4d0475550_wrap_pyop2_kernel_prolong       4 0.0 7.8648e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146ba31881d0_wrap_pyop2_kernel_prolong       4 0.0 7.8572e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146ef5cac250_wrap_pyop2_kernel_prolong       4 0.0 7.8782e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b883250710_wrap_pyop2_kernel_prolong       4 0.0 7.8677e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e77865f90_wrap_pyop2_kernel_prolong       4 0.0 7.8648e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f7cafa9450_wrap_pyop2_kernel_prolong       4 0.0 7.8683e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145c987593d0_wrap_pyop2_kernel_prolong       4 0.0 7.8595e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1524875c9710_wrap_pyop2_kernel_prolong       4 0.0 7.8701e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a2a24b98d0_wrap_pyop2_kernel_prolong       4 0.0 7.8574e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dcecbfe510_wrap_pyop2_kernel_prolong       4 0.0 7.8736e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a9f244f090_wrap_pyop2_kernel_prolong       4 0.0 7.8715e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cb6b8c8850_wrap_pyop2_kernel_prolong       4 0.0 7.8661e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f1ee4c450_wrap_pyop2_kernel_prolong       4 0.0 7.8604e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1541206fc3d0_wrap_pyop2_kernel_prolong       4 0.0 7.8761e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc5e6fd550_wrap_pyop2_kernel_prolong       4 0.0 7.8647e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150de5d881d0_wrap_pyop2_kernel_prolong       4 0.0 7.8741e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1524e94e1810_wrap_pyop2_kernel_prolong       4 0.0 7.8772e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145808978910_wrap_pyop2_kernel_prolong       4 0.0 7.8778e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15084fb9c950_wrap_pyop2_kernel_prolong       4 0.0 7.8684e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d69d8f2e90_wrap_pyop2_kernel_prolong       4 0.0 7.8674e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522516dbb90_wrap_pyop2_kernel_prolong       4 0.0 7.8726e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a8dc89590_wrap_pyop2_kernel_prolong       4 0.0 7.8597e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152377430a90_wrap_pyop2_kernel_prolong       4 0.0 7.8683e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149bc2f35610_wrap_pyop2_kernel_prolong       4 0.0 7.8669e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eff7eed350_wrap_pyop2_kernel_prolong       4 0.0 7.8564e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f267dcb10_wrap_pyop2_kernel_prolong       4 0.0 7.8688e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a2d1b0ebd0_wrap_pyop2_kernel_prolong       4 0.0 7.8707e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14adb3b10b50_wrap_pyop2_kernel_prolong       4 0.0 7.8523e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df6a8d52d0_wrap_pyop2_kernel_prolong       4 0.0 7.8732e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15462ef01e50_wrap_pyop2_kernel_prolong       4 0.0 7.8679e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b38082bd0_wrap_pyop2_kernel_prolong       4 0.0 7.8800e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ca23cc1010_wrap_pyop2_kernel_prolong       4 0.0 7.8686e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1472816b0210_wrap_pyop2_kernel_prolong       4 0.0 7.8673e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15175565bad0_wrap_pyop2_kernel_prolong       4 0.0 7.8741e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15067d8d2bd0_wrap_pyop2_kernel_prolong       4 0.0 7.8632e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149010c2ead0_wrap_pyop2_kernel_prolong       4 0.0 7.8739e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152685b91050_wrap_pyop2_kernel_prolong       4 0.0 7.8802e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c17215bd0_wrap_pyop2_kernel_prolong       4 0.0 7.8676e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15057b553610_wrap_pyop2_kernel_prolong       4 0.0 7.8719e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15480702d8d0_wrap_pyop2_kernel_prolong       4 0.0 7.8756e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e43a0be50_wrap_pyop2_kernel_prolong       4 0.0 7.8624e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491f8125610_wrap_pyop2_kernel_prolong       4 0.0 7.8695e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14875fac8690_wrap_pyop2_kernel_prolong       4 0.0 7.8711e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1518ed89e810_wrap_pyop2_kernel_prolong       4 0.0 7.8751e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15518654e8d0_wrap_pyop2_kernel_prolong       4 0.0 7.9433e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e2a78c9d0_wrap_pyop2_kernel_prolong       4 0.0 7.9287e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f5e15f2390_wrap_pyop2_kernel_prolong       4 0.0 7.9872e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac2fe7c210_wrap_pyop2_kernel_prolong       4 0.0 7.9398e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148cc6df5490_wrap_pyop2_kernel_prolong       4 0.0 8.0217e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15205b4a29d0_wrap_pyop2_kernel_prolong       4 0.0 8.1069e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14620e3784d0_wrap_pyop2_kernel_prolong       4 0.0 8.0642e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14faf3e8fa50_wrap_pyop2_kernel_prolong       4 0.0 8.0654e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1485cbdb1b90_wrap_pyop2_kernel_prolong       4 0.0 8.0266e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152b98722bd0_wrap_pyop2_kernel_prolong       4 0.0 8.0218e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bbe558fd50_wrap_pyop2_kernel_prolong       4 0.0 7.9432e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1545b665eb50_wrap_pyop2_kernel_prolong       4 0.0 8.0678e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15269fff5190_wrap_pyop2_kernel_prolong       4 0.0 8.1593e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b93b9b390_wrap_pyop2_kernel_prolong       4 0.0 7.9912e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456deba3350_wrap_pyop2_kernel_prolong       4 0.0 8.0068e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a56a46f890_wrap_pyop2_kernel_prolong       4 0.0 7.9561e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14883c731750_wrap_pyop2_kernel_prolong       4 0.0 8.0580e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1463d19db310_wrap_pyop2_kernel_prolong       4 0.0 7.9637e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1552725fd310_wrap_pyop2_kernel_prolong       4 0.0 7.9588e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1530af9cdbd0_wrap_pyop2_kernel_prolong       4 0.0 7.9337e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b5889c6ed0_wrap_pyop2_kernel_prolong       4 0.0 7.9796e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd8ca79b50_wrap_pyop2_kernel_prolong       4 0.0 7.9479e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cefcb1c150_wrap_pyop2_kernel_prolong       4 0.0 7.9307e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1484021bf590_wrap_pyop2_kernel_prolong       4 0.0 8.0253e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c1345d5850_wrap_pyop2_kernel_prolong       4 0.0 7.9395e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148790feeb90_wrap_pyop2_kernel_prolong       4 0.0 7.9790e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145a7d657a90_wrap_pyop2_kernel_prolong       4 0.0 7.9898e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c1db63ed0_wrap_pyop2_kernel_prolong       4 0.0 7.9781e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151abbdb5690_wrap_pyop2_kernel_prolong       4 0.0 7.9637e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150bb4156e90_wrap_pyop2_kernel_prolong       4 0.0 8.0223e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14557387e2d0_wrap_pyop2_kernel_prolong       4 0.0 7.9597e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b8ef5cca90_wrap_pyop2_kernel_prolong       4 0.0 7.9938e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e2416c850_wrap_pyop2_kernel_prolong       4 0.0 7.9445e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152bd9979950_wrap_pyop2_kernel_prolong       4 0.0 7.9993e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c3c8e68250_wrap_pyop2_kernel_prolong       4 0.0 8.0892e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b646ebf250_wrap_pyop2_kernel_prolong       4 0.0 8.0413e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150442770c90_wrap_pyop2_kernel_prolong       4 0.0 7.9438e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455b3d7fbd0_wrap_pyop2_kernel_prolong       4 0.0 7.9393e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146429c17d50_wrap_pyop2_kernel_prolong       4 0.0 8.0948e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150639fe4b90_wrap_pyop2_kernel_prolong       4 0.0 7.9364e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1547d8505550_wrap_pyop2_kernel_prolong       4 0.0 7.9503e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1529e69ef290_wrap_pyop2_kernel_prolong       4 0.0 7.9490e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151113553290_wrap_pyop2_kernel_prolong       4 0.0 7.9315e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14675425fb50_wrap_pyop2_kernel_prolong       4 0.0 7.9457e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153823edb450_wrap_pyop2_kernel_prolong       4 0.0 7.9652e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f549df3b10_wrap_pyop2_kernel_prolong       4 0.0 7.9522e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152bd08faf10_wrap_pyop2_kernel_prolong       4 0.0 7.9568e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14650fe07050_wrap_pyop2_kernel_prolong       4 0.0 7.9474e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e469d77590_wrap_pyop2_kernel_prolong       4 0.0 7.9405e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c290bd9d0_wrap_pyop2_kernel_prolong       4 0.0 7.9422e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15467233d810_wrap_pyop2_kernel_prolong       4 0.0 7.9483e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1527992df010_wrap_pyop2_kernel_prolong       4 0.0 8.0038e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15203f168e10_wrap_pyop2_kernel_prolong       4 0.0 7.9470e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d0f2ff9bd0_wrap_pyop2_kernel_prolong       4 0.0 8.0042e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149835e81190_wrap_pyop2_kernel_prolong       4 0.0 8.0893e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a204edb9d0_wrap_pyop2_kernel_prolong       4 0.0 7.9949e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145abc2c7c90_wrap_pyop2_kernel_prolong       4 0.0 8.0563e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14753692b5d0_wrap_pyop2_kernel_prolong       4 0.0 8.0798e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b1ade3a10_wrap_pyop2_kernel_prolong       4 0.0 7.9738e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15368d87ac90_wrap_pyop2_kernel_prolong       4 0.0 7.9584e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ec70dfa10_wrap_pyop2_kernel_prolong       4 0.0 8.0477e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15520df0be50_wrap_pyop2_kernel_prolong       4 0.0 8.0445e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d5fdaabd0_wrap_pyop2_kernel_prolong       4 0.0 7.9982e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455b15b45d0_wrap_pyop2_kernel_prolong       4 0.0 8.0612e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c6b914310_wrap_pyop2_kernel_prolong       4 0.0 8.0919e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15030cf2b0d0_wrap_pyop2_kernel_prolong       4 0.0 8.0743e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491f6151bd0_wrap_pyop2_kernel_prolong       4 0.0 8.0692e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e8196a990_wrap_pyop2_kernel_prolong       4 0.0 7.9423e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150b741cd0d0_wrap_pyop2_kernel_prolong       4 0.0 8.0399e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e8f3b9d90_wrap_pyop2_kernel_prolong       4 0.0 7.9640e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cedca86450_wrap_pyop2_kernel_prolong       4 0.0 7.9763e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1480847f5610_wrap_pyop2_kernel_prolong       4 0.0 7.9888e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b10cb1d350_wrap_pyop2_kernel_prolong       4 0.0 8.0530e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146fbd2a07d0_wrap_pyop2_kernel_prolong       4 0.0 7.9855e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f9a333310_wrap_pyop2_kernel_prolong       4 0.0 8.0611e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150e8c821750_wrap_pyop2_kernel_prolong       4 0.0 8.0341e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150e2f304450_wrap_pyop2_kernel_prolong       4 0.0 8.0597e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152b00ff3fd0_wrap_pyop2_kernel_prolong       4 0.0 8.0312e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14840057d2d0_wrap_pyop2_kernel_prolong       4 0.0 7.9771e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147db61163d0_wrap_pyop2_kernel_prolong       4 0.0 7.9625e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15187ce92350_wrap_pyop2_kernel_prolong       4 0.0 8.0020e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d87e4b1fd0_wrap_pyop2_kernel_prolong       4 0.0 8.0692e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c03733d650_wrap_pyop2_kernel_prolong       4 0.0 7.9684e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c50cebd290_wrap_pyop2_kernel_prolong       4 0.0 8.0558e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ba55b16c90_wrap_pyop2_kernel_prolong       4 0.0 8.0643e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd9b4cff10_wrap_pyop2_kernel_prolong       4 0.0 7.9683e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152b5fd4ed50_wrap_pyop2_kernel_prolong       4 0.0 8.0135e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1537312d45d0_wrap_pyop2_kernel_prolong       4 0.0 8.0783e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1530af4bd6d0_wrap_pyop2_kernel_prolong       4 0.0 8.0220e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c71be8650_wrap_pyop2_kernel_prolong       4 0.0 8.0665e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e842080d0_wrap_pyop2_kernel_prolong       4 0.0 8.0938e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fdd9da3110_wrap_pyop2_kernel_prolong       4 0.0 8.0326e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152721efbdd0_wrap_pyop2_kernel_prolong       4 0.0 8.0641e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b4ba5e9e50_wrap_pyop2_kernel_prolong       4 0.0 8.0198e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c08a13d250_wrap_pyop2_kernel_prolong       4 0.0 7.9934e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c26947d690_wrap_pyop2_kernel_prolong       4 0.0 8.0241e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150b00596390_wrap_pyop2_kernel_prolong       4 0.0 8.0437e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150876f0d910_wrap_pyop2_kernel_prolong       4 0.0 7.9741e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e5e178110_wrap_pyop2_kernel_prolong       4 0.0 7.9973e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d507166c90_wrap_pyop2_kernel_prolong       4 0.0 8.0974e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e366274d0_wrap_pyop2_kernel_prolong       4 0.0 7.9972e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f056dcb750_wrap_pyop2_kernel_prolong       4 0.0 7.9951e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e6b4878310_wrap_pyop2_kernel_prolong       4 0.0 7.9882e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fef8a50f10_wrap_pyop2_kernel_prolong       4 0.0 8.0905e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided        225 1.0 7.5814e-02 3.9 0.00e+00 0.0 1.1e+06 4.0e+00 2.2e+02  0  0  1  0  1   0  0  1  0  3    -0
SFSetGraph           225 1.0 3.5404e-03 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              225 1.0 9.0331e-02 2.4 0.00e+00 0.0 2.3e+06 5.6e+01 2.2e+02  0  0  1  0  1   0  0  2  0  3    -0
SFPack           3212055 1.1 3.0502e+00 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack         3212055 1.1 1.7044e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy            20790 1.0 1.2754e+01 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecSet             38113 1.0 1.5057e+01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecAYPX            34650 1.0 2.2078e+01 2.1 8.55e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  3  0  0  0 307106
VecAXPBYCZ          6930 1.0 5.4200e-03 2.2 2.37e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 3467174
VecScatterBegin  3212055 1.1 4.2833e+01 1.3 0.00e+00 0.0 1.2e+08 3.0e+04 0.0e+00  2  0 69 40  0   5  0 95 100  0    -0
VecScatterEnd    3212055 1.1 5.9413e+01 11.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
MatMult            20790 1.0 3.0241e+02 1.2 2.02e+11 1.1 9.8e+07 3.5e+04 0.0e+00 17 15 58 40  0  34 62 81 100  0 528831
MatMultAdd          6930 1.0 1.7891e+01 1.2 8.55e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  3  0  0  0 378757
MatMultTranspose    6930 1.0 1.4466e+01 2.0 8.55e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   1  3  0  0  0 468433
MatSolve         1597365 1.1 4.3169e+02 1.2 1.00e+11 1.1 2.3e+07 1.8e+02 1.1e+03 24  7 14  0  4  48 30 19  0 14 183081
MatLUFactorNum       224 1.0 3.6189e+01 1.0 1.58e+08 214.4 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0   136
MatResidual         6930 1.0 1.6287e+02 1.3 1.02e+11 1.1 3.3e+07 5.3e+04 0.0e+00  9  8 19 20  0  18 31 27 50  0 497618
PCSetUp              224 1.0 3.6191e+01 1.0 1.58e+08 214.4 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0   136
PCSetUpOnBlocks     6930 1.0 5.0616e-02 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply            10395 1.0 5.2365e+02 1.1 1.01e+11 1.1 8.9e+07 1.8e+02 4.6e+03 30  7 53  0 16  60 31 73  0 57 151375
PCApplyOnBlocks  1593900 1.1 2.0763e+02 1.4 9.95e+10 1.1 0.0e+00 0.0e+00 0.0e+00 10  7  0  0  0  21 30  0  0  0 380051
KSPSolve           10395 1.0 6.8138e+02 1.1 2.09e+11 1.1 1.1e+08 1.7e+04 8.1e+03 39 15 62 20 28  79 64 87 50 100 241835
MGSmooth Level 0    3465 1.0 2.9092e+02 1.1 5.19e+09 10.6 8.9e+07 1.8e+02 8.1e+03 16  0 53  0 28  33  0 73  0 100  1792
MGSmooth Level 1    6930 1.0 4.1781e+02 1.2 2.07e+11 1.1 1.6e+07 1.1e+05 0.0e+00 23 15 10 20  0  46 63 13 50  0 393151
MGResid Level 1     3465 1.0 1.6233e+02 1.3 1.02e+11 1.1 1.6e+07 1.1e+05 0.0e+00  9  8 10 20  0  17 31 13 50  0 499013
MGInterp Level 1    6930 1.0 3.0741e+01 1.3 1.71e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  1  0  0  0   3  5  0  0  0 440140
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   198            197
              Viewer     3              3
           Index Set  5201           5201
   IS L to G Mapping   330            326
             Section   294            294
   Star Forest Graph   485            484
              Vector  2218           2214
              Matrix  1211           1197
      Preconditioner   230            230
       Krylov Solver   228            228
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

           Index Set   450            450
   Star Forest Graph   227            224
              Vector   449            449
    Distributed Mesh     1              0
     Discrete System     1              0
           Weak Form     1              0
========================================================================================================================
Average time to get PetscTime(): 2.68e-08
Average time for MPI_Barrier(): 8.1232e-06
Average time for zero size MPI_Send(): 2.97082e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_mg_coarse_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_mg_levels_1_pc_linesmooth_sub_sub_pc_factor_mat_ordering_type natural # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murr_hierarchy/vlumping_hmg/L1.profile # (source: code)
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

