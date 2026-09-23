****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0108.gadi.nci.org.au with 104 processes, by sg8812 on Fri Aug 28 15:12:19 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           4.492e+03     1.000   4.492e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                4.098e+12     1.181   3.898e+12  4.053e+14
Flops/sec:            9.124e+08     1.181   8.677e+08  9.024e+10
MPI Msg Count:        1.361e+06     3.437   9.825e+05  1.022e+08
MPI Msg Len (bytes):  4.974e+10     3.000   3.570e+04  3.648e+12
MPI Reductions:       7.703e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 1.7738e+03  39.5%  2.4475e+14  60.4%  1.185e+07  11.6%  1.372e+05       44.5%  4.450e+04  57.8%
 1:        MG Apply: 2.7179e+03  60.5%  1.6059e+14  39.6%  9.033e+07  88.4%  2.239e+04       55.5%  3.250e+04  42.2%

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

BuildTwoSided       2612 1.0 9.3145e+01 8.9 0.00e+00 0.0 1.6e+05 4.0e+00 2.4e+03  1  0  0  0  3   3  0  1  0  5    -0
BuildTwoSidedF      2252 1.0 9.2847e+01 8.8 0.00e+00 0.0 2.3e+05 1.5e+06 2.3e+03  1  0  0  9  3   3  0  2 21  5    -0
SFSetGraph           369 1.1 1.5818e-02 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              360 1.1 1.0021e+00 25.9 0.00e+00 0.0 7.8e+04 1.0e+03 1.2e+02  0  0  0  0  0   0  0  1  0  0    -0
SFBcastBegin        1510 1.0 8.0381e-01 3.4 0.00e+00 0.0 7.6e+05 1.0e+05 0.0e+00  0  0  1  2  0   0  0  6  5  0    -0
SFBcastEnd          1510 1.0 2.5563e+01 95.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        622 1.0 1.3733e-01 19.2 0.00e+00 0.0 3.2e+05 1.1e+05 0.0e+00  0  0  0  1  0   0  0  3  2  0    -0
SFReduceEnd          622 1.0 6.6746e+00 66.1 6.23e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   685
SFFetchOpBegin         6 1.0 2.6280e-05 3.7 0.00e+00 0.0 2.5e+03 7.3e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           6 1.0 4.0568e-04 8.7 0.00e+00 0.0 2.5e+03 7.3e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          4 1.0 6.7074e-04 1.3 0.00e+00 0.0 1.2e+03 1.2e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         51 1.0 4.7749e-03 1.3 0.00e+00 0.0 6.2e+04 8.1e+01 6.0e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           53 1.0 3.1160e-03 1.8 0.00e+00 0.0 3.1e+04 3.6e+01 5.3e+01  0  0  0  0  0   0  0  0  0  0    -0
SFRemoteOff            2 1.0 8.0475e-05 2.3 0.00e+00 0.0 1.1e+03 1.6e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack            725342 1.1 9.8056e+00 3.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack          725348 1.1 3.9019e-01 7.2 6.23e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 11712
VecDot               391 1.0 1.5817e+00 5.0 3.38e+08 1.2 0.0e+00 0.0e+00 3.9e+02  0  0  0  0  1   0  0  0  0  1 21415
VecMDot            18727 1.0 2.5812e+02 1.6 1.93e+11 1.2 0.0e+00 0.0e+00 1.9e+04  4  5  0  0 24  11  8  0  0 42 75130
VecNorm            20945 1.0 4.9573e+01 4.9 1.67e+10 1.2 0.0e+00 0.0e+00 2.1e+04  1  0  0  0 27   1  1  0  0 47 33795
VecScale           19760 1.0 6.2125e+00 1.2 7.84e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 126573
VecCopy             3224 1.0 4.3432e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              4551 1.0 3.7713e+00 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY             1033 1.0 1.5394e+00 1.2 7.62e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 49648
VecWAXPY             770 1.0 1.6258e+00 1.5 3.38e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 20861
VecMAXPY           19760 1.0 2.5210e+02 1.1 2.08e+11 1.2 0.0e+00 0.0e+00 0.0e+00  5  5  0  0  0  14  9  0  0  0 82858
VecScatterBegin   723204 1.1 1.7561e+01 1.7 0.00e+00 0.0 1.0e+07 1.1e+05 0.0e+00  0  0 10 31  0   1  0 86 70  0    -0
VecScatterEnd     723204 1.1 1.3358e+02 59.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecSetRandom          69 1.0 6.2607e-01 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecReduceArith       782 1.0 6.3678e-01 2.0 6.76e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 106386
VecReduceComm        391 1.0 7.8529e-01 46.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.9e+02  0  0  0  0  1   0  0  0  0  1    -0
VecNormalize        3069 1.0 5.9709e+00 3.7 1.90e+09 1.2 0.0e+00 0.0e+00 3.1e+03  0  0  0  0  4   0  0  0  0  7 31832
MatMult            19484 1.0 8.0746e+02 1.2 5.52e+11 1.2 1.0e+07 1.1e+05 0.0e+00 16 14 10 31  0  41 23 86 70  0 68377
MatSolve          352009 1.2 3.6706e+01 1.2 2.21e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  1  0  0  0 60232
MatLUFactorSym       241 1.2 1.7633e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum     16712 1.2 3.8232e+00 1.2 4.75e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 124518
MatILUFactorSym        2 1.0 1.3489e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCopy              148 1.0 8.2482e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatConvert             1 1.0 2.1379e-01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin   19779 1.1 9.2887e+01 3.4 0.00e+00 0.0 2.3e+05 1.5e+06 2.3e+03  1  0  0  9  3   3  0  2 21  5    -0
MatAssemblyEnd     19779 1.1 2.2230e+01 5.6 5.01e+08 0.0 4.2e+03 7.6e+03 7.1e+01  0  0  0  0  0   1  0  0  0  0   954
MatGetRowIJ          242 1.2 3.2825e-05 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats      69 1.0 9.3361e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 2.4e+02  0  0  0  0  0   0  0  0  0  1    -0
MatGetOrdering       242 1.2 3.9237e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       896 1.0 1.6281e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
MatTranspose           8 1.0 1.5551e-02 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.8e+01  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          8 1.0 1.4886e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 1.8e+01  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        902 1.0 2.6104e+00 1.1 4.67e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 178718
MatPtAPSymbolic        3 1.0 2.1545e-01 1.0 0.00e+00 0.0 4.7e+03 6.7e+04 2.1e+01  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       450 1.0 1.6938e+01 1.0 1.87e+10 1.2 2.4e+05 1.2e+05 4.6e+02  0  0  0  1  1   1  1  2  2  1 110128
MatGetLocalMat       454 1.0 1.1562e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        454 1.0 6.0751e-01 2.0 0.00e+00 0.0 2.4e+05 1.2e+05 0.0e+00  0  0  0  1  0   0  0  2  2  0    -0
MatSetPreallCOO       32 1.0 5.6338e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       32 1.0 2.9126e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp              446 1.0 1.9001e+02 1.0 1.17e+11 1.2 1.8e+06 6.7e+04 7.5e+03  4  3  2  3 10  11  5 15  7 17 61418
PCApply            15879 1.0 2.7612e+03 1.0 1.60e+12 1.2 9.0e+07 2.2e+04 3.3e+04 61 40 88 55 42 Multiple stages 58159
PCApplyOnBlocks   352009 1.2 4.1369e+01 1.2 2.68e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  1  0  0  0 64933
KSPSetUp             446 1.0 2.0973e-02 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             446 1.0 3.8146e+03 1.0 2.50e+12 1.2 9.9e+07 3.1e+04 6.5e+04 85 62 97 84 84 Multiple stages 65600
KSPGMRESOrthog     18727 1.0 4.7715e+02 1.2 3.87e+11 1.2 0.0e+00 0.0e+00 1.9e+04  9 10  0  0 24  24 16  0  0 42 81285
DMRefine               2 1.0 2.2610e-01 1.0 2.09e+03 1.0 7.4e+03 3.5e+01 6.3e+01  0  0  0  0  0   0  0  0  0  0     1
DMPlexCreateGmsh       1 1.0 1.2979e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 3.6964e+00 263.8 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Partition         4 1.0 4.6124e-02 1.0 0.00e+00 0.0 1.8e+04 6.4e+01 5.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         4 1.0 1.1432e-02 1.0 0.00e+00 0.0 6.7e+04 7.4e+01 2.4e+02  0  0  0  0  0   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 1.2009e-03 586.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       4 1.0 7.9006e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        4 1.0 3.8222e-03 1.1 0.00e+00 0.0 3.6e+03 5.1e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       4 1.0 1.2019e-03 1.5 0.00e+00 0.0 1.8e+03 1.9e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          4 1.0 8.8539e-04 2.4 0.00e+00 0.0 1.9e+03 2.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          29 1.0 5.5010e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 5.0019e-02 1.0 0.00e+00 0.0 4.3e+03 1.8e+02 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        4 1.0 1.4509e-03 1.1 0.00e+00 0.0 1.1e+04 1.1e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       4 1.0 4.7905e-03 1.0 0.00e+00 0.0 3.5e+04 7.1e+01 1.5e+02  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistOvrlp        3 1.0 8.7541e-03 1.0 0.00e+00 0.0 8.3e+04 7.0e+01 2.4e+02  0  0  0  0  0   0  0  1  0  1    -0
DMPlexDistField        7 1.0 2.0684e-03 1.2 0.00e+00 0.0 1.5e+04 5.8e+01 2.0e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         2 1.0 2.5578e-04 1.2 0.00e+00 0.0 5.4e+03 2.9e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify        41 1.0 4.5189e-03 5.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      41 1.0 2.5206e-04 4.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          2 1.0 1.0533e-04 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          2 1.0 2.8358e-03 1.7 0.00e+00 0.0 4.1e+03 2.9e+01 1.9e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          2 1.0 1.1943e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          2 1.0 3.1660e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             2 1.0 3.4250e-04 2.1 0.00e+00 0.0 3.3e+03 2.7e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         2 1.0 8.8560e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         2 1.0 7.2578e-04 1.9 0.00e+00 0.0 8.2e+02 3.7e+01 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMSwarmSetSizes        4 1.0 3.8488e-05 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve            173 1.0 4.4236e+03 1.0 4.10e+12 1.2 1.0e+08 3.6e+04 7.6e+04 98 100 100 100 99 Multiple stages 91629
SNESSetUp              1 1.0 5.9726e-05 3.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     577 1.0 5.2699e+01 1.1 5.61e+11 1.2 7.0e+05 1.2e+05 0.0e+00  1 13  1  2  0   3 22  6  5  0 1028806
SNESJacobianEval     446 1.0 3.4649e+02 1.0 9.06e+11 1.2 4.7e+05 7.9e+05 1.8e+03  8 22  0 10  2  20 36  4 23  4 253420
SNESLineSearch       391 1.0 4.9857e+01 1.0 4.07e+11 1.2 6.3e+05 1.2e+05 1.6e+03  1 10  1  2  2   3 16  5  5  4 789206
DualSpaceSetUp         8 1.0 5.4158e-03 1.1 1.08e+02 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     2
FESetUp                8 1.0 2.0309e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 4.4894e+03 1.0 4.10e+12 1.2 1.0e+08 3.6e+04 7.7e+04 100 100 100 100 100 Multiple stages 90288
firedrake.__init__       1 1.0 1.2866e+01 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
CreateMesh             3 1.0 3.8241e+00 27.1 0.00e+00 0.0 1.6e+05 7.5e+01 4.4e+02  0  0  0  0  1   0  0  1  0  1    -0
firedrake.mesh._from_gmsh       1 1.0 3.6973e+00 263.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       3 1.0 9.4791e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       3 1.0 6.5290e-06 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        7 1.0 7.6000e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          3 1.0 9.6766e-04 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      36 1.0 7.0932e-02 1.1 0.00e+00 0.0 7.6e+03 1.0e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      44 1.0 2.7211e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      40 1.0 6.7665e-02 1.1 0.00e+00 0.0 7.6e+03 1.0e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      39 1.0 6.2933e-02 1.1 0.00e+00 0.0 7.6e+03 1.0e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      39 1.0 6.2711e-02 1.1 0.00e+00 0.0 7.6e+03 1.0e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      78 1.0 4.4639e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       6 1.0 4.2711e-03 1.1 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__      12 1.0 7.8809e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      24 1.0 2.2379e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      76 1.0 1.6227e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          3 1.0 1.8670e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       3 1.0 2.2342e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       8 1.0 6.9476e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       5 1.0 1.3138e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       3 1.0 1.8605e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map    1250 1.0 1.7886e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      4693 1.0 3.4475e+02 1.2 1.47e+12 1.2 6.4e+05 1.2e+05 3.8e+01  7 35  1  2  0  18 58  5  5  0 411914
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       6 1.0 1.8150e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    9386 1.0 2.7253e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      19 1.0 1.1079e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
GlobalKernel: generate loopy      19 0.0 1.4202e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      19 0.0 9.0564e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      21 1.0 2.0194e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.load      20 1.0 2.0193e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      20 1.0 1.0428e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.make_so      20 1.0 1.0212e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
ParLoopRednBegin    4693 1.0 1.3884e-02 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      4693 1.0 1.2064e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       3 1.0 9.6681e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong       4 1.0 5.9397e+00 1.0 1.46e+07 1.2 8.9e+03 1.3e+04 1.3e+01  0  0  0  0  0   0  0  0  0  0   246
firedrake.interpolation.interpolate      21 1.0 6.2203e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      15 1.0 1.4858e+01 1.0 9.07e+07 1.2 3.2e+04 1.8e+04 1.8e+02  0  0  0  0  0   1  0  0  0  0   612
firedrake.formmanipulation.split_form      16 1.0 5.3035e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      16 1.0 2.2288e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      17 1.0 1.9812e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       8 1.0 1.2441e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin    1217 1.0 2.4858e+00 4.7 0.00e+00 0.0 6.4e+05 1.2e+05 4.0e+00  0  0  1  2  0   0  0  5  5  0    -0
Parloop_Cells_wrap_expression_kernel      34 1.0 6.9497e+00 1.0 9.06e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1308
firedrake.halo.Halo.global_to_local_end    1217 1.0 2.5569e+01 108.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       3 1.0 7.3304e+00 34.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522e880bd50_wrap_pyop2_kernel_prolong       4 0.0 7.4835e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522e8874350_wrap_pyop2_kernel_prolong       4 0.0 5.5773e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 3.8768e+00 1.0 7.34e+07 1.2 8.1e+03 6.1e+04 1.1e+01  0  0  0  0  0   0  0  0  0  0  1899
firedrake.function.Function.assign     706 1.0 4.1610e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     705 1.0 3.9613e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.3068e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate     240 1.0 2.8174e-03 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 3.0978e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.5001e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 2.0597e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.2282e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 7.1444e+00 1.0 0.00e+00 0.0 3.2e+03 4.9e+05 2.3e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 6.8557e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.4097e-04 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.2036e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.2036e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateSparsity         4 1.0 3.6934e+00 1.0 0.00e+00 0.0 7.1e+03 1.1e+05 4.6e+01  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         4 1.0 6.0013e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve     173 1.0 4.4243e+03 1.0 4.10e+12 1.2 1.0e+08 3.6e+04 7.6e+04 98 100 100 100 99 Multiple stages 91616
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 2.6990e-01 950.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 7.6590e-06 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 2.6985e-01 1138.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 2.6982e-01 1286.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral    1154 1.0 1.3640e+01 1.4 1.43e+11 1.2 0.0e+00 0.0e+00 0.0e+00  0  4  0  0  0   1  6  0  0  0 1052667
Parloop_Cells_wrap_form0_exterior_facet_top_integral    1154 1.0 1.1526e+00 1.0 1.84e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1602
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral    1154 1.0 1.3415e+00 1.1 1.38e+09 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 18164
Parloop_Cells_wrap_form0_interior_facet_horiz_integral    1154 1.0 9.2806e+00 1.2 1.36e+11 1.2 0.0e+00 0.0e+00 0.0e+00  0  3  0  0  0   0  6  0  0  0 1470404
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral    1154 1.0 2.0685e+01 1.3 2.82e+11 1.3 0.0e+00 0.0e+00 0.0e+00  0  6  0  0  0   1 11  0  0  0 1265742
firedrake.halo.Halo.local_to_global_begin     577 1.0 1.5617e-01 7.9 0.00e+00 0.0 3.0e+05 1.2e+05 0.0e+00  0  0  0  1  0   0  0  3  2  0    -0
firedrake.halo.Halo.local_to_global_end     577 1.0 6.6802e+00 62.4 6.23e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   684
Parloop_Cells_wrap_form00_cell_integral     892 1.0 5.7197e+01 1.4 2.06e+11 1.2 0.0e+00 0.0e+00 0.0e+00  1  5  0  0  0   3  8  0  0  0 360325
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     892 1.0 2.9384e+00 2.3 1.07e+09 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  6449
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     892 1.0 7.0673e+01 1.2 2.70e+11 1.2 0.0e+00 0.0e+00 0.0e+00  1  7  0  0  0   4 11  0  0  0 383641
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     892 1.0 1.6188e+02 1.4 4.30e+11 1.3 0.0e+00 0.0e+00 0.0e+00  3 10  0  0  0   8 16  0  0  0 247384
firedrake.dmhooks.get_function_space       2 1.0 2.3389e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       3 1.0 9.8325e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.VertexOnlyMesh       2 1.0 7.3379e+00 1.0 0.00e+00 0.0 1.4e+04 8.1e+01 2.2e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._pic_swarm_in_mesh       2 1.0 7.3266e+00 1.0 0.00e+00 0.0 9.6e+03 6.6e+01 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._parent_mesh_embedding       2 1.0 6.8918e+00 1.0 0.00e+00 0.0 5.4e+03 2.9e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.locate_cells_ref_coords_and_dists       2 1.0 5.8948e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry._c_locator       2 1.0 5.8851e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.pointquery_utils.src_locate_cell       2 1.0 5.2377e+00 3.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.pointquery_utils.compile_coordinate_element       2 1.0 5.2233e+00 34.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.pointquery_utils.make_wrapper       2 1.0 5.0823e+00 395.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.parloop.generate_single_cell_wrapper       2 1.0 5.0822e+00 400.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
c_locator_run          2 1.0 3.7076e-02 4.4 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._ctypes       2 1.0 3.3687e-02 6.8 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._constant_ctypes       2 1.0 1.6001e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.rtree       2 1.0 1.4607e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.bounding_box_coords       2 1.0 2.2270e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
rtree_build            2 1.0 1.0899e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._dmswarm_create       4 1.0 1.4564e-02 8.2 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._swarm_original_ordering_preserve       2 1.0 4.3344e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.VertexOnlyMeshTopology.__init__       4 1.0 2.1765e-02 2.3 0.00e+00 0.0 4.2e+03 1.1e+02 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_vom_from_vom_topology       4 1.0 4.6780e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.action       2 1.0 5.4447e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0      150 1.0 3.0002e-01 1.0 1.02e+08 1.2 9.3e+05 2.4e+02 3.7e+03  0  0  1  0  5   0  0  8  0  8 33880
MGSetup Level 1      150 1.0 1.7940e+00 1.0 6.60e+08 1.2 5.2e+03 1.2e+05 2.7e+02  0  0  0  0  0   0  0  0  0  1 36827
firedrake.constant.Constant.assign     173 1.0 1.2082e-02 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c73da03e50_wrap_pyop2_kernel_prolong       4 0.0 7.3260e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c73d9bc1d0_wrap_pyop2_kernel_prolong       4 0.0 5.1336e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152fa7d5f010_wrap_pyop2_kernel_prolong       4 0.0 7.4306e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152fa7d5c9d0_wrap_pyop2_kernel_prolong       4 0.0 6.4927e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a9a59e850_wrap_pyop2_kernel_prolong       4 0.0 7.5236e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a9a59dbd0_wrap_pyop2_kernel_prolong       4 0.0 6.3918e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145fdefeb190_wrap_pyop2_kernel_prolong       4 0.0 7.3924e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145fdefe82d0_wrap_pyop2_kernel_prolong       4 0.0 6.8371e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1547063d4fd0_wrap_pyop2_kernel_prolong       4 0.0 7.4701e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1547063d7910_wrap_pyop2_kernel_prolong       4 0.0 7.5571e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b4acde6610_wrap_pyop2_kernel_prolong       4 0.0 7.3925e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b4acca9cd0_wrap_pyop2_kernel_prolong       4 0.0 6.2745e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a8d9d82a50_wrap_pyop2_kernel_prolong       4 0.0 7.3944e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a8d9d81b50_wrap_pyop2_kernel_prolong       4 0.0 5.2693e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149dcbe50c90_wrap_pyop2_kernel_prolong       4 0.0 7.3610e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149dd0096f90_wrap_pyop2_kernel_prolong       4 0.0 7.0146e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15362e64b350_wrap_pyop2_kernel_prolong       4 0.0 7.5020e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15362e87ba90_wrap_pyop2_kernel_prolong       4 0.0 5.2541e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15329f40bfd0_wrap_pyop2_kernel_prolong       4 0.0 7.5282e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15329f40a090_wrap_pyop2_kernel_prolong       4 0.0 7.5252e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146379e8e3d0_wrap_pyop2_kernel_prolong       4 0.0 7.3790e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14637a7c4dd0_wrap_pyop2_kernel_prolong       4 0.0 6.6019e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd81bd1b10_wrap_pyop2_kernel_prolong       4 0.0 7.4935e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd8129ef50_wrap_pyop2_kernel_prolong       4 0.0 6.5938e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1490cc476450_wrap_pyop2_kernel_prolong       4 0.0 7.3324e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1490cc32ca50_wrap_pyop2_kernel_prolong       4 0.0 5.2819e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e895078450_wrap_pyop2_kernel_prolong       4 0.0 7.4720e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e894e22ed0_wrap_pyop2_kernel_prolong       4 0.0 6.4500e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146eebb37610_wrap_pyop2_kernel_prolong       4 0.0 7.3638e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146eebb5d650_wrap_pyop2_kernel_prolong       4 0.0 6.7878e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c19559b890_wrap_pyop2_kernel_prolong       4 0.0 7.3429e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c195318850_wrap_pyop2_kernel_prolong       4 0.0 5.4176e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d600a73b90_wrap_pyop2_kernel_prolong       4 0.0 7.3143e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d600a71a50_wrap_pyop2_kernel_prolong       4 0.0 6.9804e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14704b34b950_wrap_pyop2_kernel_prolong       4 0.0 7.3351e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14704b12a710_wrap_pyop2_kernel_prolong       4 0.0 6.4359e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154787fa2990_wrap_pyop2_kernel_prolong       4 0.0 7.3489e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154787f64110_wrap_pyop2_kernel_prolong       4 0.0 6.1530e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c5b2fdd950_wrap_pyop2_kernel_prolong       4 0.0 7.3367e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c5b2fdca10_wrap_pyop2_kernel_prolong       4 0.0 6.2017e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e6f618910_wrap_pyop2_kernel_prolong       4 0.0 7.3202e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e6ec39890_wrap_pyop2_kernel_prolong       4 0.0 8.1432e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc59029450_wrap_pyop2_kernel_prolong       4 0.0 7.3630e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc58dbe0d0_wrap_pyop2_kernel_prolong       4 0.0 7.2493e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14db23e5e8d0_wrap_pyop2_kernel_prolong       4 0.0 7.4342e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14db23e5cb10_wrap_pyop2_kernel_prolong       4 0.0 6.5349e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dbd276ac50_wrap_pyop2_kernel_prolong       4 0.0 7.5296e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dbd276a610_wrap_pyop2_kernel_prolong       4 0.0 7.2147e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e24d03190_wrap_pyop2_kernel_prolong       4 0.0 7.3950e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e24d31cd0_wrap_pyop2_kernel_prolong       4 0.0 8.2015e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b065048d50_wrap_pyop2_kernel_prolong       4 0.0 7.5077e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b064dddc90_wrap_pyop2_kernel_prolong       4 0.0 5.3220e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154316d0dfd0_wrap_pyop2_kernel_prolong       4 0.0 7.3684e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154317780f90_wrap_pyop2_kernel_prolong       4 0.0 6.0128e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154fa50a9a10_wrap_pyop2_kernel_prolong       4 0.0 7.3628e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154fa52aeed0_wrap_pyop2_kernel_prolong       4 0.0 6.8012e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ba2b1f350_wrap_pyop2_kernel_prolong       4 0.0 7.3811e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ba2b4a190_wrap_pyop2_kernel_prolong       4 0.0 6.0434e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1480df3e3010_wrap_pyop2_kernel_prolong       4 0.0 7.3264e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1480df623e90_wrap_pyop2_kernel_prolong       4 0.0 7.2494e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d3cbbfd50_wrap_pyop2_kernel_prolong       4 0.0 7.3951e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d3cc05810_wrap_pyop2_kernel_prolong       4 0.0 6.2060e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14728496e650_wrap_pyop2_kernel_prolong       4 0.0 7.3083e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14727ffabbd0_wrap_pyop2_kernel_prolong       4 0.0 5.7158e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148dd19e8bd0_wrap_pyop2_kernel_prolong       4 0.0 7.3821e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148dd0f8b0d0_wrap_pyop2_kernel_prolong       4 0.0 6.1515e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c552e5e4d0_wrap_pyop2_kernel_prolong       4 0.0 7.3645e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c552e5e810_wrap_pyop2_kernel_prolong       4 0.0 5.9511e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15327ffd7250_wrap_pyop2_kernel_prolong       4 0.0 7.3489e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15327fe795d0_wrap_pyop2_kernel_prolong       4 0.0 7.0478e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145fea60e590_wrap_pyop2_kernel_prolong       4 0.0 7.4633e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145fea5482d0_wrap_pyop2_kernel_prolong       4 0.0 7.2361e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152b576ab8d0_wrap_pyop2_kernel_prolong       4 0.0 7.3632e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152b57569b50_wrap_pyop2_kernel_prolong       4 0.0 7.4036e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15417c5fec90_wrap_pyop2_kernel_prolong       4 0.0 7.3333e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15417c47a1d0_wrap_pyop2_kernel_prolong       4 0.0 7.9711e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15250e112390_wrap_pyop2_kernel_prolong       4 0.0 7.3063e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15250e112ed0_wrap_pyop2_kernel_prolong       4 0.0 5.2397e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145a2c0c8bd0_wrap_pyop2_kernel_prolong       4 0.0 7.5005e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145a2af9fd50_wrap_pyop2_kernel_prolong       4 0.0 5.9747e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e88acbee10_wrap_pyop2_kernel_prolong       4 0.0 7.3522e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e88acbfc10_wrap_pyop2_kernel_prolong       4 0.0 6.9188e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aba8e62110_wrap_pyop2_kernel_prolong       4 0.0 7.4046e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aba8e61a90_wrap_pyop2_kernel_prolong       4 0.0 5.7144e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cbc0eb8a90_wrap_pyop2_kernel_prolong       4 0.0 7.4359e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cbc0eb80d0_wrap_pyop2_kernel_prolong       4 0.0 6.5298e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150411515290_wrap_pyop2_kernel_prolong       4 0.0 7.3408e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150411186790_wrap_pyop2_kernel_prolong       4 0.0 6.7668e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147bb59d4e50_wrap_pyop2_kernel_prolong       4 0.0 7.3921e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147bb59d56d0_wrap_pyop2_kernel_prolong       4 0.0 7.1980e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d320316890_wrap_pyop2_kernel_prolong       4 0.0 7.3230e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d320532590_wrap_pyop2_kernel_prolong       4 0.0 6.8126e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150baa92add0_wrap_pyop2_kernel_prolong       4 0.0 7.3450e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150baa86a090_wrap_pyop2_kernel_prolong       4 0.0 6.6948e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153a78fd7410_wrap_pyop2_kernel_prolong       4 0.0 7.3247e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153a78fd62d0_wrap_pyop2_kernel_prolong       4 0.0 6.6089e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d14a12f10_wrap_pyop2_kernel_prolong       4 0.0 7.3581e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d1408ed90_wrap_pyop2_kernel_prolong       4 0.0 7.1776e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f7467782d0_wrap_pyop2_kernel_prolong       4 0.0 7.3237e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f74650eb10_wrap_pyop2_kernel_prolong       4 0.0 7.2392e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c7a2fbd90_wrap_pyop2_kernel_prolong       4 0.0 7.3332e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c7a1cdc90_wrap_pyop2_kernel_prolong       4 0.0 6.8975e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e92c3fba10_wrap_pyop2_kernel_prolong       4 0.0 7.3808e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e92c262590_wrap_pyop2_kernel_prolong       4 0.0 5.5385e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1503405b2290_wrap_pyop2_kernel_prolong       4 0.0 7.4201e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1503405b1b90_wrap_pyop2_kernel_prolong       4 0.0 6.3495e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1525761ee2d0_wrap_pyop2_kernel_prolong       4 0.0 7.4515e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15257621a4d0_wrap_pyop2_kernel_prolong       4 0.0 7.8781e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b37214e510_wrap_pyop2_kernel_prolong       4 0.0 7.4510e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b37214da90_wrap_pyop2_kernel_prolong       4 0.0 6.8220e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1503f4c9dc10_wrap_pyop2_kernel_prolong       4 0.0 7.4663e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1503f4c9d550_wrap_pyop2_kernel_prolong       4 0.0 6.4701e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a54218810_wrap_pyop2_kernel_prolong       4 0.0 7.3384e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a5420b2d0_wrap_pyop2_kernel_prolong       4 0.0 5.8532e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1533effaabd0_wrap_pyop2_kernel_prolong       4 0.0 7.4522e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1533efff8110_wrap_pyop2_kernel_prolong       4 0.0 5.4017e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c31197610_wrap_pyop2_kernel_prolong       4 0.0 7.4388e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c311ecd50_wrap_pyop2_kernel_prolong       4 0.0 5.5263e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e1a6c8a810_wrap_pyop2_kernel_prolong       4 0.0 7.4010e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e1a6305310_wrap_pyop2_kernel_prolong       4 0.0 6.1360e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1528336c0bd0_wrap_pyop2_kernel_prolong       4 0.0 7.3758e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1528338f9090_wrap_pyop2_kernel_prolong       4 0.0 7.1792e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f4c0ae6a90_wrap_pyop2_kernel_prolong       4 0.0 7.4210e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f4c0ae6090_wrap_pyop2_kernel_prolong       4 0.0 6.5014e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148d2f553850_wrap_pyop2_kernel_prolong       4 0.0 7.4126e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148d2f45ae10_wrap_pyop2_kernel_prolong       4 0.0 7.3016e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1468492a00d0_wrap_pyop2_kernel_prolong       4 0.0 7.3770e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146849266a90_wrap_pyop2_kernel_prolong       4 0.0 8.2097e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e7387d0650_wrap_pyop2_kernel_prolong       4 0.0 7.4303e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e7387d18d0_wrap_pyop2_kernel_prolong       4 0.0 5.5401e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152864e4f850_wrap_pyop2_kernel_prolong       4 0.0 7.4320e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152864e73a10_wrap_pyop2_kernel_prolong       4 0.0 6.1900e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e76f1b0d0_wrap_pyop2_kernel_prolong       4 0.0 7.3292e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e76f7ad50_wrap_pyop2_kernel_prolong       4 0.0 5.4237e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1538bd44a7d0_wrap_pyop2_kernel_prolong       4 0.0 7.3447e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1538bd44a090_wrap_pyop2_kernel_prolong       4 0.0 6.4549e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eac38db410_wrap_pyop2_kernel_prolong       4 0.0 7.4445e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eac38d8d90_wrap_pyop2_kernel_prolong       4 0.0 6.0288e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ecea434d90_wrap_pyop2_kernel_prolong       4 0.0 7.5293e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ecea4c7850_wrap_pyop2_kernel_prolong       4 0.0 7.8592e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cc6dcf6250_wrap_pyop2_kernel_prolong       4 0.0 7.4047e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cc6dce8bd0_wrap_pyop2_kernel_prolong       4 0.0 6.0023e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145df9461750_wrap_pyop2_kernel_prolong       4 0.0 7.3681e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145df94af910_wrap_pyop2_kernel_prolong       4 0.0 6.5600e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151cf5f76450_wrap_pyop2_kernel_prolong       4 0.0 7.5448e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151cf5f2b990_wrap_pyop2_kernel_prolong       4 0.0 8.8760e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1545adf81250_wrap_pyop2_kernel_prolong       4 0.0 7.3290e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1545adf4ff90_wrap_pyop2_kernel_prolong       4 0.0 5.9347e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14755616bb90_wrap_pyop2_kernel_prolong       4 0.0 7.5324e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1475561584d0_wrap_pyop2_kernel_prolong       4 0.0 7.0237e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1465e98f7b90_wrap_pyop2_kernel_prolong       4 0.0 7.4791e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1465e9807cd0_wrap_pyop2_kernel_prolong       4 0.0 7.2346e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b4a8cee10_wrap_pyop2_kernel_prolong       4 0.0 7.5059e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b4a93f850_wrap_pyop2_kernel_prolong       4 0.0 6.4372e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15235269e410_wrap_pyop2_kernel_prolong       4 0.0 7.5108e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15235269dd10_wrap_pyop2_kernel_prolong       4 0.0 5.0901e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1549e25ebc90_wrap_pyop2_kernel_prolong       4 0.0 7.5210e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1549e25ea350_wrap_pyop2_kernel_prolong       4 0.0 7.0232e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d85d8ddc10_wrap_pyop2_kernel_prolong       4 0.0 7.4127e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d85d89fe90_wrap_pyop2_kernel_prolong       4 0.0 7.0257e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1544fe6b3910_wrap_pyop2_kernel_prolong       4 0.0 7.4024e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1544fe6b1810_wrap_pyop2_kernel_prolong       4 0.0 6.5023e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b9b85231d0_wrap_pyop2_kernel_prolong       4 0.0 7.4853e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b9b8520dd0_wrap_pyop2_kernel_prolong       4 0.0 6.6362e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd9781b550_wrap_pyop2_kernel_prolong       4 0.0 7.3771e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd9783fe50_wrap_pyop2_kernel_prolong       4 0.0 7.0238e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1553b9f22890_wrap_pyop2_kernel_prolong       4 0.0 7.4719e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1553b9d69550_wrap_pyop2_kernel_prolong       4 0.0 5.7771e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ea6f73810_wrap_pyop2_kernel_prolong       4 0.0 7.3418e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ea6e20650_wrap_pyop2_kernel_prolong       4 0.0 6.5906e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150bf05e3550_wrap_pyop2_kernel_prolong       4 0.0 7.3716e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150bf06ebcd0_wrap_pyop2_kernel_prolong       4 0.0 6.3549e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150b7366dbd0_wrap_pyop2_kernel_prolong       4 0.0 7.4412e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150b7366cc90_wrap_pyop2_kernel_prolong       4 0.0 6.3735e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e4b67d7e10_wrap_pyop2_kernel_prolong       4 0.0 7.3771e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e4b67d58d0_wrap_pyop2_kernel_prolong       4 0.0 7.3768e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154d34bf5fd0_wrap_pyop2_kernel_prolong       4 0.0 7.3517e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154d34bf5010_wrap_pyop2_kernel_prolong       4 0.0 6.2846e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1536a70aac90_wrap_pyop2_kernel_prolong       4 0.0 7.5197e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1536a66f2190_wrap_pyop2_kernel_prolong       4 0.0 6.3543e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14facd835210_wrap_pyop2_kernel_prolong       4 0.0 7.3751e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14face2bd210_wrap_pyop2_kernel_prolong       4 0.0 5.1898e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151eae704c50_wrap_pyop2_kernel_prolong       4 0.0 7.3326e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151eae706f10_wrap_pyop2_kernel_prolong       4 0.0 7.4710e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5b17a0c10_wrap_pyop2_kernel_prolong       4 0.0 7.4481e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5b1778b10_wrap_pyop2_kernel_prolong       4 0.0 6.1671e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ca2bb9a50_wrap_pyop2_kernel_prolong       4 0.0 7.5215e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ca2bb90d0_wrap_pyop2_kernel_prolong       4 0.0 7.0934e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ba92c37f10_wrap_pyop2_kernel_prolong       4 0.0 7.5506e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ba92b552d0_wrap_pyop2_kernel_prolong       4 0.0 6.8286e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1507e9eabad0_wrap_pyop2_kernel_prolong       4 0.0 7.5233e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1507e9d8b450_wrap_pyop2_kernel_prolong       4 0.0 7.1963e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1483ebee17d0_wrap_pyop2_kernel_prolong       4 0.0 7.5082e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1483ebe55810_wrap_pyop2_kernel_prolong       4 0.0 7.0585e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a54ea4b490_wrap_pyop2_kernel_prolong       4 0.0 7.3599e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a54ea49490_wrap_pyop2_kernel_prolong       4 0.0 5.6174e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b61682650_wrap_pyop2_kernel_prolong       4 0.0 7.4898e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b602e3690_wrap_pyop2_kernel_prolong       4 0.0 7.9402e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1490483100d0_wrap_pyop2_kernel_prolong       4 0.0 7.3976e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14904abc4dd0_wrap_pyop2_kernel_prolong       4 0.0 6.4052e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bae5112610_wrap_pyop2_kernel_prolong       4 0.0 7.3624e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bae4772410_wrap_pyop2_kernel_prolong       4 0.0 8.1377e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c54716ac10_wrap_pyop2_kernel_prolong       4 0.0 7.3970e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c54716a750_wrap_pyop2_kernel_prolong       4 0.0 7.4215e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146ada60f710_wrap_pyop2_kernel_prolong       4 0.0 7.5568e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146ada60ed90_wrap_pyop2_kernel_prolong       4 0.0 7.6700e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided        149 1.0 3.2140e-03 2.0 0.00e+00 0.0 6.4e+04 4.0e+00 1.5e+02  0  0  0  0  0   0  0  0  0  0    -0
SFSetGraph           149 1.0 5.5502e-04 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              149 1.0 5.1447e-03 1.7 0.00e+00 0.0 1.3e+05 2.3e+01 1.5e+02  0  0  0  0  0   0  0  0  0  0    -0
SFPack           15577299 1.2 1.5253e+01 3.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack         15577299 1.2 6.9696e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy           111153 1.0 2.2551e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecSet            222303 1.0 7.0858e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecAXPY            31758 1.0 5.6369e+01 1.8 2.74e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 48807
VecAYPX           222306 1.0 5.7315e+01 3.4 1.38e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  1  0  0  0 24201
VecAXPBYCZ         63516 1.0 3.1576e-02 2.3 1.43e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 453797
VecScatterBegin  15577299 1.2 2.0075e+02 1.2 0.00e+00 0.0 9.0e+07 2.2e+04 0.0e+00  4  0 88 55  0   7  0 100 100  0    -0
VecScatterEnd    15577299 1.2 2.3723e+02 16.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
MatMult           158790 1.0 1.3858e+03 1.1 9.74e+11 1.2 8.3e+07 2.4e+04 0.0e+00 29 24 81 55  0  48 61 92 100  0 70283
MatMultAdd         47637 1.0 8.0433e+01 1.2 4.12e+10 1.2 0.0e+00 0.0e+00 0.0e+00  2  1  0  0  0   3  3  0  0  0 51414
MatMultTranspose   47637 1.0 7.5425e+01 1.8 4.12e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  3  0  0  0 54828
MatSolve         7764831 1.2 8.7491e+02 1.2 4.81e+11 1.2 7.1e+06 8.2e+01 7.4e+02 18 12  7  0  1  30 30  8  0  2 55058
MatLUFactorNum     90778 1.2 2.1891e+01 1.2 2.59e+10 1.2 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  2  0  0  0 118648
MatResidual        47637 1.0 7.6373e+02 1.2 4.94e+11 1.2 2.5e+07 4.0e+04 0.0e+00 15 12 24 28  0  25 31 28 50  0 64625
MatAssemblyBegin   90480 1.2 1.3667e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyEnd     90480 1.2 2.0945e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats     377 1.0 4.9784e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
PCSetUp            91304 1.2 7.1695e+01 1.2 2.59e+10 1.2 0.0e+00 0.0e+00 0.0e+00  2  1  0  0  0   2  2  0  0  0 36227
PCSetUpOnBlocks    63516 1.0 1.8363e-01 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply            47637 1.0 1.2379e+03 1.2 5.08e+11 1.2 7.4e+07 1.4e+02 1.7e+04 26 13 72  0 22  43 32 82  1 51 41153
PCApplyOnBlocks  7748952 1.2 8.6655e+02 1.2 5.06e+11 1.2 0.0e+00 0.0e+00 0.0e+00 18 13  0  0  0  30 32  0  0  0 58574
KSPSetUp           90629 1.2 4.6807e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve           47637 1.0 1.9548e+03 1.1 1.03e+12 1.2 8.2e+07 1.2e+04 3.3e+04 42 25 80 28 42  70 64 91 50 100 52697
MGSmooth Level 0   15879 1.0 1.5458e+02 3.6 3.23e+09 1.3 7.4e+07 1.4e+02 3.3e+04  1  0 72  0 42   2  0 82  1 100  1996
MGSmooth Level 1   31758 1.0 1.9047e+03 1.1 1.03e+12 1.2 8.3e+06 1.2e+05 0.0e+00 41 25  8 28  0  67 64  9 50  0 53923
MGResid Level 1    15879 1.0 7.5505e+02 1.2 4.93e+11 1.2 8.3e+06 1.2e+05 0.0e+00 15 12  8 28  0  25 31  9 50  0 65322
MGInterp Level 1   31758 1.0 1.5383e+02 1.3 8.23e+10 1.2 0.0e+00 0.0e+00 0.0e+00  3  2  0  0  0   5  5  0  0  0 53654
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   435            433
              Viewer     3              3
         PetscRandom    69             69
           Index Set  3721           3721
   IS L to G Mapping   451            445
             Section   493            493
   Star Forest Graph   815            813
              Vector  3818           3811
              Matrix  1389           1364
      Preconditioner   253            253
       Krylov Solver   320            320
     DMKSP interface     1              1
                SNES     1              1
              DMSNES     1              1
      SNESLineSearch     1              1
    Distributed Mesh   196            198
            DM Label   345            345
          Quadrature   144            144
      Mesh Transform     2              2
       Swarm Cell DM     4              4
    GraphPartitioner    41             41
     Discrete System   251            253
           Weak Form   251            253
        Linear Space    12             12
          Dual Space    52             52
            FE Space     8              8

--- Event Stage 1: MG Apply

           Index Set   298            298
   Star Forest Graph   153            148
              Vector   298            298
    Distributed Mesh     2              0
     Discrete System     2              0
           Weak Form     2              0
========================================================================================================================
Average time to get PetscTime(): 2.61e-08
Average time for MPI_Barrier(): 4.0014e-06
Average time for zero size MPI_Send(): 2.54623e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_mg_coarse_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_mg_levels_1_pc_linesmooth_sub_sub_pc_factor_mat_ordering_type natural # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murr_seasonal/vlumping_hmg_rich_lag3/h1.profile # (source: code)
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

