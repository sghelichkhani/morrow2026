****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0613.gadi.nci.org.au with 416 processes, by sg8812 on Fri Aug 21 23:24:38 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           6.400e+02     1.000   6.400e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                6.407e+11     1.491   5.509e+11  2.292e+14
Flops/sec:            1.001e+09     1.491   8.607e+08  3.581e+11
MPI Msg Count:        2.272e+05     4.347   1.237e+05  5.148e+07
MPI Msg Len (bytes):  1.204e+10     2.936   6.619e+04  3.407e+12
MPI Reductions:       2.157e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 4.5664e+02  71.3%  1.9559e+14  85.3%  1.662e+07  32.3%  1.466e+05       71.5%  1.705e+04  79.0%
 1:        MG Apply: 1.8339e+02  28.7%  3.3580e+13  14.7%  3.486e+07  67.7%  2.783e+04       28.5%  4.501e+03  20.9%

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

BuildTwoSided       1777 1.0 8.0108e+01 5.1 0.00e+00 0.0 3.9e+05 4.0e+00 1.7e+03  7  0  1  0  8  10  0  2  0 10    -0
BuildTwoSidedF      1593 1.0 7.9326e+01 3.6 0.00e+00 0.0 4.4e+05 1.8e+06 1.6e+03  8  0  1 23  7  11  0  3 32  9    -0
SFSetGraph           193 1.1 1.1770e-02 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              184 1.1 4.2983e+00 121.2 0.00e+00 0.0 3.5e+05 1.0e+03 1.2e+02  0  0  1  0  1   0  0  2  0  1    -0
SFBcastBegin         914 1.0 4.1568e-01 3.8 0.00e+00 0.0 1.8e+06 9.8e+04 0.0e+00  0  0  3  5  0   0  0 11  7  0    -0
SFBcastEnd           914 1.0 1.9938e+01 260.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
SFReduceBegin        345 1.0 9.9027e-02 25.5 0.00e+00 0.0 6.7e+05 1.3e+05 0.0e+00  0  0  1  3  0   0  0  4  4  0    -0
SFReduceEnd          345 1.0 4.8122e+00 101.2 3.78e+07 2.9 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2234
SFFetchOpBegin         6 1.0 3.0964e-05 4.4 0.00e+00 0.0 1.2e+04 3.4e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           6 1.0 1.0155e-03 24.9 0.00e+00 0.0 1.2e+04 3.4e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          4 1.0 1.4792e-03 2.6 0.00e+00 0.0 6.2e+03 4.5e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         51 1.0 7.2281e-03 1.4 0.00e+00 0.0 3.0e+05 3.7e+01 6.0e+01  0  0  1  0  0   0  0  2  0  0    -0
SFSectionSF           53 1.0 5.0979e-03 2.2 0.00e+00 0.0 1.4e+05 1.9e+01 5.3e+01  0  0  0  0  0   0  0  1  0  0    -0
SFRemoteOff            2 1.0 8.4730e-05 2.3 0.00e+00 0.0 5.2e+03 8.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack            329264 1.3 1.9225e+00 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack          329270 1.3 2.1065e-01 8.1 3.78e+07 2.9 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 51034
VecDot               225 1.0 1.5535e+00 16.7 1.04e+08 1.3 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  1   0  0  0  0  1 25094
VecMDot             6024 1.0 6.7255e+01 6.1 9.24e+09 1.3 0.0e+00 0.0e+00 6.0e+03  5  2  0  0 28   7  2  0  0 35 51655
VecNorm             7225 1.0 1.7319e+01 4.3 2.26e+09 1.3 0.0e+00 0.0e+00 7.2e+03  2  0  0  0 33   2  0  0  0 42 49169
VecScale            6700 1.0 2.7068e-01 1.6 1.01e+09 1.3 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 1404976
VecCopy             2028 1.0 1.1588e+00 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              6302 1.0 2.5128e+00 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              676 1.0 2.5640e-01 2.1 2.07e+08 1.3 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 304216
VecWAXPY             225 1.0 2.2730e-01 1.5 5.18e+07 1.3 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 85754
VecMAXPY            6700 1.0 1.2389e+01 1.5 1.11e+10 1.3 0.0e+00 0.0e+00 0.0e+00  2  2  0  0  0   2  2  0  0  0 335520
VecScatterBegin   327999 1.3 7.8637e+00 1.8 0.00e+00 0.0 1.2e+07 9.9e+04 0.0e+00  1  0 23 35  0   1  0 72 49  0    -0
VecScatterEnd     327999 1.3 3.4288e+01 66.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
VecReduceArith       450 1.0 1.2224e-01 2.4 2.07e+08 1.3 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 637797
VecReduceComm        225 1.0 3.7718e-01 35.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  1   0  0  0  0  1    -0
VecNormalize        4787 1.0 1.1730e+01 7.1 1.71e+09 1.3 0.0e+00 0.0e+00 4.8e+03  1  0  0  0 22   1  0  0  0 28 54879
MatMult             6249 1.0 1.0658e+02 1.3 6.81e+10 1.4 1.2e+07 9.9e+04 0.0e+00 15 11 23 35  0  20 13 72 49  0 239419
MatSolve          160712 1.3 3.7678e+01 2.0 1.99e+10 1.3 0.0e+00 0.0e+00 0.0e+00  4  3  0  0  0   6  4  0  0  0 199035
MatLUFactorSym        65 1.3 1.2250e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum     14627 1.3 6.6348e+00 1.6 8.26e+09 1.3 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   1  2  0  0  0 468057
MatILUFactorSym        2 1.0 7.3063e-05 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin   17410 1.3 8.0498e+01 2.6 0.00e+00 0.0 4.4e+05 1.8e+06 1.6e+03  8  0  1 23  7  12  0  3 32  9    -0
MatAssemblyEnd     17410 1.3 2.3258e+01 12.7 3.11e+08 0.0 1.5e+04 9.3e+03 7.1e+01  2  0  0  0  0   2  0  0  0  0  2097
MatGetRowIJ           66 1.3 2.0902e-05 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats     225 1.0 1.6841e+01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 6.5e+01  2  0  0  0  0   3  0  0  0  0    -0
MatGetOrdering        66 1.3 1.7284e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       900 1.0 4.1617e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
MatTranspose           8 1.0 7.0574e-03 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.8e+01  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          8 1.0 9.7617e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 1.8e+01  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum       1352 1.0 2.2973e+00 1.4 3.74e+09 1.4 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   0  1  0  0  0 608700
MatPtAPSymbolic        3 1.0 1.8979e-01 1.0 0.00e+00 0.0 1.7e+04 8.3e+04 2.1e+01  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       675 1.0 1.7859e+01 1.0 1.49e+10 1.4 1.3e+06 1.5e+05 6.9e+02  3  2  3  6  3   4  3  8  8  4 313326
MatGetLocalMat       679 1.0 1.0044e+00 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        679 1.0 1.3212e+00 2.8 0.00e+00 0.0 1.3e+06 1.5e+05 0.0e+00  0  0  3  6  0   0  0  8  8  0    -0
MatSetPreallCOO       32 1.0 6.1818e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       32 1.0 3.2927e-05 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp              225 1.0 1.6548e+02 1.0 9.42e+10 1.4 9.8e+06 8.6e+04 1.1e+04 26 15 19 25 50  36 18 59 34 63 213669
PCApply             1688 1.0 1.9437e+02 1.2 8.95e+10 1.4 3.5e+07 2.8e+04 4.5e+03 29 15 68 28 21 Multiple stages 172768
PCApplyOnBlocks   160712 1.3 4.4278e+01 1.9 2.82e+10 1.3 0.0e+00 0.0e+00 0.0e+00  5  5  0  0  0   8  5  0  0  0 239478
KSPSetUp             225 1.0 7.7498e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             225 1.0 2.4234e+02 1.0 1.26e+11 1.4 3.8e+07 3.8e+04 8.1e+03 38 21 74 43 38 Multiple stages 195636
KSPGMRESOrthog      6024 1.0 7.4674e+01 3.5 1.85e+10 1.3 0.0e+00 0.0e+00 6.0e+03  6  3  0  0 28   9  4  0  0 35 93047
DMRefine               2 1.0 3.1034e-02 1.0 2.09e+03 1.0 3.5e+04 1.8e+01 6.3e+01  0  0  0  0  0   0  0  0  0  0    28
DMPlexCreateGmsh       1 1.0 1.3396e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 5.0498e+00 371.4 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  1  0  0  0  0   1  0  0  0  0    -0
Mesh Partition         4 1.0 7.9791e-02 1.0 0.00e+00 0.0 8.7e+04 3.1e+01 5.1e+01  0  0  0  0  0   0  0  1  0  0    -0
Mesh Migration         4 1.0 2.1966e-02 1.1 0.00e+00 0.0 3.1e+05 3.5e+01 2.4e+02  0  0  1  0  1   0  0  2  0  1    -0
DMPlexPartSelf         1 1.0 2.5130e-03 778.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       4 1.0 2.8375e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        4 1.0 4.3173e-03 1.5 0.00e+00 0.0 1.8e+04 2.3e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       4 1.0 1.2464e-03 4.4 0.00e+00 0.0 8.8e+03 8.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          4 1.0 1.9799e-03 3.7 0.00e+00 0.0 9.2e+03 9.1e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          29 1.0 6.5015e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 7.4932e-02 1.0 0.00e+00 0.0 1.7e+04 6.2e+01 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        4 1.0 2.3992e-03 1.1 0.00e+00 0.0 5.0e+04 5.2e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       4 1.0 7.8774e-03 1.0 0.00e+00 0.0 1.6e+05 3.3e+01 1.5e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistOvrlp        3 1.0 2.9395e-02 1.0 0.00e+00 0.0 3.9e+05 3.4e+01 2.4e+02  0  0  1  0  1   0  0  2  0  1    -0
DMPlexDistField        7 1.0 5.0643e-03 1.4 0.00e+00 0.0 7.0e+04 3.0e+01 2.0e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         2 1.0 3.6845e-04 1.1 0.00e+00 0.0 2.3e+04 1.6e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify        41 1.0 3.7461e-03 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      41 1.0 1.7623e-04 6.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          2 1.0 1.1849e-04 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          2 1.0 4.3075e-03 1.4 0.00e+00 0.0 2.0e+04 1.5e+01 1.9e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          2 1.0 7.3939e-05 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          2 1.0 5.3299e-04 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             2 1.0 7.6564e-04 4.8 0.00e+00 0.0 1.6e+04 1.4e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         2 1.0 7.0630e-05 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         2 1.0 1.3069e-03 1.6 0.00e+00 0.0 3.9e+03 1.9e+01 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMSwarmSetSizes        4 1.0 7.3744e-05 6.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             75 1.0 5.7837e+02 1.0 6.41e+11 1.5 5.0e+07 6.7e+04 2.1e+04 90 100 98 100 96 Multiple stages 396206
SNESSetUp              1 1.0 2.1099e-04 31.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     300 1.0 2.4362e+01 1.2 1.62e+11 1.6 1.3e+06 1.5e+05 0.0e+00  3 25  3  6  0   5 29  8  8  0 2308946
SNESJacobianEval     225 1.0 1.3911e+02 1.0 2.54e+11 1.6 8.7e+05 9.7e+05 9.0e+02 22 39  2 25  4  30 45  5 35  5 636348
SNESLineSearch       225 1.0 1.6960e+01 1.0 1.26e+11 1.6 1.3e+06 1.5e+05 9.0e+02  3 19  3  6  4   4 22  8  8  5 2581415
DualSpaceSetUp         8 1.0 6.1377e-03 1.3 1.08e+02 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     7
FESetUp                8 1.0 1.2287e-02 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 6.3792e+02 1.0 6.41e+11 1.5 5.1e+07 6.6e+04 2.2e+04 100 100 100 100 100 Multiple stages 359246
firedrake.__init__       1 1.0 1.0358e+01 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateMesh             3 1.0 5.1972e+00 32.2 0.00e+00 0.0 7.8e+05 3.5e+01 4.4e+02  1  0  2  0  2   1  0  5  0  3    -0
firedrake.mesh._from_gmsh       1 1.0 5.0504e+00 369.8 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       3 1.0 1.4253e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       3 1.0 6.7690e-06 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        7 1.0 5.6104e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          3 1.0 9.6353e-04 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      36 1.0 3.8781e-02 1.2 0.00e+00 0.0 3.2e+04 5.5e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      44 1.0 2.9131e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      40 1.0 3.5264e-02 1.2 0.00e+00 0.0 3.2e+04 5.5e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      39 1.0 3.1208e-02 1.2 0.00e+00 0.0 3.2e+04 5.5e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      39 1.0 3.0997e-02 1.2 0.00e+00 0.0 3.2e+04 5.5e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      78 1.0 9.8002e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       6 1.0 6.4221e-03 1.2 0.00e+00 0.0 1.7e+04 4.1e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__      12 1.0 8.2830e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      24 1.0 4.0063e-04 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      76 1.0 2.0265e-02 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          3 1.0 1.0014e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       3 1.0 2.4542e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       8 1.0 6.9637e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       5 1.0 1.4021e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       3 1.0 9.9497e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     662 1.0 7.7041e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      2424 1.0 1.2259e+02 1.4 4.16e+11 1.6 1.2e+06 1.4e+05 3.8e+01 17 63  2  5  0  23 74  7  7  0 1180606
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       6 1.0 9.4743e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    4848 1.0 2.6444e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  4  0  0  0  0   6  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      19 1.0 1.1133e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
GlobalKernel: generate loopy      19 0.0 1.5734e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      19 0.0 8.6023e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      21 1.0 2.0690e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   4  0  0  0  0    -0
pyop2.compilation.load      20 1.0 2.0689e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   4  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      20 1.0 1.0262e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.make_so      20 1.0 1.0070e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
ParLoopRednBegin    2424 1.0 6.9673e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      2424 1.0 6.0171e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       3 1.0 1.2098e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong       4 1.0 7.9061e+00 1.0 7.78e+06 1.3 4.0e+04 1.4e+04 1.3e+01  1  0  0  0  0   2  0  0  0  0   370
firedrake.interpolation.interpolate      21 1.0 5.7254e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      15 1.0 1.4379e+01 1.0 4.81e+07 1.3 1.3e+05 2.0e+04 1.8e+02  2  0  0  0  1   3  0  1  0  1  1258
firedrake.formmanipulation.split_form      16 1.0 6.0783e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      16 1.0 2.9163e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      17 1.0 3.2366e-01 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       8 1.1 2.7086e-01 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     621 1.0 5.4533e+00 30.1 0.00e+00 0.0 1.2e+06 1.4e+05 4.0e+00  0  0  2  5  0   1  0  7  7  0    -0
Parloop_Cells_wrap_expression_kernel      34 1.0 7.2614e+00 1.0 4.81e+07 1.3 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0  2491
firedrake.halo.Halo.global_to_local_end     621 1.0 1.5799e+01 206.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       3 1.0 7.2082e+00 35.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
Parloop_set_#x14f231c33750_wrap_pyop2_kernel_prolong       4 0.0 7.4888e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f231c24690_wrap_pyop2_kernel_prolong       4 0.0 2.3851e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 4.0273e+00 1.0 3.89e+07 1.3 3.4e+04 6.5e+04 1.1e+01  1  0  0  0  0   1  0  0  0  0  3635
firedrake.function.Function.assign     314 1.0 1.0270e+00 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     313 1.0 9.5002e-01 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.0396e-04 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate     154 1.0 1.6335e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 5.2047e-05 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.6631e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.9644e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.4150e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 5.3426e+00 1.0 0.00e+00 0.0 1.3e+04 5.5e+05 2.3e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 6.6155e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.5946e-04 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.0744e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.0744e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateSparsity         4 1.0 2.2720e+00 1.2 0.00e+00 0.0 3.2e+04 1.1e+05 4.6e+01  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         4 1.0 3.3040e-01 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      75 1.0 5.7854e+02 1.0 6.41e+11 1.5 5.0e+07 6.7e+04 2.1e+04 90 100 98 100 97 Multiple stages 396086
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 3.7736e-01 1283.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 1.1799e-05 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 3.7730e-01 1514.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 3.7727e-01 1707.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     600 1.0 6.3716e+00 1.8 3.93e+10 1.3 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   1  8  0  0  0 2318858
Parloop_Cells_wrap_form0_exterior_facet_top_integral     600 1.0 1.0034e+00 1.0 2.55e+06 1.3 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   957
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral     600 1.0 1.3911e+00 1.1 7.08e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 17995
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     600 1.0 3.9114e+00 1.3 3.78e+10 1.3 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   1  7  0  0  0 3633993
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     600 1.0 8.1234e+00 1.5 8.50e+10 1.9 0.0e+00 0.0e+00 0.0e+00  1 12  0  0  0   1 14  0  0  0 3351449
firedrake.halo.Halo.local_to_global_begin     300 1.0 1.0772e-01 10.5 0.00e+00 0.0 5.8e+05 1.5e+05 0.0e+00  0  0  1  3  0   0  0  3  4  0    -0
firedrake.halo.Halo.local_to_global_end     300 1.0 4.8135e+00 96.6 3.78e+07 2.9 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2233
Parloop_Cells_wrap_form00_cell_integral     450 1.0 1.8937e+01 1.7 5.50e+10 1.3 0.0e+00 0.0e+00 0.0e+00  2  9  0  0  0   3 11  0  0  0 1091928
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     450 1.0 1.9990e+00 1.8 5.41e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  9564
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     450 1.0 2.2561e+01 1.4 7.29e+10 1.3 0.0e+00 0.0e+00 0.0e+00  3 12  0  0  0   4 14  0  0  0 1214557
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     450 1.0 5.3723e+01 2.1 1.26e+11 1.9 0.0e+00 0.0e+00 0.0e+00  6 18  0  0  0   9 21  0  0  0 751570
firedrake.dmhooks.get_function_space       2 1.0 3.2696e-03 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       3 1.0 9.6713e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.VertexOnlyMesh       2 1.0 6.3814e+00 1.0 0.00e+00 0.0 5.4e+04 4.6e+01 2.2e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh._pic_swarm_in_mesh       2 1.0 6.3708e+00 1.0 0.00e+00 0.0 3.8e+04 3.7e+01 1.2e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh._parent_mesh_embedding       2 1.0 6.3287e+00 1.0 0.00e+00 0.0 2.3e+04 1.6e+01 8.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshGeometry.locate_cells_ref_coords_and_dists       2 1.0 6.0496e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshGeometry._c_locator       2 1.0 6.0330e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.src_locate_cell       2 1.0 5.4703e+00 18.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.compile_coordinate_element       2 1.0 5.4545e+00 35.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.pointquery_utils.make_wrapper       2 1.0 4.4077e+00 340.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.parloop.generate_single_cell_wrapper       2 1.0 4.4076e+00 343.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
c_locator_run          2 1.0 1.6987e-01 11.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._ctypes       2 1.0 1.6719e-01 14.0 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._constant_ctypes       2 1.0 1.7186e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.rtree       2 1.0 1.9497e-03 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.bounding_box_coords       2 1.0 2.3628e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
rtree_build            2 1.0 1.6375e-03 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._dmswarm_create       4 1.0 9.3886e-03 5.0 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._swarm_original_ordering_preserve       2 1.0 3.9154e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.VertexOnlyMeshTopology.__init__       4 1.0 1.3530e-02 1.4 0.00e+00 0.0 1.5e+04 6.9e+01 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_vom_from_vom_topology       4 1.0 4.1959e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.action       2 1.0 4.7618e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0      225 1.0 7.2392e-01 2.0 3.86e+07 1.4 4.9e+06 1.5e+02 5.3e+03  0  0 10  0 25   0  0 29  0 31 19781
MGSetup Level 1      225 1.0 1.3805e+02 1.0 7.92e+10 1.4 4.3e+06 1.5e+05 4.8e+03 22 13  8 19 22  30 15 26 26 28 215501
firedrake.constant.Constant.assign      75 1.0 3.5537e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b2e0161690_wrap_pyop2_kernel_prolong       4 0.0 7.4896e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b2e0160810_wrap_pyop2_kernel_prolong       4 0.0 2.5301e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1483db333ad0_wrap_pyop2_kernel_prolong       4 0.0 7.3909e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1483db575510_wrap_pyop2_kernel_prolong       4 0.0 2.5386e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154def667f10_wrap_pyop2_kernel_prolong       4 0.0 7.4907e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154def667690_wrap_pyop2_kernel_prolong       4 0.0 3.3136e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14976af1e950_wrap_pyop2_kernel_prolong       4 0.0 7.4516e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14976af1de90_wrap_pyop2_kernel_prolong       4 0.0 3.1944e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ca83a21450_wrap_pyop2_kernel_prolong       4 0.0 7.4654e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ca83a20610_wrap_pyop2_kernel_prolong       4 0.0 2.5001e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe51026050_wrap_pyop2_kernel_prolong       4 0.0 7.4888e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe5104ef90_wrap_pyop2_kernel_prolong       4 0.0 4.0535e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153228ff1b10_wrap_pyop2_kernel_prolong       4 0.0 7.4879e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1532291f90d0_wrap_pyop2_kernel_prolong       4 0.0 2.9635e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d382eac90_wrap_pyop2_kernel_prolong       4 0.0 7.3995e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d3396b110_wrap_pyop2_kernel_prolong       4 0.0 3.1690e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b16cb7f790_wrap_pyop2_kernel_prolong       4 0.0 7.4794e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b16c943ed0_wrap_pyop2_kernel_prolong       4 0.0 1.8837e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149cd283d8d0_wrap_pyop2_kernel_prolong       4 0.0 7.4590e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149cd286de90_wrap_pyop2_kernel_prolong       4 0.0 2.2364e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154cbdb16b50_wrap_pyop2_kernel_prolong       4 0.0 7.4652e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154cbd9c97d0_wrap_pyop2_kernel_prolong       4 0.0 2.6984e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d46bcb650_wrap_pyop2_kernel_prolong       4 0.0 7.4728e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d46bcabd0_wrap_pyop2_kernel_prolong       4 0.0 2.2091e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152251d697d0_wrap_pyop2_kernel_prolong       4 0.0 7.3968e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152251d6af10_wrap_pyop2_kernel_prolong       4 0.0 1.7445e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154735a01b90_wrap_pyop2_kernel_prolong       4 0.0 7.3750e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154735a000d0_wrap_pyop2_kernel_prolong       4 0.0 3.2774e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497e8164650_wrap_pyop2_kernel_prolong       4 0.0 7.3580e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497e3f85a10_wrap_pyop2_kernel_prolong       4 0.0 2.5513e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152602d45f10_wrap_pyop2_kernel_prolong       4 0.0 7.4918e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152602d45610_wrap_pyop2_kernel_prolong       4 0.0 2.8538e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152bea6c9fd0_wrap_pyop2_kernel_prolong       4 0.0 7.4552e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152bea6c9c90_wrap_pyop2_kernel_prolong       4 0.0 3.1578e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c822352650_wrap_pyop2_kernel_prolong       4 0.0 7.4923e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c822351b10_wrap_pyop2_kernel_prolong       4 0.0 4.4544e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150d12d79ad0_wrap_pyop2_kernel_prolong       4 0.0 7.4051e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150d12d782d0_wrap_pyop2_kernel_prolong       4 0.0 2.6533e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458180c5f10_wrap_pyop2_kernel_prolong       4 0.0 7.4565e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458180c6550_wrap_pyop2_kernel_prolong       4 0.0 2.1725e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa771638d0_wrap_pyop2_kernel_prolong       4 0.0 7.4441e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa77000590_wrap_pyop2_kernel_prolong       4 0.0 3.0101e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152f28d08f10_wrap_pyop2_kernel_prolong       4 0.0 7.4886e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152f28d38150_wrap_pyop2_kernel_prolong       4 0.0 4.5762e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d6941862d0_wrap_pyop2_kernel_prolong       4 0.0 7.4681e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d68ff89490_wrap_pyop2_kernel_prolong       4 0.0 1.8673e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15208851f850_wrap_pyop2_kernel_prolong       4 0.0 7.4067e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15208851d650_wrap_pyop2_kernel_prolong       4 0.0 4.0212e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1530da16a350_wrap_pyop2_kernel_prolong       4 0.0 7.4784e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1530da169c10_wrap_pyop2_kernel_prolong       4 0.0 4.9720e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145f25832f50_wrap_pyop2_kernel_prolong       4 0.0 7.4776e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145f2581d4d0_wrap_pyop2_kernel_prolong       4 0.0 2.3101e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b32cb09890_wrap_pyop2_kernel_prolong       4 0.0 7.4366e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b32cb09850_wrap_pyop2_kernel_prolong       4 0.0 2.5045e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa5e75fcd0_wrap_pyop2_kernel_prolong       4 0.0 7.4167e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa5e75d310_wrap_pyop2_kernel_prolong       4 0.0 2.5039e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b110742d0_wrap_pyop2_kernel_prolong       4 0.0 7.4156e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b10f6e3d0_wrap_pyop2_kernel_prolong       4 0.0 3.4844e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c2bdac0850_wrap_pyop2_kernel_prolong       4 0.0 7.4061e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c2bdac0910_wrap_pyop2_kernel_prolong       4 0.0 4.8513e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b57113d90_wrap_pyop2_kernel_prolong       4 0.0 7.4099e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b571496d0_wrap_pyop2_kernel_prolong       4 0.0 3.1045e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151da33ffa90_wrap_pyop2_kernel_prolong       4 0.0 7.3593e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151da33daa10_wrap_pyop2_kernel_prolong       4 0.0 2.5019e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14622a463790_wrap_pyop2_kernel_prolong       4 0.0 7.3570e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14622a713090_wrap_pyop2_kernel_prolong       4 0.0 2.2079e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a8248b7590_wrap_pyop2_kernel_prolong       4 0.0 7.4589e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a81fbd5910_wrap_pyop2_kernel_prolong       4 0.0 3.9027e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151dad8b75d0_wrap_pyop2_kernel_prolong       4 0.0 7.4684e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151dad7d05d0_wrap_pyop2_kernel_prolong       4 0.0 1.5034e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154d67b19dd0_wrap_pyop2_kernel_prolong       4 0.0 7.3782e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154d67b19ad0_wrap_pyop2_kernel_prolong       4 0.0 2.2142e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e68e54ce90_wrap_pyop2_kernel_prolong       4 0.0 7.4683e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e68e5f98d0_wrap_pyop2_kernel_prolong       4 0.0 4.0181e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c6d803a10_wrap_pyop2_kernel_prolong       4 0.0 7.3867e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c6d803690_wrap_pyop2_kernel_prolong       4 0.0 4.3658e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e0dbc27d0_wrap_pyop2_kernel_prolong       4 0.0 7.4630e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e0dbe76d0_wrap_pyop2_kernel_prolong       4 0.0 2.9913e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1500843696d0_wrap_pyop2_kernel_prolong       4 0.0 7.3571e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1500843373d0_wrap_pyop2_kernel_prolong       4 0.0 2.2293e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150fef4520d0_wrap_pyop2_kernel_prolong       4 0.0 7.3672e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150fef453890_wrap_pyop2_kernel_prolong       4 0.0 4.8698e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1537a1902210_wrap_pyop2_kernel_prolong       4 0.0 7.3921e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1537a1b4d6d0_wrap_pyop2_kernel_prolong       4 0.0 4.9913e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15376bf93cd0_wrap_pyop2_kernel_prolong       4 0.0 7.4495e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15376bf91210_wrap_pyop2_kernel_prolong       4 0.0 2.6445e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e6896424d0_wrap_pyop2_kernel_prolong       4 0.0 7.4581e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e688d69b90_wrap_pyop2_kernel_prolong       4 0.0 2.9635e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d2d16a35d0_wrap_pyop2_kernel_prolong       4 0.0 7.4458e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d2d16a0b90_wrap_pyop2_kernel_prolong       4 0.0 3.2656e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ba89b85d0_wrap_pyop2_kernel_prolong       4 0.0 7.4644e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ba8996210_wrap_pyop2_kernel_prolong       4 0.0 5.0997e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1541b3d85e10_wrap_pyop2_kernel_prolong       4 0.0 7.4547e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1541b3d85a90_wrap_pyop2_kernel_prolong       4 0.0 4.8855e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cdff617c10_wrap_pyop2_kernel_prolong       4 0.0 7.4700e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cdff616c10_wrap_pyop2_kernel_prolong       4 0.0 3.1561e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a732fc81d0_wrap_pyop2_kernel_prolong       4 0.0 7.4880e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a733219a90_wrap_pyop2_kernel_prolong       4 0.0 5.1192e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eede903bd0_wrap_pyop2_kernel_prolong       4 0.0 7.4099e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eede75ba50_wrap_pyop2_kernel_prolong       4 0.0 4.4466e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1465e7a19050_wrap_pyop2_kernel_prolong       4 0.0 7.4241e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1465e67b5f90_wrap_pyop2_kernel_prolong       4 0.0 5.0976e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e6634d4d0_wrap_pyop2_kernel_prolong       4 0.0 7.3531e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e661a36d0_wrap_pyop2_kernel_prolong       4 0.0 1.8307e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14790d885450_wrap_pyop2_kernel_prolong       4 0.0 7.3580e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14790ceb4690_wrap_pyop2_kernel_prolong       4 0.0 3.2238e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f62f8e390_wrap_pyop2_kernel_prolong       4 0.0 7.3611e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f63000b90_wrap_pyop2_kernel_prolong       4 0.0 4.0630e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b52dc27b50_wrap_pyop2_kernel_prolong       4 0.0 7.3567e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b52dc267d0_wrap_pyop2_kernel_prolong       4 0.0 2.1311e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab3b4148d0_wrap_pyop2_kernel_prolong       4 0.0 7.3565e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab3b1a5e90_wrap_pyop2_kernel_prolong       4 0.0 2.1350e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f59268d10_wrap_pyop2_kernel_prolong       4 0.0 7.3586e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f59242fd0_wrap_pyop2_kernel_prolong       4 0.0 2.5933e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14add6ae8190_wrap_pyop2_kernel_prolong       4 0.0 7.3967e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14add6976350_wrap_pyop2_kernel_prolong       4 0.0 2.2731e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e206540a10_wrap_pyop2_kernel_prolong       4 0.0 7.3584e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e20672a890_wrap_pyop2_kernel_prolong       4 0.0 2.7679e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153352ab70d0_wrap_pyop2_kernel_prolong       4 0.0 7.3654e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153352aa06d0_wrap_pyop2_kernel_prolong       4 0.0 4.9049e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b48b319650_wrap_pyop2_kernel_prolong       4 0.0 7.3551e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b48a9a8410_wrap_pyop2_kernel_prolong       4 0.0 2.4781e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eaa0637e50_wrap_pyop2_kernel_prolong       4 0.0 7.4456e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eaa03f54d0_wrap_pyop2_kernel_prolong       4 0.0 1.4853e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e0c112bf10_wrap_pyop2_kernel_prolong       4 0.0 7.3893e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e0c112b750_wrap_pyop2_kernel_prolong       4 0.0 3.6477e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eda28eeed0_wrap_pyop2_kernel_prolong       4 0.0 7.3718e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eda3384f50_wrap_pyop2_kernel_prolong       4 0.0 4.0523e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1579d0a10_wrap_pyop2_kernel_prolong       4 0.0 7.3670e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f15c28d250_wrap_pyop2_kernel_prolong       4 0.0 1.8130e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14913fa1fbd0_wrap_pyop2_kernel_prolong       4 0.0 7.3736e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14913fa1cf50_wrap_pyop2_kernel_prolong       4 0.0 1.8067e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e3d7253a10_wrap_pyop2_kernel_prolong       4 0.0 7.3766e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e3d7250f90_wrap_pyop2_kernel_prolong       4 0.0 3.9558e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e323ffed0_wrap_pyop2_kernel_prolong       4 0.0 7.3622e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e323731d0_wrap_pyop2_kernel_prolong       4 0.0 3.8476e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c4e8847690_wrap_pyop2_kernel_prolong       4 0.0 7.4114e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c4e8ad6ad0_wrap_pyop2_kernel_prolong       4 0.0 2.1420e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14648d795550_wrap_pyop2_kernel_prolong       4 0.0 7.3649e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14648d794c10_wrap_pyop2_kernel_prolong       4 0.0 3.5358e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146fd889e2d0_wrap_pyop2_kernel_prolong       4 0.0 7.4196e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146fd889fed0_wrap_pyop2_kernel_prolong       4 0.0 1.8258e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e52e895a90_wrap_pyop2_kernel_prolong       4 0.0 7.3557e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e52e897150_wrap_pyop2_kernel_prolong       4 0.0 2.4470e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150ae0d46c10_wrap_pyop2_kernel_prolong       4 0.0 7.3658e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150ae0da5890_wrap_pyop2_kernel_prolong       4 0.0 2.9368e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14711ccf1410_wrap_pyop2_kernel_prolong       4 0.0 7.3596e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14711ccf1690_wrap_pyop2_kernel_prolong       4 0.0 3.0493e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478cdda79d0_wrap_pyop2_kernel_prolong       4 0.0 7.3643e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478cdda7350_wrap_pyop2_kernel_prolong       4 0.0 4.4737e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15330b589e50_wrap_pyop2_kernel_prolong       4 0.0 7.3844e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15330b58b910_wrap_pyop2_kernel_prolong       4 0.0 3.9031e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498ebaa7810_wrap_pyop2_kernel_prolong       4 0.0 7.3682e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498eb931d90_wrap_pyop2_kernel_prolong       4 0.0 4.9200e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e9d4fc00d0_wrap_pyop2_kernel_prolong       4 0.0 7.3650e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e9d4701b10_wrap_pyop2_kernel_prolong       4 0.0 2.1416e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ce707cd90_wrap_pyop2_kernel_prolong       4 0.0 7.4166e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ce70a8450_wrap_pyop2_kernel_prolong       4 0.0 2.2744e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fcf053fb90_wrap_pyop2_kernel_prolong       4 0.0 7.3782e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fcf0415dd0_wrap_pyop2_kernel_prolong       4 0.0 3.6981e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c5033a050_wrap_pyop2_kernel_prolong       4 0.0 7.3811e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c50339710_wrap_pyop2_kernel_prolong       4 0.0 3.5475e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1526988d4cd0_wrap_pyop2_kernel_prolong       4 0.0 7.4123e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1526980e59d0_wrap_pyop2_kernel_prolong       4 0.0 3.1986e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1531056e27d0_wrap_pyop2_kernel_prolong       4 0.0 7.4389e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153104ce7c10_wrap_pyop2_kernel_prolong       4 0.0 4.0688e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1487c0a7bed0_wrap_pyop2_kernel_prolong       4 0.0 7.4436e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1487c0a59a10_wrap_pyop2_kernel_prolong       4 0.0 5.3596e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ec24b1ad0_wrap_pyop2_kernel_prolong       4 0.0 7.3887e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ec24b0b90_wrap_pyop2_kernel_prolong       4 0.0 2.7648e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a693f8990_wrap_pyop2_kernel_prolong       4 0.0 7.3743e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a693fbd50_wrap_pyop2_kernel_prolong       4 0.0 3.6239e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a467ac7450_wrap_pyop2_kernel_prolong       4 0.0 7.3922e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a467aa5010_wrap_pyop2_kernel_prolong       4 0.0 3.4755e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15111349a3d0_wrap_pyop2_kernel_prolong       4 0.0 7.4394e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151113498050_wrap_pyop2_kernel_prolong       4 0.0 4.9758e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149edaa7a550_wrap_pyop2_kernel_prolong       4 0.0 7.4011e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149edaa79e50_wrap_pyop2_kernel_prolong       4 0.0 3.8509e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d1a3b1610_wrap_pyop2_kernel_prolong       4 0.0 7.4305e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d1a39be10_wrap_pyop2_kernel_prolong       4 0.0 3.0365e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c2b90b5fd0_wrap_pyop2_kernel_prolong       4 0.0 7.4508e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c2b90b7750_wrap_pyop2_kernel_prolong       4 0.0 3.8705e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d53deb3050_wrap_pyop2_kernel_prolong       4 0.0 7.4213e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d53deb26d0_wrap_pyop2_kernel_prolong       4 0.0 3.5439e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15530a895a10_wrap_pyop2_kernel_prolong       4 0.0 7.3968e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155309f06e10_wrap_pyop2_kernel_prolong       4 0.0 3.3429e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df19051190_wrap_pyop2_kernel_prolong       4 0.0 7.3977e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df187fd790_wrap_pyop2_kernel_prolong       4 0.0 4.4811e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f17a352750_wrap_pyop2_kernel_prolong       4 0.0 7.4102e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f17a34b890_wrap_pyop2_kernel_prolong       4 0.0 3.5539e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15364ced8b50_wrap_pyop2_kernel_prolong       4 0.0 7.4485e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15364c591cd0_wrap_pyop2_kernel_prolong       4 0.0 4.0597e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c4cd4f990_wrap_pyop2_kernel_prolong       4 0.0 7.3899e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c4cbe2e50_wrap_pyop2_kernel_prolong       4 0.0 4.0893e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14763d01e590_wrap_pyop2_kernel_prolong       4 0.0 7.4356e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14763c50b1d0_wrap_pyop2_kernel_prolong       4 0.0 5.0377e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bac6756790_wrap_pyop2_kernel_prolong       4 0.0 7.4405e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bac5f29f50_wrap_pyop2_kernel_prolong       4 0.0 4.0385e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb965eca50_wrap_pyop2_kernel_prolong       4 0.0 7.4477e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb9660d490_wrap_pyop2_kernel_prolong       4 0.0 4.4157e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f81674cd0_wrap_pyop2_kernel_prolong       4 0.0 7.4122e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f815ce3d0_wrap_pyop2_kernel_prolong       4 0.0 4.9307e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad4563a490_wrap_pyop2_kernel_prolong       4 0.0 7.4419e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad45639310_wrap_pyop2_kernel_prolong       4 0.0 4.0933e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e538d16bd0_wrap_pyop2_kernel_prolong       4 0.0 7.4509e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e538277210_wrap_pyop2_kernel_prolong       4 0.0 4.4096e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f38b227c90_wrap_pyop2_kernel_prolong       4 0.0 7.5147e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f38b2c0a50_wrap_pyop2_kernel_prolong       4 0.0 2.3948e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a6f07544d0_wrap_pyop2_kernel_prolong       4 0.0 7.5123e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a6f0a03e10_wrap_pyop2_kernel_prolong       4 0.0 1.7488e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e0abc39390_wrap_pyop2_kernel_prolong       4 0.0 7.5082e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e0abe7fc50_wrap_pyop2_kernel_prolong       4 0.0 2.8977e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145e78c04f10_wrap_pyop2_kernel_prolong       4 0.0 7.4913e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145e78c14150_wrap_pyop2_kernel_prolong       4 0.0 1.8856e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522d02a0b90_wrap_pyop2_kernel_prolong       4 0.0 7.5083e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522d02e1b50_wrap_pyop2_kernel_prolong       4 0.0 2.2138e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1476bde2e490_wrap_pyop2_kernel_prolong       4 0.0 7.5009e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1476bde2ce10_wrap_pyop2_kernel_prolong       4 0.0 3.0761e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b3351cbd0_wrap_pyop2_kernel_prolong       4 0.0 7.5140e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b33516c50_wrap_pyop2_kernel_prolong       4 0.0 2.3722e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147773fdf510_wrap_pyop2_kernel_prolong       4 0.0 7.5002e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14777874d290_wrap_pyop2_kernel_prolong       4 0.0 2.0645e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd9f92d7d0_wrap_pyop2_kernel_prolong       4 0.0 7.5153e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd9f92fd50_wrap_pyop2_kernel_prolong       4 0.0 3.5949e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154fadfa7bd0_wrap_pyop2_kernel_prolong       4 0.0 7.5103e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154fadf84290_wrap_pyop2_kernel_prolong       4 0.0 3.5586e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f070ae0d0_wrap_pyop2_kernel_prolong       4 0.0 7.5033e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f070ada10_wrap_pyop2_kernel_prolong       4 0.0 2.5495e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e513a40c10_wrap_pyop2_kernel_prolong       4 0.0 7.5064e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e512ff3710_wrap_pyop2_kernel_prolong       4 0.0 2.9721e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d098b2bb10_wrap_pyop2_kernel_prolong       4 0.0 7.5122e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d098ba0c50_wrap_pyop2_kernel_prolong       4 0.0 2.5759e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150e8a393090_wrap_pyop2_kernel_prolong       4 0.0 7.4955e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150e8a3c77d0_wrap_pyop2_kernel_prolong       4 0.0 2.8568e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152f18f9ce50_wrap_pyop2_kernel_prolong       4 0.0 7.4962e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152f18fc56d0_wrap_pyop2_kernel_prolong       4 0.0 2.3677e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1527054ff690_wrap_pyop2_kernel_prolong       4 0.0 7.5056e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1527054fded0_wrap_pyop2_kernel_prolong       4 0.0 3.6275e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dafc86ea10_wrap_pyop2_kernel_prolong       4 0.0 7.5173e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dafc86da90_wrap_pyop2_kernel_prolong       4 0.0 3.7302e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491502cff10_wrap_pyop2_kernel_prolong       4 0.0 7.5140e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14914bb51990_wrap_pyop2_kernel_prolong       4 0.0 3.6427e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153d2efc38d0_wrap_pyop2_kernel_prolong       4 0.0 7.5200e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153d2efc18d0_wrap_pyop2_kernel_prolong       4 0.0 5.0171e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1511b41c9ad0_wrap_pyop2_kernel_prolong       4 0.0 7.5200e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1511b41c9610_wrap_pyop2_kernel_prolong       4 0.0 5.1533e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1480b20b4290_wrap_pyop2_kernel_prolong       4 0.0 7.5152e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1480b1786610_wrap_pyop2_kernel_prolong       4 0.0 3.6579e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1551cef6fd50_wrap_pyop2_kernel_prolong       4 0.0 7.5144e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1551cef6db90_wrap_pyop2_kernel_prolong       4 0.0 3.4326e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1512d60b0e50_wrap_pyop2_kernel_prolong       4 0.0 7.5120e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1512d71f6610_wrap_pyop2_kernel_prolong       4 0.0 4.1596e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e128ed7e90_wrap_pyop2_kernel_prolong       4 0.0 7.5217e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e128da9b10_wrap_pyop2_kernel_prolong       4 0.0 4.7865e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b9f05616d0_wrap_pyop2_kernel_prolong       4 0.0 7.5102e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b9f033bf50_wrap_pyop2_kernel_prolong       4 0.0 4.1412e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f632ac1a10_wrap_pyop2_kernel_prolong       4 0.0 7.5182e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f631671c10_wrap_pyop2_kernel_prolong       4 0.0 5.1032e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1485050e8910_wrap_pyop2_kernel_prolong       4 0.0 7.5196e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148505075590_wrap_pyop2_kernel_prolong       4 0.0 4.1500e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1553920f3390_wrap_pyop2_kernel_prolong       4 0.0 7.5046e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1553920de890_wrap_pyop2_kernel_prolong       4 0.0 1.8835e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab77b56310_wrap_pyop2_kernel_prolong       4 0.0 7.5110e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab77b55850_wrap_pyop2_kernel_prolong       4 0.0 3.3561e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1472f130a650_wrap_pyop2_kernel_prolong       4 0.0 7.5077e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1472f1309d50_wrap_pyop2_kernel_prolong       4 0.0 2.9703e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15088eeaf910_wrap_pyop2_kernel_prolong       4 0.0 7.5201e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15088e75ced0_wrap_pyop2_kernel_prolong       4 0.0 5.1691e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd23e51990_wrap_pyop2_kernel_prolong       4 0.0 7.5159e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd23e53350_wrap_pyop2_kernel_prolong       4 0.0 4.0079e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15116c425d90_wrap_pyop2_kernel_prolong       4 0.0 7.5087e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15116c425590_wrap_pyop2_kernel_prolong       4 0.0 2.8417e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15505840f9d0_wrap_pyop2_kernel_prolong       4 0.0 7.5188e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15505840dfd0_wrap_pyop2_kernel_prolong       4 0.0 4.6056e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151806cebc90_wrap_pyop2_kernel_prolong       4 0.0 7.5191e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151806ab5810_wrap_pyop2_kernel_prolong       4 0.0 4.5644e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1545faac7050_wrap_pyop2_kernel_prolong       4 0.0 7.5018e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1545fab385d0_wrap_pyop2_kernel_prolong       4 0.0 2.5490e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1488e0182410_wrap_pyop2_kernel_prolong       4 0.0 7.5082e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1488e0181e10_wrap_pyop2_kernel_prolong       4 0.0 2.2473e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb40b4a510_wrap_pyop2_kernel_prolong       4 0.0 7.5181e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb40b6ebd0_wrap_pyop2_kernel_prolong       4 0.0 5.2635e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fcf42817d0_wrap_pyop2_kernel_prolong       4 0.0 7.5159e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fcef920550_wrap_pyop2_kernel_prolong       4 0.0 3.9781e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153197a532d0_wrap_pyop2_kernel_prolong       4 0.0 7.5181e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153197929750_wrap_pyop2_kernel_prolong       4 0.0 3.7316e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c405b6f150_wrap_pyop2_kernel_prolong       4 0.0 7.5144e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c405b43450_wrap_pyop2_kernel_prolong       4 0.0 3.3078e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1550598e0990_wrap_pyop2_kernel_prolong       4 0.0 7.5148e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155059939590_wrap_pyop2_kernel_prolong       4 0.0 3.7229e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f69e49c50_wrap_pyop2_kernel_prolong       4 0.0 7.5228e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f69e0bd50_wrap_pyop2_kernel_prolong       4 0.0 4.4192e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc52b2ea90_wrap_pyop2_kernel_prolong       4 0.0 7.5073e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc52b2cd10_wrap_pyop2_kernel_prolong       4 0.0 1.8661e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497ed80cc90_wrap_pyop2_kernel_prolong       4 0.0 7.5073e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497ed06d110_wrap_pyop2_kernel_prolong       4 0.0 2.7011e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14978ab20a50_wrap_pyop2_kernel_prolong       4 0.0 7.5127e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14978ab21d90_wrap_pyop2_kernel_prolong       4 0.0 3.1185e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c2a75efb90_wrap_pyop2_kernel_prolong       4 0.0 7.5038e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c2a7485650_wrap_pyop2_kernel_prolong       4 0.0 2.5579e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b157dd8d0_wrap_pyop2_kernel_prolong       4 0.0 7.5113e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b157a1510_wrap_pyop2_kernel_prolong       4 0.0 4.1453e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d0f1e38250_wrap_pyop2_kernel_prolong       4 0.0 7.5108e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d0f1bfeed0_wrap_pyop2_kernel_prolong       4 0.0 3.7426e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1465e5843690_wrap_pyop2_kernel_prolong       4 0.0 7.5095e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1465e505b190_wrap_pyop2_kernel_prolong       4 0.0 3.1985e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14975bef0c50_wrap_pyop2_kernel_prolong       4 0.0 7.5182e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14975b3750d0_wrap_pyop2_kernel_prolong       4 0.0 2.7350e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fcc5975e50_wrap_pyop2_kernel_prolong       4 0.0 7.5283e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fcc5975650_wrap_pyop2_kernel_prolong       4 0.0 5.6153e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d11787ae90_wrap_pyop2_kernel_prolong       4 0.0 7.4881e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d117111a90_wrap_pyop2_kernel_prolong       4 0.0 1.4887e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1524b4c967d0_wrap_pyop2_kernel_prolong       4 0.0 7.4913e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1524b4cf0950_wrap_pyop2_kernel_prolong       4 0.0 1.4934e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a8ce4bed90_wrap_pyop2_kernel_prolong       4 0.0 7.4997e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a8ce4bdad0_wrap_pyop2_kernel_prolong       4 0.0 2.4964e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f0ff477fd0_wrap_pyop2_kernel_prolong       4 0.0 7.4921e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f0fe922ed0_wrap_pyop2_kernel_prolong       4 0.0 2.8092e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a94d8bd850_wrap_pyop2_kernel_prolong       4 0.0 7.4934e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a94d869790_wrap_pyop2_kernel_prolong       4 0.0 2.9505e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1553d29db2d0_wrap_pyop2_kernel_prolong       4 0.0 7.4989e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1553d29bc6d0_wrap_pyop2_kernel_prolong       4 0.0 4.3696e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cc04b40890_wrap_pyop2_kernel_prolong       4 0.0 7.4962e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cc04bad6d0_wrap_pyop2_kernel_prolong       4 0.0 3.1137e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1486d12b5990_wrap_pyop2_kernel_prolong       4 0.0 7.4948e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1486d14fb1d0_wrap_pyop2_kernel_prolong       4 0.0 2.3491e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153e0b27bb10_wrap_pyop2_kernel_prolong       4 0.0 7.4961e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153e0bbc5110_wrap_pyop2_kernel_prolong       4 0.0 1.8202e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146936e6d150_wrap_pyop2_kernel_prolong       4 0.0 7.5004e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146936e78890_wrap_pyop2_kernel_prolong       4 0.0 3.3461e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1475bf85f0d0_wrap_pyop2_kernel_prolong       4 0.0 7.5012e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1475bf6608d0_wrap_pyop2_kernel_prolong       4 0.0 3.2429e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1504f6193bd0_wrap_pyop2_kernel_prolong       4 0.0 7.4985e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1504f60ab210_wrap_pyop2_kernel_prolong       4 0.0 3.9081e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15032775c4d0_wrap_pyop2_kernel_prolong       4 0.0 7.5094e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150327e74e90_wrap_pyop2_kernel_prolong       4 0.0 4.3466e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151055fb8090_wrap_pyop2_kernel_prolong       4 0.0 7.4935e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151055d70710_wrap_pyop2_kernel_prolong       4 0.0 2.1840e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14daa25d3c10_wrap_pyop2_kernel_prolong       4 0.0 7.5031e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14daa2fd8e90_wrap_pyop2_kernel_prolong       4 0.0 4.4348e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146b31eae390_wrap_pyop2_kernel_prolong       4 0.0 7.5037e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146b31eadb90_wrap_pyop2_kernel_prolong       4 0.0 4.3255e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b71aed3b50_wrap_pyop2_kernel_prolong       4 0.0 7.4977e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b71ab7f110_wrap_pyop2_kernel_prolong       4 0.0 3.4638e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a9ba65cdd0_wrap_pyop2_kernel_prolong       4 0.0 7.5011e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a9b9d2bb50_wrap_pyop2_kernel_prolong       4 0.0 2.9424e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c92ea2cb90_wrap_pyop2_kernel_prolong       4 0.0 7.5046e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c92e985310_wrap_pyop2_kernel_prolong       4 0.0 3.8031e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ef0567bd0_wrap_pyop2_kernel_prolong       4 0.0 7.4942e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ef07b6e10_wrap_pyop2_kernel_prolong       4 0.0 2.6055e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de2561d550_wrap_pyop2_kernel_prolong       4 0.0 7.5023e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de2561c890_wrap_pyop2_kernel_prolong       4 0.0 3.2883e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef0051d3d0_wrap_pyop2_kernel_prolong       4 0.0 7.5036e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef00500710_wrap_pyop2_kernel_prolong       4 0.0 3.6737e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153cbd089c50_wrap_pyop2_kernel_prolong       4 0.0 7.5057e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153cbd089310_wrap_pyop2_kernel_prolong       4 0.0 4.4175e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d29c5bcd0_wrap_pyop2_kernel_prolong       4 0.0 7.4982e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d29c99290_wrap_pyop2_kernel_prolong       4 0.0 2.8193e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146ad547e810_wrap_pyop2_kernel_prolong       4 0.0 7.5144e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146ad56e6890_wrap_pyop2_kernel_prolong       4 0.0 5.3532e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f5e1b8b950_wrap_pyop2_kernel_prolong       4 0.0 7.4968e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f5e1b89590_wrap_pyop2_kernel_prolong       4 0.0 4.1058e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154cec0b1890_wrap_pyop2_kernel_prolong       4 0.0 7.4997e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154cec0ff8d0_wrap_pyop2_kernel_prolong       4 0.0 2.4827e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a76ff2210_wrap_pyop2_kernel_prolong       4 0.0 7.4970e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a74994550_wrap_pyop2_kernel_prolong       4 0.0 3.3309e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1531c0fbfa10_wrap_pyop2_kernel_prolong       4 0.0 7.5096e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1531c0fa5110_wrap_pyop2_kernel_prolong       4 0.0 3.1113e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1527a69e7990_wrap_pyop2_kernel_prolong       4 0.0 7.5137e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1527a673cc10_wrap_pyop2_kernel_prolong       4 0.0 4.9479e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b3d015550_wrap_pyop2_kernel_prolong       4 0.0 7.4993e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b3d03d810_wrap_pyop2_kernel_prolong       4 0.0 1.7276e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b47e9e3e50_wrap_pyop2_kernel_prolong       4 0.0 7.5001e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b47e8c5950_wrap_pyop2_kernel_prolong       4 0.0 2.4409e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154409e47710_wrap_pyop2_kernel_prolong       4 0.0 7.4893e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15440a045390_wrap_pyop2_kernel_prolong       4 0.0 2.1581e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d8059ada90_wrap_pyop2_kernel_prolong       4 0.0 7.5114e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d805a28210_wrap_pyop2_kernel_prolong       4 0.0 2.8062e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c0e9621d10_wrap_pyop2_kernel_prolong       4 0.0 7.4930e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c0ebc4cc90_wrap_pyop2_kernel_prolong       4 0.0 2.4936e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145ae9233bd0_wrap_pyop2_kernel_prolong       4 0.0 7.4962e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145ae8867d90_wrap_pyop2_kernel_prolong       4 0.0 2.8078e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ea5a065510_wrap_pyop2_kernel_prolong       4 0.0 7.5008e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ea5977ebd0_wrap_pyop2_kernel_prolong       4 0.0 3.4534e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b61e78410_wrap_pyop2_kernel_prolong       4 0.0 7.5025e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b620a08d0_wrap_pyop2_kernel_prolong       4 0.0 4.9433e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1538a0159cd0_wrap_pyop2_kernel_prolong       4 0.0 7.5029e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1538a0159510_wrap_pyop2_kernel_prolong       4 0.0 4.7724e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d5da056790_wrap_pyop2_kernel_prolong       4 0.0 7.5022e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d5d9ec5890_wrap_pyop2_kernel_prolong       4 0.0 3.5782e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145b85bd2390_wrap_pyop2_kernel_prolong       4 0.0 7.5070e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145b85bd1b10_wrap_pyop2_kernel_prolong       4 0.0 3.2368e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1482e4fb8e10_wrap_pyop2_kernel_prolong       4 0.0 7.4975e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1482e491d490_wrap_pyop2_kernel_prolong       4 0.0 2.4831e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1530b89a7150_wrap_pyop2_kernel_prolong       4 0.0 7.5108e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1530b806f390_wrap_pyop2_kernel_prolong       4 0.0 4.5107e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149957352f10_wrap_pyop2_kernel_prolong       4 0.0 7.5047e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14995755d410_wrap_pyop2_kernel_prolong       4 0.0 4.4503e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a718134d0_wrap_pyop2_kernel_prolong       4 0.0 7.5022e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a717f0990_wrap_pyop2_kernel_prolong       4 0.0 2.6216e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147245216bd0_wrap_pyop2_kernel_prolong       4 0.0 7.4996e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14724524fdd0_wrap_pyop2_kernel_prolong       4 0.0 1.8242e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a4d3696390_wrap_pyop2_kernel_prolong       4 0.0 7.4992e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a4d3695910_wrap_pyop2_kernel_prolong       4 0.0 3.2279e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bc89d65d10_wrap_pyop2_kernel_prolong       4 0.0 7.5092e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bc89d64210_wrap_pyop2_kernel_prolong       4 0.0 3.8312e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497febe0950_wrap_pyop2_kernel_prolong       4 0.0 7.5091e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497fe2cfa90_wrap_pyop2_kernel_prolong       4 0.0 4.2971e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145fc6b28b10_wrap_pyop2_kernel_prolong       4 0.0 7.5205e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145fc637f3d0_wrap_pyop2_kernel_prolong       4 0.0 4.8184e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152f7ffb8a50_wrap_pyop2_kernel_prolong       4 0.0 7.5255e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152f84953990_wrap_pyop2_kernel_prolong       4 0.0 4.5231e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153395189090_wrap_pyop2_kernel_prolong       4 0.0 7.5144e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15339518bed0_wrap_pyop2_kernel_prolong       4 0.0 5.1087e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e0c259bf50_wrap_pyop2_kernel_prolong       4 0.0 7.5237e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e0c2ef5fd0_wrap_pyop2_kernel_prolong       4 0.0 2.7206e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e826ad5fd0_wrap_pyop2_kernel_prolong       4 0.0 7.5279e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e826a16950_wrap_pyop2_kernel_prolong       4 0.0 4.3313e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e661810c90_wrap_pyop2_kernel_prolong       4 0.0 7.5273e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e661666050_wrap_pyop2_kernel_prolong       4 0.0 4.0844e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148bf9bea690_wrap_pyop2_kernel_prolong       4 0.0 7.5210e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148bf9beb4d0_wrap_pyop2_kernel_prolong       4 0.0 2.6144e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150aee0d9490_wrap_pyop2_kernel_prolong       4 0.0 7.5162e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150aee0dba10_wrap_pyop2_kernel_prolong       4 0.0 2.3647e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14785a919690_wrap_pyop2_kernel_prolong       4 0.0 7.5222e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14785a91b4d0_wrap_pyop2_kernel_prolong       4 0.0 2.7684e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147daf975610_wrap_pyop2_kernel_prolong       4 0.0 7.5270e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147daf975910_wrap_pyop2_kernel_prolong       4 0.0 3.5265e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e8f1dd490_wrap_pyop2_kernel_prolong       4 0.0 7.5170e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e8f1c0a90_wrap_pyop2_kernel_prolong       4 0.0 2.6799e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15513eba7f90_wrap_pyop2_kernel_prolong       4 0.0 7.5069e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15513eba6d50_wrap_pyop2_kernel_prolong       4 0.0 3.3685e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b077ee5bd0_wrap_pyop2_kernel_prolong       4 0.0 7.5229e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b077ee68d0_wrap_pyop2_kernel_prolong       4 0.0 3.1941e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ce775d690_wrap_pyop2_kernel_prolong       4 0.0 7.5286e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ce77afc90_wrap_pyop2_kernel_prolong       4 0.0 4.0590e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c8f2d79f90_wrap_pyop2_kernel_prolong       4 0.0 7.5189e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c8f2d781d0_wrap_pyop2_kernel_prolong       4 0.0 2.1649e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15036a2cd390_wrap_pyop2_kernel_prolong       4 0.0 7.5296e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15036995e350_wrap_pyop2_kernel_prolong       4 0.0 4.3983e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14602b34e710_wrap_pyop2_kernel_prolong       4 0.0 7.5141e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14602aa1f190_wrap_pyop2_kernel_prolong       4 0.0 1.4884e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154a33ce5510_wrap_pyop2_kernel_prolong       4 0.0 7.5172e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154a33ce6e90_wrap_pyop2_kernel_prolong       4 0.0 2.3575e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1525b1b9bb10_wrap_pyop2_kernel_prolong       4 0.0 7.5196e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1525d4486c50_wrap_pyop2_kernel_prolong       4 0.0 1.7417e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15437738de90_wrap_pyop2_kernel_prolong       4 0.0 7.5179e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154377b3fe90_wrap_pyop2_kernel_prolong       4 0.0 3.5906e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ecd94b8f10_wrap_pyop2_kernel_prolong       4 0.0 7.5192e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ecd94e3690_wrap_pyop2_kernel_prolong       4 0.0 4.2620e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15183bef5a90_wrap_pyop2_kernel_prolong       4 0.0 7.5267e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15183bef7750_wrap_pyop2_kernel_prolong       4 0.0 4.4297e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c84111b90_wrap_pyop2_kernel_prolong       4 0.0 7.5183e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c84133ed0_wrap_pyop2_kernel_prolong       4 0.0 2.4683e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c506081e50_wrap_pyop2_kernel_prolong       4 0.0 7.5199e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c506081950_wrap_pyop2_kernel_prolong       4 0.0 2.4746e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14924ad83690_wrap_pyop2_kernel_prolong       4 0.0 7.5135e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14924a24eb50_wrap_pyop2_kernel_prolong       4 0.0 2.3559e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154314ef36d0_wrap_pyop2_kernel_prolong       4 0.0 7.5041e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154314ef29d0_wrap_pyop2_kernel_prolong       4 0.0 3.1136e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1543d8f75bd0_wrap_pyop2_kernel_prolong       4 0.0 7.5133e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1543d83c9e90_wrap_pyop2_kernel_prolong       4 0.0 2.8103e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1526f66263d0_wrap_pyop2_kernel_prolong       4 0.0 7.5107e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1526f66bc610_wrap_pyop2_kernel_prolong       4 0.0 3.3758e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b747a441d0_wrap_pyop2_kernel_prolong       4 0.0 7.5197e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b747a9bd10_wrap_pyop2_kernel_prolong       4 0.0 2.1543e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e2d4bdc50_wrap_pyop2_kernel_prolong       4 0.0 7.5160e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e2d49a090_wrap_pyop2_kernel_prolong       4 0.0 3.2215e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd3a870190_wrap_pyop2_kernel_prolong       4 0.0 7.5227e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd3a75cdd0_wrap_pyop2_kernel_prolong       4 0.0 2.2794e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f6b9a75d0_wrap_pyop2_kernel_prolong       4 0.0 7.5185e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f7036f450_wrap_pyop2_kernel_prolong       4 0.0 2.3682e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c8358c0a50_wrap_pyop2_kernel_prolong       4 0.0 7.5172e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c835ac9d90_wrap_pyop2_kernel_prolong       4 0.0 2.1387e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15493fb83710_wrap_pyop2_kernel_prolong       4 0.0 7.5214e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15493fb99a90_wrap_pyop2_kernel_prolong       4 0.0 2.8006e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a30110490_wrap_pyop2_kernel_prolong       4 0.0 7.5242e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a3014aa50_wrap_pyop2_kernel_prolong       4 0.0 3.6362e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1471eafbe710_wrap_pyop2_kernel_prolong       4 0.0 7.5038e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1471e9cd9050_wrap_pyop2_kernel_prolong       4 0.0 3.1024e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f25625e10_wrap_pyop2_kernel_prolong       4 0.0 7.5106e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f252d3510_wrap_pyop2_kernel_prolong       4 0.0 4.5203e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb5ac633d0_wrap_pyop2_kernel_prolong       4 0.0 7.5077e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb5acb3a50_wrap_pyop2_kernel_prolong       4 0.0 2.4793e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14985713cb10_wrap_pyop2_kernel_prolong       4 0.0 7.5153e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14985713fa50_wrap_pyop2_kernel_prolong       4 0.0 2.4498e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1508edad2050_wrap_pyop2_kernel_prolong       4 0.0 7.5151e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1508edad15d0_wrap_pyop2_kernel_prolong       4 0.0 2.1963e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f857651910_wrap_pyop2_kernel_prolong       4 0.0 7.5261e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f857650290_wrap_pyop2_kernel_prolong       4 0.0 3.9333e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154346066e90_wrap_pyop2_kernel_prolong       4 0.0 7.5268e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154346527190_wrap_pyop2_kernel_prolong       4 0.0 4.5313e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14debc189c90_wrap_pyop2_kernel_prolong       4 0.0 7.5222e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14debc18a8d0_wrap_pyop2_kernel_prolong       4 0.0 3.4705e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1544e86fce10_wrap_pyop2_kernel_prolong       4 0.0 7.5149e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1544eac24c90_wrap_pyop2_kernel_prolong       4 0.0 2.5966e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153a3c31ead0_wrap_pyop2_kernel_prolong       4 0.0 7.5286e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153a3c31df90_wrap_pyop2_kernel_prolong       4 0.0 4.4914e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15459affe810_wrap_pyop2_kernel_prolong       4 0.0 7.5116e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15459adcfcd0_wrap_pyop2_kernel_prolong       4 0.0 2.7792e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d9f7ecb350_wrap_pyop2_kernel_prolong       4 0.0 7.5263e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d9f7ec8e90_wrap_pyop2_kernel_prolong       4 0.0 4.9022e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b752e2410_wrap_pyop2_kernel_prolong       4 0.0 7.5281e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b752e1a50_wrap_pyop2_kernel_prolong       4 0.0 4.0489e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f7bffadb50_wrap_pyop2_kernel_prolong       4 0.0 7.5175e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f7bffae0d0_wrap_pyop2_kernel_prolong       4 0.0 3.0033e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f4b901b50_wrap_pyop2_kernel_prolong       4 0.0 7.5249e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f4b8bfed0_wrap_pyop2_kernel_prolong       4 0.0 3.3373e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1464a8f53410_wrap_pyop2_kernel_prolong       4 0.0 7.5287e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1464a85daa10_wrap_pyop2_kernel_prolong       4 0.0 4.9832e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ca61ac1a50_wrap_pyop2_kernel_prolong       4 0.0 7.5213e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ca61ac1290_wrap_pyop2_kernel_prolong       4 0.0 4.4532e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c675a6150_wrap_pyop2_kernel_prolong       4 0.0 7.5205e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c6758d310_wrap_pyop2_kernel_prolong       4 0.0 3.2035e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15543e030990_wrap_pyop2_kernel_prolong       4 0.0 7.5302e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15543dfd10d0_wrap_pyop2_kernel_prolong       4 0.0 5.0202e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1461087576d0_wrap_pyop2_kernel_prolong       4 0.0 7.5299e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146108785810_wrap_pyop2_kernel_prolong       4 0.0 5.0000e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147823349b50_wrap_pyop2_kernel_prolong       4 0.0 7.5001e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147823257710_wrap_pyop2_kernel_prolong       4 0.0 2.6660e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1462c923a090_wrap_pyop2_kernel_prolong       4 0.0 7.4982e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1462c923a110_wrap_pyop2_kernel_prolong       4 0.0 2.1568e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac8c9ca7d0_wrap_pyop2_kernel_prolong       4 0.0 7.5036e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac8c9c9990_wrap_pyop2_kernel_prolong       4 0.0 2.9661e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14937589b490_wrap_pyop2_kernel_prolong       4 0.0 7.5038e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493758c7a90_wrap_pyop2_kernel_prolong       4 0.0 1.4018e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e122f7f990_wrap_pyop2_kernel_prolong       4 0.0 7.5096e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e122f7d610_wrap_pyop2_kernel_prolong       4 0.0 3.2380e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e14fa3b190_wrap_pyop2_kernel_prolong       4 0.0 7.5102e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e14f96f310_wrap_pyop2_kernel_prolong       4 0.0 3.1136e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14812705b250_wrap_pyop2_kernel_prolong       4 0.0 7.5060e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148127081490_wrap_pyop2_kernel_prolong       4 0.0 2.8240e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148ab56c9a90_wrap_pyop2_kernel_prolong       4 0.0 7.5065e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148ab56c9250_wrap_pyop2_kernel_prolong       4 0.0 2.8212e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14faa7898550_wrap_pyop2_kernel_prolong       4 0.0 7.5115e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14faa6f97d10_wrap_pyop2_kernel_prolong       4 0.0 4.3042e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e326c0ba10_wrap_pyop2_kernel_prolong       4 0.0 7.5063e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e326c19650_wrap_pyop2_kernel_prolong       4 0.0 2.9809e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145de29b3750_wrap_pyop2_kernel_prolong       4 0.0 7.5176e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145de2be5890_wrap_pyop2_kernel_prolong       4 0.0 5.0333e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151f83b85c50_wrap_pyop2_kernel_prolong       4 0.0 7.5006e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151f83b85450_wrap_pyop2_kernel_prolong       4 0.0 2.2975e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d5d1e62d0_wrap_pyop2_kernel_prolong       4 0.0 7.5129e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d5d20c650_wrap_pyop2_kernel_prolong       4 0.0 3.5180e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1552a0a70c90_wrap_pyop2_kernel_prolong       4 0.0 7.5130e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15528629f6d0_wrap_pyop2_kernel_prolong       4 0.0 2.4713e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eb246b2d50_wrap_pyop2_kernel_prolong       4 0.0 7.5140e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eb246b1850_wrap_pyop2_kernel_prolong       4 0.0 4.0602e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498e95280d0_wrap_pyop2_kernel_prolong       4 0.0 7.5097e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498e8ba8690_wrap_pyop2_kernel_prolong       4 0.0 2.4677e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149bdbf57ad0_wrap_pyop2_kernel_prolong       4 0.0 7.5137e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149bdbf7d5d0_wrap_pyop2_kernel_prolong       4 0.0 3.6624e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154125542d50_wrap_pyop2_kernel_prolong       4 0.0 7.5189e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154125586910_wrap_pyop2_kernel_prolong       4 0.0 4.8584e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150b14f05c50_wrap_pyop2_kernel_prolong       4 0.0 7.5130e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150b14f07d50_wrap_pyop2_kernel_prolong       4 0.0 2.6774e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff307548d0_wrap_pyop2_kernel_prolong       4 0.0 7.5228e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff305a3d10_wrap_pyop2_kernel_prolong       4 0.0 4.9240e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c79da7cd0_wrap_pyop2_kernel_prolong       4 0.0 7.5151e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c79cbec90_wrap_pyop2_kernel_prolong       4 0.0 3.8146e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d47782f950_wrap_pyop2_kernel_prolong       4 0.0 7.5174e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d47782ff50_wrap_pyop2_kernel_prolong       4 0.0 4.4958e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e3f6ad9ed0_wrap_pyop2_kernel_prolong       4 0.0 7.5081e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e3f6adb7d0_wrap_pyop2_kernel_prolong       4 0.0 3.6493e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f63a90050_wrap_pyop2_kernel_prolong       4 0.0 7.5074e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f63a61310_wrap_pyop2_kernel_prolong       4 0.0 3.3616e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1542a0ed43d0_wrap_pyop2_kernel_prolong       4 0.0 7.5108e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1542a05c2ed0_wrap_pyop2_kernel_prolong       4 0.0 4.1155e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458935afa90_wrap_pyop2_kernel_prolong       4 0.0 7.5186e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458935a3310_wrap_pyop2_kernel_prolong       4 0.0 3.9310e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac687239d0_wrap_pyop2_kernel_prolong       4 0.0 7.5087e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac686d1290_wrap_pyop2_kernel_prolong       4 0.0 2.9951e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e157475d0_wrap_pyop2_kernel_prolong       4 0.0 7.5066e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e15744250_wrap_pyop2_kernel_prolong       4 0.0 2.6052e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15206d6f8510_wrap_pyop2_kernel_prolong       4 0.0 7.5114e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15206d7a0810_wrap_pyop2_kernel_prolong       4 0.0 3.5197e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f979c11910_wrap_pyop2_kernel_prolong       4 0.0 7.5090e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f97a5c3d50_wrap_pyop2_kernel_prolong       4 0.0 4.3567e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1512aef17350_wrap_pyop2_kernel_prolong       4 0.0 7.5156e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1512aef15d90_wrap_pyop2_kernel_prolong       4 0.0 4.8946e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa413a3210_wrap_pyop2_kernel_prolong       4 0.0 7.5173e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa41221410_wrap_pyop2_kernel_prolong       4 0.0 3.9875e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149559382290_wrap_pyop2_kernel_prolong       4 0.0 7.5000e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1495593ab510_wrap_pyop2_kernel_prolong       4 0.0 2.1466e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145510ec8a90_wrap_pyop2_kernel_prolong       4 0.0 7.5050e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145510ecb4d0_wrap_pyop2_kernel_prolong       4 0.0 3.0439e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1543e7fafc90_wrap_pyop2_kernel_prolong       4 0.0 7.5130e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1543e7d9c7d0_wrap_pyop2_kernel_prolong       4 0.0 4.4673e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e9b0a5cb50_wrap_pyop2_kernel_prolong       4 0.0 7.5036e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e9b07e94d0_wrap_pyop2_kernel_prolong       4 0.0 2.6867e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d784fb290_wrap_pyop2_kernel_prolong       4 0.0 7.5136e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d78281050_wrap_pyop2_kernel_prolong       4 0.0 2.9996e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1506f3a49390_wrap_pyop2_kernel_prolong       4 0.0 7.5046e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1506f81b6a10_wrap_pyop2_kernel_prolong       4 0.0 2.7837e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a777aa02d0_wrap_pyop2_kernel_prolong       4 0.0 7.5182e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a777aa5610_wrap_pyop2_kernel_prolong       4 0.0 4.3991e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1467e6427f50_wrap_pyop2_kernel_prolong       4 0.0 7.5039e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1467e644ded0_wrap_pyop2_kernel_prolong       4 0.0 2.5016e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d115322290_wrap_pyop2_kernel_prolong       4 0.0 7.4974e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d115321c50_wrap_pyop2_kernel_prolong       4 0.0 2.1544e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a651105f50_wrap_pyop2_kernel_prolong       4 0.0 7.5108e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a6510c4410_wrap_pyop2_kernel_prolong       4 0.0 3.6437e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cfe81fdb50_wrap_pyop2_kernel_prolong       4 0.0 7.5190e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cfe3b4cd50_wrap_pyop2_kernel_prolong       4 0.0 3.2771e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1538b76e7f90_wrap_pyop2_kernel_prolong       4 0.0 7.5095e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1538b7776d50_wrap_pyop2_kernel_prolong       4 0.0 2.5938e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b0e932290_wrap_pyop2_kernel_prolong       4 0.0 7.5253e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b0e933a10_wrap_pyop2_kernel_prolong       4 0.0 4.3045e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147db3b63dd0_wrap_pyop2_kernel_prolong       4 0.0 7.5155e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147db3bc3f50_wrap_pyop2_kernel_prolong       4 0.0 3.6170e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15310607cbd0_wrap_pyop2_kernel_prolong       4 0.0 7.5109e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153104df9d10_wrap_pyop2_kernel_prolong       4 0.0 2.3579e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1481aa85a2d0_wrap_pyop2_kernel_prolong       4 0.0 7.5158e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1481aa879c50_wrap_pyop2_kernel_prolong       4 0.0 3.3309e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e207ecd090_wrap_pyop2_kernel_prolong       4 0.0 7.5222e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e207d88e50_wrap_pyop2_kernel_prolong       4 0.0 4.3946e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152faf5d2110_wrap_pyop2_kernel_prolong       4 0.0 7.5249e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152faf864350_wrap_pyop2_kernel_prolong       4 0.0 5.0522e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d56b22ec50_wrap_pyop2_kernel_prolong       4 0.0 7.5205e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d56b0d2e90_wrap_pyop2_kernel_prolong       4 0.0 5.0531e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1485e76d0fd0_wrap_pyop2_kernel_prolong       4 0.0 7.5165e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1485e764de10_wrap_pyop2_kernel_prolong       4 0.0 3.8122e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ae7032fdd0_wrap_pyop2_kernel_prolong       4 0.0 7.5841e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ae70286590_wrap_pyop2_kernel_prolong       4 0.0 2.8138e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a0781a70d0_wrap_pyop2_kernel_prolong       4 0.0 7.5783e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a07842e410_wrap_pyop2_kernel_prolong       4 0.0 2.4918e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b325cac410_wrap_pyop2_kernel_prolong       4 0.0 7.5643e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b3253ca690_wrap_pyop2_kernel_prolong       4 0.0 3.9544e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c2bed133d0_wrap_pyop2_kernel_prolong       4 0.0 7.5509e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c2bea7e8d0_wrap_pyop2_kernel_prolong       4 0.0 5.1157e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd71e4d550_wrap_pyop2_kernel_prolong       4 0.0 7.5460e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd7163f1d0_wrap_pyop2_kernel_prolong       4 0.0 2.4511e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14feab3f7d90_wrap_pyop2_kernel_prolong       4 0.0 7.5405e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14feab41f650_wrap_pyop2_kernel_prolong       4 0.0 3.9559e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b64baa3150_wrap_pyop2_kernel_prolong       4 0.0 7.5588e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b64baa1550_wrap_pyop2_kernel_prolong       4 0.0 2.4716e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146464db4390_wrap_pyop2_kernel_prolong       4 0.0 7.5864e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146464d77910_wrap_pyop2_kernel_prolong       4 0.0 3.9887e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1495608eff10_wrap_pyop2_kernel_prolong       4 0.0 7.5377e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149560897310_wrap_pyop2_kernel_prolong       4 0.0 3.8507e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1536c7eaa750_wrap_pyop2_kernel_prolong       4 0.0 7.5454e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1536c7ea9c10_wrap_pyop2_kernel_prolong       4 0.0 3.0035e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15493428a2d0_wrap_pyop2_kernel_prolong       4 0.0 7.5737e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15493428b950_wrap_pyop2_kernel_prolong       4 0.0 3.6046e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15313fb5bd90_wrap_pyop2_kernel_prolong       4 0.0 7.5590e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15313fdcc8d0_wrap_pyop2_kernel_prolong       4 0.0 2.5719e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e040fe0ad0_wrap_pyop2_kernel_prolong       4 0.0 7.5459e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e040e76650_wrap_pyop2_kernel_prolong       4 0.0 2.6673e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf2d3fef10_wrap_pyop2_kernel_prolong       4 0.0 7.5096e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf2d390290_wrap_pyop2_kernel_prolong       4 0.0 2.6623e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519ef09dbd0_wrap_pyop2_kernel_prolong       4 0.0 7.5072e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519ee593ed0_wrap_pyop2_kernel_prolong       4 0.0 3.1675e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d44e50d6d0_wrap_pyop2_kernel_prolong       4 0.0 7.4851e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d44e2ca3d0_wrap_pyop2_kernel_prolong       4 0.0 1.7255e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1515637f4e50_wrap_pyop2_kernel_prolong       4 0.0 7.4927e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151563825610_wrap_pyop2_kernel_prolong       4 0.0 3.2733e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1474bfa3ed90_wrap_pyop2_kernel_prolong       4 0.0 7.4920e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1474bf964610_wrap_pyop2_kernel_prolong       4 0.0 3.9406e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147155435c10_wrap_pyop2_kernel_prolong       4 0.0 7.5006e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14715566aad0_wrap_pyop2_kernel_prolong       4 0.0 4.3228e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1efda9c90_wrap_pyop2_kernel_prolong       4 0.0 7.4907e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1efda9350_wrap_pyop2_kernel_prolong       4 0.0 2.4654e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148ea2f48b50_wrap_pyop2_kernel_prolong       4 0.0 7.4882e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148ea2fc1350_wrap_pyop2_kernel_prolong       4 0.0 2.7903e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df304a7bd0_wrap_pyop2_kernel_prolong       4 0.0 7.4962e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df30479510_wrap_pyop2_kernel_prolong       4 0.0 2.5940e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b94e54db50_wrap_pyop2_kernel_prolong       4 0.0 7.4917e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b94e6072d0_wrap_pyop2_kernel_prolong       4 0.0 2.6710e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b518196950_wrap_pyop2_kernel_prolong       4 0.0 7.4941e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b518194e50_wrap_pyop2_kernel_prolong       4 0.0 4.6879e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15217721d610_wrap_pyop2_kernel_prolong       4 0.0 7.5068e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152177230910_wrap_pyop2_kernel_prolong       4 0.0 4.5157e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f85577edd0_wrap_pyop2_kernel_prolong       4 0.0 7.4960e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f85577ed90_wrap_pyop2_kernel_prolong       4 0.0 3.8265e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1490065819d0_wrap_pyop2_kernel_prolong       4 0.0 7.4886e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1490065818d0_wrap_pyop2_kernel_prolong       4 0.0 2.7921e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14823fb98690_wrap_pyop2_kernel_prolong       4 0.0 7.4862e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14823fb70810_wrap_pyop2_kernel_prolong       4 0.0 2.7853e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ba53bc1310_wrap_pyop2_kernel_prolong       4 0.0 7.4902e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ba53b99690_wrap_pyop2_kernel_prolong       4 0.0 2.1510e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148d060c36d0_wrap_pyop2_kernel_prolong       4 0.0 7.4929e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148d060f1f90_wrap_pyop2_kernel_prolong       4 0.0 2.1305e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e1a9988810_wrap_pyop2_kernel_prolong       4 0.0 7.4979e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e1a99744d0_wrap_pyop2_kernel_prolong       4 0.0 2.7582e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e64f337c50_wrap_pyop2_kernel_prolong       4 0.0 7.4969e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e64f334e50_wrap_pyop2_kernel_prolong       4 0.0 4.3005e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1524e9d51950_wrap_pyop2_kernel_prolong       4 0.0 7.5125e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1524e9d53a50_wrap_pyop2_kernel_prolong       4 0.0 3.0616e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150bdb9590d0_wrap_pyop2_kernel_prolong       4 0.0 7.4936e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150bdb8d5850_wrap_pyop2_kernel_prolong       4 0.0 2.4364e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f6899b450_wrap_pyop2_kernel_prolong       4 0.0 7.4918e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f688496d0_wrap_pyop2_kernel_prolong       4 0.0 4.0640e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152a0f521550_wrap_pyop2_kernel_prolong       4 0.0 7.4907e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152a0f523c10_wrap_pyop2_kernel_prolong       4 0.0 3.2167e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f20d29ce90_wrap_pyop2_kernel_prolong       4 0.0 7.5012e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f20d01c5d0_wrap_pyop2_kernel_prolong       4 0.0 5.0084e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1529c41f3450_wrap_pyop2_kernel_prolong       4 0.0 7.5225e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1529c41fa450_wrap_pyop2_kernel_prolong       4 0.0 4.2854e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150ad30bf190_wrap_pyop2_kernel_prolong       4 0.0 7.5195e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150ad2faa690_wrap_pyop2_kernel_prolong       4 0.0 4.8593e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1507271ac910_wrap_pyop2_kernel_prolong       4 0.0 7.4870e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150727196d10_wrap_pyop2_kernel_prolong       4 0.0 2.5914e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1517f33d2f10_wrap_pyop2_kernel_prolong       4 0.0 7.4949e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1517f32e6c10_wrap_pyop2_kernel_prolong       4 0.0 2.6156e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15105be9a6d0_wrap_pyop2_kernel_prolong       4 0.0 7.4982e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15105be52fd0_wrap_pyop2_kernel_prolong       4 0.0 4.2094e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1460372eb2d0_wrap_pyop2_kernel_prolong       4 0.0 7.5075e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146037325890_wrap_pyop2_kernel_prolong       4 0.0 5.0258e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e823a4e190_wrap_pyop2_kernel_prolong       4 0.0 7.4997e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e8238d33d0_wrap_pyop2_kernel_prolong       4 0.0 4.0201e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e95a4dd10_wrap_pyop2_kernel_prolong       4 0.0 7.5080e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e95a4fc50_wrap_pyop2_kernel_prolong       4 0.0 4.8798e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d730d7f890_wrap_pyop2_kernel_prolong       4 0.0 7.5195e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d730da9890_wrap_pyop2_kernel_prolong       4 0.0 2.1507e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f0aee7e090_wrap_pyop2_kernel_prolong       4 0.0 7.4929e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f0aee7c9d0_wrap_pyop2_kernel_prolong       4 0.0 2.4979e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151da5658bd0_wrap_pyop2_kernel_prolong       4 0.0 7.4935e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151da569b090_wrap_pyop2_kernel_prolong       4 0.0 3.5341e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b3a9a2b50_wrap_pyop2_kernel_prolong       4 0.0 7.4905e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b3a9a1a50_wrap_pyop2_kernel_prolong       4 0.0 2.5945e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a662eba510_wrap_pyop2_kernel_prolong       4 0.0 7.5121e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a6625d8bd0_wrap_pyop2_kernel_prolong       4 0.0 4.6940e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1548bcdd1b50_wrap_pyop2_kernel_prolong       4 0.0 7.5231e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1548bcdd0bd0_wrap_pyop2_kernel_prolong       4 0.0 4.3625e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e365e8c50_wrap_pyop2_kernel_prolong       4 0.0 7.5076e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e35c7ec90_wrap_pyop2_kernel_prolong       4 0.0 4.9864e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15483a3ab7d0_wrap_pyop2_kernel_prolong       4 0.0 7.4932e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15483a13db10_wrap_pyop2_kernel_prolong       4 0.0 3.1629e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ef3b7df50_wrap_pyop2_kernel_prolong       4 0.0 7.5796e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ef3b7d850_wrap_pyop2_kernel_prolong       4 0.0 2.4436e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b1d5bbda90_wrap_pyop2_kernel_prolong       4 0.0 7.5329e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b1d5a95b10_wrap_pyop2_kernel_prolong       4 0.0 1.7959e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dfa1928d10_wrap_pyop2_kernel_prolong       4 0.0 7.5139e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dfa1b65710_wrap_pyop2_kernel_prolong       4 0.0 3.0656e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1540b4bae550_wrap_pyop2_kernel_prolong       4 0.0 7.4992e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1540b4baea10_wrap_pyop2_kernel_prolong       4 0.0 2.9614e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154660d3fd50_wrap_pyop2_kernel_prolong       4 0.0 7.5520e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154660f84cd0_wrap_pyop2_kernel_prolong       4 0.0 3.3904e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154406421c90_wrap_pyop2_kernel_prolong       4 0.0 7.4913e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154406420310_wrap_pyop2_kernel_prolong       4 0.0 2.9673e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15501b6ee690_wrap_pyop2_kernel_prolong       4 0.0 7.5506e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15501b6ec6d0_wrap_pyop2_kernel_prolong       4 0.0 2.8706e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1457f6e57810_wrap_pyop2_kernel_prolong       4 0.0 7.4902e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1457f70af690_wrap_pyop2_kernel_prolong       4 0.0 1.7893e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478a78d3310_wrap_pyop2_kernel_prolong       4 0.0 7.5629e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478a6f37f50_wrap_pyop2_kernel_prolong       4 0.0 2.5563e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e8ef2f4c10_wrap_pyop2_kernel_prolong       4 0.0 7.5893e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e8ee985dd0_wrap_pyop2_kernel_prolong       4 0.0 2.2208e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ec2fc18bd0_wrap_pyop2_kernel_prolong       4 0.0 7.5276e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ec2f1414d0_wrap_pyop2_kernel_prolong       4 0.0 1.7842e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150fcdb4fc10_wrap_pyop2_kernel_prolong       4 0.0 7.5560e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150fcd270e50_wrap_pyop2_kernel_prolong       4 0.0 2.8717e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ebdcff6d10_wrap_pyop2_kernel_prolong       4 0.0 7.4922e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ebda9dc290_wrap_pyop2_kernel_prolong       4 0.0 2.5759e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac33a14190_wrap_pyop2_kernel_prolong       4 0.0 7.4851e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac33a0ecd0_wrap_pyop2_kernel_prolong       4 0.0 2.7512e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1526b59be490_wrap_pyop2_kernel_prolong       4 0.0 7.5361e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1526b59bf0d0_wrap_pyop2_kernel_prolong       4 0.0 5.2858e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145871527c50_wrap_pyop2_kernel_prolong       4 0.0 7.5745e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145871525c50_wrap_pyop2_kernel_prolong       4 0.0 2.2382e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c79d76a90_wrap_pyop2_kernel_prolong       4 0.0 7.5919e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c79d778d0_wrap_pyop2_kernel_prolong       4 0.0 4.0523e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491634ebd90_wrap_pyop2_kernel_prolong       4 0.0 7.5790e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14916355b810_wrap_pyop2_kernel_prolong       4 0.0 4.3546e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15126a8f3310_wrap_pyop2_kernel_prolong       4 0.0 7.5888e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15126a07fbd0_wrap_pyop2_kernel_prolong       4 0.0 2.5581e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d0b1b6ffd0_wrap_pyop2_kernel_prolong       4 0.0 7.5247e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d0b1d8b7d0_wrap_pyop2_kernel_prolong       4 0.0 3.8447e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152ab8070a90_wrap_pyop2_kernel_prolong       4 0.0 7.5424e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152ab3a89910_wrap_pyop2_kernel_prolong       4 0.0 5.1912e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed428e0d50_wrap_pyop2_kernel_prolong       4 0.0 7.5847e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed42bf18d0_wrap_pyop2_kernel_prolong       4 0.0 4.0278e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1466e4fa3850_wrap_pyop2_kernel_prolong       4 0.0 7.5444e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1466e4fa1950_wrap_pyop2_kernel_prolong       4 0.0 3.2029e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1479355cfd90_wrap_pyop2_kernel_prolong       4 0.0 7.5897e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1479355cfa50_wrap_pyop2_kernel_prolong       4 0.0 2.9801e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1459989a5c10_wrap_pyop2_kernel_prolong       4 0.0 7.5496e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1459988d7e50_wrap_pyop2_kernel_prolong       4 0.0 4.8968e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c749b2ca90_wrap_pyop2_kernel_prolong       4 0.0 7.5941e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c749b2ec10_wrap_pyop2_kernel_prolong       4 0.0 3.5476e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e3e225d50_wrap_pyop2_kernel_prolong       4 0.0 7.5635e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e3e14c0d0_wrap_pyop2_kernel_prolong       4 0.0 2.2353e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145746947910_wrap_pyop2_kernel_prolong       4 0.0 7.5189e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1457467d86d0_wrap_pyop2_kernel_prolong       4 0.0 2.7766e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151f6c331790_wrap_pyop2_kernel_prolong       4 0.0 7.5632e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151f6c330150_wrap_pyop2_kernel_prolong       4 0.0 3.4872e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fdb4597210_wrap_pyop2_kernel_prolong       4 0.0 7.5793e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fdb5034c10_wrap_pyop2_kernel_prolong       4 0.0 4.8005e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b19c13e50_wrap_pyop2_kernel_prolong       4 0.0 7.5301e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b19e217d0_wrap_pyop2_kernel_prolong       4 0.0 3.9673e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146129856550_wrap_pyop2_kernel_prolong       4 0.0 7.4889e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146129a6de50_wrap_pyop2_kernel_prolong       4 0.0 2.7740e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15414aa7be50_wrap_pyop2_kernel_prolong       4 0.0 7.5257e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15414a070e10_wrap_pyop2_kernel_prolong       4 0.0 2.4389e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152cf5757f90_wrap_pyop2_kernel_prolong       4 0.0 7.4885e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152cf57b8190_wrap_pyop2_kernel_prolong       4 0.0 2.7517e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1512cab69910_wrap_pyop2_kernel_prolong       4 0.0 7.5004e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1512cabeb8d0_wrap_pyop2_kernel_prolong       4 0.0 3.9079e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150576f10710_wrap_pyop2_kernel_prolong       4 0.0 7.5154e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150576efb290_wrap_pyop2_kernel_prolong       4 0.0 4.9233e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aeff9709d0_wrap_pyop2_kernel_prolong       4 0.0 7.5048e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aeff9a0650_wrap_pyop2_kernel_prolong       4 0.0 4.9835e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad190f5810_wrap_pyop2_kernel_prolong       4 0.0 7.4994e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad190f6e10_wrap_pyop2_kernel_prolong       4 0.0 3.4149e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f2d5dfbd0_wrap_pyop2_kernel_prolong       4 0.0 7.4925e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f2d459790_wrap_pyop2_kernel_prolong       4 0.0 2.7533e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f5b348f850_wrap_pyop2_kernel_prolong       4 0.0 7.4900e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f5b348fe50_wrap_pyop2_kernel_prolong       4 0.0 3.6433e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153a5ff8fe10_wrap_pyop2_kernel_prolong       4 0.0 7.4935e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153a5d8b9d50_wrap_pyop2_kernel_prolong       4 0.0 3.3841e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f08d33f50_wrap_pyop2_kernel_prolong       4 0.0 7.5301e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f08fb3f50_wrap_pyop2_kernel_prolong       4 0.0 3.4992e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b1b5bc19d0_wrap_pyop2_kernel_prolong       4 0.0 7.5196e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b1b5bc36d0_wrap_pyop2_kernel_prolong       4 0.0 3.3287e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14550cc2ff90_wrap_pyop2_kernel_prolong       4 0.0 7.5079e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14550c221f50_wrap_pyop2_kernel_prolong       4 0.0 3.9594e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15197669a510_wrap_pyop2_kernel_prolong       4 0.0 7.4940e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151975d3a150_wrap_pyop2_kernel_prolong       4 0.0 4.3378e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d180b0aa10_wrap_pyop2_kernel_prolong       4 0.0 7.5748e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d180bb7950_wrap_pyop2_kernel_prolong       4 0.0 4.5034e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154a5885a550_wrap_pyop2_kernel_prolong       4 0.0 7.5033e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154a588c2650_wrap_pyop2_kernel_prolong       4 0.0 4.0308e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1527fb6e1a50_wrap_pyop2_kernel_prolong       4 0.0 7.4931e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1527fb8d39d0_wrap_pyop2_kernel_prolong       4 0.0 4.4911e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e94112450_wrap_pyop2_kernel_prolong       4 0.0 7.5946e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e94111a90_wrap_pyop2_kernel_prolong       4 0.0 4.4462e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e995dc09d0_wrap_pyop2_kernel_prolong       4 0.0 7.5569e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e995ba9710_wrap_pyop2_kernel_prolong       4 0.0 4.0957e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b7976abad0_wrap_pyop2_kernel_prolong       4 0.0 7.5845e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b797574f10_wrap_pyop2_kernel_prolong       4 0.0 4.3667e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided        225 1.0 1.4753e-02 2.7 0.00e+00 0.0 1.9e+05 4.0e+00 2.2e+02  0  0  0  0  1   0  0  1  0  5    -0
SFSetGraph           225 1.0 3.9944e-04 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              225 1.0 1.8974e-02 2.5 0.00e+00 0.0 3.8e+05 1.3e+01 2.2e+02  0  0  1  0  1   0  0  1  0  5    -0
SFPack            467576 1.3 1.4470e+00 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
SFUnpack          467576 1.3 3.5443e-02 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy            15192 1.0 2.0489e+00 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecSet             23629 1.0 3.7746e+00 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecAYPX            27008 1.0 4.5379e+00 2.5 2.34e+09 1.3 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  3  0  0  0 193616
VecAXPBYCZ          6752 1.0 2.5766e-03 2.5 4.05e+06 1.3 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 591184
VecScatterBegin   467576 1.3 1.0664e+01 1.5 0.00e+00 0.0 3.4e+07 2.9e+04 0.0e+00  1  0 66 28  0   5  0 97 100  0    -0
VecScatterEnd     467576 1.3 3.5706e+01 14.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   9  0  0  0  0    -0
MatMult            16880 1.0 9.6729e+01 1.3 5.52e+10 1.4 3.3e+07 3.0e+04 0.0e+00 13  9 63 28  0  45 62 93 100  0 214055
MatMultAdd          5064 1.0 4.9012e+00 1.5 2.34e+09 1.3 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  3  0  0  0 179201
MatMultTranspose    5064 1.0 3.8487e+00 3.4 2.34e+09 1.3 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  3  0  0  0 228210
MatSolve          231256 1.3 9.1120e+01 1.6 2.73e+10 1.3 2.3e+06 3.2e+01 1.1e+03 11  4  5  0  5  39 30  7  0 25 112356
MatLUFactorNum       448 1.0 4.9256e+00 1.2 3.07e+06 9.9 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    51
MatResidual         5064 1.0 5.1649e+01 1.5 2.80e+10 1.4 9.8e+06 5.0e+04 0.0e+00  7  5 19 14  0  23 31 28 50  0 203211
PCSetUp              672 1.0 4.9282e+00 1.2 3.07e+06 9.9 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    51
PCSetUpOnBlocks     6752 1.0 1.8039e-02 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply             5064 1.0 1.1310e+02 1.4 2.73e+10 1.3 2.8e+07 8.8e+01 2.8e+03 15  4 55  0 13  52 31 81  0 62 90683
PCApplyOnBlocks   229568 1.3 6.3275e+01 2.0 2.72e+10 1.3 0.0e+00 0.0e+00 0.0e+00  7  4  0  0  0  24 30  0  0  0 161783
KSPSetUp             224 1.0 4.9432e-05 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve            5064 1.0 1.5435e+02 1.3 5.69e+10 1.4 3.2e+07 1.5e+04 4.5e+03 21  9 61 14 21  74 64 91 50 100 138215
MGSmooth Level 0    1688 1.0 5.2650e+01 1.6 1.28e+08 2.2 2.8e+07 8.8e+01 4.5e+03  6  0 55  0 21  21  0 81  0 100   608
MGSmooth Level 1    3376 1.0 1.1709e+02 1.6 5.67e+10 1.4 3.3e+06 1.5e+05 0.0e+00 15  9  6 14  0  53 63  9 50  0 181919
MGResid Level 1     1688 1.0 4.9774e+01 1.6 2.80e+10 1.4 3.3e+06 1.5e+05 0.0e+00  6  5  6 14  0  22 31  9 50  0 210790
MGInterp Level 1    3376 1.0 8.2522e+00 1.8 4.67e+09 1.3 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   4  5  0  0  0 212645
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   239            237
              Viewer     3              3
           Index Set  3047           3047
   IS L to G Mapping   275            269
             Section   493            493
   Star Forest Graph   501            499
              Vector  1796           1789
              Matrix   506            481
      Preconditioner    77             77
       Krylov Solver    75             75
     DMKSP interface     1              1
                SNES     1              1
              DMSNES     1              1
      SNESLineSearch     1              1
    Distributed Mesh   127            129
            DM Label   345            345
          Quadrature   144            144
      Mesh Transform     2              2
       Swarm Cell DM     4              4
    GraphPartitioner    41             41
     Discrete System   182            184
           Weak Form   182            184
        Linear Space    12             12
          Dual Space    52             52
            FE Space     8              8

--- Event Stage 1: MG Apply

           Index Set   450            450
   Star Forest Graph   229            224
              Vector   449            449
    Distributed Mesh     2              0
     Discrete System     2              0
           Weak Form     2              0
========================================================================================================================
Average time to get PetscTime(): 2.61e-08
Average time for MPI_Barrier(): 1.17514e-05
Average time for zero size MPI_Send(): 2.72937e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_mg_coarse_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_mg_levels_1_pc_linesmooth_sub_sub_pc_factor_mat_ordering_type natural # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murrumbidgee/vlumping_hmg/medium.profile # (source: code)
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

