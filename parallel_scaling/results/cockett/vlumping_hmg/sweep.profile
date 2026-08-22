****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/cockett_3d.py on a default named gadi-cpu-spr-0333.gadi.nci.org.au with 104 processes, by sg8812 on Fri Aug 21 23:36:42 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           7.986e+02     1.000   7.986e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                6.311e+11     1.154   5.957e+11  6.195e+13
Flops/sec:            7.902e+08     1.154   7.460e+08  7.758e+10
MPI Msg Count:        2.923e+05     3.410   1.958e+05  2.036e+07
MPI Msg Len (bytes):  8.810e+09     2.404   3.533e+04  7.193e+11
MPI Reductions:       2.372e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 3.9699e+02  49.7%  3.5684e+13  57.6%  3.850e+06  18.9%  8.061e+04       43.1%  1.458e+04  61.5%
 1:        MG Apply: 4.0158e+02  50.3%  2.6271e+13  42.4%  1.651e+07  81.1%  2.477e+04       56.9%  9.119e+03  38.4%

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

BuildTwoSided        784 1.0 1.6103e+01 5.6 0.00e+00 0.0 5.0e+04 4.0e+00 6.4e+02  1  0  0  0  3   2  0  1  0  4    -0
BuildTwoSidedF       558 1.0 1.6035e+01 5.6 0.00e+00 0.0 4.9e+04 4.4e+05 5.6e+02  1  0  0  3  2   2  0  1  7  4    -0
SFSetGraph           232 1.1 7.7946e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              226 1.1 2.4005e-01 5.7 0.00e+00 0.0 5.1e+04 1.1e+03 8.2e+01  0  0  0  0  0   0  0  1  0  1    -0
SFBcastBegin         449 1.0 1.0258e-01 3.0 0.00e+00 0.0 2.1e+05 5.4e+04 0.0e+00  0  0  1  2  0   0  0  6  4  0    -0
SFBcastEnd           449 1.0 7.0671e+00 153.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        154 1.0 2.2912e-02 2.8 0.00e+00 0.0 7.8e+04 7.3e+04 0.0e+00  0  0  0  1  0   0  0  2  2  0    -0
SFReduceEnd          154 1.0 2.7055e+00 96.6 8.61e+06 2.4 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   262
SFFetchOpBegin         4 1.0 2.4074e-05 4.1 0.00e+00 0.0 1.7e+03 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           4 1.0 3.3876e-04 10.8 0.00e+00 0.0 1.7e+03 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          3 1.0 8.6188e-04 1.4 0.00e+00 0.0 9.4e+02 3.4e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         38 1.0 6.0718e-03 1.3 0.00e+00 0.0 4.4e+04 1.3e+02 4.4e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           39 1.0 3.1963e-03 2.2 0.00e+00 0.0 2.1e+04 5.7e+01 3.9e+01  0  0  0  0  0   0  0  1  0  0    -0
SFRemoteOff            1 1.0 5.7048e-05 4.2 0.00e+00 0.0 5.4e+02 2.3e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack            297231 1.1 1.3839e+00 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack          297235 1.1 6.1839e-02 2.5 8.61e+06 2.4 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 11458
VecDot                91 1.0 2.5405e-01 6.5 3.27e+07 1.1 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  1 12874
VecMDot             6152 1.0 3.7521e+01 1.9 2.27e+10 1.1 0.0e+00 0.0e+00 6.2e+03  3  4  0  0 26   7  6  0  0 42 60592
VecNorm             6728 1.0 7.4766e+00 5.9 2.06e+09 1.1 0.0e+00 0.0e+00 6.7e+03  0  0  0  0 28   1  1  0  0 46 27547
VecScale            6516 1.0 2.3105e-01 1.2 9.92e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 429213
VecCopy              819 1.0 4.5419e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              2639 1.0 8.3451e-01 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              364 1.0 1.1789e-01 1.6 9.82e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 83321
VecWAXPY             182 1.0 1.4088e-01 1.6 3.27e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 23217
VecMAXPY            6516 1.0 2.4232e+01 1.1 2.46e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3  4  0  0  0   6  7  0  0  0 101601
VecScatterBegin   296624 1.1 3.7250e+00 1.5 0.00e+00 0.0 3.4e+06 7.6e+04 0.0e+00  0  0 16 35  0   1  0 87 82  0    -0
VecScatterEnd     296624 1.1 1.8705e+01 24.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecReduceArith       182 1.0 3.9174e-02 2.2 6.54e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 166985
VecReduceComm         91 1.0 6.9685e-02 7.4 0.00e+00 0.0 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  1    -0
VecNormalize        2002 1.0 2.2132e+00 10.4 5.41e+08 1.1 0.0e+00 0.0e+00 2.0e+03  0  0  0  0  8   0  0  0  0 14 24462
MatMult             6334 1.0 1.4405e+02 1.1 1.08e+11 1.1 3.4e+06 7.6e+04 0.0e+00 17 17 16 35  0  34 30 87 82  0 74624
MatSolve          145145 1.1 1.2235e+01 1.2 8.44e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   3  2  0  0  0 68975
MatLUFactorSym       145 1.1 9.4763e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum     13196 1.1 2.5888e+00 1.2 3.77e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  1  0  0  0 145634
MatILUFactorSym        1 1.0 1.0101e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin   14064 1.1 1.6349e+01 4.6 0.00e+00 0.0 4.9e+04 4.4e+05 5.6e+02  1  0  0  3  2   2  0  1  7  4    -0
MatAssemblyEnd     14064 1.1 2.3558e+00 7.1 2.71e+07 0.0 3.2e+03 7.4e+03 4.4e+01  0  0  0  0  0   0  0  0  0  0   537
MatGetRowIJ          145 1.1 2.3843e-05 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats      91 1.0 7.8836e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.4e+02  1  0  0  0  1   2  0  0  0  1    -0
MatGetOrdering       145 1.1 1.8768e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       273 1.0 3.0707e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
MatTranspose           5 1.0 9.2348e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          5 1.0 1.2828e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        365 1.0 1.2046e+00 1.2 2.62e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  1  0  0  0 216294
MatPtAPSymbolic        2 1.0 1.5940e-01 1.0 0.00e+00 0.0 3.2e+03 9.6e+04 1.4e+01  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       182 1.0 8.5575e+00 1.0 9.95e+09 1.1 9.8e+04 1.7e+05 1.9e+02  1  2  0  2  1   2  3  3  5  1 115609
MatGetLocalMat       184 1.0 3.7848e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        184 1.0 3.3385e-01 2.1 0.00e+00 0.0 9.9e+04 1.7e+05 0.0e+00  0  0  0  2  0   0  0  3  6  0    -0
MatSetPreallCOO       16 1.0 3.9653e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       16 1.0 2.3264e-05 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp               91 1.0 6.8353e+01 1.0 4.48e+10 1.1 1.1e+06 5.6e+04 4.5e+03  9  7  5  8 19  17 13 28 19 31 65348
PCApply             4332 1.0 4.0763e+02 1.1 2.64e+11 1.1 1.7e+07 2.5e+04 9.1e+03 50 42 81 57 38 Multiple stages 64448
PCApplyOnBlocks   145145 1.1 1.5137e+01 1.2 1.22e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  2  0  0  0   4  3  0  0  0 80596
KSPSetUp              91 1.0 1.3184e-02 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve              91 1.0 5.6070e+02 1.0 3.98e+11 1.1 1.9e+07 3.3e+04 1.8e+04 70 64 93 86 76 Multiple stages 70677
KSPGMRESOrthog      6152 1.0 5.7827e+01 1.4 4.55e+10 1.1 0.0e+00 0.0e+00 6.2e+03  6  7  0  0 26  12 13  0  0 42 78630
DMRefine               1 1.0 2.1733e-02 1.0 2.40e+03 1.0 3.3e+03 5.0e+01 3.0e+01  0  0  0  0  0   0  0  0  0  0    11
Mesh Partition         3 1.0 6.0346e-02 1.0 0.00e+00 0.0 1.3e+04 1.1e+02 3.8e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         3 1.0 1.5141e-02 1.1 0.00e+00 0.0 4.4e+04 1.3e+02 1.8e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 2.1160e-03 919.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       3 1.0 7.2025e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        3 1.0 3.6623e-03 1.1 0.00e+00 0.0 2.4e+03 9.0e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       3 1.0 7.5393e-04 3.3 0.00e+00 0.0 1.2e+03 3.5e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          3 1.0 1.9346e-03 2.6 0.00e+00 0.0 1.3e+03 4.8e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          16 1.0 1.8986e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 6.9099e-02 1.0 0.00e+00 0.0 4.1e+03 5.7e+02 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        3 1.0 1.8330e-03 1.0 0.00e+00 0.0 7.3e+03 2.2e+02 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       3 1.0 6.5017e-03 1.0 0.00e+00 0.0 2.1e+04 1.3e+02 1.1e+02  0  0  0  0  0   0  0  1  0  1    -0
DMPlexDistOvrlp        2 1.0 8.1040e-03 1.1 0.00e+00 0.0 5.4e+04 1.0e+02 1.6e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistField        5 1.0 2.9889e-03 1.1 0.00e+00 0.0 1.1e+04 8.9e+01 1.4e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         3 1.0 2.9278e-04 1.2 0.00e+00 0.0 8.1e+03 5.8e+01 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify        24 1.0 2.3686e-03 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      24 1.0 3.6179e-04 7.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexGenerate         1 1.0 6.0496e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          1 1.0 1.3653e-04 5.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          1 1.0 2.1105e-03 1.2 0.00e+00 0.0 1.6e+03 3.9e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          1 1.0 6.7217e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          1 1.0 4.4587e-04 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             1 1.0 4.9954e-04 5.4 0.00e+00 0.0 1.6e+03 3.9e+01 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         1 1.0 4.4489e-05 7.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         1 1.0 9.4313e-04 4.6 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMSwarmSetSizes        2 1.0 2.7416e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             30 1.0 7.7239e+02 1.0 6.31e+11 1.2 2.0e+07 3.5e+04 2.3e+04 97 100 99 100 98 Multiple stages 80211
SNESSetUp              1 1.0 3.9193e-05 5.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     121 1.0 4.4198e+01 1.0 7.66e+10 1.2 1.5e+05 8.8e+04 1.0e+00  5 12  1  2  0  11 20  4  4  0 164024
SNESJacobianEval      91 1.0 9.6347e+01 1.0 1.10e+11 1.2 9.6e+04 2.5e+05 3.6e+02 12 17  0  3  2  24 29  3  8  2 108049
SNESLineSearch        91 1.0 2.2873e+01 1.0 5.96e+10 1.2 1.4e+05 8.8e+04 3.6e+02  3  9  1  2  2   6 16  4  4  2 247036
DualSpaceSetUp         4 1.0 3.8506e-03 1.1 7.20e+01 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     2
FESetUp                4 1.0 1.0691e-02 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 7.9567e+02 1.0 6.31e+11 1.2 2.0e+07 3.5e+04 2.4e+04 100 100 100 100 100 Multiple stages 77864
firedrake.__init__       1 1.0 1.1102e+01 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
firedrake.utility_meshes.RectangleMesh       1 1.0 5.2923e+00 45.9 0.00e+00 0.0 6.0e+04 1.0e+02 1.9e+02  0  0  0  0  1   1  0  2  0  1    -0
CreateMesh             2 1.0 1.1807e-01 1.0 0.00e+00 0.0 1.1e+05 1.2e+02 3.2e+02  0  0  1  0  1   0  0  3  0  2    -0
firedrake.mesh.MeshTopology._set_partitioner       2 1.0 1.8958e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       2 1.0 4.1460e-06 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        4 1.0 5.1683e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          2 1.0 5.9434e-04 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      20 1.0 3.1887e-02 1.1 0.00e+00 0.0 9.8e+03 1.1e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      24 1.0 1.4064e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      20 1.0 2.9826e-02 1.1 0.00e+00 0.0 9.8e+03 1.1e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      19 1.0 2.7759e-02 1.1 0.00e+00 0.0 9.8e+03 1.1e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      19 1.0 2.7650e-02 1.1 0.00e+00 0.0 9.8e+03 1.1e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      38 1.0 9.9478e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       4 1.0 6.3484e-03 1.1 0.00e+00 0.0 7.7e+03 8.5e+01 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       8 1.0 5.5544e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      16 1.0 1.6974e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      25 1.0 1.3843e-02 3.8 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          2 1.0 9.4647e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       2 1.0 1.5223e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       4 1.0 5.2403e-03 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       4 1.0 9.6161e-05 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       2 1.0 9.4067e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     258 1.0 5.3928e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      1066 1.0 1.3368e+02 1.1 1.87e+11 1.2 1.3e+05 8.6e+04 1.2e+01 16 29  1  2  0  32 49  3  4  0 132096
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       4 1.0 9.0342e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    2132 1.0 3.5115e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  4  0  0  0  0   9  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      15 1.0 2.1634e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   5  0  0  0  0    -0
GlobalKernel: generate loopy      15 0.0 2.2537e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      15 0.0 1.9006e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      16 1.0 1.6587e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
pyop2.compilation.load      16 1.0 1.6586e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      16 1.0 9.6223e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.make_so      16 1.0 9.4620e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
ParLoopRednBegin    1066 1.0 2.8016e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      1066 1.0 2.2233e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       2 1.0 6.8090e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate       1 1.0 9.4304e-01 1.0 2.70e+06 1.1 2.2e+03 1.5e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0   286
firedrake.interpolation.interpolate       6 1.0 1.3632e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble       3 1.0 7.5210e+00 1.0 4.25e+06 1.1 1.2e+04 2.8e+03 9.7e+01  1  0  0  0  0   2  0  0  0  1    56
firedrake.formmanipulation.split_form       4 1.0 2.4921e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split       4 1.0 1.4324e-04 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)       4 1.0 9.5551e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       4 1.0 6.3772e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     243 1.0 3.7884e-01 3.7 0.00e+00 0.0 1.3e+05 8.6e+04 2.0e+00  0  0  1  2  0   0  0  3  4  0    -0
Parloop_Cells_wrap_expression_kernel       8 1.0 3.4164e+00 1.0 4.24e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0   124
firedrake.halo.Halo.global_to_local_end     243 1.0 6.6000e+00 186.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.function.Function.assign      95 1.0 2.4587e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      94 1.0 2.2265e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.8478e-04 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      34 1.0 9.0023e-04 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 3.9405e-05 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 8.6388e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 4.3157e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 8.0169e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 9.4597e+00 1.0 0.00e+00 0.0 3.2e+03 4.8e+05 2.3e+01  1  0  0  0  0   2  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 6.8563e-03 4.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.3030e-04 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 1.1613e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 1.1613e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
CreateSparsity         3 1.0 2.7619e+00 1.4 0.00e+00 0.0 4.9e+03 1.5e+05 3.2e+01  0  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         3 1.0 4.2469e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      30 1.0 7.7246e+02 1.0 6.31e+11 1.2 2.0e+07 3.5e+04 2.3e+04 97 100 99 100 98 Multiple stages 80204
firedrake.mesh.AbstractMeshTopology.measure_set      10 1.0 9.1689e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       8 1.0 1.3649e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       8 1.0 3.0635e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     242 1.0 8.1434e+00 1.1 1.68e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   2  5  0  0  0 206213
Parloop_Cells_wrap_form0_exterior_facet_bottom_integral     242 1.0 2.0815e+00 1.0 5.78e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  2776
Parloop_Cells_wrap_form0_exterior_facet_top_integral     242 1.0 2.0501e+00 1.0 5.78e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  2818
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     242 1.0 1.0062e+01 1.1 1.72e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   2  5  0  0  0 171055
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     242 1.0 1.6783e+01 1.2 4.25e+10 1.3 0.0e+00 0.0e+00 0.0e+00  2  6  0  0  0   4 11  0  0  0 228610
firedrake.halo.Halo.local_to_global_begin     121 1.0 2.6484e-02 2.4 0.00e+00 0.0 6.4e+04 8.8e+04 0.0e+00  0  0  0  1  0   0  0  2  2  0    -0
firedrake.halo.Halo.local_to_global_end     121 1.0 2.7062e+00 93.6 8.61e+06 2.4 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   262
Parloop_Cells_wrap_form00_cell_integral     182 1.0 1.5545e+01 1.1 2.30e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  4  0  0  0   4  6  0  0  0 148028
Parloop_Cells_wrap_form00_exterior_facet_bottom_integral     182 1.0 2.4193e+00 1.0 5.28e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  2182
Parloop_Cells_wrap_form00_exterior_facet_top_integral     182 1.0 2.3992e+00 1.0 5.28e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  2200
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     182 1.0 2.7936e+01 1.2 2.42e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3  4  0  0  0   7  7  0  0  0 86593
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     182 1.0 4.2457e+01 1.3 6.29e+10 1.3 0.0e+00 0.0e+00 0.0e+00  5  9  0  0  0   9 16  0  0  0 133741
firedrake.dmhooks.get_function_space       2 1.0 1.9765e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       2 1.0 8.6207e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.VertexOnlyMesh       1 1.0 3.8896e+00 1.0 0.00e+00 0.0 7.0e+03 1.4e+02 1.1e+01  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh._pic_swarm_in_mesh       1 1.0 3.8847e+00 1.0 0.00e+00 0.0 4.8e+03 1.2e+02 6.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh._parent_mesh_embedding       1 1.0 3.7012e+00 1.0 0.00e+00 0.0 2.7e+03 4.4e+01 4.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshGeometry.locate_cells_ref_coords_and_dists       1 1.0 3.6434e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshGeometry._c_locator       1 1.0 3.6391e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.src_locate_cell       1 1.0 3.2223e+00 7.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.pointquery_utils.compile_coordinate_element       1 1.0 3.2139e+00 13.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       1 1.0 3.0747e+00 29.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.pointquery_utils.make_wrapper       1 1.0 2.8396e+00 421.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.parloop.generate_single_cell_wrapper       1 1.0 2.8395e+00 427.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
c_locator_run          1 1.0 1.5644e-02 5.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._ctypes       1 1.0 1.3084e-02 11.8 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._constant_ctypes       1 1.0 1.4372e-04 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.rtree       1 1.0 1.1382e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.bounding_box_coords       1 1.0 1.2595e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
rtree_build            1 1.0 9.2896e-04 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._dmswarm_create       2 1.0 3.2627e-03 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._swarm_original_ordering_preserve       1 1.0 1.8195e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.VertexOnlyMeshTopology.__init__       2 1.0 7.2744e-03 1.6 0.00e+00 0.0 2.1e+03 2.1e+02 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_vom_from_vom_topology       2 1.0 2.5749e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.action       1 1.0 2.3727e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0       91 1.0 2.0421e-01 1.2 7.95e+07 1.2 5.3e+05 3.6e+02 2.1e+03  0  0  3  0  9   0  0 14  0 14 38506
MGSetup Level 1       91 1.0 5.2940e+01 1.0 3.48e+10 1.1 4.8e+05 8.8e+04 2.1e+03  7  6  2  6  9  13 10 13 14 14 65561

--- Event Stage 1: MG Apply

BuildTwoSided         91 1.0 3.3156e-03 2.5 0.00e+00 0.0 5.2e+04 4.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  1    -0
SFSetGraph            91 1.0 9.1104e-04 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               91 1.0 5.1267e-03 2.0 0.00e+00 0.0 1.0e+05 5.2e+01 9.1e+01  0  0  1  0  0   0  0  1  0  1    -0
SFPack           2560212 1.1 2.2453e+00 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack         2560212 1.1 1.2941e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy            25992 1.0 3.1806e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecSet             47650 1.0 7.5105e+00 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecAYPX            43320 1.0 8.2055e+00 1.9 4.69e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 57170
VecAXPBYCZ          8664 1.0 7.6097e-03 3.6 2.50e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 327900
VecScatterBegin  2560212 1.1 2.3229e+01 1.3 0.00e+00 0.0 1.6e+07 2.5e+04 0.0e+00  3  0 80 57  0   5  0 98 100  0    -0
VecScatterEnd    2560212 1.1 3.3098e+01 12.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
MatMult            25992 1.0 2.2982e+02 1.1 1.73e+11 1.1 1.4e+07 3.0e+04 0.0e+00 28 28 68 57  0  55 65 83 100  0 74869
MatMultAdd          8664 1.0 1.1398e+01 1.2 6.25e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   3  2  0  0  0 54818
MatMultTranspose    8664 1.0 9.6638e+00 1.9 6.25e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 64654
MatSolve         1269276 1.1 1.2602e+02 1.2 7.41e+10 1.1 2.7e+06 1.9e+02 4.6e+02 15 12 13  0  2  30 28 17  0  5 58266
MatLUFactorNum        90 1.0 8.3888e-01 1.1 1.50e+07 31.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   287
MatResidual         8664 1.0 1.1969e+02 1.1 8.71e+10 1.1 4.6e+06 4.4e+04 0.0e+00 14 14 23 28  0  28 33 28 50  0 72453
PCSetUp               90 1.0 8.3971e-01 1.1 1.50e+07 31.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   287
PCSetUpOnBlocks     8664 1.0 3.8642e-02 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply            12996 1.0 1.6426e+02 1.2 7.45e+10 1.1 1.2e+07 2.6e+02 4.8e+03 19 12 59  0 20  38 28 72  1 52 44990
PCApplyOnBlocks  1264944 1.1 1.1770e+02 1.2 7.32e+10 1.1 0.0e+00 0.0e+00 0.0e+00 14 12  0  0  0  28 28  0  0  0 62207
KSPSolve           12996 1.0 2.7836e+02 1.1 1.65e+11 1.1 1.4e+07 1.4e+04 9.1e+03 34 26 70 29 38  67 62 86 50 100 58786
MGSmooth Level 0    4332 1.0 2.9201e+01 2.5 1.85e+09 2.2 1.2e+07 2.6e+02 9.1e+03  2  0 59  0 38   4  0 72  1 100  3567
MGSmooth Level 1    8664 1.0 2.6362e+02 1.1 1.63e+11 1.1 2.3e+06 8.8e+04 0.0e+00 32 26 11 28  0  63 62 14 50  0 61677
MGResid Level 1     4332 1.0 1.1900e+02 1.2 8.70e+10 1.1 2.3e+06 8.8e+04 0.0e+00 14 14 11 28  0  28 33 14 50  0 72789
MGInterp Level 1    8664 1.0 2.0304e+01 1.4 1.25e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  2  0  0  0   5  5  0  0  0 61348
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
Average time to get PetscTime(): 2.58e-08
Average time for MPI_Barrier(): 4.4048e-06
Average time for zero size MPI_Send(): 3.75306e-06
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

