****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0125.gadi.nci.org.au with 208 processes, by sg8812 on Thu Aug 27 13:05:22 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           3.964e+02     1.000   3.964e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                3.818e+11     1.130   3.663e+11  7.619e+13
Flops/sec:            9.630e+08     1.130   9.240e+08  1.922e+11
MPI Msg Count:        3.415e+04     3.397   2.225e+04  4.627e+06
MPI Msg Len (bytes):  4.037e+09     3.595   1.066e+05  4.934e+11
MPI Reductions:       4.383e+03     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 2.6663e+02  67.3%  5.8430e+13  76.7%  2.094e+06  45.3%  1.461e+05       62.0%  3.660e+03  83.5%
 1:        MG Apply: 1.2981e+02  32.7%  1.7762e+13  23.3%  2.533e+06  54.7%  7.398e+04       38.0%  7.040e+02  16.1%

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

BuildTwoSided        438 1.0 2.0230e+01 3.0 0.00e+00 0.0 1.1e+05 4.0e+00 4.4e+02  3  0  2  0 10   5  0  5  0 12    -0
BuildTwoSidedF       341 1.0 1.8613e+01 2.5 0.00e+00 0.0 7.5e+04 1.4e+06 3.4e+02  3  0  2 21  8   5  0  4 34  9    -0
SFSetGraph           104 1.0 8.5010e-03 5.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               97 1.0 2.7617e+00 87.6 0.00e+00 0.0 1.4e+05 1.1e+03 9.7e+01  0  0  3  0  2   1  0  7  0  3    -0
SFBcastBegin         465 1.0 1.4409e-01 3.5 0.00e+00 0.0 4.5e+05 5.3e+04 0.0e+00  0  0 10  5  0   0  0 22  8  0    -0
SFBcastEnd           465 1.0 6.8596e+00 91.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        130 1.0 3.4263e-02 6.3 0.00e+00 0.0 1.3e+05 8.4e+04 0.0e+00  0  0  3  2  0   0  0  6  4  0    -0
SFReduceEnd          130 1.0 9.9507e-01 43.0 1.15e+07 3.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1415
SFFetchOpBegin         6 1.0 4.3516e-05 6.9 0.00e+00 0.0 5.3e+03 7.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           6 1.0 1.0107e-03 21.6 0.00e+00 0.0 5.3e+03 7.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          4 1.0 1.3288e-03 2.3 0.00e+00 0.0 2.6e+03 1.1e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         49 1.0 6.8979e-03 1.4 0.00e+00 0.0 1.2e+05 7.8e+01 5.8e+01  0  0  3  0  1   0  0  6  0  2    -0
SFSectionSF           51 1.0 4.6389e-03 3.2 0.00e+00 0.0 5.9e+04 3.7e+01 5.1e+01  0  0  1  0  1   0  0  3  0  1    -0
SFRemoteOff            2 1.0 9.7082e-05 2.8 0.00e+00 0.0 2.3e+03 1.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack              1707 1.0 5.3648e-01 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            1713 1.0 6.6316e-02 5.7 1.15e+07 3.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 21239
VecDot                67 1.0 2.9596e-01 8.0 5.40e+07 1.1 0.0e+00 0.0e+00 6.7e+01  0  0  0  0  2   0  0  0  0  2 37111
VecMDot             1039 1.0 1.5273e+01 2.4 4.00e+09 1.1 0.0e+00 0.0e+00 1.0e+03  2  1  0  0 24   4  1  0  0 28 53290
VecNorm             1329 1.0 5.5270e+00 2.4 1.07e+09 1.1 0.0e+00 0.0e+00 1.3e+03  1  0  0  0 30   1  0  0  0 36 39418
VecScale            1173 1.0 3.6381e-01 1.2 4.73e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 264275
VecCopy              536 1.0 6.9859e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               268 1.0 2.2204e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              134 1.0 2.3350e-01 1.3 1.08e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 94075
VecWAXPY              68 1.0 1.3264e-01 1.2 2.78e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 42639
VecMAXPY            1173 1.0 6.2795e+00 1.1 4.84e+09 1.1 0.0e+00 0.0e+00 0.0e+00  2  1  0  0  0   2  2  0  0  0 156739
VecScatterBegin     1106 1.0 4.5778e-01 2.9 0.00e+00 0.0 1.2e+06 1.2e+05 0.0e+00  0  0 26 28  0   0  0 58 46  0    -0
VecScatterEnd       1106 1.0 5.9654e+00 9.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecReduceArith       134 1.0 9.6410e-02 1.5 1.08e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 227846
VecReduceComm         67 1.0 6.8425e-02 16.6 0.00e+00 0.0 0.0e+00 0.0e+00 6.7e+01  0  0  0  0  2   0  0  0  0  2    -0
VecNormalize         737 1.0 4.0090e+00 2.6 8.91e+08 1.1 0.0e+00 0.0e+00 7.4e+02  1  0  0  0 17   1  0  0  0 20 45205
MatMult             1106 1.0 4.5243e+01 1.1 3.16e+10 1.1 1.2e+06 1.2e+05 0.0e+00 11  8 26 28  0  16 11 58 46  0 141792
MatSolve             737 1.0 2.9424e+01 1.2 2.04e+10 1.1 0.0e+00 0.0e+00 0.0e+00  7  5  0  0  0  10  7  0  0  0 140506
MatLUFactorSym         1 1.0 5.5629e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum       134 1.0 1.9000e+01 1.2 1.71e+10 1.2 0.0e+00 0.0e+00 0.0e+00  5  4  0  0  0   7  6  0  0  0 177756
MatILUFactorSym        1 1.0 1.4840e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin     524 1.0 2.0073e+01 2.5 0.00e+00 0.0 7.5e+04 1.4e+06 3.4e+02  4  0  2 21  8   5  0  4 34  9    -0
MatAssemblyEnd       524 1.0 5.8358e+00 4.2 7.45e+07 0.0 4.4e+03 1.5e+04 1.7e+01  1  0  0  0  0   1  0  0  0  0  1092
MatGetRowIJ            1 1.0 7.3540e-06 54.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         1 1.0 6.1883e-03 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       134 1.0 2.3002e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
MatTranspose           2 1.0 1.5296e-02 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 1.2699e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        134 1.0 1.4241e+00 1.3 1.95e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   0  1  0  0  0 276829
MatPtAPSymbolic        1 1.0 3.1226e-01 1.0 0.00e+00 0.0 3.3e+03 1.9e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric        67 1.0 1.1074e+01 1.0 7.77e+09 1.1 7.4e+04 3.4e+05 7.2e+01  3  2  2  5  2   4  3  4  8  2 142383
MatGetLocalMat        67 1.0 5.0380e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol         67 1.0 3.1592e-01 2.4 0.00e+00 0.0 7.5e+04 3.4e+05 0.0e+00  0  0  2  5  0   0  0  4  8  0    -0
MatSetPreallCOO       32 1.0 2.1725e-04 4.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       32 1.0 3.6006e-05 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp               67 1.0 9.7844e+01 1.0 7.19e+10 1.1 8.1e+05 1.4e+05 1.6e+03 25 19 18 22 36  37 25 39 36 43 148045
PCApply              369 1.0 1.3267e+02 1.0 8.80e+10 1.1 2.5e+06 7.4e+04 7.0e+02 33 23 55 38 16 Multiple stages 133880
PCApplyOnBlocks      737 1.0 2.9432e+01 1.2 2.04e+10 1.1 0.0e+00 0.0e+00 0.0e+00  7  5  0  0  0  10  7  0  0  0 140468
KSPSetUp              67 1.0 1.9150e-02 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve              67 1.0 1.5074e+02 1.0 1.02e+11 1.1 2.9e+06 8.0e+04 1.5e+03 38 27 63 47 34 Multiple stages 136001
KSPGMRESOrthog      1039 1.0 1.9964e+01 1.7 8.01e+09 1.1 0.0e+00 0.0e+00 1.0e+03  4  2  0  0 24   6  3  0  0 28 81537
DMRefine               2 1.0 2.2861e-01 1.0 2.09e+03 1.0 1.6e+04 3.3e+01 6.3e+01  0  0  0  0  1   0  0  1  0  2     2
DMPlexCreateGmsh       1 1.0 2.1627e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 4.9795e+00 242.3 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  1  0  0  0  0   1  0  0  0  0    -0
Mesh Partition         4 1.0 9.1498e-02 1.0 0.00e+00 0.0 3.8e+04 6.1e+01 5.1e+01  0  0  1  0  1   0  0  2  0  1    -0
Mesh Migration         4 1.0 1.7792e-02 1.1 0.00e+00 0.0 1.4e+05 7.1e+01 2.4e+02  0  0  3  0  5   0  0  7  0  6    -0
DMPlexPartSelf         1 1.0 1.9453e-03 769.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       4 1.0 1.9865e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        4 1.0 5.9544e-03 1.2 0.00e+00 0.0 7.5e+03 4.8e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       4 1.0 2.9597e-03 2.9 0.00e+00 0.0 3.7e+03 1.9e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          4 1.0 1.8728e-03 3.0 0.00e+00 0.0 3.9e+03 2.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          29 1.0 8.0977e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 9.1703e-02 1.0 0.00e+00 0.0 8.6e+03 1.8e+02 6.3e+01  0  0  0  0  1   0  0  0  0  2    -0
DMPlexDistCones        4 1.0 2.1241e-03 1.1 0.00e+00 0.0 2.2e+04 1.1e+02 8.0e+00  0  0  0  0  0   0  0  1  0  0    -0
DMPlexDistLabels       4 1.0 6.9029e-03 1.0 0.00e+00 0.0 7.1e+04 6.8e+01 1.5e+02  0  0  2  0  3   0  0  3  0  4    -0
DMPlexDistOvrlp        3 1.0 1.9694e-02 1.0 0.00e+00 0.0 1.7e+05 6.7e+01 2.4e+02  0  0  4  0  5   0  0  8  0  7    -0
DMPlexDistField        7 1.0 3.8458e-03 1.3 0.00e+00 0.0 3.2e+04 5.5e+01 2.0e+01  0  0  1  0  0   0  0  2  0  1    -0
DMPlexStratify        41 1.0 6.1426e-03 5.9 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      41 1.0 3.3117e-04 6.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          2 1.0 1.1668e-04 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          2 1.0 3.2437e-03 1.6 0.00e+00 0.0 8.6e+03 2.8e+01 1.9e+01  0  0  0  0  0   0  0  0  0  1    -0
DMPlexTrSizes          2 1.0 1.0891e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          2 1.0 3.3450e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             2 1.0 3.6141e-04 1.9 0.00e+00 0.0 6.9e+03 2.6e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         2 1.0 8.7013e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         2 1.0 8.4247e-04 2.2 0.00e+00 0.0 1.7e+03 3.5e+01 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             21 1.0 3.3134e+02 1.0 3.82e+11 1.1 4.2e+06 1.2e+05 3.6e+03 84 100 90 99 83 Multiple stages 229902
SNESSetUp              1 1.0 7.1921e-05 5.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval      89 1.0 1.6747e+01 1.1 8.05e+10 1.2 2.2e+05 1.2e+05 0.0e+00  4 21  5  5  0   6 27 10  8  0 942923
SNESJacobianEval      67 1.0 6.2603e+01 1.0 1.27e+11 1.2 1.5e+05 7.6e+05 2.7e+02 16 33  3 22  6  23 43  7 36  7 398462
SNESLineSearch        67 1.0 8.1831e+00 1.0 6.37e+10 1.2 2.2e+05 1.2e+05 2.7e+02  2 16  5  5  6   3 21 11  8  7 1529324
DualSpaceSetUp         8 1.0 5.1567e-03 1.1 1.08e+02 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     4
FESetUp                8 1.0 1.9167e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 3.9417e+02 1.0 3.82e+11 1.1 4.6e+06 1.1e+05 4.4e+03 99 100 100 100 99 Multiple stages 193294
firedrake.__init__       1 1.0 1.1667e+01 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
CreateMesh             3 1.0 5.1337e+00 29.1 0.00e+00 0.0 3.4e+05 7.2e+01 4.4e+02  1  0  7  0 10   1  0 16  0 12    -0
firedrake.mesh._from_gmsh       1 1.0 4.9801e+00 241.8 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       3 1.0 1.0654e-03 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       3 1.0 7.8400e-06 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        3 1.0 4.9538e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          3 1.0 1.0663e-03 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      15 1.0 3.2183e-02 1.1 0.00e+00 0.0 7.1e+03 8.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      19 1.0 1.8281e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      19 1.0 3.0371e-02 1.1 0.00e+00 0.0 7.1e+03 8.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      18 1.0 2.8126e-02 1.1 0.00e+00 0.0 7.1e+03 8.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      18 1.0 2.8020e-02 1.1 0.00e+00 0.0 7.1e+03 8.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      36 1.0 1.3604e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       6 1.0 5.1654e-03 1.1 0.00e+00 0.0 7.1e+03 8.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__      12 1.0 7.5171e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      10 1.0 1.3607e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      65 1.0 3.8406e-02 3.7 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          3 1.0 2.3046e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       3 1.0 6.2521e-04 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       4 1.0 5.7613e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       5 1.0 1.2814e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       3 1.0 2.2981e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     322 1.0 5.1930e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute       733 1.0 7.2450e+01 1.1 2.07e+11 1.2 2.2e+05 1.1e+05 3.2e+01 17 53  5  5  1  26 70 11  8  1 562393
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       6 1.0 2.2539e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    1466 1.0 2.5903e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  6  0  0  0  0   9  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      17 1.0 1.0734e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   4  0  0  0  0    -0
GlobalKernel: generate loopy      17 0.0 1.2554e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      17 0.0 8.7273e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      17 1.0 1.5125e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  4  0  0  0  0   6  0  0  0  0    -0
pyop2.compilation.load      17 1.0 1.5124e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  4  0  0  0  0   6  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      17 1.0 9.8831e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
pyop2.compilation.make_so      17 1.0 9.7054e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
ParLoopRednBegin     733 1.0 2.5665e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd       733 1.0 2.1473e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       3 1.0 9.8173e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong       4 1.0 6.8831e+00 1.0 1.36e+07 1.1 1.9e+04 1.3e+04 1.3e+01  2  0  0  0  0   3  0  1  0  0   402
firedrake.interpolation.interpolate      13 1.0 4.8259e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      13 1.0 6.0418e+00 1.0 8.42e+07 1.1 2.8e+04 4.0e+04 3.7e+01  2  0  1  0  1   2  0  1  0  1  2832
firedrake.formmanipulation.split_form      14 1.0 4.7301e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      14 1.0 3.3067e-04 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      13 1.0 1.6170e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       6 1.2 1.0649e-01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     198 1.0 3.2355e+00 27.2 0.00e+00 0.0 2.3e+05 1.0e+05 4.0e+00  1  0  5  5  0   1  0 11  8  0    -0
Parloop_Cells_wrap_expression_kernel      26 1.0 5.5271e+00 1.0 8.42e+07 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0  3096
firedrake.halo.Halo.global_to_local_end     198 1.0 4.5340e+00 114.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       1 1.0 2.7172e+00 43.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1507f7c07d50_wrap_pyop2_kernel_prolong       4 0.0 7.4680e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1507f7c64750_wrap_pyop2_kernel_prolong       4 0.0 4.8685e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 3.9996e+00 1.0 6.81e+07 1.1 1.7e+04 5.8e+04 1.1e+01  1  0  0  0  0   1  0  1  0  0  3463
firedrake.function.Function.assign      98 1.0 6.1752e-01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      97 1.0 5.8968e-01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.4318e-04 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      46 1.0 5.2629e-04 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 5.5592e-05 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.3912e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 2.2625e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.1019e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 7.4210e+00 1.0 0.00e+00 0.0 6.7e+03 4.7e+05 2.3e+01  2  0  0  1  1   3  0  0  1  1    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 6.8563e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.9339e-04 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.0844e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.0844e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
CreateSparsity         2 1.0 4.0025e+00 1.1 0.00e+00 0.0 5.7e+03 2.7e+05 1.8e+01  1  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         2 1.0 5.6752e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      21 1.0 3.3142e+02 1.0 3.82e+11 1.1 4.2e+06 1.2e+05 3.7e+03 84 100 90 99 84 Multiple stages 229847
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 3.0538e-01 1080.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 1.0185e-05 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 3.0533e-01 1301.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 3.0530e-01 1488.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     178 1.0 3.8901e+00 1.3 2.04e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  5  0  0  0   1  7  0  0  0 1066080
Parloop_Cells_wrap_form0_exterior_facet_top_integral     178 1.0 9.6916e-01 1.0 2.65e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   556
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral     178 1.0 1.2117e+00 1.0 2.10e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  4221
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     178 1.0 2.8905e+00 1.1 1.96e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  5  0  0  0   1  7  0  0  0 1377982
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     178 1.0 5.2678e+00 1.2 4.05e+10 1.3 0.0e+00 0.0e+00 0.0e+00  1 10  0  0  0   2 13  0  0  0 1453000
firedrake.halo.Halo.local_to_global_begin      89 1.0 3.6098e-02 5.1 0.00e+00 0.0 9.7e+04 1.2e+05 0.0e+00  0  0  2  2  0   0  0  5  4  0    -0
firedrake.halo.Halo.local_to_global_end      89 1.0 9.9560e-01 41.9 1.15e+07 3.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1415
Parloop_Cells_wrap_form00_cell_integral     134 1.0 1.1035e+01 1.4 2.87e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  8  0  0  0   3 10  0  0  0 527942
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     134 1.0 1.3817e+00 1.3 1.61e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2838
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     134 1.0 1.2259e+01 1.1 3.79e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3 10  0  0  0   4 13  0  0  0 628736
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     134 1.0 2.6398e+01 1.4 6.03e+10 1.3 0.0e+00 0.0e+00 0.0e+00  6 15  0  0  0   9 20  0  0  0 431904
firedrake.dmhooks.get_function_space       1 1.0 1.2823e-03 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 5.1104e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0       67 1.0 8.8831e+00 1.0 4.15e+07 22.6 0.0e+00 0.0e+00 2.0e+00  2  0  0  0  0   3  0  0  0  0   162
MGSetup Level 1       67 1.0 7.6602e+01 1.0 6.41e+10 1.1 7.3e+05 1.2e+05 1.4e+03 19 17 16 17 32  29 22 35 28 38 168491
firedrake.constant.Constant.assign      21 1.0 9.8503e-04 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a88be8b650_wrap_pyop2_kernel_prolong       4 0.0 7.4663e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a88bc40850_wrap_pyop2_kernel_prolong       4 0.0 4.8506e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1520a1acd990_wrap_pyop2_kernel_prolong       4 0.0 7.4735e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1520a1955f10_wrap_pyop2_kernel_prolong       4 0.0 6.1671e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1534b6051110_wrap_pyop2_kernel_prolong       4 0.0 7.4692e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1534b5eb1090_wrap_pyop2_kernel_prolong       4 0.0 5.5721e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1550c7e8fbd0_wrap_pyop2_kernel_prolong       4 0.0 7.4755e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1550c7e87110_wrap_pyop2_kernel_prolong       4 0.0 6.6896e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14812de4b390_wrap_pyop2_kernel_prolong       4 0.0 7.4699e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14812de494d0_wrap_pyop2_kernel_prolong       4 0.0 5.9179e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148381639890_wrap_pyop2_kernel_prolong       4 0.0 7.4633e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148380ce8110_wrap_pyop2_kernel_prolong       4 0.0 5.0416e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a855bbcb50_wrap_pyop2_kernel_prolong       4 0.0 7.4640e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a855a6d0d0_wrap_pyop2_kernel_prolong       4 0.0 5.0711e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a7fd61910_wrap_pyop2_kernel_prolong       4 0.0 7.4664e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a7ff88090_wrap_pyop2_kernel_prolong       4 0.0 5.2361e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1495c0de2990_wrap_pyop2_kernel_prolong       4 0.0 7.4703e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1495c1038350_wrap_pyop2_kernel_prolong       4 0.0 5.3172e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e21e46f1d0_wrap_pyop2_kernel_prolong       4 0.0 7.4732e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e21e46cad0_wrap_pyop2_kernel_prolong       4 0.0 6.2115e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147dc4267f90_wrap_pyop2_kernel_prolong       4 0.0 7.4715e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147dc4180fd0_wrap_pyop2_kernel_prolong       4 0.0 5.8437e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aca9859190_wrap_pyop2_kernel_prolong       4 0.0 7.4749e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aca9874650_wrap_pyop2_kernel_prolong       4 0.0 6.6483e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147dbeed3190_wrap_pyop2_kernel_prolong       4 0.0 7.4459e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147dbeefbfd0_wrap_pyop2_kernel_prolong       4 0.0 5.4324e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145540359ed0_wrap_pyop2_kernel_prolong       4 0.0 7.4679e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14553b6080d0_wrap_pyop2_kernel_prolong       4 0.0 5.9835e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147af3a6e3d0_wrap_pyop2_kernel_prolong       4 0.0 7.4787e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147af3a6f790_wrap_pyop2_kernel_prolong       4 0.0 7.3792e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a3f7a6f810_wrap_pyop2_kernel_prolong       4 0.0 7.4498e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a3f7a65a10_wrap_pyop2_kernel_prolong       4 0.0 4.8074e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1544d6fefa10_wrap_pyop2_kernel_prolong       4 0.0 7.4618e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1544d7008410_wrap_pyop2_kernel_prolong       4 0.0 5.6773e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1545948a2490_wrap_pyop2_kernel_prolong       4 0.0 7.4617e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1545948a1990_wrap_pyop2_kernel_prolong       4 0.0 7.0601e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15259f259c50_wrap_pyop2_kernel_prolong       4 0.0 7.4553e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15259f259510_wrap_pyop2_kernel_prolong       4 0.0 5.6151e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1516ee331ed0_wrap_pyop2_kernel_prolong       4 0.0 7.4622e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1516ed8e0d50_wrap_pyop2_kernel_prolong       4 0.0 4.8465e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152b36adca50_wrap_pyop2_kernel_prolong       4 0.0 7.4626e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152b36ade2d0_wrap_pyop2_kernel_prolong       4 0.0 5.2667e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14642bbb1810_wrap_pyop2_kernel_prolong       4 0.0 7.4686e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14642b1bbed0_wrap_pyop2_kernel_prolong       4 0.0 6.1825e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d156e41990_wrap_pyop2_kernel_prolong       4 0.0 7.4744e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d156e42dd0_wrap_pyop2_kernel_prolong       4 0.0 6.9239e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14afda5e8ed0_wrap_pyop2_kernel_prolong       4 0.0 7.4734e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14afda5b99d0_wrap_pyop2_kernel_prolong       4 0.0 6.3983e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15280fb89ad0_wrap_pyop2_kernel_prolong       4 0.0 7.4770e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15280f245b50_wrap_pyop2_kernel_prolong       4 0.0 7.3389e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c7fa79d50_wrap_pyop2_kernel_prolong       4 0.0 7.4713e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c844d8690_wrap_pyop2_kernel_prolong       4 0.0 5.2894e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493d2932810_wrap_pyop2_kernel_prolong       4 0.0 7.4634e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493d297aad0_wrap_pyop2_kernel_prolong       4 0.0 5.1103e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd9ea64650_wrap_pyop2_kernel_prolong       4 0.0 7.4692e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd9ea65510_wrap_pyop2_kernel_prolong       4 0.0 5.8480e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1526c298e3d0_wrap_pyop2_kernel_prolong       4 0.0 7.4721e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1526c298dd90_wrap_pyop2_kernel_prolong       4 0.0 6.0083e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1469c57a3e10_wrap_pyop2_kernel_prolong       4 0.0 7.4676e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1469c57a16d0_wrap_pyop2_kernel_prolong       4 0.0 6.0613e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15305c75f3d0_wrap_pyop2_kernel_prolong       4 0.0 7.4658e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153057dff0d0_wrap_pyop2_kernel_prolong       4 0.0 5.4136e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154862a68bd0_wrap_pyop2_kernel_prolong       4 0.0 7.4640e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154862a6f1d0_wrap_pyop2_kernel_prolong       4 0.0 5.3998e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f62feacd0_wrap_pyop2_kernel_prolong       4 0.0 7.4623e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f62feb650_wrap_pyop2_kernel_prolong       4 0.0 5.8436e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14692151a590_wrap_pyop2_kernel_prolong       4 0.0 7.4703e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14691eed7610_wrap_pyop2_kernel_prolong       4 0.0 6.3092e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b4b6913350_wrap_pyop2_kernel_prolong       4 0.0 7.4543e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b4b68fe650_wrap_pyop2_kernel_prolong       4 0.0 5.3163e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1492e2a83010_wrap_pyop2_kernel_prolong       4 0.0 7.4724e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1492e2cf6410_wrap_pyop2_kernel_prolong       4 0.0 6.6223e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cceb6e2190_wrap_pyop2_kernel_prolong       4 0.0 7.4696e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cceb6ce7d0_wrap_pyop2_kernel_prolong       4 0.0 6.1630e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f057477d0_wrap_pyop2_kernel_prolong       4 0.0 7.4811e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f05781bd0_wrap_pyop2_kernel_prolong       4 0.0 7.3308e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154479860690_wrap_pyop2_kernel_prolong       4 0.0 7.4690e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154479849fd0_wrap_pyop2_kernel_prolong       4 0.0 5.5349e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee81211690_wrap_pyop2_kernel_prolong       4 0.0 7.4565e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee81236450_wrap_pyop2_kernel_prolong       4 0.0 6.0529e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14badfe73350_wrap_pyop2_kernel_prolong       4 0.0 7.4598e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14badfe71cd0_wrap_pyop2_kernel_prolong       4 0.0 6.0192e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15375d88b010_wrap_pyop2_kernel_prolong       4 0.0 7.4667e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15375d054b90_wrap_pyop2_kernel_prolong       4 0.0 6.0619e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a9c140750_wrap_pyop2_kernel_prolong       4 0.0 7.4587e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a9c3b1cd0_wrap_pyop2_kernel_prolong       4 0.0 5.2674e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fdf8524d50_wrap_pyop2_kernel_prolong       4 0.0 7.4572e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fdf8c928d0_wrap_pyop2_kernel_prolong       4 0.0 7.1155e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b1f4e8c90_wrap_pyop2_kernel_prolong       4 0.0 7.4518e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b1f4dd490_wrap_pyop2_kernel_prolong       4 0.0 5.6307e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146460a4e510_wrap_pyop2_kernel_prolong       4 0.0 7.4732e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146460a44a10_wrap_pyop2_kernel_prolong       4 0.0 6.9367e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153a3caa1f90_wrap_pyop2_kernel_prolong       4 0.0 7.4742e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153a3caa3690_wrap_pyop2_kernel_prolong       4 0.0 6.4207e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b13252b90_wrap_pyop2_kernel_prolong       4 0.0 7.4650e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b129c5110_wrap_pyop2_kernel_prolong       4 0.0 5.7934e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150b21461890_wrap_pyop2_kernel_prolong       4 0.0 7.4679e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150b21461250_wrap_pyop2_kernel_prolong       4 0.0 6.8673e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d9efb7bed0_wrap_pyop2_kernel_prolong       4 0.0 7.4718e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d9efb7d190_wrap_pyop2_kernel_prolong       4 0.0 6.1166e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c40dfeb10_wrap_pyop2_kernel_prolong       4 0.0 7.4633e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c40dfd9d0_wrap_pyop2_kernel_prolong       4 0.0 7.3806e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1518fc903ad0_wrap_pyop2_kernel_prolong       4 0.0 7.4448e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1518f7f2b750_wrap_pyop2_kernel_prolong       4 0.0 5.0563e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14deae709990_wrap_pyop2_kernel_prolong       4 0.0 7.4495e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14deae709010_wrap_pyop2_kernel_prolong       4 0.0 5.0133e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe263d4d50_wrap_pyop2_kernel_prolong       4 0.0 7.4466e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe26d29e50_wrap_pyop2_kernel_prolong       4 0.0 5.2676e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146350c1bad0_wrap_pyop2_kernel_prolong       4 0.0 7.4453e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146350aeaf10_wrap_pyop2_kernel_prolong       4 0.0 4.8487e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151fcb143250_wrap_pyop2_kernel_prolong       4 0.0 7.4506e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151fcb141010_wrap_pyop2_kernel_prolong       4 0.0 5.6622e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c1fccde550_wrap_pyop2_kernel_prolong       4 0.0 7.4516e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c1fcb73cd0_wrap_pyop2_kernel_prolong       4 0.0 5.9965e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1512a5345790_wrap_pyop2_kernel_prolong       4 0.0 7.4447e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1512a4a7f850_wrap_pyop2_kernel_prolong       4 0.0 4.3074e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150558ae2d10_wrap_pyop2_kernel_prolong       4 0.0 7.4616e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150558adb450_wrap_pyop2_kernel_prolong       4 0.0 5.5975e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e692aa5dd0_wrap_pyop2_kernel_prolong       4 0.0 7.4628e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e69287d510_wrap_pyop2_kernel_prolong       4 0.0 5.4153e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a804959990_wrap_pyop2_kernel_prolong       4 0.0 7.4534e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a804959590_wrap_pyop2_kernel_prolong       4 0.0 5.3868e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e75171fd0_wrap_pyop2_kernel_prolong       4 0.0 7.4551e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e75178890_wrap_pyop2_kernel_prolong       4 0.0 5.9433e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff3e868210_wrap_pyop2_kernel_prolong       4 0.0 7.4666e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff3e7ebbd0_wrap_pyop2_kernel_prolong       4 0.0 6.5246e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15120aafab50_wrap_pyop2_kernel_prolong       4 0.0 7.4616e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15120a1ce8d0_wrap_pyop2_kernel_prolong       4 0.0 6.6331e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15107bba9610_wrap_pyop2_kernel_prolong       4 0.0 7.4544e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15107ba75710_wrap_pyop2_kernel_prolong       4 0.0 5.1783e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f585e6d510_wrap_pyop2_kernel_prolong       4 0.0 7.4541e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f5856a3e90_wrap_pyop2_kernel_prolong       4 0.0 5.9532e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd918128d0_wrap_pyop2_kernel_prolong       4 0.0 7.4634e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd91a454d0_wrap_pyop2_kernel_prolong       4 0.0 6.4466e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eab2fa3c10_wrap_pyop2_kernel_prolong       4 0.0 7.4482e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eab2f8a310_wrap_pyop2_kernel_prolong       4 0.0 5.7331e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15499ab4acd0_wrap_pyop2_kernel_prolong       4 0.0 7.4633e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15499aa439d0_wrap_pyop2_kernel_prolong       4 0.0 5.9316e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd2295ad90_wrap_pyop2_kernel_prolong       4 0.0 7.4567e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd22040d90_wrap_pyop2_kernel_prolong       4 0.0 6.7238e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14869f673a90_wrap_pyop2_kernel_prolong       4 0.0 7.4517e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14869f66ced0_wrap_pyop2_kernel_prolong       4 0.0 6.0052e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1514cf951c10_wrap_pyop2_kernel_prolong       4 0.0 7.4698e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1514cf9512d0_wrap_pyop2_kernel_prolong       4 0.0 5.0977e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f10614610_wrap_pyop2_kernel_prolong       4 0.0 7.4546e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f10615390_wrap_pyop2_kernel_prolong       4 0.0 6.5841e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a69226de10_wrap_pyop2_kernel_prolong       4 0.0 7.4510e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a692262450_wrap_pyop2_kernel_prolong       4 0.0 5.5494e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1500a2ba5710_wrap_pyop2_kernel_prolong       4 0.0 7.4637e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1500a220d190_wrap_pyop2_kernel_prolong       4 0.0 6.0007e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14911285a190_wrap_pyop2_kernel_prolong       4 0.0 7.4638e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491128598d0_wrap_pyop2_kernel_prolong       4 0.0 6.7698e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d83e946350_wrap_pyop2_kernel_prolong       4 0.0 7.4548e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d83e97b510_wrap_pyop2_kernel_prolong       4 0.0 7.1646e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e857e28b90_wrap_pyop2_kernel_prolong       4 0.0 7.4502e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e85c13e050_wrap_pyop2_kernel_prolong       4 0.0 5.8401e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1490a4c5aad0_wrap_pyop2_kernel_prolong       4 0.0 7.4527e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1490a4e93390_wrap_pyop2_kernel_prolong       4 0.0 5.8307e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d35733fc50_wrap_pyop2_kernel_prolong       4 0.0 7.4579e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d35733ddd0_wrap_pyop2_kernel_prolong       4 0.0 5.9133e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150c3ea5c3d0_wrap_pyop2_kernel_prolong       4 0.0 7.4635e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150c3ebfd050_wrap_pyop2_kernel_prolong       4 0.0 5.8978e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df15285a10_wrap_pyop2_kernel_prolong       4 0.0 7.4566e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df14937210_wrap_pyop2_kernel_prolong       4 0.0 5.2060e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b1dc56dc90_wrap_pyop2_kernel_prolong       4 0.0 7.4591e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b1dc457450_wrap_pyop2_kernel_prolong       4 0.0 7.0596e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b9f81c790_wrap_pyop2_kernel_prolong       4 0.0 7.4574e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b9fa6dd90_wrap_pyop2_kernel_prolong       4 0.0 5.0227e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab41e35990_wrap_pyop2_kernel_prolong       4 0.0 7.4566e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab41d03450_wrap_pyop2_kernel_prolong       4 0.0 5.3738e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149333678ad0_wrap_pyop2_kernel_prolong       4 0.0 7.4589e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14933367a810_wrap_pyop2_kernel_prolong       4 0.0 5.5920e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c7281a7cd0_wrap_pyop2_kernel_prolong       4 0.0 7.4589e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c7234f14d0_wrap_pyop2_kernel_prolong       4 0.0 6.4684e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15143ddb8c90_wrap_pyop2_kernel_prolong       4 0.0 7.4635e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15143d378750_wrap_pyop2_kernel_prolong       4 0.0 5.5435e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1553e255f690_wrap_pyop2_kernel_prolong       4 0.0 7.4659e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1553e2697110_wrap_pyop2_kernel_prolong       4 0.0 6.4303e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b29e471450_wrap_pyop2_kernel_prolong       4 0.0 7.4601e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b29e327950_wrap_pyop2_kernel_prolong       4 0.0 6.8415e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145b04117210_wrap_pyop2_kernel_prolong       4 0.0 7.4654e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145b04115890_wrap_pyop2_kernel_prolong       4 0.0 6.2505e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14841fd55fd0_wrap_pyop2_kernel_prolong       4 0.0 7.4524e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14841fd547d0_wrap_pyop2_kernel_prolong       4 0.0 5.3809e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a3ed64cd0_wrap_pyop2_kernel_prolong       4 0.0 7.4654e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a3e401a10_wrap_pyop2_kernel_prolong       4 0.0 6.9435e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493c3801810_wrap_pyop2_kernel_prolong       4 0.0 7.4569e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493c38ef090_wrap_pyop2_kernel_prolong       4 0.0 5.3697e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c7efc9ed0_wrap_pyop2_kernel_prolong       4 0.0 7.4609e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c7efc97d0_wrap_pyop2_kernel_prolong       4 0.0 6.6924e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b6b602da10_wrap_pyop2_kernel_prolong       4 0.0 7.4641e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b6b55bced0_wrap_pyop2_kernel_prolong       4 0.0 6.7815e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1476554b7b50_wrap_pyop2_kernel_prolong       4 0.0 7.4560e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147655e48cd0_wrap_pyop2_kernel_prolong       4 0.0 5.8272e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d24a19ea50_wrap_pyop2_kernel_prolong       4 0.0 7.4650e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d24a1ac6d0_wrap_pyop2_kernel_prolong       4 0.0 6.0658e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1483d3a27d90_wrap_pyop2_kernel_prolong       4 0.0 7.4620e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1483d38c9e50_wrap_pyop2_kernel_prolong       4 0.0 6.4460e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5b285c490_wrap_pyop2_kernel_prolong       4 0.0 7.4533e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5b1e72250_wrap_pyop2_kernel_prolong       4 0.0 6.4566e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b902f1f810_wrap_pyop2_kernel_prolong       4 0.0 7.4631e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b902f79090_wrap_pyop2_kernel_prolong       4 0.0 6.1507e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148aabaab550_wrap_pyop2_kernel_prolong       4 0.0 7.4568e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148aab96c5d0_wrap_pyop2_kernel_prolong       4 0.0 6.1552e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fcfd3bfb50_wrap_pyop2_kernel_prolong       4 0.0 7.4635e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fcfd3bdc10_wrap_pyop2_kernel_prolong       4 0.0 7.0833e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a9b6f2490_wrap_pyop2_kernel_prolong       4 0.0 7.5640e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a9b6f14d0_wrap_pyop2_kernel_prolong       4 0.0 5.1045e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f7f940d50_wrap_pyop2_kernel_prolong       4 0.0 7.5622e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f7f9413d0_wrap_pyop2_kernel_prolong       4 0.0 5.2415e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15106742f510_wrap_pyop2_kernel_prolong       4 0.0 7.5599e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151067425b90_wrap_pyop2_kernel_prolong       4 0.0 5.5813e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493b3827c90_wrap_pyop2_kernel_prolong       4 0.0 7.5663e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493b382abd0_wrap_pyop2_kernel_prolong       4 0.0 6.2269e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc98b3fd10_wrap_pyop2_kernel_prolong       4 0.0 7.5653e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc98af2ad0_wrap_pyop2_kernel_prolong       4 0.0 6.2478e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d91c3af90_wrap_pyop2_kernel_prolong       4 0.0 7.5710e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d919ff950_wrap_pyop2_kernel_prolong       4 0.0 7.2964e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fed2ee4650_wrap_pyop2_kernel_prolong       4 0.0 7.5622e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fed2ee1810_wrap_pyop2_kernel_prolong       4 0.0 5.8071e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a737552950_wrap_pyop2_kernel_prolong       4 0.0 7.5656e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a7373cdd90_wrap_pyop2_kernel_prolong       4 0.0 5.9208e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1553250dc250_wrap_pyop2_kernel_prolong       4 0.0 7.5614e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1553250d2110_wrap_pyop2_kernel_prolong       4 0.0 5.7945e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f265c3250_wrap_pyop2_kernel_prolong       4 0.0 7.5626e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f263b7b90_wrap_pyop2_kernel_prolong       4 0.0 5.8698e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149012bb2a50_wrap_pyop2_kernel_prolong       4 0.0 7.5676e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149012bb0e90_wrap_pyop2_kernel_prolong       4 0.0 6.3479e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14650859d790_wrap_pyop2_kernel_prolong       4 0.0 7.5680e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146508578090_wrap_pyop2_kernel_prolong       4 0.0 6.6784e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e72b457510_wrap_pyop2_kernel_prolong       4 0.0 7.5677e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e72ac97710_wrap_pyop2_kernel_prolong       4 0.0 6.7404e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d75e7ca4d0_wrap_pyop2_kernel_prolong       4 0.0 7.5447e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d75e7cbc10_wrap_pyop2_kernel_prolong       4 0.0 4.7789e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c7025cb10_wrap_pyop2_kernel_prolong       4 0.0 7.5478e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c700cf5d0_wrap_pyop2_kernel_prolong       4 0.0 5.9111e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145a03bf8050_wrap_pyop2_kernel_prolong       4 0.0 7.5646e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1459e90b5a50_wrap_pyop2_kernel_prolong       4 0.0 6.4839e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14876c3ae350_wrap_pyop2_kernel_prolong       4 0.0 7.5516e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14876c3afbd0_wrap_pyop2_kernel_prolong       4 0.0 5.5342e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15531552ac10_wrap_pyop2_kernel_prolong       4 0.0 7.5452e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155315282010_wrap_pyop2_kernel_prolong       4 0.0 5.7488e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d6aef32690_wrap_pyop2_kernel_prolong       4 0.0 7.5512e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d6af1a1950_wrap_pyop2_kernel_prolong       4 0.0 6.2804e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c301572dd0_wrap_pyop2_kernel_prolong       4 0.0 7.5372e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c30156df90_wrap_pyop2_kernel_prolong       4 0.0 5.3434e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5488d0110_wrap_pyop2_kernel_prolong       4 0.0 7.5522e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5488d18d0_wrap_pyop2_kernel_prolong       4 0.0 4.8686e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148bbd9e55d0_wrap_pyop2_kernel_prolong       4 0.0 7.5519e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148bbda00710_wrap_pyop2_kernel_prolong       4 0.0 5.7231e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1512d3f64410_wrap_pyop2_kernel_prolong       4 0.0 7.5541e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1512d3edfc50_wrap_pyop2_kernel_prolong       4 0.0 5.6504e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a035436b90_wrap_pyop2_kernel_prolong       4 0.0 7.5631e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a03543c5d0_wrap_pyop2_kernel_prolong       4 0.0 7.0043e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1459f5993dd0_wrap_pyop2_kernel_prolong       4 0.0 7.5592e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1459f5992250_wrap_pyop2_kernel_prolong       4 0.0 5.3935e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee0dce3c90_wrap_pyop2_kernel_prolong       4 0.0 7.5579e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee0dce1c10_wrap_pyop2_kernel_prolong       4 0.0 7.0600e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1475ae3aa2d0_wrap_pyop2_kernel_prolong       4 0.0 7.5390e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1475ae3a8410_wrap_pyop2_kernel_prolong       4 0.0 5.2121e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152582f99bd0_wrap_pyop2_kernel_prolong       4 0.0 7.5583e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152582fa39d0_wrap_pyop2_kernel_prolong       4 0.0 5.9207e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15031a5cdd10_wrap_pyop2_kernel_prolong       4 0.0 7.5541e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150319bc1510_wrap_pyop2_kernel_prolong       4 0.0 6.6181e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153d0174ef50_wrap_pyop2_kernel_prolong       4 0.0 7.5539e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153d0187f7d0_wrap_pyop2_kernel_prolong       4 0.0 5.5752e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152645ae23d0_wrap_pyop2_kernel_prolong       4 0.0 7.5693e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152645ae2a10_wrap_pyop2_kernel_prolong       4 0.0 6.4276e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14db5990e490_wrap_pyop2_kernel_prolong       4 0.0 7.5598e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14db5990e750_wrap_pyop2_kernel_prolong       4 0.0 6.5676e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153e5a931c50_wrap_pyop2_kernel_prolong       4 0.0 7.5586e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153e5a932750_wrap_pyop2_kernel_prolong       4 0.0 5.1879e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c612fdfd0_wrap_pyop2_kernel_prolong       4 0.0 7.5550e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c610c1cd0_wrap_pyop2_kernel_prolong       4 0.0 6.5375e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e1638acd0_wrap_pyop2_kernel_prolong       4 0.0 7.5620e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e16381b50_wrap_pyop2_kernel_prolong       4 0.0 5.4988e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456c8637b50_wrap_pyop2_kernel_prolong       4 0.0 7.5466e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456c861e290_wrap_pyop2_kernel_prolong       4 0.0 6.0220e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1457c946dad0_wrap_pyop2_kernel_prolong       4 0.0 7.5683e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1457c6df43d0_wrap_pyop2_kernel_prolong       4 0.0 6.7760e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152b8a926950_wrap_pyop2_kernel_prolong       4 0.0 7.5624e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152b8aa7bfd0_wrap_pyop2_kernel_prolong       4 0.0 6.1485e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15515d7bec50_wrap_pyop2_kernel_prolong       4 0.0 7.5679e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15515ce06750_wrap_pyop2_kernel_prolong       4 0.0 6.4205e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1469f720a450_wrap_pyop2_kernel_prolong       4 0.0 7.5486e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1469f72099d0_wrap_pyop2_kernel_prolong       4 0.0 5.9594e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e43ef151d0_wrap_pyop2_kernel_prolong       4 0.0 7.5677e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e43ef17190_wrap_pyop2_kernel_prolong       4 0.0 6.3960e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f35877350_wrap_pyop2_kernel_prolong       4 0.0 7.5631e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f35873fd0_wrap_pyop2_kernel_prolong       4 0.0 5.7533e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148ae4af2710_wrap_pyop2_kernel_prolong       4 0.0 7.5521e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148ae5d04bd0_wrap_pyop2_kernel_prolong       4 0.0 5.7581e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1510c678c510_wrap_pyop2_kernel_prolong       4 0.0 7.5611e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1510c6797b50_wrap_pyop2_kernel_prolong       4 0.0 6.3245e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c98ce2ba50_wrap_pyop2_kernel_prolong       4 0.0 7.5610e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c98ce824d0_wrap_pyop2_kernel_prolong       4 0.0 7.0504e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149da35c68d0_wrap_pyop2_kernel_prolong       4 0.0 7.5426e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149da35b6950_wrap_pyop2_kernel_prolong       4 0.0 5.8991e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f562fa2b90_wrap_pyop2_kernel_prolong       4 0.0 7.5606e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f562fa2550_wrap_pyop2_kernel_prolong       4 0.0 6.4494e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c91518af10_wrap_pyop2_kernel_prolong       4 0.0 7.5647e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c9153a8790_wrap_pyop2_kernel_prolong       4 0.0 6.6382e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1545d45d1c50_wrap_pyop2_kernel_prolong       4 0.0 7.5621e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1545d43a1310_wrap_pyop2_kernel_prolong       4 0.0 5.9599e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150ceaa12090_wrap_pyop2_kernel_prolong       4 0.0 7.5701e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150cea0705d0_wrap_pyop2_kernel_prolong       4 0.0 7.3531e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152bf50ebf10_wrap_pyop2_kernel_prolong       4 0.0 7.5675e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152bf50ea710_wrap_pyop2_kernel_prolong       4 0.0 6.8576e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eba639f0d0_wrap_pyop2_kernel_prolong       4 0.0 7.5542e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eba50e2b50_wrap_pyop2_kernel_prolong       4 0.0 7.0705e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ac1e9d210_wrap_pyop2_kernel_prolong       4 0.0 7.5410e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ac222d890_wrap_pyop2_kernel_prolong       4 0.0 5.5316e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e69dfc3cd0_wrap_pyop2_kernel_prolong       4 0.0 7.5528e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e69dfc1890_wrap_pyop2_kernel_prolong       4 0.0 6.0333e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151de79e4950_wrap_pyop2_kernel_prolong       4 0.0 7.5584e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151dec114290_wrap_pyop2_kernel_prolong       4 0.0 6.4461e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152f5e8e1d10_wrap_pyop2_kernel_prolong       4 0.0 7.5537e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152f5ea623d0_wrap_pyop2_kernel_prolong       4 0.0 5.7159e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1547df2e3550_wrap_pyop2_kernel_prolong       4 0.0 7.5604e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1547df2e3d50_wrap_pyop2_kernel_prolong       4 0.0 5.9837e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c97ce81dd0_wrap_pyop2_kernel_prolong       4 0.0 7.5401e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c97ce82c90_wrap_pyop2_kernel_prolong       4 0.0 5.2861e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14668eb99d10_wrap_pyop2_kernel_prolong       4 0.0 7.5399e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14668eb99310_wrap_pyop2_kernel_prolong       4 0.0 4.6435e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458a7d8d6d0_wrap_pyop2_kernel_prolong       4 0.0 7.5416e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458a7d8ea90_wrap_pyop2_kernel_prolong       4 0.0 5.5390e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e08d42b10_wrap_pyop2_kernel_prolong       4 0.0 7.5433e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e08d45750_wrap_pyop2_kernel_prolong       4 0.0 6.3649e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154dca2a54d0_wrap_pyop2_kernel_prolong       4 0.0 7.5577e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154dca257c10_wrap_pyop2_kernel_prolong       4 0.0 6.1663e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e59a13b890_wrap_pyop2_kernel_prolong       4 0.0 7.5513e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e59a0d51d0_wrap_pyop2_kernel_prolong       4 0.0 7.0490e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e753c2ce10_wrap_pyop2_kernel_prolong       4 0.0 7.5461e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e7531e59d0_wrap_pyop2_kernel_prolong       4 0.0 5.7456e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15393c7b62d0_wrap_pyop2_kernel_prolong       4 0.0 7.5585e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15393c8cf7d0_wrap_pyop2_kernel_prolong       4 0.0 7.0912e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb09a23a90_wrap_pyop2_kernel_prolong       4 0.0 7.5443e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb09c994d0_wrap_pyop2_kernel_prolong       4 0.0 6.0034e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1505e912bf10_wrap_pyop2_kernel_prolong       4 0.0 7.5520e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1505e9121890_wrap_pyop2_kernel_prolong       4 0.0 5.7301e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145752c53150_wrap_pyop2_kernel_prolong       4 0.0 7.5483e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14575230ac10_wrap_pyop2_kernel_prolong       4 0.0 6.8188e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c0c8ae0d0_wrap_pyop2_kernel_prolong       4 0.0 7.5610e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c0c712550_wrap_pyop2_kernel_prolong       4 0.0 6.6495e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15518d3edc90_wrap_pyop2_kernel_prolong       4 0.0 7.5495e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15518ca05a10_wrap_pyop2_kernel_prolong       4 0.0 6.1432e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151250f66190_wrap_pyop2_kernel_prolong       4 0.0 7.5513e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151250f53590_wrap_pyop2_kernel_prolong       4 0.0 7.3213e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a11fa472d0_wrap_pyop2_kernel_prolong       4 0.0 7.5412e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a11fa4d790_wrap_pyop2_kernel_prolong       4 0.0 4.8919e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15019088a090_wrap_pyop2_kernel_prolong       4 0.0 7.5454e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15019088bf90_wrap_pyop2_kernel_prolong       4 0.0 5.9930e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1248ccd50_wrap_pyop2_kernel_prolong       4 0.0 7.5599e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1248cd7d0_wrap_pyop2_kernel_prolong       4 0.0 6.3807e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1482ac405850_wrap_pyop2_kernel_prolong       4 0.0 7.5601e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1482ac408d50_wrap_pyop2_kernel_prolong       4 0.0 5.6982e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ae02e4cd0_wrap_pyop2_kernel_prolong       4 0.0 7.5457e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ae02edad0_wrap_pyop2_kernel_prolong       4 0.0 6.9762e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed2f2f28d0_wrap_pyop2_kernel_prolong       4 0.0 7.5551e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed2f1d1550_wrap_pyop2_kernel_prolong       4 0.0 6.3374e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151f3164aad0_wrap_pyop2_kernel_prolong       4 0.0 7.5671e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151f315cecd0_wrap_pyop2_kernel_prolong       4 0.0 7.5534e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148ec523d350_wrap_pyop2_kernel_prolong       4 0.0 7.5503e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148ec523ca10_wrap_pyop2_kernel_prolong       4 0.0 5.9744e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e5328c710_wrap_pyop2_kernel_prolong       4 0.0 7.5552e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e53278850_wrap_pyop2_kernel_prolong       4 0.0 5.2095e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd04c84910_wrap_pyop2_kernel_prolong       4 0.0 7.5472e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd04c8d990_wrap_pyop2_kernel_prolong       4 0.0 5.6838e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f20917b10_wrap_pyop2_kernel_prolong       4 0.0 7.5509e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f2090a6d0_wrap_pyop2_kernel_prolong       4 0.0 5.3965e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14641e711ad0_wrap_pyop2_kernel_prolong       4 0.0 7.5601e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14641de57b50_wrap_pyop2_kernel_prolong       4 0.0 6.4044e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc648cc990_wrap_pyop2_kernel_prolong       4 0.0 7.5598e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc64538fd0_wrap_pyop2_kernel_prolong       4 0.0 7.0043e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145b5906c4d0_wrap_pyop2_kernel_prolong       4 0.0 7.5397e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145b5906ded0_wrap_pyop2_kernel_prolong       4 0.0 5.5227e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14574b215dd0_wrap_pyop2_kernel_prolong       4 0.0 7.5543e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14574b220310_wrap_pyop2_kernel_prolong       4 0.0 6.4207e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dee57f6110_wrap_pyop2_kernel_prolong       4 0.0 7.5497e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dee4eb34d0_wrap_pyop2_kernel_prolong       4 0.0 6.5138e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150006391910_wrap_pyop2_kernel_prolong       4 0.0 7.5594e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15000590c550_wrap_pyop2_kernel_prolong       4 0.0 6.3246e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e581ed2350_wrap_pyop2_kernel_prolong       4 0.0 7.5481e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e581ed3390_wrap_pyop2_kernel_prolong       4 0.0 7.2947e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522916cfc10_wrap_pyop2_kernel_prolong       4 0.0 7.5502e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522916cc9d0_wrap_pyop2_kernel_prolong       4 0.0 6.1581e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145e953e5190_wrap_pyop2_kernel_prolong       4 0.0 7.5545e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145e94094450_wrap_pyop2_kernel_prolong       4 0.0 7.4992e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cc29f734d0_wrap_pyop2_kernel_prolong       4 0.0 7.5512e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cc2a0a91d0_wrap_pyop2_kernel_prolong       4 0.0 5.5725e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1469fa462ad0_wrap_pyop2_kernel_prolong       4 0.0 7.5473e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1469fa46a3d0_wrap_pyop2_kernel_prolong       4 0.0 5.6690e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f6280e94d0_wrap_pyop2_kernel_prolong       4 0.0 7.5577e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f62808abd0_wrap_pyop2_kernel_prolong       4 0.0 6.7993e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151c3c53e310_wrap_pyop2_kernel_prolong       4 0.0 7.5464e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151c3c5514d0_wrap_pyop2_kernel_prolong       4 0.0 6.5609e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ba87b5dd10_wrap_pyop2_kernel_prolong       4 0.0 7.5620e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ba87b5d410_wrap_pyop2_kernel_prolong       4 0.0 6.4638e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ae49892810_wrap_pyop2_kernel_prolong       4 0.0 7.5586e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ae49892850_wrap_pyop2_kernel_prolong       4 0.0 6.6422e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14969f96e410_wrap_pyop2_kernel_prolong       4 0.0 7.5460e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14969f96dd90_wrap_pyop2_kernel_prolong       4 0.0 5.8869e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147db1503190_wrap_pyop2_kernel_prolong       4 0.0 7.5562e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147db1503150_wrap_pyop2_kernel_prolong       4 0.0 5.8964e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1539d7d5e850_wrap_pyop2_kernel_prolong       4 0.0 7.5616e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1539d7d53f90_wrap_pyop2_kernel_prolong       4 0.0 7.0171e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149857f322d0_wrap_pyop2_kernel_prolong       4 0.0 7.5439e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498577a2050_wrap_pyop2_kernel_prolong       4 0.0 6.1115e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c6f71d950_wrap_pyop2_kernel_prolong       4 0.0 7.5443e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c6f71f190_wrap_pyop2_kernel_prolong       4 0.0 6.8618e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146dd010d290_wrap_pyop2_kernel_prolong       4 0.0 7.5537e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146dd0274710_wrap_pyop2_kernel_prolong       4 0.0 6.9335e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d3c8cb450_wrap_pyop2_kernel_prolong       4 0.0 7.5661e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d3c8ca2d0_wrap_pyop2_kernel_prolong       4 0.0 7.2820e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided         67 1.0 8.6573e-03 2.9 0.00e+00 0.0 8.8e+04 4.0e+00 6.7e+01  0  0  2  0  2   0  0  3  0 10    -0
SFSetGraph            67 1.0 2.8607e-03 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               67 1.0 1.3547e-02 2.0 0.00e+00 0.0 1.8e+05 2.1e+02 6.7e+01  0  0  4  0  2   0  0  7  0 10    -0
SFPack              2583 1.0 6.8179e-01 3.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            2583 1.0 2.0641e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             1107 1.0 1.2934e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecSet              1475 1.0 3.2243e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAYPX             2214 1.0 2.9844e+00 2.0 1.19e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  1  0  0  0 81074
VecAXPBYCZ           738 1.0 1.3318e+00 1.6 1.49e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  2  0  0  0 227093
VecScatterBegin     2583 1.0 7.4776e-01 3.2 0.00e+00 0.0 2.1e+06 8.9e+04 0.0e+00  0  0 45 38  0   0  0 83 100  0    -0
VecScatterEnd       2583 1.0 1.2875e+01 14.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   4  0  0  0  0    -0
MatMult             1476 1.0 6.6293e+01 1.2 4.22e+10 1.1 1.6e+06 1.2e+05 0.0e+00 15 11 35 38  0  45 48 64 100  0 129142
MatMultAdd           369 1.0 1.9557e+00 1.2 8.93e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 92792
MatMultTranspose     369 1.0 1.3418e+00 1.9 8.93e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 135243
MatSolve            1845 1.0 6.9785e+01 1.3 4.14e+10 1.1 9.2e+05 5.6e+02 3.4e+02 16 11 20  0  8  49 47 36  0 48 118838
MatResidual          369 1.0 1.7598e+01 1.3 1.07e+10 1.1 4.0e+05 1.2e+05 0.0e+00  4  3  9  9  0  12 12 16 25  0 123342
PCSetUpOnBlocks      738 1.0 8.4328e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply             1845 1.0 6.9815e+01 1.3 4.14e+10 1.1 9.2e+05 5.6e+02 3.4e+02 16 11 20  0  8  49 47 36  0 48 118786
PCApplyOnBlocks     1476 1.0 6.4451e+01 1.3 4.09e+10 1.1 0.0e+00 0.0e+00 0.0e+00 14 11  0  0  0  44 47  0  0  0 128464
KSPSolve            1107 1.0 1.1593e+02 1.1 7.56e+10 1.1 2.1e+06 6.6e+04 7.0e+02 28 20 46 29 16  86 86 84 75 100 131355
MGSmooth Level 0     369 1.0 8.3048e+00 1.7 4.42e+08 29.8 9.2e+05 5.6e+02 7.0e+02  2  0 20  0 16   5  0 36  0 100  1608
MGSmooth Level 1     738 1.0 1.1058e+02 1.1 7.51e+10 1.1 1.2e+06 1.2e+05 0.0e+00 27 20 26 28  0  81 86 48 75  0 137587
MGResid Level 1      369 1.0 1.7600e+01 1.3 1.07e+10 1.1 4.0e+05 1.2e+05 0.0e+00  4  3  9  9  0  12 12 16 25  0 123331
MGInterp Level 1     738 1.0 3.1177e+00 1.3 1.79e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  2  0  0  0 116411
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   121            121
              Viewer     3              3
           Index Set  1819           1819
   IS L to G Mapping   207            207
             Section   472            472
   Star Forest Graph   368            435
              Vector   438            438
              Matrix   132            132
      Preconditioner     6              6
       Krylov Solver     5              5
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

           Index Set   134            134
   Star Forest Graph    67              0
              Vector    67             67
========================================================================================================================
Average time to get PetscTime(): 2.68e-08
Average time for MPI_Barrier(): 8.1286e-06
Average time for zero size MPI_Send(): 2.47314e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murr_monthly/vlumping_inexact/h2.profile # (source: code)
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

