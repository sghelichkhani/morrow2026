****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0215.gadi.nci.org.au with 104 processes, by sg8812 on Sat Aug 29 16:59:15 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           4.820e+02     1.000   4.819e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                5.832e+11     1.196   5.499e+11  5.719e+13
Flops/sec:            1.210e+09     1.196   1.141e+09  1.187e+11
MPI Msg Count:        7.525e+04     3.331   5.048e+04  5.250e+06
MPI Msg Len (bytes):  4.313e+09     2.992   6.029e+04  3.165e+11
MPI Reductions:       8.477e+03     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 2.8001e+02  58.1%  4.1491e+13  72.6%  1.734e+06  33.0%  1.073e+05       58.8%  6.305e+03  74.4%
 1:        MG Apply: 2.0194e+02  41.9%  1.5697e+13  27.4%  3.516e+06  67.0%  3.710e+04       41.2%  2.153e+03  25.4%

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

BuildTwoSided       1233 1.0 3.4878e+01 5.5 0.00e+00 0.0 9.4e+04 4.0e+00 1.2e+03  4  0  2  0 15   6  0  5  0 20    -0
BuildTwoSidedF      1136 1.0 3.4333e+01 4.1 0.00e+00 0.0 1.2e+05 7.3e+05 1.1e+03  4  0  2 27 13   7  0  7 47 18    -0
SFSetGraph           104 1.0 3.6239e-03 3.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               97 1.0 9.5681e-01 54.7 0.00e+00 0.0 6.9e+04 5.9e+02 9.7e+01  0  0  1  0  1   0  0  4  0  2    -0
SFBcastBegin         890 1.0 2.1670e-01 3.6 0.00e+00 0.0 4.4e+05 4.4e+04 0.0e+00  0  0  8  6  0   0  0 25 10  0    -0
SFBcastEnd           890 1.0 8.3368e+00 62.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        342 1.0 3.2981e-02 7.9 0.00e+00 0.0 1.8e+05 5.4e+04 0.0e+00  0  0  3  3  0   0  0 10  5  0    -0
SFReduceEnd          342 1.0 2.6265e+00 94.9 1.63e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   454
SFFetchOpBegin         6 1.0 2.5771e-05 3.4 0.00e+00 0.0 2.5e+03 7.3e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           6 1.0 3.8534e-04 6.8 0.00e+00 0.0 2.5e+03 7.3e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          4 1.0 6.7481e-04 1.3 0.00e+00 0.0 1.2e+03 1.2e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         49 1.0 4.2958e-03 1.3 0.00e+00 0.0 5.9e+04 8.2e+01 5.8e+01  0  0  1  0  1   0  0  3  0  1    -0
SFSectionSF           51 1.0 3.0091e-03 1.9 0.00e+00 0.0 2.9e+04 3.8e+01 5.1e+01  0  0  1  0  1   0  0  2  0  1    -0
SFRemoteOff            2 1.0 9.9543e-05 2.6 0.00e+00 0.0 1.1e+03 1.6e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack              2777 1.0 4.3353e-01 3.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            2783 1.0 7.0857e-02 10.9 1.63e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 16822
VecDot               226 1.0 4.6940e-01 5.8 9.76e+07 1.2 0.0e+00 0.0e+00 2.3e+02  0  0  0  0  3   0  0  0  0  4 20855
VecMDot             1313 1.0 1.0942e+01 4.7 2.60e+09 1.2 0.0e+00 0.0e+00 1.3e+03  1  0  0  0 15   2  1  0  0 21 23831
VecNorm             2321 1.0 4.9748e+00 7.8 1.00e+09 1.2 0.0e+00 0.0e+00 2.3e+03  1  0  0  0 27   1  0  0  0 37 20209
VecScale            1554 1.0 1.0198e-01 1.4 3.36e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 330016
VecCopy             1598 1.0 9.3623e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               468 1.0 1.9957e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              241 1.0 1.4560e-01 1.2 1.04e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 71694
VecWAXPY             226 1.0 2.1496e-01 1.2 4.88e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 22770
VecMAXPY            1554 1.0 3.5042e+00 1.2 3.17e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   1  1  0  0  0 90643
VecScatterBegin     1539 1.0 2.7690e-01 2.8 0.00e+00 0.0 8.1e+05 6.0e+04 0.0e+00  0  0 15 15  0   0  0 47 26  0    -0
VecScatterEnd       1539 1.0 1.1105e+01 65.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecSetRandom          14 1.0 2.7327e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecReduceArith       452 1.0 1.1866e-01 1.8 1.95e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 164998
VecReduceComm        226 1.0 1.7457e-01 17.6 0.00e+00 0.0 0.0e+00 0.0e+00 2.3e+02  0  0  0  0  3   0  0  0  0  4    -0
VecNormalize         305 1.0 6.2706e-01 4.5 1.98e+08 1.2 0.0e+00 0.0e+00 3.0e+02  0  0  0  0  4   0  0  0  0  5 31602
MatMult             1539 1.0 3.8447e+01 1.4 2.35e+10 1.2 8.1e+05 6.0e+04 0.0e+00  7  4 15 15  0  12  6 47 26  0 61231
MatSolve             305 1.0 7.0116e+00 1.4 4.55e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  1  0  0  0 64468
MatLUFactorSym         1 1.0 3.8128e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum       240 1.0 1.0089e+01 1.0 1.96e+09 1.2 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0 18705
MatILUFactorSym        1 1.0 7.5623e-02 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin    1637 1.0 3.4353e+01 3.3 0.00e+00 0.0 1.2e+05 7.3e+05 1.1e+03  4  0  2 27 13   7  0  7 47 18    -0
MatAssemblyEnd      1637 1.0 8.8446e+00 6.3 1.27e+08 0.0 2.1e+03 7.6e+03 1.7e+01  1  0  0  0  0   1  0  0  0  0   608
MatGetRowIJ            1 1.0 6.8890e-06 35.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         1 1.0 2.0573e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       452 1.0 4.0221e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
MatTranspose           2 1.0 6.5132e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 6.3027e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        452 1.0 2.1030e+00 1.1 3.52e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  1  0  0  0 166934
MatPtAPSymbolic        1 1.0 9.4815e-02 1.0 0.00e+00 0.0 1.6e+03 1.0e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       226 1.0 1.3713e+01 1.0 1.40e+10 1.2 1.2e+05 1.8e+05 2.3e+02  3  2  2  7  3   5  3  7 11  4 102311
MatGetLocalMat       226 1.0 9.6799e-01 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        226 1.0 4.3235e-01 1.9 0.00e+00 0.0 1.2e+05 1.8e+05 0.0e+00  0  0  2  7  0   0  0  7 12  0    -0
MatSetPreallCOO       32 1.0 6.1582e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       32 1.0 3.4412e-05 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp              226 1.0 4.2610e+01 1.0 2.80e+10 1.2 2.7e+05 1.1e+05 1.3e+03  9  5  5 10 16  15  7 16 17 21 65487
PCApply             1023 1.0 2.0977e+02 1.1 1.58e+11 1.2 3.5e+06 3.7e+04 2.2e+03 42 27 67 41 25 Multiple stages 74832
PCApplyOnBlocks      305 1.0 7.0144e+00 1.4 4.55e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  1  0  0  0 64442
KSPSetUp             226 1.0 8.6276e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             226 1.0 2.3078e+02 1.0 1.78e+11 1.2 4.1e+06 4.0e+04 4.4e+03 48 31 77 51 52 Multiple stages 76522
KSPGMRESOrthog      1313 1.0 1.3514e+01 2.6 5.20e+09 1.2 0.0e+00 0.0e+00 1.3e+03  2  1  0  0 15   3  1  0  0 21 38589
DMRefine               2 1.0 1.8377e-01 1.0 2.09e+03 1.0 7.4e+03 3.5e+01 6.3e+01  0  0  0  0  1   0  0  0  0  1     1
DMPlexCreateGmsh       1 1.0 1.3208e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 2.6162e+00 182.8 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   1  0  0  0  0    -0
Mesh Partition         4 1.0 4.6173e-02 1.0 0.00e+00 0.0 1.8e+04 6.4e+01 5.1e+01  0  0  0  0  1   0  0  1  0  1    -0
Mesh Migration         4 1.0 1.1182e-02 1.0 0.00e+00 0.0 6.7e+04 7.4e+01 2.4e+02  0  0  1  0  3   0  0  4  0  4    -0
DMPlexPartSelf         1 1.0 1.2492e-03 576.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       4 1.0 6.2500e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        4 1.0 5.0426e-03 1.1 0.00e+00 0.0 3.6e+03 5.1e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       4 1.0 2.2023e-03 1.4 0.00e+00 0.0 1.8e+03 1.9e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          4 1.0 9.7358e-04 1.7 0.00e+00 0.0 1.9e+03 2.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          29 1.0 5.5415e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 5.0009e-02 1.0 0.00e+00 0.0 4.3e+03 1.8e+02 6.3e+01  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistCones        4 1.0 1.4787e-03 1.1 0.00e+00 0.0 1.1e+04 1.1e+02 8.0e+00  0  0  0  0  0   0  0  1  0  0    -0
DMPlexDistLabels       4 1.0 4.5618e-03 1.0 0.00e+00 0.0 3.5e+04 7.1e+01 1.5e+02  0  0  1  0  2   0  0  2  0  2    -0
DMPlexDistOvrlp        3 1.0 8.7251e-03 1.0 0.00e+00 0.0 8.3e+04 7.0e+01 2.4e+02  0  0  2  0  3   0  0  5  0  4    -0
DMPlexDistField        7 1.0 2.1249e-03 1.2 0.00e+00 0.0 1.5e+04 5.8e+01 2.0e+01  0  0  0  0  0   0  0  1  0  0    -0
DMPlexStratify        41 1.0 4.4517e-03 4.8 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      41 1.0 1.9402e-04 3.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          2 1.0 1.1538e-04 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          2 1.0 3.1585e-03 1.7 0.00e+00 0.0 4.1e+03 2.9e+01 1.9e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          2 1.0 1.1772e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          2 1.0 3.5626e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             2 1.0 3.8222e-04 2.2 0.00e+00 0.0 3.3e+03 2.7e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         2 1.0 8.9844e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         2 1.0 7.6470e-04 2.0 0.00e+00 0.0 8.2e+02 3.7e+01 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             75 1.0 4.0549e+02 1.0 5.83e+11 1.2 5.0e+06 6.3e+04 7.6e+03 84 100 96 100 90 Multiple stages 141027
SNESSetUp              1 1.0 5.5649e-05 4.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     301 1.0 2.3377e+01 1.2 1.46e+11 1.2 3.6e+05 6.0e+04 0.0e+00  4 25  7  7  0   8 34 21 12  0 603895
SNESJacobianEval     226 1.0 1.0315e+02 1.0 2.29e+11 1.2 2.4e+05 3.9e+05 9.0e+02 21 39  5 29 11  37 54 14 50 14 215369
SNESLineSearch       226 1.0 1.5059e+01 1.0 1.14e+11 1.2 3.6e+05 6.0e+04 9.0e+02  3 19  7  7 11   5 27 20 12 14 730399
DualSpaceSetUp         8 1.0 4.9722e-03 1.1 1.08e+02 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     2
FESetUp                8 1.0 1.5447e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 4.7546e+02 1.0 5.83e+11 1.2 5.2e+06 6.0e+04 8.5e+03 99 100 100 100 100 Multiple stages 120280
firedrake.__init__       1 1.0 1.8844e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  4  0  0  0  0   6  0  0  0  0    -0
CreateMesh             3 1.0 2.7144e+00 24.3 0.00e+00 0.0 1.6e+05 7.5e+01 4.4e+02  0  0  3  0  5   1  0  9  0  7    -0
firedrake.mesh._from_gmsh       1 1.0 2.6171e+00 182.4 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       3 1.0 1.0107e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       3 1.0 6.3710e-06 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        3 1.0 4.3482e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          3 1.0 9.2227e-04 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      15 1.0 3.2829e-02 1.1 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      19 1.0 1.6717e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      19 1.0 3.1130e-02 1.1 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      18 1.0 2.8770e-02 1.1 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      18 1.0 2.8656e-02 1.1 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      36 1.0 1.3015e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       6 1.0 4.2595e-03 1.1 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__      12 1.0 7.2800e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      10 1.0 1.1790e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      65 1.0 1.8877e-02 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          3 1.0 2.6755e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       3 1.0 2.1126e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       4 1.0 5.9451e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       5 1.0 1.3472e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       3 1.0 2.6691e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     646 1.0 9.0019e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      2429 1.0 1.1397e+02 1.2 3.75e+11 1.2 3.3e+05 5.9e+04 3.2e+01 22 64  6  6  0  37 88 19 10  1 318755
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       6 1.0 2.6287e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    4858 1.0 2.6678e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  5  0  0  0  0   9  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      17 1.0 1.0411e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
GlobalKernel: generate loopy      17 0.0 1.6633e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      17 0.0 8.1923e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      17 1.0 1.6072e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   6  0  0  0  0    -0
pyop2.compilation.load      17 1.0 1.6072e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   6  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      17 1.0 9.5608e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
pyop2.compilation.make_so      17 1.0 9.4076e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
ParLoopRednBegin    2429 1.0 6.1959e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      2429 1.0 6.2584e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       3 1.0 8.9291e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong       4 1.0 8.7944e+00 1.0 7.29e+06 1.2 8.9e+03 6.7e+03 1.3e+01  2  0  0  0  0   3  0  1  0  0    83
firedrake.interpolation.interpolate      13 1.0 4.5094e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      13 1.0 5.9378e+00 1.0 4.51e+07 1.2 1.4e+04 2.1e+04 3.7e+01  1  0  0  0  0   2  0  1  0  1   761
firedrake.formmanipulation.split_form      14 1.0 4.5330e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      14 1.0 2.2506e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      13 1.0 1.5159e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       6 1.0 1.0137e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     623 1.0 2.4336e+00 14.8 0.00e+00 0.0 3.3e+05 5.8e+04 4.0e+00  0  0  6  6  0   1  0 19 10  0    -0
Parloop_Cells_wrap_expression_kernel      26 1.0 5.6191e+00 1.0 4.51e+07 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0   805
firedrake.halo.Halo.global_to_local_end     623 1.0 8.2317e+00 87.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       1 1.0 4.2293e+00 66.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149278d33c10_wrap_pyop2_kernel_prolong       4 0.0 7.9484e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149279a74c90_wrap_pyop2_kernel_prolong       4 0.0 2.8745e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 3.9910e+00 1.0 3.65e+07 1.2 8.1e+03 3.0e+04 1.1e+01  1  0  0  0  0   1  0  0  0  0   917
firedrake.function.Function.assign     314 1.0 8.7910e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     313 1.0 8.0519e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.5166e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate     154 1.0 1.6743e-03 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 4.1902e-05 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.4132e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.9124e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.1552e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 4.9859e+00 1.0 0.00e+00 0.0 3.2e+03 2.4e+05 2.3e+01  1  0  0  0  0   2  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 6.0897e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.2726e-04 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.1474e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.1474e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
CreateSparsity         2 1.0 1.8546e+00 1.2 0.00e+00 0.0 2.7e+03 1.4e+05 1.8e+01  0  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         2 1.0 2.8517e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      75 1.0 4.0564e+02 1.0 5.83e+11 1.2 5.0e+06 6.3e+04 7.8e+03 84 100 96 100 92 Multiple stages 140974
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 3.0725e-01 1146.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 1.1284e-05 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 3.0719e-01 1387.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 3.0716e-01 1591.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     602 1.0 6.1753e+00 1.6 3.72e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  7  0  0  0   2  9  0  0  0 604359
Parloop_Cells_wrap_form0_exterior_facet_top_integral     602 1.0 1.0278e+00 1.0 9.61e+06 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   937
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral     602 1.0 1.3962e+00 1.0 3.55e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  4497
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     602 1.0 3.7073e+00 1.2 3.54e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   1  9  0  0  0 956887
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     602 1.0 7.5570e+00 1.3 7.35e+10 1.3 0.0e+00 0.0e+00 0.0e+00  1 12  0  0  0   2 16  0  0  0 903668
firedrake.halo.Halo.local_to_global_begin     301 1.0 3.9296e-02 3.7 0.00e+00 0.0 1.6e+05 6.0e+04 0.0e+00  0  0  3  3  0   0  0  9  5  0    -0
firedrake.halo.Halo.local_to_global_end     301 1.0 2.6279e+00 88.9 1.63e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   454
Parloop_Cells_wrap_form00_cell_integral     452 1.0 1.8657e+01 1.5 5.20e+10 1.2 0.0e+00 0.0e+00 0.0e+00  3  9  0  0  0   5 13  0  0  0 279354
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     452 1.0 1.5735e+00 1.4 2.72e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  3051
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     452 1.0 2.2433e+01 1.3 6.83e+10 1.2 0.0e+00 0.0e+00 0.0e+00  4 12  0  0  0   7 17  0  0  0 305194
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     452 1.0 4.6242e+01 1.5 1.09e+11 1.3 0.0e+00 0.0e+00 0.0e+00  8 18  0  0  0  14 24  0  0  0 219411
firedrake.dmhooks.get_function_space       1 1.0 1.2479e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 5.6742e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0      226 1.0 9.2536e+00 1.0 8.59e+07 12.4 0.0e+00 0.0e+00 2.0e+00  2  0  0  0  0   3  0  0  0  0   240
MGSetup Level 1      226 1.0 6.7982e-01 1.0 5.13e+08 1.2 5.2e+03 6.0e+04 2.1e+01  0  0  0  0  0   0  0  0  0  0 74835
firedrake.constant.Constant.assign      75 1.0 3.0586e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa352e9690_wrap_pyop2_kernel_prolong       4 0.0 7.9590e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa34915490_wrap_pyop2_kernel_prolong       4 0.0 2.6524e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c59f66bb50_wrap_pyop2_kernel_prolong       4 0.0 7.8386e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c59f660550_wrap_pyop2_kernel_prolong       4 0.0 3.5995e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154dbd532690_wrap_pyop2_kernel_prolong       4 0.0 7.9222e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154dbd531510_wrap_pyop2_kernel_prolong       4 0.0 3.1322e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d2419babd0_wrap_pyop2_kernel_prolong       4 0.0 7.9577e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d24104e010_wrap_pyop2_kernel_prolong       4 0.0 3.3958e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14653cd4af90_wrap_pyop2_kernel_prolong       4 0.0 7.9113e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14653cd49790_wrap_pyop2_kernel_prolong       4 0.0 3.7141e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c7eb13ced0_wrap_pyop2_kernel_prolong       4 0.0 7.9618e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c7eb157910_wrap_pyop2_kernel_prolong       4 0.0 3.0886e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14850e120e50_wrap_pyop2_kernel_prolong       4 0.0 7.9560e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1485107966d0_wrap_pyop2_kernel_prolong       4 0.0 2.6054e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148858a49010_wrap_pyop2_kernel_prolong       4 0.0 7.9202e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14885893dd50_wrap_pyop2_kernel_prolong       4 0.0 3.5827e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1521e8917150_wrap_pyop2_kernel_prolong       4 0.0 7.9480e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1521e8b31d10_wrap_pyop2_kernel_prolong       4 0.0 2.5964e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1461eba9b9d0_wrap_pyop2_kernel_prolong       4 0.0 7.9037e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1461eba9b090_wrap_pyop2_kernel_prolong       4 0.0 3.7021e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15080e981f50_wrap_pyop2_kernel_prolong       4 0.0 7.9030e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15080e982e10_wrap_pyop2_kernel_prolong       4 0.0 3.2495e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aeeb9df790_wrap_pyop2_kernel_prolong       4 0.0 7.8384e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aeeb1345d0_wrap_pyop2_kernel_prolong       4 0.0 3.4166e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e264718850_wrap_pyop2_kernel_prolong       4 0.0 7.9157e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e264742a90_wrap_pyop2_kernel_prolong       4 0.0 2.8448e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152121d51190_wrap_pyop2_kernel_prolong       4 0.0 7.8962e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152121946ad0_wrap_pyop2_kernel_prolong       4 0.0 3.2056e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14692fbb3510_wrap_pyop2_kernel_prolong       4 0.0 7.8346e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14692fbb0c50_wrap_pyop2_kernel_prolong       4 0.0 3.4756e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a81d2bf0d0_wrap_pyop2_kernel_prolong       4 0.0 7.8335e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a81d2bd910_wrap_pyop2_kernel_prolong       4 0.0 2.6403e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a52359950_wrap_pyop2_kernel_prolong       4 0.0 7.8403e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a523fd310_wrap_pyop2_kernel_prolong       4 0.0 3.4515e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151fa0db9c90_wrap_pyop2_kernel_prolong       4 0.0 7.8977e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151fa338a090_wrap_pyop2_kernel_prolong       4 0.0 3.2917e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151c7037f890_wrap_pyop2_kernel_prolong       4 0.0 7.8305e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151c7037f790_wrap_pyop2_kernel_prolong       4 0.0 3.0465e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1530a486d850_wrap_pyop2_kernel_prolong       4 0.0 7.9264e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1530a48bfa90_wrap_pyop2_kernel_prolong       4 0.0 3.0520e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a4c4a02650_wrap_pyop2_kernel_prolong       4 0.0 7.9082e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a4c4a01cd0_wrap_pyop2_kernel_prolong       4 0.0 4.1344e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478e5b23ad0_wrap_pyop2_kernel_prolong       4 0.0 7.9222e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478e59f9150_wrap_pyop2_kernel_prolong       4 0.0 3.6977e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eeb53b0690_wrap_pyop2_kernel_prolong       4 0.0 7.8437e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eeb4ad23d0_wrap_pyop2_kernel_prolong       4 0.0 3.3025e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f321e1950_wrap_pyop2_kernel_prolong       4 0.0 7.8385e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f30f6b190_wrap_pyop2_kernel_prolong       4 0.0 3.7025e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5d6f5e450_wrap_pyop2_kernel_prolong       4 0.0 7.8749e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5d6f5d490_wrap_pyop2_kernel_prolong       4 0.0 4.0301e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150026ab7050_wrap_pyop2_kernel_prolong       4 0.0 7.8777e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150026a46310_wrap_pyop2_kernel_prolong       4 0.0 2.6024e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee8f6387d0_wrap_pyop2_kernel_prolong       4 0.0 7.8738e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee8f8ae150_wrap_pyop2_kernel_prolong       4 0.0 2.8587e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff996c8210_wrap_pyop2_kernel_prolong       4 0.0 7.8349e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff996fe110_wrap_pyop2_kernel_prolong       4 0.0 3.3393e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154a1b157190_wrap_pyop2_kernel_prolong       4 0.0 7.9369e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154a1b1542d0_wrap_pyop2_kernel_prolong       4 0.0 3.0847e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d801b77a10_wrap_pyop2_kernel_prolong       4 0.0 7.8387e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d801931c90_wrap_pyop2_kernel_prolong       4 0.0 3.7119e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1533cd31c110_wrap_pyop2_kernel_prolong       4 0.0 7.9038e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1533cd31d9d0_wrap_pyop2_kernel_prolong       4 0.0 3.1487e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b5cfaad10_wrap_pyop2_kernel_prolong       4 0.0 7.8859e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b57d8de90_wrap_pyop2_kernel_prolong       4 0.0 2.8379e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d7100e410_wrap_pyop2_kernel_prolong       4 0.0 7.9124e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d7100f950_wrap_pyop2_kernel_prolong       4 0.0 3.0477e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a54372010_wrap_pyop2_kernel_prolong       4 0.0 7.8320e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a4f95d990_wrap_pyop2_kernel_prolong       4 0.0 3.0278e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c35c65dcd0_wrap_pyop2_kernel_prolong       4 0.0 7.8356e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c35c65d5d0_wrap_pyop2_kernel_prolong       4 0.0 3.5725e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e8c959c50_wrap_pyop2_kernel_prolong       4 0.0 7.8361e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e8c959610_wrap_pyop2_kernel_prolong       4 0.0 3.6696e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152eca65bbd0_wrap_pyop2_kernel_prolong       4 0.0 7.8474e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152eca867f50_wrap_pyop2_kernel_prolong       4 0.0 3.6842e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a0e40fa10_wrap_pyop2_kernel_prolong       4 0.0 7.8353e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a0e6c8090_wrap_pyop2_kernel_prolong       4 0.0 4.0114e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15443561fc90_wrap_pyop2_kernel_prolong       4 0.0 7.8348e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15443561f610_wrap_pyop2_kernel_prolong       4 0.0 2.7098e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d1d830f710_wrap_pyop2_kernel_prolong       4 0.0 7.8311e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d1d830cdd0_wrap_pyop2_kernel_prolong       4 0.0 3.2813e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1454bc96f750_wrap_pyop2_kernel_prolong       4 0.0 7.8368e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1454bc925710_wrap_pyop2_kernel_prolong       4 0.0 3.5107e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14851cf313d0_wrap_pyop2_kernel_prolong       4 0.0 7.9309e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14851cdb1850_wrap_pyop2_kernel_prolong       4 0.0 2.8879e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1510bbb87690_wrap_pyop2_kernel_prolong       4 0.0 7.8332e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1510bb35aa10_wrap_pyop2_kernel_prolong       4 0.0 3.3319e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153fc0a42c10_wrap_pyop2_kernel_prolong       4 0.0 7.8316e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153fc0a41ad0_wrap_pyop2_kernel_prolong       4 0.0 3.4666e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f40ff3a90_wrap_pyop2_kernel_prolong       4 0.0 7.8874e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f4101f3d0_wrap_pyop2_kernel_prolong       4 0.0 3.6538e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b9e658b750_wrap_pyop2_kernel_prolong       4 0.0 7.9419e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b9e77e1690_wrap_pyop2_kernel_prolong       4 0.0 3.4929e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c72c0dbb50_wrap_pyop2_kernel_prolong       4 0.0 7.8406e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c72c377f10_wrap_pyop2_kernel_prolong       4 0.0 3.8523e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148321c73ed0_wrap_pyop2_kernel_prolong       4 0.0 7.8342e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148321c79cd0_wrap_pyop2_kernel_prolong       4 0.0 3.3647e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1511d45d2350_wrap_pyop2_kernel_prolong       4 0.0 7.8934e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1511d45d1bd0_wrap_pyop2_kernel_prolong       4 0.0 3.6428e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14698fff9bd0_wrap_pyop2_kernel_prolong       4 0.0 7.8335e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14698fff9b10_wrap_pyop2_kernel_prolong       4 0.0 3.6586e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d82e0fe510_wrap_pyop2_kernel_prolong       4 0.0 7.8952e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d82d5c3e10_wrap_pyop2_kernel_prolong       4 0.0 3.5213e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d751f8e250_wrap_pyop2_kernel_prolong       4 0.0 7.9230e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d751f8db10_wrap_pyop2_kernel_prolong       4 0.0 2.8611e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b376cb38d0_wrap_pyop2_kernel_prolong       4 0.0 7.9276e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b376d280d0_wrap_pyop2_kernel_prolong       4 0.0 3.2386e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e4faa6cf10_wrap_pyop2_kernel_prolong       4 0.0 7.8732e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e4fabe9dd0_wrap_pyop2_kernel_prolong       4 0.0 3.8504e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da403a86d0_wrap_pyop2_kernel_prolong       4 0.0 7.9373e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da403a1cd0_wrap_pyop2_kernel_prolong       4 0.0 3.3326e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14990f15b390_wrap_pyop2_kernel_prolong       4 0.0 7.9048e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14990f159990_wrap_pyop2_kernel_prolong       4 0.0 3.1785e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522879f3990_wrap_pyop2_kernel_prolong       4 0.0 7.9226e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152287b19710_wrap_pyop2_kernel_prolong       4 0.0 2.9987e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491ef5d4a50_wrap_pyop2_kernel_prolong       4 0.0 7.8302e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491ef157350_wrap_pyop2_kernel_prolong       4 0.0 2.7630e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14580816df10_wrap_pyop2_kernel_prolong       4 0.0 7.8448e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14580816ffd0_wrap_pyop2_kernel_prolong       4 0.0 2.7497e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b7ab9cffd0_wrap_pyop2_kernel_prolong       4 0.0 7.8581e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b7ab9cd090_wrap_pyop2_kernel_prolong       4 0.0 3.1274e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d11c541710_wrap_pyop2_kernel_prolong       4 0.0 7.8963e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d11c74d050_wrap_pyop2_kernel_prolong       4 0.0 3.6773e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14abfc8ed750_wrap_pyop2_kernel_prolong       4 0.0 7.9152e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14abfa2afbd0_wrap_pyop2_kernel_prolong       4 0.0 3.3120e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1516bc363e10_wrap_pyop2_kernel_prolong       4 0.0 7.8378e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1516bc360450_wrap_pyop2_kernel_prolong       4 0.0 3.6844e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1549a8276010_wrap_pyop2_kernel_prolong       4 0.0 7.8432e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1549a82758d0_wrap_pyop2_kernel_prolong       4 0.0 4.1173e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de563d98d0_wrap_pyop2_kernel_prolong       4 0.0 7.8595e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de563db290_wrap_pyop2_kernel_prolong       4 0.0 2.8367e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1473f3d26350_wrap_pyop2_kernel_prolong       4 0.0 7.8354e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1473f3d25b50_wrap_pyop2_kernel_prolong       4 0.0 3.1347e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dbd49c4090_wrap_pyop2_kernel_prolong       4 0.0 7.9430e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dbd4a09c50_wrap_pyop2_kernel_prolong       4 0.0 2.7760e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa31bc9590_wrap_pyop2_kernel_prolong       4 0.0 7.8350e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa31bc8750_wrap_pyop2_kernel_prolong       4 0.0 3.2666e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153618f6f210_wrap_pyop2_kernel_prolong       4 0.0 7.8509e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153618f6e750_wrap_pyop2_kernel_prolong       4 0.0 3.0450e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da0e515d10_wrap_pyop2_kernel_prolong       4 0.0 7.9142e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da0dd058d0_wrap_pyop2_kernel_prolong       4 0.0 3.8473e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14929160d810_wrap_pyop2_kernel_prolong       4 0.0 7.8317e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14929160fed0_wrap_pyop2_kernel_prolong       4 0.0 3.0342e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c69e3ef650_wrap_pyop2_kernel_prolong       4 0.0 7.8714e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c69e42ff50_wrap_pyop2_kernel_prolong       4 0.0 3.3922e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1512b4be3c10_wrap_pyop2_kernel_prolong       4 0.0 7.8669e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1512b4c3b8d0_wrap_pyop2_kernel_prolong       4 0.0 3.8449e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14900053b310_wrap_pyop2_kernel_prolong       4 0.0 7.8326e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149000523fd0_wrap_pyop2_kernel_prolong       4 0.0 2.9121e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b382b3450_wrap_pyop2_kernel_prolong       4 0.0 7.9329e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b38281b10_wrap_pyop2_kernel_prolong       4 0.0 3.5570e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148d1edfb150_wrap_pyop2_kernel_prolong       4 0.0 7.8517e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148d1d6a8310_wrap_pyop2_kernel_prolong       4 0.0 3.6712e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d00be82490_wrap_pyop2_kernel_prolong       4 0.0 7.8341e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d00bd15410_wrap_pyop2_kernel_prolong       4 0.0 3.1194e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1534cef1fc10_wrap_pyop2_kernel_prolong       4 0.0 7.8366e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1534cef4f8d0_wrap_pyop2_kernel_prolong       4 0.0 2.5986e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c64d48a090_wrap_pyop2_kernel_prolong       4 0.0 7.8862e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c64d324110_wrap_pyop2_kernel_prolong       4 0.0 3.5679e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150adf51b590_wrap_pyop2_kernel_prolong       4 0.0 7.8611e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150adf4e5150_wrap_pyop2_kernel_prolong       4 0.0 3.5508e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148303853e10_wrap_pyop2_kernel_prolong       4 0.0 7.8688e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148303852a50_wrap_pyop2_kernel_prolong       4 0.0 3.2844e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152124a9e4d0_wrap_pyop2_kernel_prolong       4 0.0 7.8418e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15211ff33f10_wrap_pyop2_kernel_prolong       4 0.0 3.3444e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aae24dde10_wrap_pyop2_kernel_prolong       4 0.0 7.9314e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aae24dd910_wrap_pyop2_kernel_prolong       4 0.0 3.5715e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15092811c310_wrap_pyop2_kernel_prolong       4 0.0 7.8359e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1509237f5310_wrap_pyop2_kernel_prolong       4 0.0 2.9389e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d06a5ce850_wrap_pyop2_kernel_prolong       4 0.0 7.8897e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d06a5cded0_wrap_pyop2_kernel_prolong       4 0.0 3.3467e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ace48c810_wrap_pyop2_kernel_prolong       4 0.0 7.8392e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151acdb66650_wrap_pyop2_kernel_prolong       4 0.0 3.2194e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15223fa03b10_wrap_pyop2_kernel_prolong       4 0.0 7.8677e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15223fa42a10_wrap_pyop2_kernel_prolong       4 0.0 3.2589e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ae9869d10_wrap_pyop2_kernel_prolong       4 0.0 7.8355e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ae986bbd0_wrap_pyop2_kernel_prolong       4 0.0 3.9970e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f0d9cbe850_wrap_pyop2_kernel_prolong       4 0.0 7.8753e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f0d9bf5590_wrap_pyop2_kernel_prolong       4 0.0 3.1754e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb784d2010_wrap_pyop2_kernel_prolong       4 0.0 7.8326e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb784d0090_wrap_pyop2_kernel_prolong       4 0.0 3.2409e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151812b94710_wrap_pyop2_kernel_prolong       4 0.0 7.8548e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151812b64150_wrap_pyop2_kernel_prolong       4 0.0 2.7790e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e30abe1090_wrap_pyop2_kernel_prolong       4 0.0 7.8369e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e309a7c4d0_wrap_pyop2_kernel_prolong       4 0.0 3.9883e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149907435a50_wrap_pyop2_kernel_prolong       4 0.0 7.8650e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149907430210_wrap_pyop2_kernel_prolong       4 0.0 3.0402e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c184c01a10_wrap_pyop2_kernel_prolong       4 0.0 7.9103e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c184c7a310_wrap_pyop2_kernel_prolong       4 0.0 3.6842e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15322bed5410_wrap_pyop2_kernel_prolong       4 0.0 7.8348e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15322bed6c10_wrap_pyop2_kernel_prolong       4 0.0 3.4743e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aceffd7d10_wrap_pyop2_kernel_prolong       4 0.0 7.8396e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14acf5081610_wrap_pyop2_kernel_prolong       4 0.0 3.6655e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c60bb35850_wrap_pyop2_kernel_prolong       4 0.0 7.8751e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c60bb37450_wrap_pyop2_kernel_prolong       4 0.0 3.2234e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e298af450_wrap_pyop2_kernel_prolong       4 0.0 7.8531e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e28fcc050_wrap_pyop2_kernel_prolong       4 0.0 2.8524e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b6d658d10_wrap_pyop2_kernel_prolong       4 0.0 7.8850e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b6d6af6d0_wrap_pyop2_kernel_prolong       4 0.0 4.0353e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a1d160da50_wrap_pyop2_kernel_prolong       4 0.0 7.8531e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a1d160f310_wrap_pyop2_kernel_prolong       4 0.0 3.1192e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1518926c83d0_wrap_pyop2_kernel_prolong       4 0.0 7.9393e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1518926c9f90_wrap_pyop2_kernel_prolong       4 0.0 4.0919e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eec62636d0_wrap_pyop2_kernel_prolong       4 0.0 7.8504e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eec60e1ad0_wrap_pyop2_kernel_prolong       4 0.0 3.7779e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e398550b90_wrap_pyop2_kernel_prolong       4 0.0 7.9152e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e3984b1f90_wrap_pyop2_kernel_prolong       4 0.0 3.7449e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided        226 1.0 2.0457e-02 5.1 0.00e+00 0.0 1.4e+05 4.0e+00 2.3e+02  0  0  3  0  3   0  0  4  0 10    -0
SFSetGraph           226 1.0 9.8918e-03 6.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              226 1.0 2.6821e-02 2.2 0.00e+00 0.0 2.9e+05 2.3e+02 2.3e+02  0  0  5  0  3   0  0  8  0 10    -0
SFPack              7161 1.0 6.6812e-01 3.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            7161 1.0 5.8291e-03 4.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             1023 1.0 5.7170e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              4091 1.0 4.2468e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY             4092 1.0 2.2937e+00 1.7 1.77e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 77274
VecAYPX             4092 1.0 2.3572e+00 2.5 8.84e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 37596
VecScatterBegin     7161 1.0 8.0972e-01 2.9 0.00e+00 0.0 2.8e+06 4.7e+04 0.0e+00  0  0 53 41  0   0  0 80 100  0    -0
VecScatterEnd       7161 1.0 3.1224e+01 64.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   6  0  0  0  0    -0
MatMult             4092 1.0 1.0484e+02 1.4 6.26e+10 1.2 2.1e+06 6.0e+04 0.0e+00 18 11 41 41  0  43 40 61 99  0 59701
MatMultAdd          1023 1.0 2.8422e+00 1.4 1.33e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 46772
MatMultTranspose    1023 1.0 2.0033e+00 2.1 1.33e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 66357
MatSolve            5115 1.0 1.0674e+02 1.5 6.14e+10 1.2 1.4e+06 5.7e+02 1.1e+03 19 11 26  0 13  45 39 39  1 52 56987
MatLUFactorNum       212 1.0 1.9035e+01 1.5 2.89e+10 1.2 0.0e+00 0.0e+00 0.0e+00  3  5  0  0  0   8 18  0  0  0 148353
MatResidual         1023 1.0 2.9420e+01 1.7 1.59e+10 1.2 5.4e+05 6.0e+04 0.0e+00  5  3 10 10  0  11 10 15 25  0 53942
PCSetUpOnBlocks     2046 1.0 1.9053e+01 1.5 2.89e+10 1.2 0.0e+00 0.0e+00 0.0e+00  3  5  0  0  0   8 18  0  0  0 148208
PCApply             5115 1.0 1.0681e+02 1.5 6.14e+10 1.2 1.4e+06 5.7e+02 1.1e+03 19 11 26  0 13  45 39 39  1 52 56950
PCApplyOnBlocks     4092 1.0 1.0221e+02 1.6 6.10e+10 1.2 0.0e+00 0.0e+00 0.0e+00 17 11  0  0  0  41 39  0  0  0 59335
KSPSetUp               1 1.0 2.2903e-03 3.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve            3069 1.0 1.6872e+02 1.1 1.11e+11 1.2 3.0e+06 3.3e+04 2.2e+03 33 19 57 31 25  79 70 85 75 100 65321
MGSmooth Level 0    1023 1.0 1.1250e+01 2.9 7.43e+08 15.5 1.4e+06 5.7e+02 2.2e+03  1  0 26  0 25   3  0 39  1 100  1608
MGSmooth Level 1    2046 1.0 1.8391e+02 1.2 1.39e+11 1.2 1.6e+06 6.0e+04 0.0e+00 35 24 31 31  0  83 88 46 75  0 75181
MGResid Level 1     1023 1.0 2.9423e+01 1.7 1.59e+10 1.2 5.4e+05 6.0e+04 0.0e+00  5  3 10 10  0  11 10 15 25  0 53937
MGInterp Level 1    2046 1.0 4.6769e+00 1.5 2.65e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  2  0  0  0 56847
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   229            229
              Viewer     3              3
         PetscRandom    14             14
           Index Set  1515           1515
   IS L to G Mapping   207            207
             Section   472            472
   Star Forest Graph   396            622
              Vector  1073           1072
              Matrix   132            132
      Preconditioner     6              6
       Krylov Solver    19             19
     DMKSP interface     1              1
                SNES     1              1
              DMSNES     1              1
      SNESLineSearch     1              1
    Distributed Mesh   124            124
            DM Label   333            333
          Quadrature   144            144
      Mesh Transform     2              2
    GraphPartitioner    41             41
     Discrete System   179            179
           Weak Form   179            179
        Linear Space    12             12
          Dual Space    52             52
            FE Space     8              8

--- Event Stage 1: MG Apply

           Index Set   452            452
   Star Forest Graph   226              0
              Vector   228            229
========================================================================================================================
Average time to get PetscTime(): 2.47e-08
Average time for MPI_Barrier(): 4.1434e-06
Average time for zero size MPI_Send(): 2.22068e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murrumbidgee/vlumping/smoke.profile # (source: code)
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

