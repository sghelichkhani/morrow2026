****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/cockett_3d.py on a default named gadi-cpu-spr-0178.gadi.nci.org.au with 208 processes, by sg8812 on Sat Aug 29 17:07:18 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           9.651e+02     1.000   9.651e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                7.134e+11     1.151   6.725e+11  1.399e+14
Flops/sec:            7.392e+08     1.151   6.968e+08  1.449e+11
MPI Msg Count:        3.605e+05     3.486   2.477e+05  5.151e+07
MPI Msg Len (bytes):  1.191e+10     2.544   3.750e+04  1.932e+12
MPI Reductions:       2.632e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 4.1589e+02  43.1%  7.3010e+13  52.2%  8.441e+06  16.4%  8.868e+04       38.7%  1.503e+04  57.1%
 1:        MG Apply: 5.4918e+02  56.9%  6.6864e+13  47.8%  4.307e+07  83.6%  2.747e+04       61.3%  1.127e+04  42.8%

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

BuildTwoSided        756 1.0 1.6541e+01 13.3 0.00e+00 0.0 1.0e+05 4.0e+00 6.4e+02  1  0  0  0  2   2  0  1  0  4    -0
BuildTwoSidedF       558 1.0 1.6339e+01 13.0 0.00e+00 0.0 1.0e+05 4.9e+05 5.6e+02  1  0  0  3  2   2  0  1  7  4    -0
SFSetGraph           204 1.1 8.9558e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              198 1.1 3.1111e-01 5.4 0.00e+00 0.0 1.1e+05 1.2e+03 8.2e+01  0  0  0  0  0   0  0  1  0  1    -0
SFBcastBegin         449 1.0 1.4713e-01 3.3 0.00e+00 0.0 4.5e+05 5.9e+04 0.0e+00  0  0  1  1  0   0  0  5  4  0    -0
SFBcastEnd           449 1.0 8.0402e+00 150.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        154 1.0 2.6736e-02 8.9 0.00e+00 0.0 1.6e+05 8.0e+04 0.0e+00  0  0  0  1  0   0  0  2  2  0    -0
SFReduceEnd          154 1.0 2.9405e+00 154.7 1.02e+07 2.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   559
SFFetchOpBegin         4 1.0 2.0595e-05 3.1 0.00e+00 0.0 3.5e+03 9.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           4 1.0 8.3156e-04 27.7 0.00e+00 0.0 3.5e+03 9.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          3 1.0 1.4506e-03 2.6 0.00e+00 0.0 1.9e+03 2.9e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         38 1.0 7.6319e-03 1.4 0.00e+00 0.0 9.0e+04 1.2e+02 4.4e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           39 1.0 4.3596e-03 3.3 0.00e+00 0.0 4.3e+04 5.2e+01 3.9e+01  0  0  0  0  0   0  0  1  0  0    -0
SFRemoteOff            1 1.0 4.5588e-05 3.4 0.00e+00 0.0 1.1e+03 2.1e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack             19597 1.1 1.6542e+00 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           19601 1.1 5.1916e-02 8.9 1.02e+07 2.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 31688
VecDot                91 1.0 2.7459e-01 13.0 3.31e+07 1.1 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  1 24012
VecMDot             6367 1.0 4.8210e+01 2.1 2.88e+10 1.1 0.0e+00 0.0e+00 6.4e+03  3  4  0  0 24   8  8  0  0 42 118962
VecNorm             6987 1.0 7.2874e+00 3.4 2.18e+09 1.1 0.0e+00 0.0e+00 7.0e+03  0  0  0  0 27   1  1  0  0 46 59540
VecScale            6682 1.0 2.3759e-01 1.2 1.03e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 866603
VecCopy              731 1.0 4.2703e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               604 1.0 1.3967e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              315 1.0 1.0170e-01 1.5 8.16e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 159749
VecWAXPY             221 1.0 1.7472e-01 1.6 4.02e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 45823
VecMAXPY            6682 1.0 3.0348e+01 1.1 3.08e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3  4  0  0  0   7  8  0  0  0 202011
VecScatterBegin    18990 1.1 1.8659e+00 2.3 0.00e+00 0.0 7.4e+06 8.3e+04 0.0e+00  0  0 14 32  0   0  0 88 83  0    -0
VecScatterEnd      18990 1.1 2.0548e+01 47.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecSetRandom           2 1.0 4.7454e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecReduceArith       182 1.0 3.2264e-02 1.8 6.62e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 408709
VecReduceComm         91 1.0 6.8421e-02 7.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  1    -0
VecNormalize        1054 1.0 9.5660e-02 2.7 3.03e+07 1.1 0.0e+00 0.0e+00 1.1e+03  0  0  0  0  4   0  0  0  0  7 63113
MatMult             6588 1.0 1.5597e+02 1.2 1.14e+11 1.2 7.4e+06 8.3e+04 0.0e+00 15 16 14 32  0  35 31 88 83  0 145639
MatSolve            7149 1.1 7.8570e-01 1.5 4.68e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 118659
MatLUFactorSym       117 1.1 1.4385e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum       324 1.1 1.4296e-01 1.1 9.16e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 127016
MatILUFactorSym        1 1.0 8.2290e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin    1192 1.0 1.6980e+01 9.2 0.00e+00 0.0 1.0e+05 4.9e+05 5.6e+02  1  0  0  3  2   2  0  1  7  4    -0
MatAssemblyEnd      1192 1.0 2.6106e+00 7.1 3.20e+07 0.0 6.7e+03 8.1e+03 4.4e+01  0  0  0  0  0   0  0  0  0  0  1136
MatGetRowIJ          117 1.1 2.1859e-05 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats       2 1.0 3.3769e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+02  0  0  0  0  0   0  0  0  0  1    -0
MatGetOrdering       117 1.1 1.7406e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       273 1.0 3.2157e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
MatTranspose           5 1.0 9.1330e-03 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          5 1.0 1.3212e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        365 1.0 1.2174e+00 1.1 2.65e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  1  0  0  0 431838
MatPtAPSymbolic        2 1.0 1.8122e-01 1.0 0.00e+00 0.0 6.7e+03 1.1e+05 1.4e+01  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       182 1.0 6.7385e+00 1.0 1.01e+10 1.2 2.1e+05 1.9e+05 1.9e+02  1  1  0  2  1   2  3  2  5  1 296273
MatGetLocalMat       184 1.0 3.8048e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        184 1.0 3.4837e-01 2.2 0.00e+00 0.0 2.1e+05 1.9e+05 0.0e+00  0  0  0  2  0   0  0  2  5  0    -0
MatSetPreallCOO       16 1.0 4.3422e-05 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       16 1.0 1.9794e-05 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp               91 1.0 2.1596e+01 1.0 1.21e+10 1.2 1.3e+06 3.5e+04 2.7e+03  2  2  3  2 10   5  3 16  6 18 111078
PCApply             5407 1.0 5.5772e+02 1.0 3.37e+11 1.1 4.3e+07 2.7e+04 1.1e+04 57 48 84 61 43 Multiple stages 119889
PCApplyOnBlocks     7149 1.1 9.1263e-01 1.4 5.52e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 120434
KSPSetUp              91 1.0 1.4665e-02 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve              91 1.0 7.5507e+02 1.0 5.11e+11 1.1 4.9e+07 3.6e+04 2.2e+04 78 73 96 92 85 Multiple stages 134341
KSPGMRESOrthog      6367 1.0 7.3739e+01 1.4 5.76e+10 1.1 0.0e+00 0.0e+00 6.4e+03  6  8  0  0 24  14 16  0  0 42 155554
DMRefine               1 1.0 2.1165e-01 1.0 2.40e+03 1.0 6.8e+03 4.4e+01 3.0e+01  0  0  0  0  0   0  0  0  0  0     2
Mesh Partition         3 1.0 1.0305e-01 1.0 0.00e+00 0.0 2.6e+04 9.3e+01 3.8e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         3 1.0 1.9344e-02 1.1 0.00e+00 0.0 9.0e+04 1.2e+02 1.8e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 3.4384e-03 1298.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       3 1.0 1.4135e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        3 1.0 4.3959e-03 1.1 0.00e+00 0.0 5.0e+03 7.8e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       3 1.0 2.0568e-03 2.0 0.00e+00 0.0 2.5e+03 3.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          3 1.0 2.4712e-03 2.1 0.00e+00 0.0 2.7e+03 4.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          16 1.0 2.0148e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 1.1214e-01 1.0 0.00e+00 0.0 8.1e+03 4.8e+02 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        3 1.0 2.1349e-03 1.1 0.00e+00 0.0 1.5e+04 1.9e+02 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       3 1.0 8.5623e-03 1.0 0.00e+00 0.0 4.3e+04 1.2e+02 1.1e+02  0  0  0  0  0   0  0  1  0  1    -0
DMPlexDistOvrlp        2 1.0 1.2770e-02 1.0 0.00e+00 0.0 1.1e+05 9.2e+01 1.6e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistField        5 1.0 4.4992e-03 1.3 0.00e+00 0.0 2.2e+04 7.9e+01 1.4e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         3 1.0 3.4701e-04 1.1 0.00e+00 0.0 1.7e+04 5.2e+01 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify        24 1.0 2.4981e-03 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      24 1.0 5.0260e-04 13.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexGenerate         1 1.0 8.4906e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          1 1.0 1.2256e-04 5.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          1 1.0 2.1756e-03 1.4 0.00e+00 0.0 3.4e+03 3.4e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          1 1.0 6.7089e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          1 1.0 2.3803e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             1 1.0 4.9215e-04 6.1 0.00e+00 0.0 3.4e+03 3.4e+01 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         1 1.0 4.4971e-05 7.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         1 1.0 9.3747e-04 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMSwarmSetSizes        2 1.0 3.3161e-05 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             30 1.0 9.2210e+02 1.0 7.13e+11 1.2 5.1e+07 3.8e+04 2.6e+04 96 100 99 100 98 Multiple stages 151690
SNESSetUp              1 1.0 3.4837e-05 5.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     121 1.0 4.4617e+01 1.1 7.74e+10 1.2 3.1e+05 9.6e+04 1.0e+00  5 10  1  2  0  11 20  4  4  0 327842
SNESJacobianEval      91 1.0 9.7556e+01 1.0 1.11e+11 1.3 2.0e+05 2.8e+05 3.6e+02 10 15  0  3  1  23 29  2  8  2 215350
SNESLineSearch        91 1.0 2.3166e+01 1.0 6.02e+10 1.2 3.1e+05 9.7e+04 3.6e+02  2  8  1  2  1   6 16  4  4  2 492158
DualSpaceSetUp         4 1.0 3.3933e-03 1.2 7.20e+01 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     4
FESetUp                4 1.0 1.8073e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 9.5731e+02 1.0 7.13e+11 1.2 5.2e+07 3.8e+04 2.6e+04 99 100 100 100 100 Multiple stages 146111
firedrake.__init__       1 1.0 2.1254e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   5  0  0  0  0    -0
firedrake.utility_meshes.RectangleMesh       1 1.0 2.8486e+00 16.2 0.00e+00 0.0 1.2e+05 9.0e+01 1.9e+02  0  0  0  0  1   0  0  1  0  1    -0
CreateMesh             2 1.0 1.7683e-01 1.0 0.00e+00 0.0 2.3e+05 1.1e+02 3.2e+02  0  0  0  0  1   0  0  3  0  2    -0
firedrake.mesh.MeshTopology._set_partitioner       2 1.0 1.3613e-03 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       2 1.0 4.3080e-06 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        4 1.0 5.4899e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          2 1.0 6.9720e-04 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      20 1.0 4.0903e-02 1.1 0.00e+00 0.0 2.0e+04 9.8e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      24 1.0 1.5129e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      20 1.0 3.8734e-02 1.1 0.00e+00 0.0 2.0e+04 9.8e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      19 1.0 3.5871e-02 1.1 0.00e+00 0.0 2.0e+04 9.8e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      19 1.0 3.5756e-02 1.1 0.00e+00 0.0 2.0e+04 9.8e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      38 1.0 1.3558e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       4 1.0 8.7466e-03 1.1 0.00e+00 0.0 1.6e+04 7.5e+01 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       8 1.0 6.2696e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      16 1.0 1.8118e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      25 1.0 5.5415e-02 17.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          2 1.0 2.4944e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       2 1.0 1.7837e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       4 1.0 6.2376e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       4 1.0 1.0871e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       2 1.0 2.4888e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     258 1.0 4.6406e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      1066 1.0 1.3698e+02 1.1 1.89e+11 1.3 2.8e+05 9.4e+04 1.2e+01 13 25  1  1  0  31 49  3  4  0 260134
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       4 1.0 2.4514e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    2132 1.0 3.6030e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  4  0  0  0  0   9  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      15 1.0 2.0401e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   5  0  0  0  0    -0
GlobalKernel: generate loopy      15 0.0 2.2886e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      15 0.0 1.7545e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      16 1.0 2.0045e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
pyop2.compilation.load      16 1.0 2.0044e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      16 1.0 1.1100e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
pyop2.compilation.make_so      16 1.0 1.0943e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
ParLoopRednBegin    1066 1.0 2.8167e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      1066 1.0 2.3915e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       2 1.0 8.1020e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate       1 1.0 1.0450e+00 1.1 2.73e+06 1.1 4.6e+03 1.7e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0   520
firedrake.interpolation.interpolate       6 1.0 1.3638e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble       3 1.0 1.1834e+01 1.0 4.29e+06 1.1 2.6e+04 3.1e+03 9.7e+01  1  0  0  0  0   3  0  0  0  1    72
firedrake.formmanipulation.split_form       4 1.0 2.4005e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split       4 1.0 1.4908e-04 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)       4 1.0 1.2035e-01 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       4 1.0 6.3041e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     243 1.0 5.4852e-01 5.3 0.00e+00 0.0 2.8e+05 9.4e+04 2.0e+00  0  0  1  1  0   0  0  3  4  0    -0
Parloop_Cells_wrap_expression_kernel       8 1.0 3.6505e+00 1.0 4.29e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0   234
firedrake.halo.Halo.global_to_local_end     243 1.0 7.4365e+00 240.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.function.Function.assign      95 1.0 2.8839e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      94 1.0 2.6788e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.4692e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      34 1.0 5.4162e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 5.0649e-05 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 8.5785e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 4.2191e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 7.9871e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 9.3505e+00 1.0 0.00e+00 0.0 6.8e+03 5.3e+05 2.3e+01  1  0  0  0  0   2  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 1.9088e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.5369e-04 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 1.1451e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 1.1451e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
CreateSparsity         3 1.0 2.5807e+00 1.3 0.00e+00 0.0 1.0e+04 1.7e+05 3.2e+01  0  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         3 1.0 4.4989e-01 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      30 1.0 9.2217e+02 1.0 7.13e+11 1.2 5.1e+07 3.8e+04 2.6e+04 96 100 99 100 98 Multiple stages 151679
firedrake.mesh.AbstractMeshTopology.measure_set      10 1.0 9.3690e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       8 1.0 1.2014e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       8 1.0 3.3224e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     242 1.0 8.5494e+00 1.2 1.70e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   2  5  0  0  0 395951
Parloop_Cells_wrap_form0_exterior_facet_bottom_integral     242 1.0 2.0904e+00 1.0 4.65e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  4435
Parloop_Cells_wrap_form0_exterior_facet_top_integral     242 1.0 2.0750e+00 1.0 4.65e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  4468
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     242 1.0 1.0086e+01 1.1 1.74e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   2  5  0  0  0 344464
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     242 1.0 1.7017e+01 1.3 4.29e+10 1.4 0.0e+00 0.0e+00 0.0e+00  2  6  0  0  0   4 11  0  0  0 455317
firedrake.halo.Halo.local_to_global_begin     121 1.0 2.9634e-02 5.4 0.00e+00 0.0 1.4e+05 9.7e+04 0.0e+00  0  0  0  1  0   0  0  2  2  0    -0
firedrake.halo.Halo.local_to_global_end     121 1.0 2.9416e+00 147.1 1.02e+07 2.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   559
Parloop_Cells_wrap_form00_cell_integral     182 1.0 1.5543e+01 1.1 2.33e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  3  0  0  0   4  6  0  0  0 298434
Parloop_Cells_wrap_form00_exterior_facet_bottom_integral     182 1.0 2.3152e+00 1.0 4.25e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  3658
Parloop_Cells_wrap_form00_exterior_facet_top_integral     182 1.0 2.0988e+00 1.0 4.25e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  4035
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     182 1.0 2.7765e+01 1.2 2.45e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3  3  0  0  0   6  7  0  0  0 175866
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     182 1.0 4.2577e+01 1.3 6.34e+10 1.4 0.0e+00 0.0e+00 0.0e+00  4  8  0  0  0   9 16  0  0  0 269332
firedrake.dmhooks.get_function_space       2 1.0 2.2126e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       2 1.0 8.7507e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.VertexOnlyMesh       1 1.0 7.9406e+00 1.0 0.00e+00 0.0 1.5e+04 1.3e+02 1.1e+01  1  0  0  0  0   2  0  0  0  0    -0
firedrake.mesh._pic_swarm_in_mesh       1 1.0 7.9323e+00 1.0 0.00e+00 0.0 1.0e+04 1.0e+02 6.0e+00  1  0  0  0  0   2  0  0  0  0    -0
firedrake.mesh._parent_mesh_embedding       1 1.0 6.0216e+00 1.0 0.00e+00 0.0 5.7e+03 3.9e+01 4.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshGeometry.locate_cells_ref_coords_and_dists       1 1.0 5.8555e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshGeometry._c_locator       1 1.0 5.8466e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.src_locate_cell       1 1.0 5.3935e+00 10.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.compile_coordinate_element       1 1.0 5.3854e+00 20.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       1 1.0 5.2318e+00 152.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.make_wrapper       1 1.0 4.1006e+00 612.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.parloop.generate_single_cell_wrapper       1 1.0 4.1004e+00 620.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
c_locator_run          1 1.0 2.3299e-02 4.5 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._ctypes       1 1.0 1.9239e-02 12.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._constant_ctypes       1 1.0 1.4215e-03 19.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.rtree       1 1.0 1.8573e-03 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.bounding_box_coords       1 1.0 1.8085e-04 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
rtree_build            1 1.0 1.6757e-03 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._dmswarm_create       2 1.0 1.3293e-02 34.5 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._swarm_original_ordering_preserve       1 1.0 1.9125e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.VertexOnlyMeshTopology.__init__       2 1.0 1.6412e-02 3.3 0.00e+00 0.0 4.5e+03 1.8e+02 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_vom_from_vom_topology       2 1.0 2.6298e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.action       1 1.0 2.4708e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0       91 1.0 2.7842e-01 1.0 6.37e+07 1.2 1.1e+06 3.1e+02 2.1e+03  0  0  2  0  8   0  0 13  0 14 45159
MGSetup Level 1       91 1.0 9.1736e-01 1.0 3.87e+08 1.1 1.1e+04 9.7e+04 1.4e+02  0  0  0  0  1   0  0  0  0  1 83901

--- Event Stage 1: MG Apply

BuildTwoSided         91 1.0 8.4012e-03 4.5 0.00e+00 0.0 1.0e+05 4.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  1    -0
SFSetGraph            91 1.0 7.0377e-04 3.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               91 1.0 1.1040e-02 2.9 0.00e+00 0.0 2.1e+05 4.3e+01 9.1e+01  0  0  0  0  0   0  0  0  0  1    -0
SFPack           2589953 1.1 3.0619e+00 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack         2589953 1.1 1.3224e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy            21628 1.0 2.1929e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet             59475 1.0 9.3804e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecAXPY            10814 1.0 4.6512e+00 1.4 3.93e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  1  0  0  0 168454
VecAYPX            43256 1.0 6.9673e+00 2.8 1.99e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 56802
VecAXPBYCZ         10814 1.0 8.4793e-03 3.5 2.51e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 589309
VecScatterBegin  2589953 1.1 2.8654e+01 1.2 0.00e+00 0.0 4.3e+07 2.8e+04 0.0e+00  3  0 83 61  0   5  0 99 100  0    -0
VecScatterEnd    2589953 1.1 3.8438e+01 12.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
MatMult            32442 1.0 2.9492e+02 1.1 2.18e+11 1.2 3.6e+07 3.2e+04 0.0e+00 29 31 71 61  0  51 65 85 100  0 146933
MatMultAdd         10814 1.0 1.4070e+01 1.2 7.89e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 111656
MatMultTranspose   10814 1.0 1.2421e+01 2.1 7.89e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 126486
MatSolve         1281459 1.1 1.9111e+02 1.1 9.29e+10 1.1 6.6e+06 1.5e+02 4.6e+02 19 13 13  0  2  33 28 15  0  4 96600
MatLUFactorNum     10414 1.1 4.4215e+00 1.2 3.73e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  1  0  0  0 167977
MatResidual        10814 1.0 1.5488e+02 1.2 1.10e+11 1.2 1.2e+07 4.9e+04 0.0e+00 15 16 24 31  0  26 33 28 50  0 141042
MatAssemblyBegin   10324 1.1 1.7719e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyEnd     10324 1.1 2.7638e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats      89 1.0 9.0167e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
PCSetUp            10503 1.1 1.3246e+01 1.1 3.73e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  1  0  0  0 56073
PCSetUpOnBlocks    10814 1.0 5.2143e-02 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply            16221 1.0 2.5081e+02 1.1 9.72e+10 1.1 3.1e+07 2.3e+02 5.9e+03 24 14 60  0 22  43 29 72  1 52 76944
PCApplyOnBlocks  1276052 1.1 1.4983e+02 1.2 9.62e+10 1.1 0.0e+00 0.0e+00 0.0e+00 15 14  0  0  0  26 29  0  0  0 127895
KSPSetUp           10325 1.1 2.5496e-03 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve           16221 1.0 3.9434e+02 1.1 2.11e+11 1.1 3.7e+07 1.6e+04 1.1e+04 40 30 72 31 43  70 63 86 50 100 106268
MGSmooth Level 0    5407 1.0 7.2761e+01 1.5 2.83e+09 3.5 3.1e+07 2.3e+02 1.1e+04  6  0 60  0 43  10  0 72  1 100  2851
MGSmooth Level 1   10814 1.0 3.4241e+02 1.1 2.10e+11 1.1 6.1e+06 9.7e+04 0.0e+00 34 30 12 30  0  60 62 14 50  0 121780
MGResid Level 1     5407 1.0 1.5469e+02 1.2 1.10e+11 1.2 6.1e+06 9.7e+04 0.0e+00 15 16 12 30  0  26 33 14 50  0 141084
MGInterp Level 1   10814 1.0 2.6343e+01 1.4 1.57e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  2  0  0  0   4  5  0  0  0 118971
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   111            110
              Viewer     1              1
         PetscRandom     2              2
           Index Set  2344           2344
   IS L to G Mapping   213            209
             Section   303            303
   Star Forest Graph   383            382
              Vector   940            935
              Matrix   637            623
      Preconditioner   114            114
       Krylov Solver   114            114
     DMKSP interface     1              1
                SNES     1              1
              DMSNES     1              1
      SNESLineSearch     1              1
    Distributed Mesh    79             80
            DM Label   213            213
          Quadrature    84             84
      Mesh Transform     1              1
       Swarm Cell DM     2              2
    GraphPartitioner    24             24
     Discrete System   112            113
           Weak Form   112            113
        Linear Space     8              8
          Dual Space    28             28
            FE Space     4              4

--- Event Stage 1: MG Apply

           Index Set   182            182
   Star Forest Graph    93             90
              Vector   183            184
    Distributed Mesh     1              0
     Discrete System     1              0
           Weak Form     1              0
========================================================================================================================
Average time to get PetscTime(): 2.56e-08
Average time for MPI_Barrier(): 7.8744e-06
Average time for zero size MPI_Send(): 2.328e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_mg_coarse_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_mg_levels_1_pc_linesmooth_sub_sub_pc_factor_mat_ordering_type natural # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/cockett/vlumping_hmg/medium.profile # (source: environment)
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

