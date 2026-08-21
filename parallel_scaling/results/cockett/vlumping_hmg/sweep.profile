****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/cockett_3d.py on a default named gadi-cpu-spr-0189.gadi.nci.org.au with 104 processes, by sg8812 on Thu Aug 20 23:50:09 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           8.035e+02     1.000   8.035e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                6.311e+11     1.154   5.957e+11  6.195e+13
Flops/sec:            7.854e+08     1.154   7.414e+08  7.711e+10
MPI Msg Count:        2.950e+05     3.096   1.943e+05  2.021e+07
MPI Msg Len (bytes):  8.810e+09     2.403   3.560e+04  7.193e+11
MPI Reductions:       2.372e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 4.0240e+02  50.1%  3.5684e+13  57.6%  3.850e+06  19.1%  8.061e+04       43.1%  1.458e+04  61.5%
 1:        MG Apply: 4.0110e+02  49.9%  2.6271e+13  42.4%  1.636e+07  80.9%  2.500e+04       56.9%  9.119e+03  38.4%

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

BuildTwoSided        784 1.0 1.3541e+01 9.4 0.00e+00 0.0 5.0e+04 4.0e+00 6.4e+02  1  0  0  0  3   2  0  1  0  4    -0
BuildTwoSidedF       558 1.0 1.3447e+01 10.0 0.00e+00 0.0 4.9e+04 4.4e+05 5.6e+02  1  0  0  3  2   2  0  1  7  4    -0
SFSetGraph           232 1.1 7.7119e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              226 1.1 1.9250e-01 4.4 0.00e+00 0.0 5.1e+04 1.1e+03 8.2e+01  0  0  0  0  0   0  0  1  0  1    -0
SFBcastBegin         449 1.0 1.0324e-01 2.9 0.00e+00 0.0 2.1e+05 5.4e+04 0.0e+00  0  0  1  2  0   0  0  6  4  0    -0
SFBcastEnd           449 1.0 6.7758e+00 90.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        154 1.0 2.2029e-02 2.6 0.00e+00 0.0 7.8e+04 7.3e+04 0.0e+00  0  0  0  1  0   0  0  2  2  0    -0
SFReduceEnd          154 1.0 2.6831e+00 117.6 8.61e+06 2.4 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   264
SFFetchOpBegin         4 1.0 2.3476e-05 4.3 0.00e+00 0.0 1.7e+03 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           4 1.0 3.0918e-04 12.8 0.00e+00 0.0 1.7e+03 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          3 1.0 9.1766e-04 1.7 0.00e+00 0.0 9.4e+02 3.4e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         38 1.0 5.6799e-03 1.4 0.00e+00 0.0 4.4e+04 1.3e+02 4.4e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           39 1.0 2.9133e-03 2.1 0.00e+00 0.0 2.1e+04 5.7e+01 3.9e+01  0  0  0  0  0   0  0  1  0  0    -0
SFRemoteOff            1 1.0 4.9580e-05 4.0 0.00e+00 0.0 5.4e+02 2.3e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack            297231 1.1 1.3581e+00 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack          297235 1.1 5.4290e-02 2.1 8.61e+06 2.4 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 13051
VecDot                91 1.0 2.5231e-01 7.5 3.27e+07 1.1 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  1 12963
VecMDot             6152 1.0 3.7086e+01 2.1 2.27e+10 1.1 0.0e+00 0.0e+00 6.2e+03  3  4  0  0 26   6  6  0  0 42 61302
VecNorm             6728 1.0 7.3318e+00 4.5 2.06e+09 1.1 0.0e+00 0.0e+00 6.7e+03  0  0  0  0 28   1  1  0  0 46 28091
VecScale            6516 1.0 2.2729e-01 1.2 9.92e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 436319
VecCopy              819 1.0 4.5663e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              2639 1.0 8.2729e-01 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              364 1.0 1.1941e-01 1.6 9.82e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 82257
VecWAXPY             182 1.0 1.3877e-01 1.6 3.27e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 23570
VecMAXPY            6516 1.0 2.4136e+01 1.1 2.46e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3  4  0  0  0   6  7  0  0  0 102006
VecScatterBegin   296624 1.1 3.7312e+00 1.5 0.00e+00 0.0 3.4e+06 7.6e+04 0.0e+00  0  0 17 35  0   1  0 87 82  0    -0
VecScatterEnd     296624 1.1 1.9583e+01 24.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecReduceArith       182 1.0 2.9243e-02 1.8 6.54e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 223694
VecReduceComm         91 1.0 7.8922e-02 14.7 0.00e+00 0.0 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  1    -0
VecNormalize        2002 1.0 1.9730e+00 8.9 5.41e+08 1.1 0.0e+00 0.0e+00 2.0e+03  0  0  0  0  8   0  0  0  0 14 27441
MatMult             6334 1.0 1.4385e+02 1.1 1.08e+11 1.1 3.4e+06 7.6e+04 0.0e+00 17 17 17 35  0  34 30 87 82  0 74731
MatSolve          145145 1.1 1.2199e+01 1.2 8.44e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   3  2  0  0  0 69177
MatLUFactorSym       145 1.1 1.0407e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum     13196 1.1 2.6397e+00 1.2 3.77e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  1  0  0  0 142826
MatILUFactorSym        1 1.0 9.5372e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin   14064 1.1 1.4089e+01 6.6 0.00e+00 0.0 4.9e+04 4.4e+05 5.6e+02  1  0  0  3  2   2  0  1  7  4    -0
MatAssemblyEnd     14064 1.1 2.2773e+00 7.4 2.71e+07 0.0 3.2e+03 7.4e+03 4.4e+01  0  0  0  0  0   0  0  0  0  0   556
MatGetRowIJ          145 1.1 2.7711e-05 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats      91 1.0 7.6970e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.4e+02  1  0  0  0  1   2  0  0  0  1    -0
MatGetOrdering       145 1.1 1.7524e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       273 1.0 3.1633e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
MatTranspose           5 1.0 9.2547e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          5 1.0 1.2919e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        365 1.0 1.1699e+00 1.1 2.62e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  1  0  0  0 222716
MatPtAPSymbolic        2 1.0 1.5747e-01 1.0 0.00e+00 0.0 3.2e+03 9.6e+04 1.4e+01  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       182 1.0 6.4752e+00 1.0 9.95e+09 1.1 9.8e+04 1.7e+05 1.9e+02  1  2  0  2  1   2  3  3  5  1 152787
MatGetLocalMat       184 1.0 3.8132e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        184 1.0 2.9586e-01 1.9 0.00e+00 0.0 9.9e+04 1.7e+05 0.0e+00  0  0  0  2  0   0  0  3  6  0    -0
MatSetPreallCOO       16 1.0 3.6802e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       16 1.0 2.3938e-05 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp               91 1.0 6.6697e+01 1.0 4.48e+10 1.1 1.1e+06 5.6e+04 4.5e+03  8  7  5  8 19  17 13 28 19 31 66971
PCApply             4332 1.0 4.0856e+02 1.1 2.64e+11 1.1 1.6e+07 2.5e+04 9.1e+03 50 42 81 57 38 Multiple stages 64300
PCApplyOnBlocks   145145 1.1 1.5174e+01 1.2 1.22e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  2  0  0  0   4  3  0  0  0 80398
KSPSetUp              91 1.0 1.3353e-02 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve              91 1.0 5.5995e+02 1.0 3.98e+11 1.1 1.9e+07 3.3e+04 1.8e+04 70 64 93 86 76 Multiple stages 70771
KSPGMRESOrthog      6152 1.0 5.7690e+01 1.5 4.55e+10 1.1 0.0e+00 0.0e+00 6.2e+03  6  7  0  0 26  12 13  0  0 42 78817
DMRefine               1 1.0 2.1183e-01 1.0 2.40e+03 1.0 3.3e+03 5.0e+01 3.0e+01  0  0  0  0  0   0  0  0  0  0     1
Mesh Partition         3 1.0 6.4851e-02 1.0 0.00e+00 0.0 1.3e+04 1.1e+02 3.8e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         3 1.0 1.3685e-02 1.1 0.00e+00 0.0 4.4e+04 1.3e+02 1.8e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 1.9700e-03 940.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       3 1.0 8.0411e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        3 1.0 4.2821e-03 1.1 0.00e+00 0.0 2.4e+03 9.0e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       3 1.0 1.8584e-03 1.3 0.00e+00 0.0 1.2e+03 3.5e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          3 1.0 1.6893e-03 2.4 0.00e+00 0.0 1.3e+03 4.8e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          16 1.0 1.7971e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 7.2735e-02 1.0 0.00e+00 0.0 4.1e+03 5.7e+02 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        3 1.0 1.6032e-03 1.0 0.00e+00 0.0 7.3e+03 2.2e+02 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       3 1.0 5.9036e-03 1.0 0.00e+00 0.0 2.1e+04 1.3e+02 1.1e+02  0  0  0  0  0   0  0  1  0  1    -0
DMPlexDistOvrlp        2 1.0 7.2695e-03 1.0 0.00e+00 0.0 5.4e+04 1.0e+02 1.6e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistField        5 1.0 3.0318e-03 1.2 0.00e+00 0.0 1.1e+04 8.9e+01 1.4e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         3 1.0 2.7422e-04 1.1 0.00e+00 0.0 8.1e+03 5.8e+01 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify        24 1.0 1.9461e-03 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      24 1.0 3.4328e-04 7.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexGenerate         1 1.0 7.6552e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          1 1.0 1.1608e-04 4.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          1 1.0 1.3007e-03 1.4 0.00e+00 0.0 1.6e+03 3.9e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          1 1.0 6.6417e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          1 1.0 2.2627e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             1 1.0 2.0912e-04 2.7 0.00e+00 0.0 1.6e+03 3.9e+01 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         1 1.0 3.0900e-05 5.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         1 1.0 4.4331e-04 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMSwarmSetSizes        2 1.0 4.7714e-05 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             30 1.0 7.6929e+02 1.0 6.31e+11 1.2 2.0e+07 3.6e+04 2.3e+04 96 100 99 100 98 Multiple stages 80534
SNESSetUp              1 1.0 2.7802e-05 4.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     121 1.0 4.4582e+01 1.1 7.66e+10 1.2 1.5e+05 8.8e+04 1.0e+00  5 12  1  2  0  11 20  4  4  0 162608
SNESJacobianEval      91 1.0 9.5271e+01 1.0 1.10e+11 1.2 9.6e+04 2.5e+05 3.6e+02 12 17  0  3  2  24 29  3  8  2 109270
SNESLineSearch        91 1.0 2.2772e+01 1.0 5.96e+10 1.2 1.4e+05 8.8e+04 3.6e+02  3  9  1  2  2   6 16  4  4  2 248125
DualSpaceSetUp         4 1.0 3.2973e-03 1.1 7.20e+01 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     2
FESetUp                4 1.0 1.8278e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 8.0061e+02 1.0 6.31e+11 1.2 2.0e+07 3.6e+04 2.4e+04 100 100 100 100 100 Multiple stages 77384
firedrake.__init__       1 1.0 1.8486e+01 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
firedrake.utility_meshes.RectangleMesh       1 1.0 1.1327e+01 93.1 0.00e+00 0.0 6.0e+04 1.0e+02 1.9e+02  1  0  0  0  1   3  0  2  0  1    -0
CreateMesh             2 1.0 1.2260e-01 1.0 0.00e+00 0.0 1.1e+05 1.2e+02 3.2e+02  0  0  1  0  1   0  0  3  0  2    -0
firedrake.mesh.MeshTopology._set_partitioner       2 1.0 1.0671e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       2 1.0 3.9630e-06 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        4 1.0 4.8719e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          2 1.0 5.8269e-04 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      20 1.0 3.6245e-02 1.1 0.00e+00 0.0 9.8e+03 1.1e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      24 1.0 1.4028e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      20 1.0 3.4191e-02 1.1 0.00e+00 0.0 9.8e+03 1.1e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      19 1.0 3.2073e-02 1.1 0.00e+00 0.0 9.8e+03 1.1e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      19 1.0 3.1966e-02 1.1 0.00e+00 0.0 9.8e+03 1.1e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      38 1.0 1.3272e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       4 1.0 6.0132e-03 1.0 0.00e+00 0.0 7.7e+03 8.5e+01 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       8 1.0 5.7171e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      16 1.0 1.7232e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      25 1.0 2.0259e-02 5.8 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          2 1.0 1.6545e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       2 1.0 1.7719e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       4 1.0 5.8920e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       4 1.0 1.1178e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       2 1.0 1.6488e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     258 1.0 4.9981e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      1066 1.0 1.3339e+02 1.1 1.87e+11 1.2 1.3e+05 8.6e+04 1.2e+01 16 29  1  2  0  32 49  3  4  0 132375
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       4 1.0 1.6067e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    2132 1.0 3.4987e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  4  0  0  0  0   9  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      15 1.0 2.0754e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   5  0  0  0  0    -0
GlobalKernel: generate loopy      15 0.0 2.3096e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      15 0.0 1.8110e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      16 1.0 1.7343e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
pyop2.compilation.load      16 1.0 1.7342e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      16 1.0 9.8310e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.make_so      16 1.0 9.6647e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
ParLoopRednBegin    1066 1.0 2.6651e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      1066 1.0 2.2335e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       2 1.0 7.4391e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate       1 1.0 9.4542e-01 1.0 2.70e+06 1.1 2.2e+03 1.5e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0   285
firedrake.interpolation.interpolate       6 1.0 1.3346e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble       3 1.0 8.1949e+00 1.0 4.25e+06 1.1 1.2e+04 2.8e+03 9.7e+01  1  0  0  0  0   2  0  0  0  1    52
firedrake.formmanipulation.split_form       4 1.0 2.5167e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split       4 1.0 1.4412e-04 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)       4 1.0 1.0565e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       4 1.0 6.2662e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     243 1.0 3.1962e-01 3.7 0.00e+00 0.0 1.3e+05 8.6e+04 2.0e+00  0  0  1  2  0   0  0  3  4  0    -0
Parloop_Cells_wrap_expression_kernel       8 1.0 3.3576e+00 1.0 4.24e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0   126
firedrake.halo.Halo.global_to_local_end     243 1.0 6.7287e+00 184.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.function.Function.assign      95 1.0 2.5826e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      94 1.0 2.3481e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.5885e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      34 1.0 5.2074e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 4.3059e-05 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 9.0009e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 4.2113e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 8.3962e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 9.1994e+00 1.0 0.00e+00 0.0 3.2e+03 4.8e+05 2.3e+01  1  0  0  0  0   2  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 2.0505e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.5114e-04 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 1.1390e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 1.1390e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
CreateSparsity         3 1.0 2.3813e+00 1.2 0.00e+00 0.0 4.9e+03 1.5e+05 3.2e+01  0  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         3 1.0 4.2315e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      30 1.0 7.6936e+02 1.0 6.31e+11 1.2 2.0e+07 3.6e+04 2.3e+04 96 100 99 100 98 Multiple stages 80527
firedrake.mesh.AbstractMeshTopology.measure_set      10 1.0 1.0253e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       8 1.0 1.1692e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       8 1.0 3.7441e-05 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     242 1.0 8.8056e+00 1.2 1.68e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   2  5  0  0  0 190705
Parloop_Cells_wrap_form0_exterior_facet_bottom_integral     242 1.0 2.1304e+00 1.0 5.78e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  2712
Parloop_Cells_wrap_form0_exterior_facet_top_integral     242 1.0 2.1024e+00 1.0 5.78e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  2748
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     242 1.0 1.0032e+01 1.1 1.72e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   2  5  0  0  0 171570
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     242 1.0 1.6823e+01 1.2 4.25e+10 1.3 0.0e+00 0.0e+00 0.0e+00  2  6  0  0  0   4 11  0  0  0 228061
firedrake.halo.Halo.local_to_global_begin     121 1.0 2.5510e-02 2.3 0.00e+00 0.0 6.4e+04 8.8e+04 0.0e+00  0  0  0  1  0   0  0  2  2  0    -0
firedrake.halo.Halo.local_to_global_end     121 1.0 2.6840e+00 111.9 8.61e+06 2.4 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   264
Parloop_Cells_wrap_form00_cell_integral     182 1.0 1.5521e+01 1.1 2.30e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  4  0  0  0   4  6  0  0  0 148255
Parloop_Cells_wrap_form00_exterior_facet_bottom_integral     182 1.0 2.2557e+00 1.0 5.28e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  2340
Parloop_Cells_wrap_form00_exterior_facet_top_integral     182 1.0 2.0104e+00 1.0 5.28e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2625
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     182 1.0 2.7569e+01 1.2 2.42e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3  4  0  0  0   6  7  0  0  0 87746
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     182 1.0 4.2336e+01 1.3 6.29e+10 1.3 0.0e+00 0.0e+00 0.0e+00  5  9  0  0  0   9 16  0  0  0 134125
firedrake.dmhooks.get_function_space       2 1.0 2.1141e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       2 1.0 9.1306e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.VertexOnlyMesh       1 1.0 4.6093e+00 1.0 0.00e+00 0.0 7.0e+03 1.4e+02 1.1e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh._pic_swarm_in_mesh       1 1.0 4.6045e+00 1.0 0.00e+00 0.0 4.8e+03 1.2e+02 6.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh._parent_mesh_embedding       1 1.0 4.3521e+00 1.0 0.00e+00 0.0 2.7e+03 4.4e+01 4.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshGeometry.locate_cells_ref_coords_and_dists       1 1.0 3.5336e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshGeometry._c_locator       1 1.0 3.5292e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.src_locate_cell       1 1.0 3.1249e+00 9.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.pointquery_utils.compile_coordinate_element       1 1.0 3.1167e+00 12.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       1 1.0 2.9733e+00 28.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.pointquery_utils.make_wrapper       1 1.0 2.6018e+00 383.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.parloop.generate_single_cell_wrapper       1 1.0 2.6017e+00 389.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
c_locator_run          1 1.0 6.5057e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._ctypes       1 1.0 4.4049e-03 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._constant_ctypes       1 1.0 6.5191e-04 8.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.rtree       1 1.0 1.4888e-03 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.bounding_box_coords       1 1.0 1.2797e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
rtree_build            1 1.0 1.2932e-03 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._dmswarm_create       2 1.0 3.3599e-03 8.9 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._swarm_original_ordering_preserve       1 1.0 2.5123e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.VertexOnlyMeshTopology.__init__       2 1.0 7.7914e-03 1.7 0.00e+00 0.0 2.1e+03 2.1e+02 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_vom_from_vom_topology       2 1.0 2.3252e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.action       1 1.0 2.3646e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0       91 1.0 2.3998e-01 1.2 7.95e+07 1.2 5.3e+05 3.6e+02 2.1e+03  0  0  3  0  9   0  0 14  0 14 32766
MGSetup Level 1       91 1.0 5.2659e+01 1.0 3.48e+10 1.1 4.8e+05 8.8e+04 2.1e+03  7  6  2  6  9  13 10 13 14 14 65911

--- Event Stage 1: MG Apply

BuildTwoSided         91 1.0 3.7946e-03 2.6 0.00e+00 0.0 4.9e+04 4.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  1    -0
SFSetGraph            91 1.0 9.0315e-04 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               91 1.0 5.3071e-03 1.8 0.00e+00 0.0 9.8e+04 5.5e+01 9.1e+01  0  0  0  0  0   0  0  1  0  1    -0
SFPack           2560212 1.1 2.1805e+00 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack         2560212 1.1 1.3101e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy            25992 1.0 3.0469e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecSet             47650 1.0 7.3952e+00 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecAYPX            43320 1.0 8.1742e+00 2.0 4.69e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 57388
VecAXPBYCZ          8664 1.0 4.7834e-03 2.3 2.50e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 521641
VecScatterBegin  2560212 1.1 2.2969e+01 1.2 0.00e+00 0.0 1.6e+07 2.5e+04 0.0e+00  3  0 80 57  0   5  0 98 100  0    -0
VecScatterEnd    2560212 1.1 3.3240e+01 12.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
MatMult            25992 1.0 2.2919e+02 1.1 1.73e+11 1.1 1.4e+07 3.0e+04 0.0e+00 27 28 68 57  0  55 65 84 100  0 75076
MatMultAdd          8664 1.0 1.1183e+01 1.2 6.25e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   3  2  0  0  0 55870
MatMultTranspose    8664 1.0 9.6181e+00 2.0 6.25e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 64961
MatSolve         1269276 1.1 1.2761e+02 1.2 7.42e+10 1.1 2.6e+06 2.0e+02 4.6e+02 15 12 13  0  2  30 28 16  0  5 57537
MatLUFactorNum        90 1.0 8.2075e-01 1.1 1.57e+07 41.3 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   295
MatResidual         8664 1.0 1.2009e+02 1.2 8.71e+10 1.1 4.6e+06 4.4e+04 0.0e+00 14 14 23 28  0  28 33 28 50  0 72210
PCSetUp               90 1.0 8.2150e-01 1.1 1.57e+07 41.3 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   295
PCSetUpOnBlocks     8664 1.0 4.0335e-02 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply            12996 1.0 1.6498e+02 1.2 7.47e+10 1.1 1.2e+07 2.6e+02 4.8e+03 19 12 58  0 20  38 28 72  1 52 44792
PCApplyOnBlocks  1264944 1.1 1.1852e+02 1.2 7.32e+10 1.1 0.0e+00 0.0e+00 0.0e+00 14 12  0  0  0  28 28  0  0  0 61781
KSPSolve           12996 1.0 2.7810e+02 1.1 1.64e+11 1.1 1.4e+07 1.5e+04 9.1e+03 34 26 70 29 38  67 62 86 50 100 58838
MGSmooth Level 0    4332 1.0 2.8871e+01 2.5 1.86e+09 2.2 1.2e+07 2.6e+02 9.1e+03  2  0 58  0 38   4  0 72  1 100  3595
MGSmooth Level 1    8664 1.0 2.6485e+02 1.1 1.63e+11 1.1 2.3e+06 8.8e+04 0.0e+00 32 26 11 28  0  63 62 14 50  0 61390
MGResid Level 1     4332 1.0 1.1907e+02 1.2 8.70e+10 1.1 2.3e+06 8.8e+04 0.0e+00 14 14 11 28  0  28 33 14 50  0 72747
MGInterp Level 1    8664 1.0 2.0472e+01 1.4 1.25e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  2  0  0  0   5  5  0  0  0 60846
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   111            110
              Viewer     1              1
           Index Set  2293           2293
   IS L to G Mapping   245            241
             Section   303            303
   Star Forest Graph   411            410
              Vector  1151           1147
              Matrix   793            779
      Preconditioner   146            146
       Krylov Solver   144            144
     DMKSP interface     1              1
                SNES     1              1
              DMSNES     1              1
      SNESLineSearch     1              1
    Distributed Mesh    77             78
            DM Label   213            213
          Quadrature    84             84
      Mesh Transform     1              1
       Swarm Cell DM     2              2
    GraphPartitioner    24             24
     Discrete System   110            111
           Weak Form   110            111
        Linear Space     8              8
          Dual Space    28             28
            FE Space     4              4

--- Event Stage 1: MG Apply

           Index Set   182            182
   Star Forest Graph    93             90
              Vector   181            181
    Distributed Mesh     1              0
     Discrete System     1              0
           Weak Form     1              0
========================================================================================================================
Average time to get PetscTime(): 2.61e-08
Average time for MPI_Barrier(): 4.015e-06
Average time for zero size MPI_Send(): 2.26339e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_mg_coarse_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_mg_levels_1_pc_linesmooth_sub_sub_pc_factor_mat_ordering_type natural # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/cockett/vlumping_hmg/sweep.profile # (source: environment)
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

