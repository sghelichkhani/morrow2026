****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0686.gadi.nci.org.au with 416 processes, by sg8812 on Sat Aug 29 17:08:01 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           1.004e+03     1.000   1.004e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                1.114e+12     1.130   1.070e+12  4.449e+14
Flops/sec:            1.109e+09     1.130   1.065e+09  4.430e+11
MPI Msg Count:        2.856e+05     3.418   1.951e+05  8.118e+07
MPI Msg Len (bytes):  1.160e+10     3.200   4.169e+04  3.385e+12
MPI Reductions:       2.149e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 5.1127e+02  50.9%  3.4082e+14  76.6%  1.670e+07  20.6%  1.188e+05       58.6%  1.515e+04  70.5%
 1:        MG Apply: 4.9302e+02  49.1%  1.0411e+14  23.4%  6.448e+07  79.4%  2.174e+04       41.4%  6.313e+03  29.4%

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

BuildTwoSided       1937 1.0 5.3314e+01 3.8 0.00e+00 0.0 4.2e+05 4.0e+00 1.7e+03  3  0  1  0  8   6  0  3  0 11    -0
BuildTwoSidedF      1593 1.0 4.9537e+01 3.5 0.00e+00 0.0 5.1e+05 1.4e+06 1.6e+03  3  0  1 22  7   6  0  3 37 11    -0
SFSetGraph           353 1.0 1.6691e-02 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              344 1.0 4.5225e+00 90.2 0.00e+00 0.0 3.3e+05 1.0e+03 1.2e+02  0  0  0  0  1   0  0  2  0  1    -0
SFBcastBegin         914 1.0 4.3748e-01 3.8 0.00e+00 0.0 1.9e+06 8.6e+04 0.0e+00  0  0  2  5  0   0  0 11  8  0    -0
SFBcastEnd           914 1.0 1.7885e+01 150.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        345 1.0 1.0339e-01 20.4 0.00e+00 0.0 7.5e+05 1.1e+05 0.0e+00  0  0  1  2  0   0  0  4  4  0    -0
SFReduceEnd          345 1.0 4.2677e+00 118.3 3.46e+07 3.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2362
SFFetchOpBegin         6 1.0 3.3224e-05 5.4 0.00e+00 0.0 1.1e+04 7.1e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           6 1.0 9.3343e-04 20.5 0.00e+00 0.0 1.1e+04 7.1e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          4 1.0 1.3595e-03 2.2 0.00e+00 0.0 5.4e+03 1.1e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         51 1.0 9.2866e-03 1.3 0.00e+00 0.0 2.7e+05 7.8e+01 6.0e+01  0  0  0  0  0   0  0  2  0  0    -0
SFSectionSF           53 1.0 5.5031e-03 2.5 0.00e+00 0.0 1.3e+05 3.6e+01 5.3e+01  0  0  0  0  0   0  0  1  0  0    -0
SFRemoteOff            2 1.0 8.7978e-05 2.8 0.00e+00 0.0 4.7e+03 1.6e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack            115372 1.1 1.8553e+00 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack          115378 1.1 2.0542e-01 9.9 3.46e+07 3.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 49067
VecDot               225 1.0 8.1625e-01 4.0 1.81e+08 1.1 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  1   0  0  0  0  1 91041
VecMDot             4982 1.0 2.9775e+01 2.0 1.61e+10 1.1 0.0e+00 0.0e+00 5.0e+03  2  1  0  0 23   4  2  0  0 33 221294
VecNorm             6206 1.0 9.7319e+00 2.9 3.09e+09 1.1 0.0e+00 0.0e+00 6.2e+03  1  0  0  0 29   1  0  0  0 41 129845
VecScale            5445 1.0 1.0287e+00 1.3 1.24e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 492016
VecCopy             1815 1.0 2.1511e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              1399 1.0 8.0511e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              463 1.0 4.0279e-01 1.2 1.91e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 194645
VecWAXPY             225 1.0 4.4700e-01 1.2 9.07e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 83124
VecMAXPY            5445 1.0 2.3625e+01 1.1 1.84e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  2  0  0  0   4  2  0  0  0 318439
VecScatterBegin   114107 1.1 2.6951e+00 1.5 0.00e+00 0.0 1.2e+07 7.0e+04 0.0e+00  0  0 14 24  0   0  0 70 41  0    -0
VecScatterEnd     114107 1.1 1.7159e+01 36.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecSetRandom          11 1.0 4.0113e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecReduceArith       450 1.0 3.5885e-01 2.2 3.63e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 414173
VecReduceComm        225 1.0 3.6293e-01 23.7 0.00e+00 0.0 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  1   0  0  0  0  1    -0
VecNormalize        2626 1.0 9.6510e-01 3.1 2.98e+08 1.1 0.0e+00 0.0e+00 2.6e+03  0  0  0  0 12   0  0  0  0 17 126262
MatMult             5207 1.0 1.2798e+02 1.1 8.72e+10 1.1 1.2e+07 7.0e+04 0.0e+00 12  8 14 24  0  23 10 70 41  0 278687
MatSolve           56592 1.1 6.0210e+00 1.2 3.44e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0 234141
MatLUFactorSym       225 1.1 2.3877e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum      2691 1.1 7.0173e-01 1.1 7.16e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 417613
MatILUFactorSym        2 1.0 1.4157e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin    5474 1.0 5.3667e+01 2.7 0.00e+00 0.0 5.1e+05 1.4e+06 1.6e+03  3  0  1 22  7   6  0  3 37 11    -0
MatAssemblyEnd      5474 1.0 1.2980e+01 11.2 2.72e+08 0.0 1.8e+04 7.5e+03 7.1e+01  1  0  0  0  0   1  0  0  0  0  3507
MatGetRowIJ          226 1.1 3.3664e-05 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats      11 1.0 1.6425e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  1   0  0  0  0  1    -0
MatGetOrdering       226 1.1 4.0318e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       900 1.0 7.8178e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
MatTranspose           8 1.0 1.6400e-02 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 1.8e+01  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          8 1.0 1.5684e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 1.8e+01  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum       1352 1.0 4.3470e+00 1.2 6.54e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  1  0  0  0 615047
MatPtAPSymbolic        3 1.0 2.2282e-01 1.0 0.00e+00 0.0 2.0e+04 6.7e+04 2.1e+01  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       675 1.0 2.9778e+01 1.0 2.61e+10 1.1 1.5e+06 1.2e+05 6.9e+02  3  2  2  5  3   6  3  9  9  5 358817
MatGetLocalMat       679 1.0 1.6386e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        679 1.0 1.0229e+00 2.2 0.00e+00 0.0 1.5e+06 1.2e+05 0.0e+00  0  0  2  5  0   0  0  9  9  0    -0
MatSetPreallCOO       32 1.0 6.5229e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       32 1.0 3.5172e-05 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp              225 1.0 7.1886e+01 1.0 4.14e+10 1.1 7.0e+06 3.5e+04 7.0e+03  7  4  9  7 33  14  5 42 12 46 235759
PCApply             2594 1.0 4.9924e+02 1.0 2.55e+11 1.1 6.4e+07 2.2e+04 6.3e+03 49 23 79 41 29 Multiple stages 208540
PCApplyOnBlocks    56592 1.1 6.8162e+00 1.2 4.15e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0 249209
KSPSetUp             225 1.0 1.9444e-02 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             225 1.0 6.3759e+02 1.0 3.63e+11 1.1 7.0e+07 3.0e+04 1.2e+04 63 33 87 62 55 Multiple stages 232711
KSPGMRESOrthog      4982 1.0 4.9821e+01 1.4 3.22e+10 1.1 0.0e+00 0.0e+00 5.0e+03  4  3  0  0 23   8  4  0  0 33 264515
DMRefine               2 1.0 2.1519e-01 1.0 2.09e+03 1.0 3.2e+04 3.4e+01 6.3e+01  0  0  0  0  0   0  0  0  0  0     4
DMPlexCreateGmsh       1 1.0 2.5145e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 6.3593e+00 268.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   1  0  0  0  0    -0
Mesh Partition         4 1.0 1.4757e-01 1.0 0.00e+00 0.0 7.9e+04 6.2e+01 5.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         4 1.0 2.5069e-02 1.1 0.00e+00 0.0 2.9e+05 7.2e+01 2.4e+02  0  0  0  0  1   0  0  2  0  2    -0
DMPlexPartSelf         1 1.0 3.7101e-03 1149.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       4 1.0 3.1829e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        4 1.0 6.3924e-03 1.4 0.00e+00 0.0 1.6e+04 4.9e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       4 1.0 2.9219e-03 1.6 0.00e+00 0.0 7.8e+03 1.9e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          4 1.0 2.7912e-03 2.7 0.00e+00 0.0 8.2e+03 2.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          29 1.0 1.1523e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 1.4781e-01 1.0 0.00e+00 0.0 1.7e+04 1.8e+02 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        4 1.0 3.3961e-03 1.2 0.00e+00 0.0 4.5e+04 1.1e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       4 1.0 1.0628e-02 1.0 0.00e+00 0.0 1.5e+05 7.0e+01 1.5e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistOvrlp        3 1.0 2.8059e-02 1.0 0.00e+00 0.0 3.6e+05 6.8e+01 2.4e+02  0  0  0  0  1   0  0  2  0  2    -0
DMPlexDistField        7 1.0 4.7569e-03 1.3 0.00e+00 0.0 6.6e+04 5.7e+01 2.0e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         2 1.0 3.6621e-04 1.2 0.00e+00 0.0 2.3e+04 2.8e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify        41 1.0 8.7916e-03 8.1 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      41 1.0 5.5844e-04 10.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          2 1.0 1.1586e-04 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          2 1.0 3.8783e-03 1.6 0.00e+00 0.0 1.8e+04 2.8e+01 1.9e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          2 1.0 1.2487e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          2 1.0 3.5778e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             2 1.0 4.1645e-04 2.2 0.00e+00 0.0 1.4e+04 2.7e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         2 1.0 8.6942e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         2 1.0 8.8509e-04 2.0 0.00e+00 0.0 3.6e+03 3.6e+01 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMSwarmSetSizes        4 1.0 6.3325e-05 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             75 1.0 9.2589e+02 1.0 1.11e+12 1.1 8.0e+07 4.2e+04 2.1e+04 92 100 99 100 96 Multiple stages 480513
SNESSetUp              1 1.0 6.7890e-05 7.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     300 1.0 3.3123e+01 1.2 2.73e+11 1.2 1.5e+06 1.2e+05 0.0e+00  3 24  2  5  0   6 32  9  9  0 3245372
SNESJacobianEval     225 1.0 1.7244e+02 1.0 4.29e+11 1.2 1.0e+06 7.8e+05 9.0e+02 17 38  1 23  4  34 50  6 40  6 980160
SNESLineSearch       225 1.0 2.7995e+01 1.0 2.12e+11 1.2 1.5e+06 1.2e+05 9.0e+02  3 19  2  5  4   5 25  9  9  6 2988462
DualSpaceSetUp         8 1.0 5.4919e-03 1.2 1.08e+02 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     8
FESetUp                8 1.0 1.7855e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 1.0004e+03 1.0 1.11e+12 1.1 8.1e+07 4.2e+04 2.1e+04 100 100 100 100 100 Multiple stages 444737
firedrake.__init__       1 1.0 1.9620e+01 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
CreateMesh             3 1.0 6.5859e+00 26.2 0.00e+00 0.0 7.0e+05 7.4e+01 4.4e+02  0  0  1  0  2   1  0  4  0  3    -0
firedrake.mesh._from_gmsh       1 1.0 6.3602e+00 267.9 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       3 1.0 1.0866e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       3 1.0 6.8100e-06 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        7 1.0 7.7098e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          3 1.0 1.0000e-03 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      36 1.0 4.1586e-02 1.1 0.00e+00 0.0 3.3e+04 1.0e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      44 1.0 2.5652e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      40 1.0 3.8237e-02 1.1 0.00e+00 0.0 3.3e+04 1.0e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      39 1.0 3.4377e-02 1.1 0.00e+00 0.0 3.3e+04 1.0e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      39 1.0 3.4181e-02 1.1 0.00e+00 0.0 3.3e+04 1.0e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      78 1.0 1.4325e-02 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       6 1.0 1.0741e-02 2.1 0.00e+00 0.0 1.5e+04 8.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__      12 1.0 7.5728e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      24 1.0 2.2856e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      76 1.0 4.9930e-02 4.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          3 1.0 2.4621e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       3 1.0 2.3327e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       8 1.0 6.7195e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       5 1.0 1.2796e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       3 1.0 2.4556e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     662 1.0 9.7352e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      2424 1.0 1.8394e+02 1.2 7.02e+11 1.2 1.4e+06 1.2e+05 3.8e+01 17 62  2  5  0  33 81  8  8  0 1503144
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       6 1.0 2.4123e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    4848 1.0 2.8981e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   6  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      19 1.0 1.1212e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
GlobalKernel: generate loopy      19 0.0 1.4622e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      19 0.0 8.7184e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      21 1.0 2.2843e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
pyop2.compilation.load      20 1.0 2.2842e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      20 1.0 1.1886e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.make_so      20 1.0 1.1642e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
ParLoopRednBegin    2424 1.0 7.6135e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      2424 1.0 6.6952e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       3 1.0 9.8274e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong       4 1.0 8.7348e+00 1.0 1.36e+07 1.1 3.8e+04 1.3e+04 1.3e+01  1  0  0  0  0   2  0  0  0  0   638
firedrake.interpolation.interpolate      21 1.0 6.2683e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      15 1.0 1.8906e+01 1.0 8.42e+07 1.1 1.4e+05 1.8e+04 1.8e+02  2  0  0  0  1   4  0  1  0  1  1824
firedrake.formmanipulation.split_form      16 1.0 5.5038e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      16 1.0 2.9226e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      17 1.0 3.3356e-01 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       8 1.1 2.8360e-01 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     621 1.0 5.3894e+00 18.3 0.00e+00 0.0 1.4e+06 1.2e+05 4.0e+00  0  0  2  5  0   1  0  8  8  0    -0
Parloop_Cells_wrap_expression_kernel      34 1.0 7.6991e+00 1.0 8.42e+07 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0  4479
firedrake.halo.Halo.global_to_local_end     621 1.0 1.4689e+01 124.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       3 1.0 7.6120e+00 37.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1552668339d0_wrap_pyop2_kernel_prolong       4 0.0 8.1300e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1552667c2cd0_wrap_pyop2_kernel_prolong       4 0.0 5.1619e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 4.2008e+00 1.0 6.81e+07 1.1 3.5e+04 6.0e+04 1.1e+01  0  0  0  0  0   1  0  0  0  0  6644
firedrake.function.Function.assign     314 1.0 1.7512e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     313 1.0 1.6740e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.2910e-04 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate     154 1.0 1.8559e-03 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 6.0098e-05 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.5591e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.9757e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.3085e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 7.6268e+00 1.0 0.00e+00 0.0 1.4e+04 4.8e+05 2.3e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 1.2202e-03 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.8441e-04 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.2396e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.2396e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
CreateSparsity         4 1.0 4.3183e+00 1.1 0.00e+00 0.0 3.1e+04 1.1e+05 4.6e+01  0  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         4 1.0 5.6762e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      75 1.0 9.2617e+02 1.0 1.11e+12 1.1 8.0e+07 4.2e+04 2.1e+04 92 100 99 100 97 Multiple stages 480363
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 3.7478e-01 1303.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 8.5670e-06 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 3.7472e-01 1556.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 3.7469e-01 1778.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     600 1.0 8.3776e+00 1.4 6.92e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   1  8  0  0  0 3385536
Parloop_Cells_wrap_form0_exterior_facet_top_integral     600 1.0 1.1909e+00 1.1 8.94e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  3074
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral     600 1.0 1.3616e+00 1.1 5.90e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 18038
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     600 1.0 5.5683e+00 1.1 6.60e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   1  8  0  0  0 4857879
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     600 1.0 1.2134e+01 1.3 1.38e+11 1.3 0.0e+00 0.0e+00 0.0e+00  1 12  0  0  0   2 15  0  0  0 4289260
firedrake.halo.Halo.local_to_global_begin     300 1.0 1.1345e-01 10.5 0.00e+00 0.0 6.7e+05 1.2e+05 0.0e+00  0  0  1  2  0   0  0  4  4  0    -0
firedrake.halo.Halo.local_to_global_end     300 1.0 4.2703e+00 111.1 3.46e+07 3.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2360
Parloop_Cells_wrap_form00_cell_integral     450 1.0 3.0824e+01 1.5 9.66e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  9  0  0  0   5 12  0  0  0 1283606
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     450 1.0 2.0902e+00 1.6 4.51e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  8974
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     450 1.0 4.0616e+01 1.3 1.27e+11 1.1 0.0e+00 0.0e+00 0.0e+00  3 12  0  0  0   7 15  0  0  0 1283910
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     450 1.0 7.8871e+01 1.4 2.05e+11 1.3 0.0e+00 0.0e+00 0.0e+00  7 17  0  0  0  14 23  0  0  0 979290
firedrake.dmhooks.get_function_space       2 1.0 2.0590e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       3 1.0 1.2332e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.VertexOnlyMesh       2 1.0 1.0398e+01 1.0 0.00e+00 0.0 5.9e+04 7.9e+01 2.2e+01  1  0  0  0  0   2  0  0  0  0    -0
firedrake.mesh._pic_swarm_in_mesh       2 1.0 1.0376e+01 1.0 0.00e+00 0.0 4.1e+04 6.5e+01 1.2e+01  1  0  0  0  0   2  0  0  0  0    -0
firedrake.mesh._parent_mesh_embedding       2 1.0 9.4038e+00 1.0 0.00e+00 0.0 2.3e+04 2.8e+01 8.0e+00  1  0  0  0  0   2  0  0  0  0    -0
firedrake.mesh.MeshGeometry.locate_cells_ref_coords_and_dists       2 1.0 5.8385e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshGeometry._c_locator       2 1.0 5.8038e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.src_locate_cell       2 1.0 5.2126e+00 22.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.compile_coordinate_element       2 1.0 5.1979e+00 34.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.pointquery_utils.make_wrapper       2 1.0 4.4138e+00 340.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.parloop.generate_single_cell_wrapper       2 1.0 4.4136e+00 344.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
c_locator_run          2 1.0 1.9267e-01 7.5 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._ctypes       2 1.0 1.8225e-01 12.0 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._constant_ctypes       2 1.0 1.6326e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.rtree       2 1.0 1.9805e-03 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.bounding_box_coords       2 1.0 2.4929e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
rtree_build            2 1.0 1.6505e-03 3.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._dmswarm_create       4 1.0 2.1983e-02 31.4 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._swarm_original_ordering_preserve       2 1.0 9.6558e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.VertexOnlyMeshTopology.__init__       4 1.0 3.3095e-02 2.1 0.00e+00 0.0 1.8e+04 1.1e+02 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_vom_from_vom_topology       4 1.0 4.5627e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.action       2 1.0 4.4138e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0      225 1.0 7.7582e-01 1.2 1.41e+08 1.1 5.8e+06 2.4e+02 5.5e+03  0  0  7  0 25   0  0 35  0 36 74085
MGSetup Level 1      225 1.0 1.9100e+00 1.1 6.16e+08 1.1 2.2e+04 1.2e+05 2.5e+02  0  0  0  0  1   0  0  0  0  2 131961
firedrake.constant.Constant.assign      75 1.0 3.7104e-03 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a3a61ed350_wrap_pyop2_kernel_prolong       4 0.0 8.1257e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a3a62142d0_wrap_pyop2_kernel_prolong       4 0.0 5.4200e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ddcfd48310_wrap_pyop2_kernel_prolong       4 0.0 8.1129e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ddcfd2bf90_wrap_pyop2_kernel_prolong       4 0.0 5.4200e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15167d54bf10_wrap_pyop2_kernel_prolong       4 0.0 8.1083e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15167d54b7d0_wrap_pyop2_kernel_prolong       4 0.0 4.8329e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a4770e5050_wrap_pyop2_kernel_prolong       4 0.0 8.1103e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a4770a7510_wrap_pyop2_kernel_prolong       4 0.0 5.8873e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147edda04a50_wrap_pyop2_kernel_prolong       4 0.0 8.1031e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147edda047d0_wrap_pyop2_kernel_prolong       4 0.0 6.2862e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c5ccdd0d0_wrap_pyop2_kernel_prolong       4 0.0 8.0901e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c5cc6de90_wrap_pyop2_kernel_prolong       4 0.0 5.6145e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef13e58890_wrap_pyop2_kernel_prolong       4 0.0 8.0891e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef13e78f10_wrap_pyop2_kernel_prolong       4 0.0 6.4562e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153852b5cd10_wrap_pyop2_kernel_prolong       4 0.0 8.1148e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153852bda890_wrap_pyop2_kernel_prolong       4 0.0 5.6424e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15369ce366d0_wrap_pyop2_kernel_prolong       4 0.0 8.1332e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15369ce35a90_wrap_pyop2_kernel_prolong       4 0.0 6.3451e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153fb4170a90_wrap_pyop2_kernel_prolong       4 0.0 8.0574e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153fb414bcd0_wrap_pyop2_kernel_prolong       4 0.0 5.8781e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce0728a1d0_wrap_pyop2_kernel_prolong       4 0.0 8.1042e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce072a57d0_wrap_pyop2_kernel_prolong       4 0.0 5.6241e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154604befdd0_wrap_pyop2_kernel_prolong       4 0.0 8.0706e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154604e85d10_wrap_pyop2_kernel_prolong       4 0.0 6.8208e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb3e8d9b50_wrap_pyop2_kernel_prolong       4 0.0 8.0976e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb3eb05f10_wrap_pyop2_kernel_prolong       4 0.0 5.6132e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a72e0d790_wrap_pyop2_kernel_prolong       4 0.0 8.0825e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a72c89810_wrap_pyop2_kernel_prolong       4 0.0 6.1377e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146fd11bae10_wrap_pyop2_kernel_prolong       4 0.0 7.9993e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146fd106cb90_wrap_pyop2_kernel_prolong       4 0.0 6.2846e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c6cfb72850_wrap_pyop2_kernel_prolong       4 0.0 7.9913e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c6cfb71f50_wrap_pyop2_kernel_prolong       4 0.0 5.2095e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146694fcee10_wrap_pyop2_kernel_prolong       4 0.0 8.0073e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146694fcdd90_wrap_pyop2_kernel_prolong       4 0.0 6.1349e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15535c676950_wrap_pyop2_kernel_prolong       4 0.0 8.0050e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15535c63e310_wrap_pyop2_kernel_prolong       4 0.0 6.8352e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1482990c64d0_wrap_pyop2_kernel_prolong       4 0.0 8.0046e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1482984bdb90_wrap_pyop2_kernel_prolong       4 0.0 6.0256e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1465ba9ca210_wrap_pyop2_kernel_prolong       4 0.0 8.0033e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1465ba9c9a90_wrap_pyop2_kernel_prolong       4 0.0 6.1448e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b78dd9b5d0_wrap_pyop2_kernel_prolong       4 0.0 8.0361e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b78dd9b590_wrap_pyop2_kernel_prolong       4 0.0 6.5891e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e3f63b1a50_wrap_pyop2_kernel_prolong       4 0.0 8.0446e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e3f63b36d0_wrap_pyop2_kernel_prolong       4 0.0 6.6976e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519e1022490_wrap_pyop2_kernel_prolong       4 0.0 7.9951e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519e10202d0_wrap_pyop2_kernel_prolong       4 0.0 6.1456e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e2c939e50_wrap_pyop2_kernel_prolong       4 0.0 8.0411e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e2c8eb950_wrap_pyop2_kernel_prolong       4 0.0 6.2268e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150d2f76af90_wrap_pyop2_kernel_prolong       4 0.0 8.0822e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150d2ee21bd0_wrap_pyop2_kernel_prolong       4 0.0 6.2683e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152613faa610_wrap_pyop2_kernel_prolong       4 0.0 8.0250e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152613fa9e10_wrap_pyop2_kernel_prolong       4 0.0 6.2679e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1495719766d0_wrap_pyop2_kernel_prolong       4 0.0 8.0466e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149571995f50_wrap_pyop2_kernel_prolong       4 0.0 6.6459e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f11f66fcd0_wrap_pyop2_kernel_prolong       4 0.0 8.1226e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f11f6efc50_wrap_pyop2_kernel_prolong       4 0.0 6.6163e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15403a1d5e90_wrap_pyop2_kernel_prolong       4 0.0 8.1254e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15403a1d5750_wrap_pyop2_kernel_prolong       4 0.0 6.0400e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498b2fe5f90_wrap_pyop2_kernel_prolong       4 0.0 8.0951e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498b25dd250_wrap_pyop2_kernel_prolong       4 0.0 6.0581e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1542c2789750_wrap_pyop2_kernel_prolong       4 0.0 8.0314e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1542c2788410_wrap_pyop2_kernel_prolong       4 0.0 6.0228e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1474b5bddd50_wrap_pyop2_kernel_prolong       4 0.0 8.1072e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1474b5bdd210_wrap_pyop2_kernel_prolong       4 0.0 5.6445e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e048be810_wrap_pyop2_kernel_prolong       4 0.0 8.1020e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e04946610_wrap_pyop2_kernel_prolong       4 0.0 5.8539e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1500836e7bd0_wrap_pyop2_kernel_prolong       4 0.0 8.1362e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150082c66090_wrap_pyop2_kernel_prolong       4 0.0 6.8390e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1469d619c950_wrap_pyop2_kernel_prolong       4 0.0 8.1099e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1469d6227210_wrap_pyop2_kernel_prolong       4 0.0 6.1491e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150bf8a44350_wrap_pyop2_kernel_prolong       4 0.0 8.0977e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150bf8a22450_wrap_pyop2_kernel_prolong       4 0.0 6.2415e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152b9c2d8d10_wrap_pyop2_kernel_prolong       4 0.0 8.0833e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152b9af6de50_wrap_pyop2_kernel_prolong       4 0.0 5.1606e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145ae9ebb450_wrap_pyop2_kernel_prolong       4 0.0 8.1076e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145ae9eb9a90_wrap_pyop2_kernel_prolong       4 0.0 6.3710e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fbbff75f10_wrap_pyop2_kernel_prolong       4 0.0 8.0423e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fbbff75750_wrap_pyop2_kernel_prolong       4 0.0 5.2212e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f57b75fd0_wrap_pyop2_kernel_prolong       4 0.0 8.1281e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f57b75490_wrap_pyop2_kernel_prolong       4 0.0 6.9571e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1482bf8cdc50_wrap_pyop2_kernel_prolong       4 0.0 8.0470e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1482bf8f1bd0_wrap_pyop2_kernel_prolong       4 0.0 5.8522e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f56e9d890_wrap_pyop2_kernel_prolong       4 0.0 8.0376e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f56e9ee50_wrap_pyop2_kernel_prolong       4 0.0 5.8332e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1548e7616710_wrap_pyop2_kernel_prolong       4 0.0 8.0995e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1548e7619990_wrap_pyop2_kernel_prolong       4 0.0 6.2908e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1528004ffad0_wrap_pyop2_kernel_prolong       4 0.0 8.0170e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152800526010_wrap_pyop2_kernel_prolong       4 0.0 5.8614e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d372e21d0_wrap_pyop2_kernel_prolong       4 0.0 7.9966e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d372e3e50_wrap_pyop2_kernel_prolong       4 0.0 6.7095e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15208c652550_wrap_pyop2_kernel_prolong       4 0.0 8.0189e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15208c6255d0_wrap_pyop2_kernel_prolong       4 0.0 6.1911e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1484e3e84f90_wrap_pyop2_kernel_prolong       4 0.0 8.1231e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1484e3fd6b50_wrap_pyop2_kernel_prolong       4 0.0 6.4994e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1552e4c0a750_wrap_pyop2_kernel_prolong       4 0.0 8.0934e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1552e4c0add0_wrap_pyop2_kernel_prolong       4 0.0 6.3948e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456978e0dd0_wrap_pyop2_kernel_prolong       4 0.0 8.0980e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145697905550_wrap_pyop2_kernel_prolong       4 0.0 6.9116e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153a0cbdacd0_wrap_pyop2_kernel_prolong       4 0.0 8.0167e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153a0cde6090_wrap_pyop2_kernel_prolong       4 0.0 6.0575e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1545ea692110_wrap_pyop2_kernel_prolong       4 0.0 8.0888e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1545ea693f10_wrap_pyop2_kernel_prolong       4 0.0 6.9454e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d9cd1d6f50_wrap_pyop2_kernel_prolong       4 0.0 7.9869e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d9cc74e510_wrap_pyop2_kernel_prolong       4 0.0 5.2911e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15242bab1950_wrap_pyop2_kernel_prolong       4 0.0 8.0480e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15242bab3890_wrap_pyop2_kernel_prolong       4 0.0 5.1726e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152680e79cd0_wrap_pyop2_kernel_prolong       4 0.0 7.9936e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152680d95690_wrap_pyop2_kernel_prolong       4 0.0 6.0694e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1481cdef33d0_wrap_pyop2_kernel_prolong       4 0.0 8.0653e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1481cdd74090_wrap_pyop2_kernel_prolong       4 0.0 5.3566e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1520634a50d0_wrap_pyop2_kernel_prolong       4 0.0 8.0487e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1520634582d0_wrap_pyop2_kernel_prolong       4 0.0 5.6427e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150490089b10_wrap_pyop2_kernel_prolong       4 0.0 8.0634e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150490089810_wrap_pyop2_kernel_prolong       4 0.0 6.2726e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee885c8f90_wrap_pyop2_kernel_prolong       4 0.0 8.0104e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee88628b10_wrap_pyop2_kernel_prolong       4 0.0 5.2353e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c6c165e10_wrap_pyop2_kernel_prolong       4 0.0 7.9922e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c6c1672d0_wrap_pyop2_kernel_prolong       4 0.0 5.7661e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15325dcd8450_wrap_pyop2_kernel_prolong       4 0.0 8.0290e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15325dcdbfd0_wrap_pyop2_kernel_prolong       4 0.0 7.2971e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146410e56b10_wrap_pyop2_kernel_prolong       4 0.0 8.0742e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146410e3b750_wrap_pyop2_kernel_prolong       4 0.0 6.0666e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b2176e6490_wrap_pyop2_kernel_prolong       4 0.0 7.9949e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b2179bf410_wrap_pyop2_kernel_prolong       4 0.0 6.0608e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e6f5e6a390_wrap_pyop2_kernel_prolong       4 0.0 7.9973e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e6f5e69310_wrap_pyop2_kernel_prolong       4 0.0 6.9312e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497952cd6d0_wrap_pyop2_kernel_prolong       4 0.0 8.0317e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149795441910_wrap_pyop2_kernel_prolong       4 0.0 6.8784e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e3c7f65f90_wrap_pyop2_kernel_prolong       4 0.0 8.0179e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e3c7f860d0_wrap_pyop2_kernel_prolong       4 0.0 4.5473e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d682a7e650_wrap_pyop2_kernel_prolong       4 0.0 8.0761e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d682a7e050_wrap_pyop2_kernel_prolong       4 0.0 6.3024e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1552091382d0_wrap_pyop2_kernel_prolong       4 0.0 7.9917e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15520913ac90_wrap_pyop2_kernel_prolong       4 0.0 5.9594e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cbee352590_wrap_pyop2_kernel_prolong       4 0.0 7.9955e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cbee5aa590_wrap_pyop2_kernel_prolong       4 0.0 6.8883e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491f40f39d0_wrap_pyop2_kernel_prolong       4 0.0 7.9941e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491f40f3cd0_wrap_pyop2_kernel_prolong       4 0.0 6.6637e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145dc97717d0_wrap_pyop2_kernel_prolong       4 0.0 8.0367e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145dca0f5890_wrap_pyop2_kernel_prolong       4 0.0 7.1344e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1546b8173e50_wrap_pyop2_kernel_prolong       4 0.0 7.9957e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1546b8170090_wrap_pyop2_kernel_prolong       4 0.0 6.6145e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1472af80bb50_wrap_pyop2_kernel_prolong       4 0.0 7.9930e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1472af809a50_wrap_pyop2_kernel_prolong       4 0.0 6.2704e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1541e9223250_wrap_pyop2_kernel_prolong       4 0.0 8.0608e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1541e9382fd0_wrap_pyop2_kernel_prolong       4 0.0 6.2977e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145994b14310_wrap_pyop2_kernel_prolong       4 0.0 7.9930e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145994126610_wrap_pyop2_kernel_prolong       4 0.0 5.7803e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1471ed91ae50_wrap_pyop2_kernel_prolong       4 0.0 8.0028e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1471ed919a90_wrap_pyop2_kernel_prolong       4 0.0 6.2499e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ca6102710_wrap_pyop2_kernel_prolong       4 0.0 8.0798e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ca57b6290_wrap_pyop2_kernel_prolong       4 0.0 5.6423e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1474f8cf7890_wrap_pyop2_kernel_prolong       4 0.0 8.0814e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1474f8aea550_wrap_pyop2_kernel_prolong       4 0.0 6.4928e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149af80fdc10_wrap_pyop2_kernel_prolong       4 0.0 7.9863e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149af8129a50_wrap_pyop2_kernel_prolong       4 0.0 4.7007e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ba3c5535d0_wrap_pyop2_kernel_prolong       4 0.0 8.0194e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ba378d7c90_wrap_pyop2_kernel_prolong       4 0.0 5.7478e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e8533e6d0_wrap_pyop2_kernel_prolong       4 0.0 7.9905e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e8552fdd0_wrap_pyop2_kernel_prolong       4 0.0 6.0516e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14571193a410_wrap_pyop2_kernel_prolong       4 0.0 8.0247e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1457115d3810_wrap_pyop2_kernel_prolong       4 0.0 5.2146e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154d75c2a710_wrap_pyop2_kernel_prolong       4 0.0 7.9972e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154d75ad5090_wrap_pyop2_kernel_prolong       4 0.0 6.4147e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146541ccf6d0_wrap_pyop2_kernel_prolong       4 0.0 8.0893e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146541ccd5d0_wrap_pyop2_kernel_prolong       4 0.0 7.6189e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15514e1d1110_wrap_pyop2_kernel_prolong       4 0.0 7.9914e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15514e1fd7d0_wrap_pyop2_kernel_prolong       4 0.0 5.7412e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155156acb650_wrap_pyop2_kernel_prolong       4 0.0 8.0095e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1551575f9150_wrap_pyop2_kernel_prolong       4 0.0 6.0505e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153e365d9bd0_wrap_pyop2_kernel_prolong       4 0.0 7.9945e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153e365d9610_wrap_pyop2_kernel_prolong       4 0.0 6.8836e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf41efc550_wrap_pyop2_kernel_prolong       4 0.0 7.9972e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf417129d0_wrap_pyop2_kernel_prolong       4 0.0 6.5767e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eeafbb1b50_wrap_pyop2_kernel_prolong       4 0.0 8.0078e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eeafad37d0_wrap_pyop2_kernel_prolong       4 0.0 6.0740e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148ea5bc6890_wrap_pyop2_kernel_prolong       4 0.0 8.0397e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148ea5bc5f50_wrap_pyop2_kernel_prolong       4 0.0 6.8869e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eac7955b10_wrap_pyop2_kernel_prolong       4 0.0 7.9996e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eac78ed990_wrap_pyop2_kernel_prolong       4 0.0 6.7021e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cfdd538e50_wrap_pyop2_kernel_prolong       4 0.0 8.0354e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cfdd4265d0_wrap_pyop2_kernel_prolong       4 0.0 5.6195e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e9cdb8910_wrap_pyop2_kernel_prolong       4 0.0 8.0722e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e9cde9a50_wrap_pyop2_kernel_prolong       4 0.0 6.4374e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151cb794dad0_wrap_pyop2_kernel_prolong       4 0.0 7.9982e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151cb794d610_wrap_pyop2_kernel_prolong       4 0.0 7.3125e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ecbfd1e50_wrap_pyop2_kernel_prolong       4 0.0 8.0656e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ecbeb3110_wrap_pyop2_kernel_prolong       4 0.0 6.2215e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c586d47610_wrap_pyop2_kernel_prolong       4 0.0 8.0678e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c586e84d10_wrap_pyop2_kernel_prolong       4 0.0 6.1660e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b6af012b10_wrap_pyop2_kernel_prolong       4 0.0 8.0118e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b6af25b150_wrap_pyop2_kernel_prolong       4 0.0 5.9844e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d43dc2f910_wrap_pyop2_kernel_prolong       4 0.0 7.9858e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d43dc2d8d0_wrap_pyop2_kernel_prolong       4 0.0 4.6333e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1523eaae69d0_wrap_pyop2_kernel_prolong       4 0.0 8.0106e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1523eaae6150_wrap_pyop2_kernel_prolong       4 0.0 5.8139e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b713b2b50_wrap_pyop2_kernel_prolong       4 0.0 8.0613e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b713db050_wrap_pyop2_kernel_prolong       4 0.0 6.7823e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d94f35fb90_wrap_pyop2_kernel_prolong       4 0.0 8.0189e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d94f35d310_wrap_pyop2_kernel_prolong       4 0.0 6.6929e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab34286a90_wrap_pyop2_kernel_prolong       4 0.0 8.0462e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab344ba950_wrap_pyop2_kernel_prolong       4 0.0 6.0503e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1509c330e6d0_wrap_pyop2_kernel_prolong       4 0.0 8.0772e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1509c3179610_wrap_pyop2_kernel_prolong       4 0.0 7.0461e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de07f6ee50_wrap_pyop2_kernel_prolong       4 0.0 8.0604e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de07689610_wrap_pyop2_kernel_prolong       4 0.0 7.4127e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148d1a5be390_wrap_pyop2_kernel_prolong       4 0.0 8.0344e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148d1a5bdcd0_wrap_pyop2_kernel_prolong       4 0.0 4.8934e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5e2690ed0_wrap_pyop2_kernel_prolong       4 0.0 8.0578e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5e26b5b10_wrap_pyop2_kernel_prolong       4 0.0 5.1494e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ec2e077750_wrap_pyop2_kernel_prolong       4 0.0 8.0617e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ec2de5e690_wrap_pyop2_kernel_prolong       4 0.0 6.0119e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c6f0da6bd0_wrap_pyop2_kernel_prolong       4 0.0 8.0587e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c6f0da4d50_wrap_pyop2_kernel_prolong       4 0.0 5.6243e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b410937850_wrap_pyop2_kernel_prolong       4 0.0 8.0556e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b40b4dce90_wrap_pyop2_kernel_prolong       4 0.0 5.6122e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1518dec9fa10_wrap_pyop2_kernel_prolong       4 0.0 8.0600e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1518dec9d610_wrap_pyop2_kernel_prolong       4 0.0 6.3469e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155090e3f650_wrap_pyop2_kernel_prolong       4 0.0 8.0528e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155090e61910_wrap_pyop2_kernel_prolong       4 0.0 4.6234e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15319b7bed50_wrap_pyop2_kernel_prolong       4 0.0 8.0603e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15319b7c4bd0_wrap_pyop2_kernel_prolong       4 0.0 5.7922e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa70aa2810_wrap_pyop2_kernel_prolong       4 0.0 8.0592e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa70aa0a10_wrap_pyop2_kernel_prolong       4 0.0 5.3956e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d97217490_wrap_pyop2_kernel_prolong       4 0.0 8.0556e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d96fe3dd0_wrap_pyop2_kernel_prolong       4 0.0 4.7810e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e78d02310_wrap_pyop2_kernel_prolong       4 0.0 8.0609e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e78d41650_wrap_pyop2_kernel_prolong       4 0.0 6.1877e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa98892550_wrap_pyop2_kernel_prolong       4 0.0 8.0598e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa98891990_wrap_pyop2_kernel_prolong       4 0.0 5.9481e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f039c1c4d0_wrap_pyop2_kernel_prolong       4 0.0 8.0681e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f039c01c10_wrap_pyop2_kernel_prolong       4 0.0 7.1106e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd0fb6bcd0_wrap_pyop2_kernel_prolong       4 0.0 8.0416e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd0fb6e0d0_wrap_pyop2_kernel_prolong       4 0.0 5.3576e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1500ae5b5850_wrap_pyop2_kernel_prolong       4 0.0 8.0469e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1500ae79d690_wrap_pyop2_kernel_prolong       4 0.0 5.3091e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c2b39276d0_wrap_pyop2_kernel_prolong       4 0.0 8.0412e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c2b3b59350_wrap_pyop2_kernel_prolong       4 0.0 5.9906e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a236a507d0_wrap_pyop2_kernel_prolong       4 0.0 8.0399e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a236a52bd0_wrap_pyop2_kernel_prolong       4 0.0 6.2334e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f6c7d151d0_wrap_pyop2_kernel_prolong       4 0.0 8.0424e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f6c7d93850_wrap_pyop2_kernel_prolong       4 0.0 6.1845e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd7c102b50_wrap_pyop2_kernel_prolong       4 0.0 8.0438e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd77779990_wrap_pyop2_kernel_prolong       4 0.0 6.3875e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d50daabd90_wrap_pyop2_kernel_prolong       4 0.0 8.0414e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d50dbe9890_wrap_pyop2_kernel_prolong       4 0.0 6.2501e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149bcbce9950_wrap_pyop2_kernel_prolong       4 0.0 8.0466e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149bcbce9210_wrap_pyop2_kernel_prolong       4 0.0 5.1557e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146dfd93c7d0_wrap_pyop2_kernel_prolong       4 0.0 8.0555e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146dfd9e5790_wrap_pyop2_kernel_prolong       4 0.0 6.6157e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149920ed2350_wrap_pyop2_kernel_prolong       4 0.0 8.0385e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149920d5b950_wrap_pyop2_kernel_prolong       4 0.0 6.1861e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d54f0a9b50_wrap_pyop2_kernel_prolong       4 0.0 8.0671e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d54f0faad0_wrap_pyop2_kernel_prolong       4 0.0 7.3665e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a61b016ed0_wrap_pyop2_kernel_prolong       4 0.0 8.0476e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a61b035890_wrap_pyop2_kernel_prolong       4 0.0 6.4082e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b3b69e8450_wrap_pyop2_kernel_prolong       4 0.0 8.0471e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b3b6a49b50_wrap_pyop2_kernel_prolong       4 0.0 7.4987e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149395a5e590_wrap_pyop2_kernel_prolong       4 0.0 8.0484e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149395a5dd90_wrap_pyop2_kernel_prolong       4 0.0 5.6219e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154185cd7410_wrap_pyop2_kernel_prolong       4 0.0 8.0477e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154185d01d90_wrap_pyop2_kernel_prolong       4 0.0 5.3116e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15078b94dd90_wrap_pyop2_kernel_prolong       4 0.0 8.0528e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15078b957350_wrap_pyop2_kernel_prolong       4 0.0 7.2490e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152eb1d73090_wrap_pyop2_kernel_prolong       4 0.0 8.0515e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152eb1d72010_wrap_pyop2_kernel_prolong       4 0.0 6.2149e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bc41d3d250_wrap_pyop2_kernel_prolong       4 0.0 8.0516e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bc41b49ed0_wrap_pyop2_kernel_prolong       4 0.0 5.6097e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1527192922d0_wrap_pyop2_kernel_prolong       4 0.0 8.0474e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1527192926d0_wrap_pyop2_kernel_prolong       4 0.0 7.0933e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14648b210c10_wrap_pyop2_kernel_prolong       4 0.0 8.0594e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14648b4714d0_wrap_pyop2_kernel_prolong       4 0.0 5.7885e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ec5771a2d0_wrap_pyop2_kernel_prolong       4 0.0 8.0451e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ec57779910_wrap_pyop2_kernel_prolong       4 0.0 5.2475e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f8ca2dab10_wrap_pyop2_kernel_prolong       4 0.0 8.0394e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f8ca2da450_wrap_pyop2_kernel_prolong       4 0.0 5.4139e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153cab446b90_wrap_pyop2_kernel_prolong       4 0.0 8.0545e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153cab4444d0_wrap_pyop2_kernel_prolong       4 0.0 6.6499e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456090b2590_wrap_pyop2_kernel_prolong       4 0.0 8.0517e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456090b1e50_wrap_pyop2_kernel_prolong       4 0.0 6.3756e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b853fd2650_wrap_pyop2_kernel_prolong       4 0.0 8.0571e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b853f5fe10_wrap_pyop2_kernel_prolong       4 0.0 5.9451e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152f593e4a10_wrap_pyop2_kernel_prolong       4 0.0 8.0646e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152f58ba5e90_wrap_pyop2_kernel_prolong       4 0.0 7.3570e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1534aa90fd50_wrap_pyop2_kernel_prolong       4 0.0 8.0393e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1534aa1795d0_wrap_pyop2_kernel_prolong       4 0.0 4.9889e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145c09229490_wrap_pyop2_kernel_prolong       4 0.0 8.0486e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145c0921fc10_wrap_pyop2_kernel_prolong       4 0.0 5.3682e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e3c884a290_wrap_pyop2_kernel_prolong       4 0.0 8.0505e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e3c884aad0_wrap_pyop2_kernel_prolong       4 0.0 5.7667e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150ed911d490_wrap_pyop2_kernel_prolong       4 0.0 8.0596e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150ed874bb10_wrap_pyop2_kernel_prolong       4 0.0 6.7896e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1535102c1c10_wrap_pyop2_kernel_prolong       4 0.0 8.0494e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1535102c1010_wrap_pyop2_kernel_prolong       4 0.0 6.1228e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14767b35b9d0_wrap_pyop2_kernel_prolong       4 0.0 8.0488e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14767b29da50_wrap_pyop2_kernel_prolong       4 0.0 6.8207e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1462045fd7d0_wrap_pyop2_kernel_prolong       4 0.0 8.0473e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1462045e0390_wrap_pyop2_kernel_prolong       4 0.0 6.6130e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148015339dd0_wrap_pyop2_kernel_prolong       4 0.0 8.0517e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1480153952d0_wrap_pyop2_kernel_prolong       4 0.0 6.7012e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15025e6bdd50_wrap_pyop2_kernel_prolong       4 0.0 8.0563e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15025e6bd510_wrap_pyop2_kernel_prolong       4 0.0 7.3085e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152cd4efcbd0_wrap_pyop2_kernel_prolong       4 0.0 8.0609e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152cd510e750_wrap_pyop2_kernel_prolong       4 0.0 6.5990e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14873c5f8210_wrap_pyop2_kernel_prolong       4 0.0 8.0565e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14873c4c91d0_wrap_pyop2_kernel_prolong       4 0.0 6.1697e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1511748a2bd0_wrap_pyop2_kernel_prolong       4 0.0 8.0601e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151174af1690_wrap_pyop2_kernel_prolong       4 0.0 6.6114e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1547866a4990_wrap_pyop2_kernel_prolong       4 0.0 8.0600e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15478665d810_wrap_pyop2_kernel_prolong       4 0.0 7.0057e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14954a449410_wrap_pyop2_kernel_prolong       4 0.0 8.0335e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14954a44b510_wrap_pyop2_kernel_prolong       4 0.0 4.9696e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf436dd790_wrap_pyop2_kernel_prolong       4 0.0 8.0386e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf438d0850_wrap_pyop2_kernel_prolong       4 0.0 5.5694e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a2aa5bd50_wrap_pyop2_kernel_prolong       4 0.0 8.0450e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a2ac61150_wrap_pyop2_kernel_prolong       4 0.0 5.6034e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153adc60b610_wrap_pyop2_kernel_prolong       4 0.0 8.0575e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153adc829f50_wrap_pyop2_kernel_prolong       4 0.0 5.4928e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498023b2bd0_wrap_pyop2_kernel_prolong       4 0.0 8.0383e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498023b2350_wrap_pyop2_kernel_prolong       4 0.0 6.3145e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1462b1ffe6d0_wrap_pyop2_kernel_prolong       4 0.0 8.0492e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1462b1fffd10_wrap_pyop2_kernel_prolong       4 0.0 6.1028e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc00c23290_wrap_pyop2_kernel_prolong       4 0.0 8.0414e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc00e3b750_wrap_pyop2_kernel_prolong       4 0.0 5.7763e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef32a52090_wrap_pyop2_kernel_prolong       4 0.0 8.0399e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef32a12450_wrap_pyop2_kernel_prolong       4 0.0 5.2095e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145ee12fba50_wrap_pyop2_kernel_prolong       4 0.0 8.0478e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145ee12fcf50_wrap_pyop2_kernel_prolong       4 0.0 7.1008e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1483fe7ca550_wrap_pyop2_kernel_prolong       4 0.0 8.0499e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1483fe821c50_wrap_pyop2_kernel_prolong       4 0.0 5.6057e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b85dc98750_wrap_pyop2_kernel_prolong       4 0.0 8.0551e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b85d24a890_wrap_pyop2_kernel_prolong       4 0.0 6.1954e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148ab0bd3010_wrap_pyop2_kernel_prolong       4 0.0 8.0370e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148ab0d82dd0_wrap_pyop2_kernel_prolong       4 0.0 6.1740e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150d37a39010_wrap_pyop2_kernel_prolong       4 0.0 8.0474e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150d37a38810_wrap_pyop2_kernel_prolong       4 0.0 7.2746e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc7578a450_wrap_pyop2_kernel_prolong       4 0.0 8.0544e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc75789e50_wrap_pyop2_kernel_prolong       4 0.0 5.9481e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dcbcd4a890_wrap_pyop2_kernel_prolong       4 0.0 8.0544e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dcbce70c10_wrap_pyop2_kernel_prolong       4 0.0 5.5712e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b32a9c550_wrap_pyop2_kernel_prolong       4 0.0 8.0496e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b328b9490_wrap_pyop2_kernel_prolong       4 0.0 6.7721e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f2b60e5150_wrap_pyop2_kernel_prolong       4 0.0 8.0532e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f2b6084090_wrap_pyop2_kernel_prolong       4 0.0 5.4877e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a356f1b90_wrap_pyop2_kernel_prolong       4 0.0 8.0579e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a3573d7d0_wrap_pyop2_kernel_prolong       4 0.0 5.7327e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e23ae75bd0_wrap_pyop2_kernel_prolong       4 0.0 8.0585e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e23ae83f50_wrap_pyop2_kernel_prolong       4 0.0 7.0369e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad10d88050_wrap_pyop2_kernel_prolong       4 0.0 8.0442e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad10d890d0_wrap_pyop2_kernel_prolong       4 0.0 5.9238e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1526d3a5ead0_wrap_pyop2_kernel_prolong       4 0.0 8.0406e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1526d3a5cd50_wrap_pyop2_kernel_prolong       4 0.0 6.7776e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522f4de4d10_wrap_pyop2_kernel_prolong       4 0.0 8.0589e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522f4de7550_wrap_pyop2_kernel_prolong       4 0.0 6.2445e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1546581f8e50_wrap_pyop2_kernel_prolong       4 0.0 8.0463e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1546584594d0_wrap_pyop2_kernel_prolong       4 0.0 6.2216e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b8252dc150_wrap_pyop2_kernel_prolong       4 0.0 8.0511e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b824acc150_wrap_pyop2_kernel_prolong       4 0.0 6.8508e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1494f2b2d990_wrap_pyop2_kernel_prolong       4 0.0 8.0603e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1494f2d5d4d0_wrap_pyop2_kernel_prolong       4 0.0 6.7698e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a841ac3c50_wrap_pyop2_kernel_prolong       4 0.0 8.0668e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a841ac0d50_wrap_pyop2_kernel_prolong       4 0.0 7.3047e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b4a697d5d0_wrap_pyop2_kernel_prolong       4 0.0 8.0576e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b4a697d010_wrap_pyop2_kernel_prolong       4 0.0 5.6751e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14afa64b0890_wrap_pyop2_kernel_prolong       4 0.0 8.0468e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14afa66e3c50_wrap_pyop2_kernel_prolong       4 0.0 4.5004e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cbc8ddd6d0_wrap_pyop2_kernel_prolong       4 0.0 8.0455e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cbc8ddf250_wrap_pyop2_kernel_prolong       4 0.0 5.4396e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fae9522110_wrap_pyop2_kernel_prolong       4 0.0 8.0478e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fae9521b90_wrap_pyop2_kernel_prolong       4 0.0 6.1858e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f255487d0_wrap_pyop2_kernel_prolong       4 0.0 8.0489e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f25548210_wrap_pyop2_kernel_prolong       4 0.0 6.3847e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cfca2e8750_wrap_pyop2_kernel_prolong       4 0.0 8.0599e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cfca32e810_wrap_pyop2_kernel_prolong       4 0.0 7.0233e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148d20666dd0_wrap_pyop2_kernel_prolong       4 0.0 8.0328e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148d1bd28ad0_wrap_pyop2_kernel_prolong       4 0.0 5.0549e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c3b757e250_wrap_pyop2_kernel_prolong       4 0.0 8.0449e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c3b757e390_wrap_pyop2_kernel_prolong       4 0.0 6.3242e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145bfda7a710_wrap_pyop2_kernel_prolong       4 0.0 8.0477e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145bfce012d0_wrap_pyop2_kernel_prolong       4 0.0 7.5558e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152f4b35e150_wrap_pyop2_kernel_prolong       4 0.0 8.0486e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152f4b35d6d0_wrap_pyop2_kernel_prolong       4 0.0 6.8427e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149670b5e450_wrap_pyop2_kernel_prolong       4 0.0 8.0394e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149670b8a250_wrap_pyop2_kernel_prolong       4 0.0 5.8652e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1523d94d4b90_wrap_pyop2_kernel_prolong       4 0.0 8.0549e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1523d94a9d10_wrap_pyop2_kernel_prolong       4 0.0 6.1086e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f29d2608d0_wrap_pyop2_kernel_prolong       4 0.0 8.0447e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f29d049810_wrap_pyop2_kernel_prolong       4 0.0 6.2024e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1550233aa410_wrap_pyop2_kernel_prolong       4 0.0 8.0502e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1550233a22d0_wrap_pyop2_kernel_prolong       4 0.0 5.1824e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1475f5533bd0_wrap_pyop2_kernel_prolong       4 0.0 8.0482e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1475f576a350_wrap_pyop2_kernel_prolong       4 0.0 7.0455e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1540c7023490_wrap_pyop2_kernel_prolong       4 0.0 8.0533e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1540c71a20d0_wrap_pyop2_kernel_prolong       4 0.0 6.6718e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15462e83ec90_wrap_pyop2_kernel_prolong       4 0.0 8.0457e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15462e87fc10_wrap_pyop2_kernel_prolong       4 0.0 5.9427e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154223839fd0_wrap_pyop2_kernel_prolong       4 0.0 8.0588e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1542238522d0_wrap_pyop2_kernel_prolong       4 0.0 5.9500e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145965acd510_wrap_pyop2_kernel_prolong       4 0.0 8.0526e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145965146250_wrap_pyop2_kernel_prolong       4 0.0 7.0155e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14648e4cc490_wrap_pyop2_kernel_prolong       4 0.0 8.0515e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14648e30e010_wrap_pyop2_kernel_prolong       4 0.0 5.1829e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1518ee23b610_wrap_pyop2_kernel_prolong       4 0.0 8.0567e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1518ee238950_wrap_pyop2_kernel_prolong       4 0.0 6.3723e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153d842dab90_wrap_pyop2_kernel_prolong       4 0.0 8.0528e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153d81c7e410_wrap_pyop2_kernel_prolong       4 0.0 6.8340e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146bfb2bd0d0_wrap_pyop2_kernel_prolong       4 0.0 8.0355e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146bfb2bf050_wrap_pyop2_kernel_prolong       4 0.0 5.5755e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148fbea63e50_wrap_pyop2_kernel_prolong       4 0.0 8.0543e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148fbe915c90_wrap_pyop2_kernel_prolong       4 0.0 7.3552e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b309870890_wrap_pyop2_kernel_prolong       4 0.0 8.0614e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b309624450_wrap_pyop2_kernel_prolong       4 0.0 6.8112e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a7e5f99190_wrap_pyop2_kernel_prolong       4 0.0 8.0482e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a7e5f7a6d0_wrap_pyop2_kernel_prolong       4 0.0 7.8867e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff9085b6d0_wrap_pyop2_kernel_prolong       4 0.0 8.1825e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff90873490_wrap_pyop2_kernel_prolong       4 0.0 4.8461e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a60e332810_wrap_pyop2_kernel_prolong       4 0.0 8.1824e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a60e331c90_wrap_pyop2_kernel_prolong       4 0.0 5.6136e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e94cabc710_wrap_pyop2_kernel_prolong       4 0.0 8.1810e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e94cabee10_wrap_pyop2_kernel_prolong       4 0.0 5.6052e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1543f08680d0_wrap_pyop2_kernel_prolong       4 0.0 8.1773e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1543f08dea90_wrap_pyop2_kernel_prolong       4 0.0 4.8365e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1464493ffe10_wrap_pyop2_kernel_prolong       4 0.0 8.1801e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146449435a90_wrap_pyop2_kernel_prolong       4 0.0 5.5723e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145afff7f8d0_wrap_pyop2_kernel_prolong       4 0.0 8.1884e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145afffd8610_wrap_pyop2_kernel_prolong       4 0.0 7.0860e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148047fa1d10_wrap_pyop2_kernel_prolong       4 0.0 8.1824e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148047701d90_wrap_pyop2_kernel_prolong       4 0.0 5.8637e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145518ddd250_wrap_pyop2_kernel_prolong       4 0.0 8.1837e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145518ddfad0_wrap_pyop2_kernel_prolong       4 0.0 5.8246e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cefcc42110_wrap_pyop2_kernel_prolong       4 0.0 8.1832e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cefcc41290_wrap_pyop2_kernel_prolong       4 0.0 6.6703e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a63b4ed890_wrap_pyop2_kernel_prolong       4 0.0 8.1814e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a63b259dd0_wrap_pyop2_kernel_prolong       4 0.0 5.8106e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478693e2010_wrap_pyop2_kernel_prolong       4 0.0 8.1849e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14786bbf22d0_wrap_pyop2_kernel_prolong       4 0.0 6.2054e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eceaf76090_wrap_pyop2_kernel_prolong       4 0.0 8.1883e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eceae2e290_wrap_pyop2_kernel_prolong       4 0.0 6.9297e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d255e92710_wrap_pyop2_kernel_prolong       4 0.0 8.1883e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d255e98b50_wrap_pyop2_kernel_prolong       4 0.0 6.7476e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b25ca04c90_wrap_pyop2_kernel_prolong       4 0.0 8.1737e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b25c9d1750_wrap_pyop2_kernel_prolong       4 0.0 4.8302e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1481c65f5c10_wrap_pyop2_kernel_prolong       4 0.0 8.1823e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1481c65f5350_wrap_pyop2_kernel_prolong       4 0.0 6.0033e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f98e4ede90_wrap_pyop2_kernel_prolong       4 0.0 8.1835e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f98e4ee2d0_wrap_pyop2_kernel_prolong       4 0.0 5.8079e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1454e61ba850_wrap_pyop2_kernel_prolong       4 0.0 8.1826e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1454e4e6d8d0_wrap_pyop2_kernel_prolong       4 0.0 6.2009e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491e209df50_wrap_pyop2_kernel_prolong       4 0.0 8.1811e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491e209d590_wrap_pyop2_kernel_prolong       4 0.0 5.4547e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1512159ba550_wrap_pyop2_kernel_prolong       4 0.0 8.1855e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151214dbf5d0_wrap_pyop2_kernel_prolong       4 0.0 7.5873e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1546206c4e50_wrap_pyop2_kernel_prolong       4 0.0 8.1765e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15461fd78910_wrap_pyop2_kernel_prolong       4 0.0 6.7259e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522d90a4d10_wrap_pyop2_kernel_prolong       4 0.0 8.1782e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522d907a510_wrap_pyop2_kernel_prolong       4 0.0 5.4279e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458c0a17f50_wrap_pyop2_kernel_prolong       4 0.0 8.1755e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458c0a25a10_wrap_pyop2_kernel_prolong       4 0.0 6.1457e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ea2a907a50_wrap_pyop2_kernel_prolong       4 0.0 8.1783e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ea2a907ad0_wrap_pyop2_kernel_prolong       4 0.0 6.7088e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cb7ea92b10_wrap_pyop2_kernel_prolong       4 0.0 8.1766e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cb7eaa9850_wrap_pyop2_kernel_prolong       4 0.0 6.6976e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d267d59b10_wrap_pyop2_kernel_prolong       4 0.0 8.1843e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d267d59210_wrap_pyop2_kernel_prolong       4 0.0 6.6257e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cb362fdf50_wrap_pyop2_kernel_prolong       4 0.0 8.1852e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cb362fd990_wrap_pyop2_kernel_prolong       4 0.0 7.6079e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1508a57600d0_wrap_pyop2_kernel_prolong       4 0.0 8.1677e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1508a56d8fd0_wrap_pyop2_kernel_prolong       4 0.0 5.2284e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1503440d3bd0_wrap_pyop2_kernel_prolong       4 0.0 8.1593e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15034407b410_wrap_pyop2_kernel_prolong       4 0.0 5.2268e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1494002e7bd0_wrap_pyop2_kernel_prolong       4 0.0 8.1780e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149400383910_wrap_pyop2_kernel_prolong       4 0.0 6.3841e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153a65c17290_wrap_pyop2_kernel_prolong       4 0.0 8.1709e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153a65a6b590_wrap_pyop2_kernel_prolong       4 0.0 5.0935e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14646f7d9290_wrap_pyop2_kernel_prolong       4 0.0 8.1736e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14646f54e9d0_wrap_pyop2_kernel_prolong       4 0.0 5.8704e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151d64f1f4d0_wrap_pyop2_kernel_prolong       4 0.0 8.1831e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151d64f4e850_wrap_pyop2_kernel_prolong       4 0.0 7.2574e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a568a8bbd0_wrap_pyop2_kernel_prolong       4 0.0 8.1779e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a563f7fd10_wrap_pyop2_kernel_prolong       4 0.0 5.5964e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e64e75e550_wrap_pyop2_kernel_prolong       4 0.0 8.1752e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e64da9fcd0_wrap_pyop2_kernel_prolong       4 0.0 6.0544e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd7f29f650_wrap_pyop2_kernel_prolong       4 0.0 8.1820e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd7f27d810_wrap_pyop2_kernel_prolong       4 0.0 6.1755e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14800dc3d910_wrap_pyop2_kernel_prolong       4 0.0 8.1590e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14800dc3cf50_wrap_pyop2_kernel_prolong       4 0.0 5.4375e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14809ce51f50_wrap_pyop2_kernel_prolong       4 0.0 8.1892e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14809ce7de10_wrap_pyop2_kernel_prolong       4 0.0 6.3999e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1479a2f5de90_wrap_pyop2_kernel_prolong       4 0.0 8.1909e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1479a2f5f3d0_wrap_pyop2_kernel_prolong       4 0.0 7.6439e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15109c1ef8d0_wrap_pyop2_kernel_prolong       4 0.0 8.1833e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15109c1ed5d0_wrap_pyop2_kernel_prolong       4 0.0 7.0474e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fda5075a10_wrap_pyop2_kernel_prolong       4 0.0 8.1721e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fda52b4890_wrap_pyop2_kernel_prolong       4 0.0 5.2766e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1466ddd1a4d0_wrap_pyop2_kernel_prolong       4 0.0 8.1778e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1466dd3bb250_wrap_pyop2_kernel_prolong       4 0.0 5.8522e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14db06b96050_wrap_pyop2_kernel_prolong       4 0.0 8.1743e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14db0624ee10_wrap_pyop2_kernel_prolong       4 0.0 6.0607e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145aaab3bc10_wrap_pyop2_kernel_prolong       4 0.0 8.1771e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145aaa197ed0_wrap_pyop2_kernel_prolong       4 0.0 5.7816e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e6ec37f10_wrap_pyop2_kernel_prolong       4 0.0 8.1756e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e6ec35990_wrap_pyop2_kernel_prolong       4 0.0 5.1816e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e292329c10_wrap_pyop2_kernel_prolong       4 0.0 8.1779e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e29257d450_wrap_pyop2_kernel_prolong       4 0.0 5.8525e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1549efaa4950_wrap_pyop2_kernel_prolong       4 0.0 8.1819e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1549efb819d0_wrap_pyop2_kernel_prolong       4 0.0 5.6877e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1554068a0b90_wrap_pyop2_kernel_prolong       4 0.0 8.1755e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15540689bb90_wrap_pyop2_kernel_prolong       4 0.0 6.2490e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147390160290_wrap_pyop2_kernel_prolong       4 0.0 8.1836e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147390188f50_wrap_pyop2_kernel_prolong       4 0.0 6.9421e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd517ee050_wrap_pyop2_kernel_prolong       4 0.0 8.1800e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd517ef310_wrap_pyop2_kernel_prolong       4 0.0 6.7279e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c981ae8710_wrap_pyop2_kernel_prolong       4 0.0 8.1734e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c9811d8510_wrap_pyop2_kernel_prolong       4 0.0 6.4390e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b9e207810_wrap_pyop2_kernel_prolong       4 0.0 8.1795e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b9e083c10_wrap_pyop2_kernel_prolong       4 0.0 6.1834e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1496ecc6f190_wrap_pyop2_kernel_prolong       4 0.0 8.1935e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1496ecc81590_wrap_pyop2_kernel_prolong       4 0.0 7.7990e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d97106650_wrap_pyop2_kernel_prolong       4 0.0 8.1591e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d97106a90_wrap_pyop2_kernel_prolong       4 0.0 4.8037e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c41cdfa950_wrap_pyop2_kernel_prolong       4 0.0 8.1700e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c41cdfbb90_wrap_pyop2_kernel_prolong       4 0.0 5.7903e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15160edf86d0_wrap_pyop2_kernel_prolong       4 0.0 8.1661e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15160edd24d0_wrap_pyop2_kernel_prolong       4 0.0 5.6433e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145cafffdcd0_wrap_pyop2_kernel_prolong       4 0.0 8.1737e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145cafffe910_wrap_pyop2_kernel_prolong       4 0.0 5.8412e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d14402850_wrap_pyop2_kernel_prolong       4 0.0 8.1717e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d14402110_wrap_pyop2_kernel_prolong       4 0.0 6.1350e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f3c4b295d0_wrap_pyop2_kernel_prolong       4 0.0 8.1668e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f3c4b69a50_wrap_pyop2_kernel_prolong       4 0.0 5.5205e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f6fd5e2750_wrap_pyop2_kernel_prolong       4 0.0 8.1696e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f6fd80cbd0_wrap_pyop2_kernel_prolong       4 0.0 5.7536e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15305bb563d0_wrap_pyop2_kernel_prolong       4 0.0 8.1661e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15305bba5f50_wrap_pyop2_kernel_prolong       4 0.0 5.5822e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a10faf61d0_wrap_pyop2_kernel_prolong       4 0.0 8.1690e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a10fabbbd0_wrap_pyop2_kernel_prolong       4 0.0 7.3592e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c1a2216bd0_wrap_pyop2_kernel_prolong       4 0.0 8.1604e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c1a17de990_wrap_pyop2_kernel_prolong       4 0.0 5.4601e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145f03f27fd0_wrap_pyop2_kernel_prolong       4 0.0 8.1697e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145f03f26790_wrap_pyop2_kernel_prolong       4 0.0 6.7051e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14efa00c7490_wrap_pyop2_kernel_prolong       4 0.0 8.1666e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14efa0077e90_wrap_pyop2_kernel_prolong       4 0.0 6.4184e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ddc3955bd0_wrap_pyop2_kernel_prolong       4 0.0 8.1614e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ddc2fc5a90_wrap_pyop2_kernel_prolong       4 0.0 5.6935e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149feff7b0d0_wrap_pyop2_kernel_prolong       4 0.0 8.1606e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149fef74b810_wrap_pyop2_kernel_prolong       4 0.0 5.5132e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b89cd8990_wrap_pyop2_kernel_prolong       4 0.0 8.1609e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b89ac5610_wrap_pyop2_kernel_prolong       4 0.0 4.5066e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14787a9d2110_wrap_pyop2_kernel_prolong       4 0.0 8.1662e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14787a9d0150_wrap_pyop2_kernel_prolong       4 0.0 6.4425e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fcedf2de90_wrap_pyop2_kernel_prolong       4 0.0 8.1614e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fcedf2f6d0_wrap_pyop2_kernel_prolong       4 0.0 5.3351e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153ae0fd7150_wrap_pyop2_kernel_prolong       4 0.0 8.1640e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153ae0d94e50_wrap_pyop2_kernel_prolong       4 0.0 5.8305e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c5528edbd0_wrap_pyop2_kernel_prolong       4 0.0 8.1686e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c5528ef910_wrap_pyop2_kernel_prolong       4 0.0 6.9221e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a77f54410_wrap_pyop2_kernel_prolong       4 0.0 8.1596e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a77f57250_wrap_pyop2_kernel_prolong       4 0.0 4.8836e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15183d376290_wrap_pyop2_kernel_prolong       4 0.0 8.1643e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15183d3758d0_wrap_pyop2_kernel_prolong       4 0.0 6.2033e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d742221a90_wrap_pyop2_kernel_prolong       4 0.0 8.1664e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d7422ba750_wrap_pyop2_kernel_prolong       4 0.0 6.0197e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456ab579910_wrap_pyop2_kernel_prolong       4 0.0 8.1665e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456ab578a90_wrap_pyop2_kernel_prolong       4 0.0 5.9631e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f9bbb5f990_wrap_pyop2_kernel_prolong       4 0.0 8.1724e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f9bbb5d810_wrap_pyop2_kernel_prolong       4 0.0 7.0796e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458c2dffb10_wrap_pyop2_kernel_prolong       4 0.0 8.1682e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458c2dff990_wrap_pyop2_kernel_prolong       4 0.0 6.2129e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149855189bd0_wrap_pyop2_kernel_prolong       4 0.0 8.1762e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14983a842210_wrap_pyop2_kernel_prolong       4 0.0 7.3322e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd2d2675d0_wrap_pyop2_kernel_prolong       4 0.0 8.1703e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd2d46ced0_wrap_pyop2_kernel_prolong       4 0.0 4.9991e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a6b61a8490_wrap_pyop2_kernel_prolong       4 0.0 8.1718e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a6b61fd6d0_wrap_pyop2_kernel_prolong       4 0.0 5.1971e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146745062090_wrap_pyop2_kernel_prolong       4 0.0 8.1631e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1467443e5e50_wrap_pyop2_kernel_prolong       4 0.0 5.5252e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a480ed110_wrap_pyop2_kernel_prolong       4 0.0 8.1609e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a48115fd0_wrap_pyop2_kernel_prolong       4 0.0 5.9447e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15529cd57810_wrap_pyop2_kernel_prolong       4 0.0 8.1705e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15529cd558d0_wrap_pyop2_kernel_prolong       4 0.0 6.2650e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bc5ffdfa50_wrap_pyop2_kernel_prolong       4 0.0 8.1698e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bc5ece4f90_wrap_pyop2_kernel_prolong       4 0.0 6.9059e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1471c651e650_wrap_pyop2_kernel_prolong       4 0.0 8.1721e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1471c651e1d0_wrap_pyop2_kernel_prolong       4 0.0 6.0256e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150437cf5c50_wrap_pyop2_kernel_prolong       4 0.0 8.1774e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150437d0ed10_wrap_pyop2_kernel_prolong       4 0.0 6.8759e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148480ec56d0_wrap_pyop2_kernel_prolong       4 0.0 8.1677e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148480cf42d0_wrap_pyop2_kernel_prolong       4 0.0 6.4616e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15491bbf9990_wrap_pyop2_kernel_prolong       4 0.0 8.1671e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15491b213b50_wrap_pyop2_kernel_prolong       4 0.0 6.0005e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1517514ff5d0_wrap_pyop2_kernel_prolong       4 0.0 8.1822e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1517514fe9d0_wrap_pyop2_kernel_prolong       4 0.0 6.5452e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154bcd9ac8d0_wrap_pyop2_kernel_prolong       4 0.0 8.1782e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154bcd9aee10_wrap_pyop2_kernel_prolong       4 0.0 6.8911e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145adfd8a050_wrap_pyop2_kernel_prolong       4 0.0 8.1886e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145adfd88250_wrap_pyop2_kernel_prolong       4 0.0 7.2766e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bacf0e8a10_wrap_pyop2_kernel_prolong       4 0.0 8.1719e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bacefbac10_wrap_pyop2_kernel_prolong       4 0.0 5.6181e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153d161cc790_wrap_pyop2_kernel_prolong       4 0.0 8.1647e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153d161cded0_wrap_pyop2_kernel_prolong       4 0.0 5.4172e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1457be3d9e10_wrap_pyop2_kernel_prolong       4 0.0 8.1765e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1457be2d6a50_wrap_pyop2_kernel_prolong       4 0.0 7.6259e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147192bfe150_wrap_pyop2_kernel_prolong       4 0.0 8.1770e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147192bfda10_wrap_pyop2_kernel_prolong       4 0.0 6.7749e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c6185ed3d0_wrap_pyop2_kernel_prolong       4 0.0 8.1602e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c6188579d0_wrap_pyop2_kernel_prolong       4 0.0 4.6808e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1526ccfb7d50_wrap_pyop2_kernel_prolong       4 0.0 8.1760e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1526ccfb5090_wrap_pyop2_kernel_prolong       4 0.0 7.0785e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1545787cf9d0_wrap_pyop2_kernel_prolong       4 0.0 8.1704e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1545787cdb90_wrap_pyop2_kernel_prolong       4 0.0 6.2148e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d7f05c26d0_wrap_pyop2_kernel_prolong       4 0.0 8.1748e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d7f05c1550_wrap_pyop2_kernel_prolong       4 0.0 7.2393e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a1c1202710_wrap_pyop2_kernel_prolong       4 0.0 8.1729e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a1c1234f90_wrap_pyop2_kernel_prolong       4 0.0 7.3214e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15395b028c10_wrap_pyop2_kernel_prolong       4 0.0 8.1692e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15395b083850_wrap_pyop2_kernel_prolong       4 0.0 5.3714e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f07dfab7d0_wrap_pyop2_kernel_prolong       4 0.0 8.1815e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f07dfca450_wrap_pyop2_kernel_prolong       4 0.0 7.3917e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1520f0cfa850_wrap_pyop2_kernel_prolong       4 0.0 8.1745e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1520f0bb2410_wrap_pyop2_kernel_prolong       4 0.0 7.3405e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145ca8b15210_wrap_pyop2_kernel_prolong       4 0.0 8.1767e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145ca8a3a490_wrap_pyop2_kernel_prolong       4 0.0 7.7919e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1472be8bf750_wrap_pyop2_kernel_prolong       4 0.0 8.0700e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1472be8bc410_wrap_pyop2_kernel_prolong       4 0.0 5.4198e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e9b5410c50_wrap_pyop2_kernel_prolong       4 0.0 8.0742e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e9b5412790_wrap_pyop2_kernel_prolong       4 0.0 5.6020e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147fb20ee9d0_wrap_pyop2_kernel_prolong       4 0.0 8.0478e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147fb20ee290_wrap_pyop2_kernel_prolong       4 0.0 6.1945e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd05fa5010_wrap_pyop2_kernel_prolong       4 0.0 8.0475e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd05f62690_wrap_pyop2_kernel_prolong       4 0.0 5.6271e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb03660d90_wrap_pyop2_kernel_prolong       4 0.0 8.0403e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb03660690_wrap_pyop2_kernel_prolong       4 0.0 5.2947e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce2bb2d890_wrap_pyop2_kernel_prolong       4 0.0 8.0479e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce2bb2da50_wrap_pyop2_kernel_prolong       4 0.0 5.9459e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150264247c90_wrap_pyop2_kernel_prolong       4 0.0 8.0309e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1502642458d0_wrap_pyop2_kernel_prolong       4 0.0 4.6393e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac5943de10_wrap_pyop2_kernel_prolong       4 0.0 8.0579e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac593a6bd0_wrap_pyop2_kernel_prolong       4 0.0 5.4242e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15458ef58cd0_wrap_pyop2_kernel_prolong       4 0.0 8.0487e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15458ef5bd10_wrap_pyop2_kernel_prolong       4 0.0 5.7570e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150ed89c8ed0_wrap_pyop2_kernel_prolong       4 0.0 8.0484e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150ed8999a50_wrap_pyop2_kernel_prolong       4 0.0 5.6213e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c7b1a9a7d0_wrap_pyop2_kernel_prolong       4 0.0 8.0464e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c7b0decbd0_wrap_pyop2_kernel_prolong       4 0.0 5.8470e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa5f0d5c10_wrap_pyop2_kernel_prolong       4 0.0 8.0462e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa5ee9df10_wrap_pyop2_kernel_prolong       4 0.0 5.5198e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15437be0a750_wrap_pyop2_kernel_prolong       4 0.0 8.0542e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15437b56b5d0_wrap_pyop2_kernel_prolong       4 0.0 6.7847e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14feb8fd29d0_wrap_pyop2_kernel_prolong       4 0.0 8.0401e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14feb8fd1fd0_wrap_pyop2_kernel_prolong       4 0.0 5.5955e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1506aea4a410_wrap_pyop2_kernel_prolong       4 0.0 8.0364e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1506aea49f50_wrap_pyop2_kernel_prolong       4 0.0 5.5329e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da284b44d0_wrap_pyop2_kernel_prolong       4 0.0 8.0374e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da2394dad0_wrap_pyop2_kernel_prolong       4 0.0 4.8975e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e1534d6bd0_wrap_pyop2_kernel_prolong       4 0.0 8.0370e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e153426450_wrap_pyop2_kernel_prolong       4 0.0 5.2444e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d4dc9f7f90_wrap_pyop2_kernel_prolong       4 0.0 8.0340e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d4dca12210_wrap_pyop2_kernel_prolong       4 0.0 5.5827e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b37a49db90_wrap_pyop2_kernel_prolong       4 0.0 8.0556e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b379c5d010_wrap_pyop2_kernel_prolong       4 0.0 7.6516e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149542a55a90_wrap_pyop2_kernel_prolong       4 0.0 8.0371e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149542a545d0_wrap_pyop2_kernel_prolong       4 0.0 5.8487e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b351c9350_wrap_pyop2_kernel_prolong       4 0.0 8.0323e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b351a22d0_wrap_pyop2_kernel_prolong       4 0.0 5.7714e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497cacf3250_wrap_pyop2_kernel_prolong       4 0.0 8.0394e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497cacf3fd0_wrap_pyop2_kernel_prolong       4 0.0 7.4534e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f7cf67490_wrap_pyop2_kernel_prolong       4 0.0 8.0433e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f7cfb3b90_wrap_pyop2_kernel_prolong       4 0.0 6.9935e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150039f5dbd0_wrap_pyop2_kernel_prolong       4 0.0 8.0350e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150039fe7710_wrap_pyop2_kernel_prolong       4 0.0 6.6825e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e7ef92d390_wrap_pyop2_kernel_prolong       4 0.0 8.0486e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e7ef912310_wrap_pyop2_kernel_prolong       4 0.0 6.8452e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1518c19be410_wrap_pyop2_kernel_prolong       4 0.0 8.0399e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1518c19ef910_wrap_pyop2_kernel_prolong       4 0.0 7.1580e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522f20c66d0_wrap_pyop2_kernel_prolong       4 0.0 8.0314e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522f20c5e10_wrap_pyop2_kernel_prolong       4 0.0 5.6209e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1538b7b41e90_wrap_pyop2_kernel_prolong       4 0.0 8.0291e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1538b7b61190_wrap_pyop2_kernel_prolong       4 0.0 5.2712e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b36bcb950_wrap_pyop2_kernel_prolong       4 0.0 8.0535e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b36c4b850_wrap_pyop2_kernel_prolong       4 0.0 5.3108e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f88121b90_wrap_pyop2_kernel_prolong       4 0.0 8.0468e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f88120bd0_wrap_pyop2_kernel_prolong       4 0.0 6.4539e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1515f0da1310_wrap_pyop2_kernel_prolong       4 0.0 8.0331e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1515f0eef190_wrap_pyop2_kernel_prolong       4 0.0 6.2806e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a884b5bd0_wrap_pyop2_kernel_prolong       4 0.0 8.0500e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a884b4bd0_wrap_pyop2_kernel_prolong       4 0.0 6.5091e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f97df02850_wrap_pyop2_kernel_prolong       4 0.0 8.0286e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f97deea290_wrap_pyop2_kernel_prolong       4 0.0 5.4128e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bc785c89d0_wrap_pyop2_kernel_prolong       4 0.0 8.0330e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bc78569dd0_wrap_pyop2_kernel_prolong       4 0.0 6.4419e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c0da7628d0_wrap_pyop2_kernel_prolong       4 0.0 8.0433e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c0da762110_wrap_pyop2_kernel_prolong       4 0.0 6.6918e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e22ccf52d0_wrap_pyop2_kernel_prolong       4 0.0 8.0521e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e22ccf4a90_wrap_pyop2_kernel_prolong       4 0.0 6.8387e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1474ff397450_wrap_pyop2_kernel_prolong       4 0.0 8.0523e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1474ff395310_wrap_pyop2_kernel_prolong       4 0.0 7.4414e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff8e162ad0_wrap_pyop2_kernel_prolong       4 0.0 8.0514e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff8cd25790_wrap_pyop2_kernel_prolong       4 0.0 6.4799e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a41e0d8c10_wrap_pyop2_kernel_prolong       4 0.0 8.0459e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a41e0d1710_wrap_pyop2_kernel_prolong       4 0.0 6.7054e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d8df656250_wrap_pyop2_kernel_prolong       4 0.0 8.0476e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d8df5b0ed0_wrap_pyop2_kernel_prolong       4 0.0 6.4135e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153abcfd3f50_wrap_pyop2_kernel_prolong       4 0.0 8.0460e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153abcfd1990_wrap_pyop2_kernel_prolong       4 0.0 6.4952e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151c7d361890_wrap_pyop2_kernel_prolong       4 0.0 8.0477e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151c7d28a890_wrap_pyop2_kernel_prolong       4 0.0 6.4959e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152351eed990_wrap_pyop2_kernel_prolong       4 0.0 8.0432e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152351e13950_wrap_pyop2_kernel_prolong       4 0.0 5.7142e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522a14d0810_wrap_pyop2_kernel_prolong       4 0.0 8.0473e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522a14a02d0_wrap_pyop2_kernel_prolong       4 0.0 6.1926e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149df8b53650_wrap_pyop2_kernel_prolong       4 0.0 8.0451e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149df8d87d50_wrap_pyop2_kernel_prolong       4 0.0 6.1340e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1477fb44fa90_wrap_pyop2_kernel_prolong       4 0.0 8.0402e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1477fb44c5d0_wrap_pyop2_kernel_prolong       4 0.0 6.2646e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dacf7ebed0_wrap_pyop2_kernel_prolong       4 0.0 8.0303e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dacf9526d0_wrap_pyop2_kernel_prolong       4 0.0 4.9390e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456def402d0_wrap_pyop2_kernel_prolong       4 0.0 8.0504e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456def41f10_wrap_pyop2_kernel_prolong       4 0.0 7.3150e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1474f9e36490_wrap_pyop2_kernel_prolong       4 0.0 8.0472e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1474f9e60750_wrap_pyop2_kernel_prolong       4 0.0 5.4014e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef96bb34d0_wrap_pyop2_kernel_prolong       4 0.0 8.0462e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef96bb0d10_wrap_pyop2_kernel_prolong       4 0.0 6.8956e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a1b3fbfc10_wrap_pyop2_kernel_prolong       4 0.0 8.0343e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a1b3fbc750_wrap_pyop2_kernel_prolong       4 0.0 6.0079e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce27af7210_wrap_pyop2_kernel_prolong       4 0.0 8.0452e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce2701a710_wrap_pyop2_kernel_prolong       4 0.0 7.0949e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1524364956d0_wrap_pyop2_kernel_prolong       4 0.0 8.0244e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1524364945d0_wrap_pyop2_kernel_prolong       4 0.0 4.8527e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15255a33e090_wrap_pyop2_kernel_prolong       4 0.0 8.0340e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15255a22a550_wrap_pyop2_kernel_prolong       4 0.0 6.0256e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147274c4aa90_wrap_pyop2_kernel_prolong       4 0.0 8.0397e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147274e73290_wrap_pyop2_kernel_prolong       4 0.0 6.0677e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15409af2a290_wrap_pyop2_kernel_prolong       4 0.0 8.0323e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15409b8de610_wrap_pyop2_kernel_prolong       4 0.0 6.4692e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152753566a90_wrap_pyop2_kernel_prolong       4 0.0 8.0606e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1527535662d0_wrap_pyop2_kernel_prolong       4 0.0 5.2775e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146597559fd0_wrap_pyop2_kernel_prolong       4 0.0 8.0572e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146597575dd0_wrap_pyop2_kernel_prolong       4 0.0 6.8650e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155270161ad0_wrap_pyop2_kernel_prolong       4 0.0 8.0572e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15526bb5dfd0_wrap_pyop2_kernel_prolong       4 0.0 5.8458e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1483ba92b850_wrap_pyop2_kernel_prolong       4 0.0 8.0346e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1483ba92b5d0_wrap_pyop2_kernel_prolong       4 0.0 4.8624e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153440a8c750_wrap_pyop2_kernel_prolong       4 0.0 8.0324e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153440aad810_wrap_pyop2_kernel_prolong       4 0.0 6.2678e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a138cfda90_wrap_pyop2_kernel_prolong       4 0.0 8.0311e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a138cfd2d0_wrap_pyop2_kernel_prolong       4 0.0 6.8064e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1454fd935150_wrap_pyop2_kernel_prolong       4 0.0 8.0339e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1454fd95e5d0_wrap_pyop2_kernel_prolong       4 0.0 5.4416e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cc59545e10_wrap_pyop2_kernel_prolong       4 0.0 8.0357e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cc59545710_wrap_pyop2_kernel_prolong       4 0.0 6.0863e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d6bc9fe710_wrap_pyop2_kernel_prolong       4 0.0 8.0380e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d6bc9fff90_wrap_pyop2_kernel_prolong       4 0.0 6.1582e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d26eee550_wrap_pyop2_kernel_prolong       4 0.0 8.0361e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d263de3d0_wrap_pyop2_kernel_prolong       4 0.0 4.9989e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b63ee866d0_wrap_pyop2_kernel_prolong       4 0.0 8.0349e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b63eedfb10_wrap_pyop2_kernel_prolong       4 0.0 6.0806e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154fc8b1b5d0_wrap_pyop2_kernel_prolong       4 0.0 8.0643e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154fc8989bd0_wrap_pyop2_kernel_prolong       4 0.0 6.4237e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491726d0950_wrap_pyop2_kernel_prolong       4 0.0 8.0822e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491726fed10_wrap_pyop2_kernel_prolong       4 0.0 6.6881e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d6ac2ebd0_wrap_pyop2_kernel_prolong       4 0.0 8.0704e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d6a2d84d0_wrap_pyop2_kernel_prolong       4 0.0 6.8830e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15469d3ff510_wrap_pyop2_kernel_prolong       4 0.0 8.0732e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15469d3fec50_wrap_pyop2_kernel_prolong       4 0.0 6.8638e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d8c69fe210_wrap_pyop2_kernel_prolong       4 0.0 8.0447e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d8c68bd750_wrap_pyop2_kernel_prolong       4 0.0 6.3643e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b3b2842550_wrap_pyop2_kernel_prolong       4 0.0 8.0638e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b3b288e410_wrap_pyop2_kernel_prolong       4 0.0 6.2402e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed0cd852d0_wrap_pyop2_kernel_prolong       4 0.0 8.0801e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed0cdb73d0_wrap_pyop2_kernel_prolong       4 0.0 6.7133e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bace4da610_wrap_pyop2_kernel_prolong       4 0.0 8.0448e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bace51ebd0_wrap_pyop2_kernel_prolong       4 0.0 5.5031e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f9ae1f94d0_wrap_pyop2_kernel_prolong       4 0.0 8.0862e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f9ad89f6d0_wrap_pyop2_kernel_prolong       4 0.0 6.8558e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1501cb223590_wrap_pyop2_kernel_prolong       4 0.0 8.0757e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1501cbb711d0_wrap_pyop2_kernel_prolong       4 0.0 6.7161e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1515f3d664d0_wrap_pyop2_kernel_prolong       4 0.0 8.0479e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1515f3d95950_wrap_pyop2_kernel_prolong       4 0.0 7.8542e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e2f4e6110_wrap_pyop2_kernel_prolong       4 0.0 8.0439e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e2f4e5890_wrap_pyop2_kernel_prolong       4 0.0 5.8347e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1546161434d0_wrap_pyop2_kernel_prolong       4 0.0 8.0476e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15461590f450_wrap_pyop2_kernel_prolong       4 0.0 5.8536e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ffeb249d0_wrap_pyop2_kernel_prolong       4 0.0 8.0625e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ffeb26250_wrap_pyop2_kernel_prolong       4 0.0 7.1028e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151de7acc890_wrap_pyop2_kernel_prolong       4 0.0 8.0426e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151de78f8650_wrap_pyop2_kernel_prolong       4 0.0 4.8611e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5952dfd50_wrap_pyop2_kernel_prolong       4 0.0 8.0749e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e595095f10_wrap_pyop2_kernel_prolong       4 0.0 6.9250e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b46db7cfd0_wrap_pyop2_kernel_prolong       4 0.0 8.0799e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b46c306590_wrap_pyop2_kernel_prolong       4 0.0 7.0677e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458ca74cd10_wrap_pyop2_kernel_prolong       4 0.0 8.0399e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458ca7814d0_wrap_pyop2_kernel_prolong       4 0.0 6.2536e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15450d646b50_wrap_pyop2_kernel_prolong       4 0.0 8.0365e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15450d744550_wrap_pyop2_kernel_prolong       4 0.0 5.8002e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154dda994050_wrap_pyop2_kernel_prolong       4 0.0 8.0384e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154dda9b4d50_wrap_pyop2_kernel_prolong       4 0.0 6.2262e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1465926d3290_wrap_pyop2_kernel_prolong       4 0.0 8.0277e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1465926d0590_wrap_pyop2_kernel_prolong       4 0.0 4.6552e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f5f5fd490_wrap_pyop2_kernel_prolong       4 0.0 8.0425e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f5f534550_wrap_pyop2_kernel_prolong       4 0.0 6.7627e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15124a10cb50_wrap_pyop2_kernel_prolong       4 0.0 8.0354e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15124a10ce90_wrap_pyop2_kernel_prolong       4 0.0 6.6081e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a92484fd0_wrap_pyop2_kernel_prolong       4 0.0 8.0417e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a924c8790_wrap_pyop2_kernel_prolong       4 0.0 7.1334e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a840948b10_wrap_pyop2_kernel_prolong       4 0.0 8.0342e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a840ab2e90_wrap_pyop2_kernel_prolong       4 0.0 6.8629e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc9eb41ad0_wrap_pyop2_kernel_prolong       4 0.0 8.0286e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc9eb42810_wrap_pyop2_kernel_prolong       4 0.0 5.6044e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d9e84cbd0_wrap_pyop2_kernel_prolong       4 0.0 8.0351e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d9d4ca010_wrap_pyop2_kernel_prolong       4 0.0 6.9074e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d769a7910_wrap_pyop2_kernel_prolong       4 0.0 8.0813e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d76bf0b90_wrap_pyop2_kernel_prolong       4 0.0 6.3721e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d4e9458a90_wrap_pyop2_kernel_prolong       4 0.0 8.0828e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d4e9485310_wrap_pyop2_kernel_prolong       4 0.0 6.0353e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b91d22ed10_wrap_pyop2_kernel_prolong       4 0.0 8.0754e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b91d22e950_wrap_pyop2_kernel_prolong       4 0.0 7.6890e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154956d197d0_wrap_pyop2_kernel_prolong       4 0.0 8.0302e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154956d18c90_wrap_pyop2_kernel_prolong       4 0.0 5.2972e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1530b2e76f10_wrap_pyop2_kernel_prolong       4 0.0 8.0363e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1530b2e75590_wrap_pyop2_kernel_prolong       4 0.0 6.6848e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c977d73890_wrap_pyop2_kernel_prolong       4 0.0 8.0507e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c977d57110_wrap_pyop2_kernel_prolong       4 0.0 6.9088e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf19c9fcd0_wrap_pyop2_kernel_prolong       4 0.0 8.0373e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf19b2b410_wrap_pyop2_kernel_prolong       4 0.0 6.6747e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e1d2ec750_wrap_pyop2_kernel_prolong       4 0.0 8.0407e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e1aa56f90_wrap_pyop2_kernel_prolong       4 0.0 6.6665e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f36b17ed10_wrap_pyop2_kernel_prolong       4 0.0 8.0491e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f36b055810_wrap_pyop2_kernel_prolong       4 0.0 6.9212e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154512385d90_wrap_pyop2_kernel_prolong       4 0.0 8.0445e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154512385690_wrap_pyop2_kernel_prolong       4 0.0 7.6401e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided        225 1.0 3.3242e-02 3.6 0.00e+00 0.0 3.9e+05 4.0e+00 2.2e+02  0  0  0  0  1   0  0  1  0  4    -0
SFSetGraph           225 1.0 7.6659e-04 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              225 1.0 4.3690e-02 3.1 0.00e+00 0.0 7.8e+05 2.2e+01 2.2e+02  0  0  1  0  1   0  0  1  0  4    -0
SFPack           2378698 1.1 2.3190e+00 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack         2378698 1.1 1.3377e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy            18158 1.0 3.4930e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecSet             36313 1.0 1.0883e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecAXPY             5188 1.0 1.0074e+01 2.0 4.18e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  2  0  0  0 170095
VecAYPX            36316 1.0 8.9572e+00 1.8 2.11e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  1  0  0  0 96446
VecAXPBYCZ         10376 1.0 5.3108e-03 2.2 2.18e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 1680434
VecScatterBegin  2378698 1.1 3.2469e+01 1.2 0.00e+00 0.0 6.3e+07 2.2e+04 0.0e+00  3  0 77 41  0   6  0 97 100  0    -0
VecScatterEnd    2378698 1.1 3.0999e+01 10.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
MatMult            25940 1.0 2.1930e+02 1.1 1.49e+11 1.1 5.8e+07 2.4e+04 0.0e+00 20 14 71 41  0  41 58 90 100  0 277015
MatMultAdd          7782 1.0 1.2733e+01 1.1 6.29e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 202283
MatMultTranspose    7782 1.0 1.1711e+01 1.7 6.29e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 219933
MatSolve         1185458 1.1 1.6935e+02 1.1 7.35e+10 1.1 6.5e+06 6.3e+01 1.1e+03 16  7  8  0  5  33 29 10  0 18 177161
MatLUFactorNum     48384 1.1 1.7345e+01 1.2 1.37e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  1  0  0  0   3  5  0  0  0 324120
MatResidual         7782 1.0 1.1838e+02 1.2 7.53e+10 1.1 1.7e+07 4.0e+04 0.0e+00 11  7 21 21  0  22 30 27 50  0 260035
MatAssemblyBegin   47936 1.1 1.0169e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyEnd     47936 1.1 1.2229e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats     214 1.0 2.7432e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   5  0  0  0  0    -0
PCSetUp            48822 1.1 4.4029e+01 1.1 1.37e+10 1.1 0.0e+00 0.0e+00 0.0e+00  4  1  0  0  0   8  5  0  0  0 127683
PCSetUpOnBlocks    10376 1.0 2.9977e-02 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply             7782 1.0 2.6084e+02 1.1 8.75e+10 1.1 5.3e+07 1.4e+02 3.7e+03 25  8 65  0 17  51 34 82  1 59 136991
PCApplyOnBlocks  1182864 1.1 1.4045e+02 1.2 8.70e+10 1.1 0.0e+00 0.0e+00 0.0e+00 13  8  0  0  0  27 34  0  0  0 253572
KSPSetUp           48161 1.1 5.6484e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve            7782 1.0 3.7195e+02 1.1 1.67e+11 1.1 5.9e+07 1.2e+04 6.3e+03 36 15 72 21 29  74 66 91 50 100 183380
MGSmooth Level 0    2594 1.0 6.0187e+01 1.2 8.16e+08 2.0 5.3e+07 1.4e+02 6.3e+03  5  0 65  0 29  11  0 82  1 100  3247
MGSmooth Level 1    5188 1.0 3.2080e+02 1.1 1.66e+11 1.1 5.8e+06 1.2e+05 0.0e+00 31 15  7 21  0  63 65  9 50  0 212009
MGResid Level 1     2594 1.0 1.1774e+02 1.2 7.52e+10 1.1 5.8e+06 1.2e+05 0.0e+00 10  7  7 21  0  21 30  9 50  0 261263
MGInterp Level 1    5188 1.0 2.4157e+01 1.3 1.26e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  1  0  0  0   4  5  0  0  0 212797
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   239            237
              Viewer     3              3
         PetscRandom    11             11
           Index Set  4477           4477
   IS L to G Mapping   435            429
             Section   493            493
   Star Forest Graph   683            681
              Vector  2201           2193
              Matrix  1306           1281
      Preconditioner   237            237
       Krylov Solver   246            246
     DMKSP interface     1              1
                SNES     1              1
              DMSNES     1              1
      SNESLineSearch     1              1
    Distributed Mesh   138            140
            DM Label   345            345
          Quadrature   144            144
      Mesh Transform     2              2
       Swarm Cell DM     4              4
    GraphPartitioner    41             41
     Discrete System   193            195
           Weak Form   193            195
        Linear Space    12             12
          Dual Space    52             52
            FE Space     8              8

--- Event Stage 1: MG Apply

           Index Set   450            450
   Star Forest Graph   229            224
              Vector   451            452
    Distributed Mesh     2              0
     Discrete System     2              0
           Weak Form     2              0
========================================================================================================================
Average time to get PetscTime(): 2.56e-08
Average time for MPI_Barrier(): 1.19142e-05
Average time for zero size MPI_Send(): 2.78311e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_mg_coarse_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_mg_levels_1_pc_linesmooth_sub_sub_pc_factor_mat_ordering_type natural # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murr_horiz/vlumping_hmg/h4.profile # (source: code)
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

