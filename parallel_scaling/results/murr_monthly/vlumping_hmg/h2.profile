****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0127.gadi.nci.org.au with 208 processes, by sg8812 on Thu Aug 27 13:18:52 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           1.208e+03     1.000   1.208e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                9.556e+11     1.112   9.226e+11  1.919e+14
Flops/sec:            7.909e+08     1.112   7.636e+08  1.588e+11
MPI Msg Count:        4.384e+05     4.195   2.576e+05  5.358e+07
MPI Msg Len (bytes):  1.533e+10     3.599   3.494e+04  1.872e+12
MPI Reductions:       2.290e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 5.7041e+02  47.2%  1.1961e+14  62.3%  7.960e+06  14.9%  1.125e+05       47.8%  1.469e+04  64.1%
 1:        MG Apply: 6.3782e+02  52.8%  7.2280e+13  37.7%  4.562e+07  85.1%  2.141e+04       52.2%  8.194e+03  35.8%

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

BuildTwoSided       1090 1.0 2.5469e+01 2.6 0.00e+00 0.0 1.4e+05 4.0e+00 8.7e+02  1  0  0  0  4   3  0  2  0  6    -0
BuildTwoSidedF       746 1.0 2.3203e+01 2.3 0.00e+00 0.0 1.2e+05 1.4e+06 7.5e+02  1  0  0  9  3   3  0  1 18  5    -0
SFSetGraph           353 1.0 1.6632e-02 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              344 1.0 4.3409e+00 79.4 0.00e+00 0.0 1.6e+05 9.9e+02 1.2e+02  0  0  0  0  1   0  0  2  0  1    -0
SFBcastBegin         596 1.0 2.1647e-01 4.0 0.00e+00 0.0 5.9e+05 6.3e+04 0.0e+00  0  0  1  2  0   0  0  7  4  0    -0
SFBcastEnd           596 1.0 8.8094e+00 77.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        180 1.0 4.2178e-02 5.5 0.00e+00 0.0 1.9e+05 9.2e+04 0.0e+00  0  0  0  1  0   0  0  2  2  0    -0
SFReduceEnd          180 1.0 1.4566e+00 47.4 1.75e+07 3.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1467
SFFetchOpBegin         6 1.0 2.9766e-05 4.8 0.00e+00 0.0 5.3e+03 7.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           6 1.0 8.4467e-04 19.7 0.00e+00 0.0 5.3e+03 7.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          4 1.0 1.2310e-03 2.1 0.00e+00 0.0 2.6e+03 1.1e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         51 1.0 6.4611e-03 1.4 0.00e+00 0.0 1.3e+05 7.7e+01 6.0e+01  0  0  0  0  0   0  0  2  0  0    -0
SFSectionSF           53 1.0 4.2423e-03 2.8 0.00e+00 0.0 6.4e+04 3.5e+01 5.3e+01  0  0  0  0  0   0  0  1  0  0    -0
SFRemoteOff            2 1.0 1.0007e-04 2.8 0.00e+00 0.0 2.3e+03 1.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack            521593 1.1 2.6837e+00 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack          521599 1.1 1.3785e-01 3.5 1.75e+07 3.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 15499
VecDot                90 1.0 3.8542e-01 9.5 7.26e+07 1.1 0.0e+00 0.0e+00 9.0e+01  0  0  0  0  0   0  0  0  0  1 38279
VecMDot             5837 1.0 7.5519e+01 2.3 4.51e+10 1.1 0.0e+00 0.0e+00 5.8e+03  4  5  0  0 25   9  8  0  0 40 121317
VecNorm             6459 1.0 1.4818e+01 3.4 4.35e+09 1.1 0.0e+00 0.0e+00 6.5e+03  1  0  0  0 28   1  1  0  0 44 59693
VecScale            6234 1.0 1.5296e+00 1.3 2.08e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 277074
VecCopy              912 1.0 1.1100e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              2998 1.0 2.3937e+00 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              397 1.0 4.6108e-01 1.2 2.36e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 103877
VecWAXPY             176 1.0 3.4490e-01 1.6 7.18e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 42301
VecMAXPY            6234 1.0 6.0092e+01 1.2 4.90e+10 1.1 0.0e+00 0.0e+00 0.0e+00  5  5  0  0  0  10  8  0  0  0 165772
VecScatterBegin   520811 1.1 8.4937e+00 1.4 0.00e+00 0.0 6.6e+06 9.8e+04 0.0e+00  1  0 12 34  0   1  0 82 71  0    -0
VecScatterEnd     520811 1.1 3.7829e+01 35.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecReduceArith       180 1.0 1.4647e-01 2.0 1.45e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 201461
VecReduceComm         90 1.0 1.1580e-01 14.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+01  0  0  0  0  0   0  0  0  0  1    -0
VecNormalize        2209 1.0 4.5421e+00 2.7 1.39e+09 1.1 0.0e+00 0.0e+00 2.2e+03  0  0  0  0 10   0  0  0  0 15 62029
MatMult             6011 1.0 2.2203e+02 1.2 1.44e+11 1.1 6.6e+06 9.8e+04 0.0e+00 16 15 12 34  0  34 24 82 71  0 131965
MatSolve          257321 1.1 2.9199e+01 1.4 1.61e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  2  0  0  0   4  3  0  0  0 112247
MatLUFactorSym       225 1.1 1.4339e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum     23402 1.1 5.4040e+00 1.2 6.67e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  1  0  0  0 251050
MatILUFactorSym        2 1.0 1.2553e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin   24733 1.1 2.5134e+01 2.1 0.00e+00 0.0 1.2e+05 1.4e+06 7.5e+02  1  0  0  9  3   3  0  1 18  5    -0
MatAssemblyEnd     24733 1.1 6.0191e+00 4.3 1.16e+08 0.0 8.7e+03 7.3e+03 7.1e+01  0  0  0  0  0   1  0  0  0  0  1644
MatGetRowIJ          226 1.1 3.2790e-05 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats     104 1.0 1.3226e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.2e+02  1  0  0  0  1   2  0  0  0  2    -0
MatGetOrdering       226 1.1 3.6494e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       416 1.0 3.6057e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
MatTranspose           8 1.0 1.4518e-02 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 1.8e+01  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          8 1.0 1.4497e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 1.8e+01  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        626 1.0 2.1951e+00 1.3 3.02e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  1  0  0  0 279165
MatPtAPSymbolic        3 1.0 1.9740e-01 1.0 0.00e+00 0.0 9.8e+03 6.5e+04 2.1e+01  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       312 1.0 1.6608e+01 1.0 1.21e+10 1.1 3.4e+05 1.1e+05 3.3e+02  1  1  1  2  1   3  2  4  4  2 147498
MatGetLocalMat       316 1.0 7.8987e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        316 1.0 5.6133e-01 2.5 0.00e+00 0.0 3.5e+05 1.1e+05 0.0e+00  0  0  1  2  0   0  0  4  4  0    -0
MatSetPreallCOO       32 1.0 6.2364e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       32 1.0 4.1335e-05 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp              104 1.0 1.3913e+02 1.0 7.62e+10 1.1 2.6e+06 6.7e+04 5.3e+03 12  8  5  9 23  24 13 32 19 36 111174
PCApply             3837 1.0 6.4751e+02 1.1 3.56e+11 1.1 4.6e+07 2.1e+04 8.2e+03 53 38 85 52 36 Multiple stages 111628
PCApplyOnBlocks   257321 1.1 3.5282e+01 1.3 2.28e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3  2  0  0  0   5  4  0  0  0 131319
KSPSetUp             104 1.0 1.3477e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             104 1.0 8.9064e+02 1.0 5.57e+11 1.1 5.0e+07 3.0e+04 1.6e+04 74 59 93 79 70 Multiple stages 127015
KSPGMRESOrthog      5837 1.0 1.2616e+02 1.5 9.01e+10 1.1 0.0e+00 0.0e+00 5.8e+03  9 10  0  0 25  19 15  0  0 40 145246
DMRefine               2 1.0 2.2573e-01 1.0 2.09e+03 1.0 1.6e+04 3.3e+01 6.3e+01  0  0  0  0  0   0  0  0  0  0     2
DMPlexCreateGmsh       1 1.0 1.9104e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 5.7855e+00 284.9 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Partition         4 1.0 8.4503e-02 1.0 0.00e+00 0.0 3.8e+04 6.1e+01 5.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         4 1.0 1.6697e-02 1.1 0.00e+00 0.0 1.4e+05 7.1e+01 2.4e+02  0  0  0  0  1   0  0  2  0  2    -0
DMPlexPartSelf         1 1.0 2.0869e-03 846.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       4 1.0 1.9335e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        4 1.0 4.9468e-03 1.3 0.00e+00 0.0 7.5e+03 4.8e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       4 1.0 2.3653e-03 3.9 0.00e+00 0.0 3.7e+03 1.9e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          4 1.0 1.9859e-03 3.5 0.00e+00 0.0 3.9e+03 2.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          29 1.0 7.3386e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 8.2560e-02 1.0 0.00e+00 0.0 8.6e+03 1.8e+02 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        4 1.0 2.0009e-03 1.1 0.00e+00 0.0 2.2e+04 1.1e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       4 1.0 6.4959e-03 1.0 0.00e+00 0.0 7.1e+04 6.8e+01 1.5e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistOvrlp        3 1.0 2.0788e-02 1.0 0.00e+00 0.0 1.7e+05 6.7e+01 2.4e+02  0  0  0  0  1   0  0  2  0  2    -0
DMPlexDistField        7 1.0 3.5281e-03 1.3 0.00e+00 0.0 3.2e+04 5.5e+01 2.0e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         2 1.0 3.2000e-04 1.2 0.00e+00 0.0 1.1e+04 2.8e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify        41 1.0 5.7807e-03 5.8 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      41 1.0 3.2570e-04 5.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          2 1.0 1.1279e-04 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          2 1.0 3.5201e-03 1.6 0.00e+00 0.0 8.6e+03 2.8e+01 1.9e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          2 1.0 1.1029e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          2 1.0 3.2218e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             2 1.0 3.6211e-04 2.0 0.00e+00 0.0 6.9e+03 2.6e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         2 1.0 8.6630e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         2 1.0 7.7175e-04 2.0 0.00e+00 0.0 1.7e+03 3.5e+01 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMSwarmSetSizes        4 1.0 5.4302e-05 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             43 1.0 1.1402e+03 1.0 9.55e+11 1.1 5.3e+07 3.5e+04 2.2e+04 94 100 99 100 97 Multiple stages 168289
SNESSetUp              1 1.0 6.1840e-05 4.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     135 1.0 2.0116e+01 1.1 1.22e+11 1.2 3.4e+05 1.2e+05 0.0e+00  2 12  1  2  0   3 20  4  4  0 1190758
SNESJacobianEval     104 1.0 8.6049e+01 1.0 1.97e+11 1.2 2.3e+05 7.6e+05 4.2e+02  7 20  0  9  2  15 32  3 19  3 449982
SNESLineSearch        90 1.0 1.1073e+01 1.0 8.62e+10 1.2 3.0e+05 1.2e+05 3.6e+02  1  9  1  2  2   2 14  4  4  2 1528680
DualSpaceSetUp         8 1.0 5.0450e-03 1.1 1.08e+02 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     4
FESetUp                8 1.0 1.8978e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 1.2060e+03 1.0 9.56e+11 1.1 5.4e+07 3.5e+04 2.3e+04 100 100 100 100 100 Multiple stages 159118
firedrake.__init__       1 1.0 1.1782e+01 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
CreateMesh             3 1.0 5.9333e+00 36.0 0.00e+00 0.0 3.4e+05 7.2e+01 4.4e+02  0  0  1  0  2   0  0  4  0  3    -0
firedrake.mesh._from_gmsh       1 1.0 5.7863e+00 284.6 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       3 1.0 1.2259e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       3 1.0 6.2910e-06 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        7 1.0 7.8599e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          3 1.0 1.1610e-03 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      36 1.0 4.1134e-02 1.1 0.00e+00 0.0 1.6e+04 9.8e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      44 1.0 2.7548e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      40 1.0 3.8094e-02 1.1 0.00e+00 0.0 1.6e+04 9.8e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      39 1.0 3.4114e-02 1.1 0.00e+00 0.0 1.6e+04 9.8e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      39 1.0 3.3915e-02 1.1 0.00e+00 0.0 1.6e+04 9.8e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      78 1.0 1.4338e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       6 1.0 5.3804e-03 1.2 0.00e+00 0.0 7.1e+03 8.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__      12 1.0 7.5333e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      24 1.0 2.5553e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      76 1.0 2.5357e-02 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          3 1.0 2.3379e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       3 1.0 2.6336e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       8 1.0 6.6095e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       5 1.0 1.2294e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       3 1.0 2.3314e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     470 1.0 7.2839e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      1115 1.0 9.9143e+01 1.1 3.19e+11 1.2 3.4e+05 1.1e+05 3.8e+01  8 33  1  2  0  16 52  4  4  0 632206
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       6 1.0 2.2854e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    2230 1.0 2.7568e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   5  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      19 1.0 1.0851e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
GlobalKernel: generate loopy      19 0.0 1.3624e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      19 0.0 8.8155e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      21 1.0 2.0467e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
pyop2.compilation.load      20 1.0 2.0466e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      20 1.0 1.1170e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.make_so      20 1.0 1.0955e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
ParLoopRednBegin    1115 1.0 3.9044e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      1115 1.0 3.0483e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       3 1.0 9.7515e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong       4 1.0 8.4759e+00 1.0 1.36e+07 1.1 1.9e+04 1.3e+04 1.3e+01  1  0  0  0  0   1  0  0  0  0   326
firedrake.interpolation.interpolate      21 1.0 5.7420e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      15 1.0 1.6214e+01 1.0 8.42e+07 1.1 6.6e+04 1.7e+04 1.8e+02  1  0  0  0  1   3  0  1  0  1  1056
firedrake.formmanipulation.split_form      16 1.0 5.3350e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      16 1.0 2.1407e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      17 1.0 3.0694e-01 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       8 1.1 2.5859e-01 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     303 1.0 4.9124e+00 34.2 0.00e+00 0.0 3.4e+05 1.1e+05 4.0e+00  0  0  1  2  0   1  0  4  4  0    -0
Parloop_Cells_wrap_expression_kernel      34 1.0 7.1137e+00 1.0 8.42e+07 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0  2406
firedrake.halo.Halo.global_to_local_end     303 1.0 6.4757e+00 137.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       3 1.0 6.5478e+00 31.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
Parloop_set_#x14de0ad9d910_wrap_pyop2_kernel_prolong       4 0.0 7.5321e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de0adb3590_wrap_pyop2_kernel_prolong       4 0.0 4.8620e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 3.9469e+00 1.0 6.81e+07 1.1 1.7e+04 5.8e+04 1.1e+01  0  0  0  0  0   1  0  0  0  0  3510
firedrake.function.Function.assign     186 1.0 1.0500e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     185 1.0 1.0035e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.3460e-04 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      62 1.0 7.0674e-04 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 5.8384e-05 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.5570e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.8973e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.3102e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 7.3714e+00 1.0 0.00e+00 0.0 6.7e+03 4.7e+05 2.3e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 6.7690e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 3.0156e-04 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.0432e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.0432e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
CreateSparsity         4 1.0 4.1515e+00 1.1 0.00e+00 0.0 1.5e+04 1.0e+05 4.6e+01  0  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         4 1.0 5.6820e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      43 1.0 1.1403e+03 1.0 9.55e+11 1.1 5.3e+07 3.5e+04 2.2e+04 94 100 99 100 97 Multiple stages 168266
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 2.9152e-01 1075.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 7.8520e-06 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 2.9148e-01 1284.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 2.9144e-01 1482.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     270 1.0 4.7057e+00 1.3 3.09e+10 1.1 0.0e+00 0.0e+00 0.0e+00  0  3  0  0  0   1  5  0  0  0 1336791
Parloop_Cells_wrap_form0_exterior_facet_top_integral     270 1.0 9.9090e-01 1.0 4.02e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   825
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral     270 1.0 1.2243e+00 1.0 3.19e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  6337
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     270 1.0 3.4508e+00 1.1 2.97e+10 1.1 0.0e+00 0.0e+00 0.0e+00  0  3  0  0  0   1  5  0  0  0 1750813
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     270 1.0 6.6083e+00 1.2 6.15e+10 1.3 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   1 10  0  0  0 1756907
firedrake.halo.Halo.local_to_global_begin     135 1.0 4.7200e-02 4.6 0.00e+00 0.0 1.5e+05 1.2e+05 0.0e+00  0  0  0  1  0   0  0  2  2  0    -0
firedrake.halo.Halo.local_to_global_end     135 1.0 1.4573e+00 45.7 1.75e+07 3.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1466
Parloop_Cells_wrap_form00_cell_integral     208 1.0 1.5821e+01 1.4 4.45e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  5  0  0  0   2  8  0  0  0 571585
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     208 1.0 1.5321e+00 1.4 2.50e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  3972
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     208 1.0 1.7578e+01 1.1 5.89e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   3 10  0  0  0 680614
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     208 1.0 3.9196e+01 1.4 9.36e+10 1.3 0.0e+00 0.0e+00 0.0e+00  3  9  0  0  0   6 15  0  0  0 451527
firedrake.dmhooks.get_function_space       2 1.0 1.9823e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       3 1.0 1.0491e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.VertexOnlyMesh       2 1.0 8.2885e+00 1.0 0.00e+00 0.0 2.9e+04 7.7e+01 2.2e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh._pic_swarm_in_mesh       2 1.0 8.2735e+00 1.0 0.00e+00 0.0 2.0e+04 6.3e+01 1.2e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh._parent_mesh_embedding       2 1.0 7.9776e+00 1.0 0.00e+00 0.0 1.1e+04 2.8e+01 8.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshGeometry.locate_cells_ref_coords_and_dists       2 1.0 5.8585e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshGeometry._c_locator       2 1.0 5.8338e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.src_locate_cell       2 1.0 5.2812e+00 4.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.compile_coordinate_element       2 1.0 5.2662e+00 33.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.pointquery_utils.make_wrapper       2 1.0 3.9030e+00 301.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.parloop.generate_single_cell_wrapper       2 1.0 3.9028e+00 304.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
c_locator_run          2 1.0 1.7614e-01 8.9 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._ctypes       2 1.0 1.6989e-01 11.6 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._constant_ctypes       2 1.0 2.8312e-04 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.rtree       2 1.0 2.0377e-03 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.bounding_box_coords       2 1.0 2.7690e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
rtree_build            2 1.0 1.7182e-03 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._dmswarm_create       4 1.0 1.5350e-02 17.6 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._swarm_original_ordering_preserve       2 1.0 2.9350e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.VertexOnlyMeshTopology.__init__       4 1.0 1.8624e-02 1.6 0.00e+00 0.0 8.7e+03 1.1e+02 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_vom_from_vom_topology       4 1.0 4.8797e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.action       2 1.0 6.0241e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0      104 1.0 4.1605e-01 1.7 6.32e+07 1.1 1.3e+06 2.4e+02 2.5e+03  0  0  2  0 11   0  0 16  0 17 30653
MGSetup Level 1      104 1.0 1.1097e+02 1.0 6.40e+10 1.1 1.1e+06 1.2e+05 2.4e+03  9  7  2  7 11  19 11 14 15 16 117205
firedrake.constant.Constant.assign      43 1.0 2.2548e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151146ad5c50_wrap_pyop2_kernel_prolong       4 0.0 7.5250e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15114699c290_wrap_pyop2_kernel_prolong       4 0.0 4.7914e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1517d2efaed0_wrap_pyop2_kernel_prolong       4 0.0 7.4813e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1517d27b34d0_wrap_pyop2_kernel_prolong       4 0.0 6.4272e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d60d3aa0d0_wrap_pyop2_kernel_prolong       4 0.0 7.5181e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d60d3c7090_wrap_pyop2_kernel_prolong       4 0.0 5.7856e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c1f90a690_wrap_pyop2_kernel_prolong       4 0.0 7.4825e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c1f911810_wrap_pyop2_kernel_prolong       4 0.0 6.9423e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eaf59fa6d0_wrap_pyop2_kernel_prolong       4 0.0 7.4816e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eaf5170fd0_wrap_pyop2_kernel_prolong       4 0.0 6.1674e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e3e5b495d0_wrap_pyop2_kernel_prolong       4 0.0 7.5140e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e3e593f410_wrap_pyop2_kernel_prolong       4 0.0 5.2302e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ea3a9c410_wrap_pyop2_kernel_prolong       4 0.0 7.5339e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ea3a91f10_wrap_pyop2_kernel_prolong       4 0.0 5.2683e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b91fbbeb90_wrap_pyop2_kernel_prolong       4 0.0 7.4901e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b91fa92950_wrap_pyop2_kernel_prolong       4 0.0 5.4798e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14689b54a3d0_wrap_pyop2_kernel_prolong       4 0.0 7.4735e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14689b549d90_wrap_pyop2_kernel_prolong       4 0.0 5.5378e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb2d16e250_wrap_pyop2_kernel_prolong       4 0.0 7.5294e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb2d16dc50_wrap_pyop2_kernel_prolong       4 0.0 6.4190e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498933303d0_wrap_pyop2_kernel_prolong       4 0.0 7.4935e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149893342290_wrap_pyop2_kernel_prolong       4 0.0 6.0637e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1536efa75b50_wrap_pyop2_kernel_prolong       4 0.0 7.5186e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1536efa77590_wrap_pyop2_kernel_prolong       4 0.0 6.8637e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1534262da490_wrap_pyop2_kernel_prolong       4 0.0 7.4773e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1534262d8290_wrap_pyop2_kernel_prolong       4 0.0 5.6091e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1542e4233550_wrap_pyop2_kernel_prolong       4 0.0 7.4802e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1542e4232050_wrap_pyop2_kernel_prolong       4 0.0 5.9545e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b77bd90ed0_wrap_pyop2_kernel_prolong       4 0.0 7.4877e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b77bd94310_wrap_pyop2_kernel_prolong       4 0.0 7.6353e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145934aa0bd0_wrap_pyop2_kernel_prolong       4 0.0 7.4730e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145934cc8b90_wrap_pyop2_kernel_prolong       4 0.0 5.0141e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c2541d1f50_wrap_pyop2_kernel_prolong       4 0.0 7.5234e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c2541d1ad0_wrap_pyop2_kernel_prolong       4 0.0 5.6543e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149bff7aa850_wrap_pyop2_kernel_prolong       4 0.0 7.4863e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149bff7a9e90_wrap_pyop2_kernel_prolong       4 0.0 7.3670e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491a5da6410_wrap_pyop2_kernel_prolong       4 0.0 7.5145e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491a5da7bd0_wrap_pyop2_kernel_prolong       4 0.0 5.8057e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1474b523cbd0_wrap_pyop2_kernel_prolong       4 0.0 7.4757e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1474b50c6290_wrap_pyop2_kernel_prolong       4 0.0 5.1157e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c8196e9e10_wrap_pyop2_kernel_prolong       4 0.0 7.5300e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c8196f17d0_wrap_pyop2_kernel_prolong       4 0.0 5.5518e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c4907ef990_wrap_pyop2_kernel_prolong       4 0.0 7.4833e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c4907c29d0_wrap_pyop2_kernel_prolong       4 0.0 6.4033e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1457be764210_wrap_pyop2_kernel_prolong       4 0.0 7.5101e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1457be797650_wrap_pyop2_kernel_prolong       4 0.0 6.8937e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c5658ac990_wrap_pyop2_kernel_prolong       4 0.0 7.5128e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c56576de90_wrap_pyop2_kernel_prolong       4 0.0 5.9503e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f909810810_wrap_pyop2_kernel_prolong       4 0.0 7.5301e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f909810910_wrap_pyop2_kernel_prolong       4 0.0 7.6489e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf217d61d0_wrap_pyop2_kernel_prolong       4 0.0 7.4702e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf217d5a50_wrap_pyop2_kernel_prolong       4 0.0 5.5434e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1f05ad690_wrap_pyop2_kernel_prolong       4 0.0 7.4766e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1f05ad6d0_wrap_pyop2_kernel_prolong       4 0.0 5.3090e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154177f017d0_wrap_pyop2_kernel_prolong       4 0.0 7.5339e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1541775dc390_wrap_pyop2_kernel_prolong       4 0.0 6.0575e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153a4412e3d0_wrap_pyop2_kernel_prolong       4 0.0 7.5366e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153a440fca50_wrap_pyop2_kernel_prolong       4 0.0 6.2283e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154bae470a90_wrap_pyop2_kernel_prolong       4 0.0 7.4814e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154bae470510_wrap_pyop2_kernel_prolong       4 0.0 6.7517e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da68f18250_wrap_pyop2_kernel_prolong       4 0.0 7.5184e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da6859fe10_wrap_pyop2_kernel_prolong       4 0.0 5.6528e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152565d11c50_wrap_pyop2_kernel_prolong       4 0.0 7.4781e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15256511ad90_wrap_pyop2_kernel_prolong       4 0.0 5.6176e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a9f2648950_wrap_pyop2_kernel_prolong       4 0.0 7.5099e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a9f2645850_wrap_pyop2_kernel_prolong       4 0.0 5.9985e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f0b411a890_wrap_pyop2_kernel_prolong       4 0.0 7.5186e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f0b4118610_wrap_pyop2_kernel_prolong       4 0.0 6.5756e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f86d323310_wrap_pyop2_kernel_prolong       4 0.0 7.5361e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f86d31d150_wrap_pyop2_kernel_prolong       4 0.0 5.5286e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147dd301a6d0_wrap_pyop2_kernel_prolong       4 0.0 7.5110e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147dd302f610_wrap_pyop2_kernel_prolong       4 0.0 6.9551e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b8d9066950_wrap_pyop2_kernel_prolong       4 0.0 7.4853e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b8d9042750_wrap_pyop2_kernel_prolong       4 0.0 6.3636e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491333f4cd0_wrap_pyop2_kernel_prolong       4 0.0 7.5077e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491333e5f10_wrap_pyop2_kernel_prolong       4 0.0 7.6030e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151452be2450_wrap_pyop2_kernel_prolong       4 0.0 7.4689e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15145358c710_wrap_pyop2_kernel_prolong       4 0.0 5.7443e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c956f6b450_wrap_pyop2_kernel_prolong       4 0.0 7.5020e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c956521110_wrap_pyop2_kernel_prolong       4 0.0 6.2631e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1504c7211dd0_wrap_pyop2_kernel_prolong       4 0.0 7.4982e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1504c7211510_wrap_pyop2_kernel_prolong       4 0.0 6.2849e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bac26a2510_wrap_pyop2_kernel_prolong       4 0.0 7.5265e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bac26a1e90_wrap_pyop2_kernel_prolong       4 0.0 6.2635e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bbfcd64710_wrap_pyop2_kernel_prolong       4 0.0 7.4811e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bbfcd65990_wrap_pyop2_kernel_prolong       4 0.0 5.4297e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154dca5a5f90_wrap_pyop2_kernel_prolong       4 0.0 7.5090e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154dca5a9f50_wrap_pyop2_kernel_prolong       4 0.0 7.3725e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c822461550_wrap_pyop2_kernel_prolong       4 0.0 7.4932e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c821b1c290_wrap_pyop2_kernel_prolong       4 0.0 5.8136e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd36695390_wrap_pyop2_kernel_prolong       4 0.0 7.5129e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd3668df10_wrap_pyop2_kernel_prolong       4 0.0 7.1302e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c1d55d5d0_wrap_pyop2_kernel_prolong       4 0.0 7.4741e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c1d54d5d0_wrap_pyop2_kernel_prolong       4 0.0 6.6721e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15381486fe50_wrap_pyop2_kernel_prolong       4 0.0 7.4817e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15381488f910_wrap_pyop2_kernel_prolong       4 0.0 6.0700e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14926b9cfed0_wrap_pyop2_kernel_prolong       4 0.0 7.5008e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14926b643ed0_wrap_pyop2_kernel_prolong       4 0.0 7.1092e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15415f565b10_wrap_pyop2_kernel_prolong       4 0.0 7.4788e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15415f566e50_wrap_pyop2_kernel_prolong       4 0.0 6.1670e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ae5b747490_wrap_pyop2_kernel_prolong       4 0.0 7.4809e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ae5b74b2d0_wrap_pyop2_kernel_prolong       4 0.0 7.5788e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150dfc3b5290_wrap_pyop2_kernel_prolong       4 0.0 7.4639e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150df9d29290_wrap_pyop2_kernel_prolong       4 0.0 5.2295e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150d3a8438d0_wrap_pyop2_kernel_prolong       4 0.0 7.4725e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150d3aa90990_wrap_pyop2_kernel_prolong       4 0.0 5.2619e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146753312890_wrap_pyop2_kernel_prolong       4 0.0 7.4759e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146753196050_wrap_pyop2_kernel_prolong       4 0.0 5.4848e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1467642decd0_wrap_pyop2_kernel_prolong       4 0.0 7.4710e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1467642dec10_wrap_pyop2_kernel_prolong       4 0.0 5.1283e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b66d51ee90_wrap_pyop2_kernel_prolong       4 0.0 7.4696e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b66d525e10_wrap_pyop2_kernel_prolong       4 0.0 5.9242e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152967e81fd0_wrap_pyop2_kernel_prolong       4 0.0 7.4713e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15296c0bbc10_wrap_pyop2_kernel_prolong       4 0.0 6.2460e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c3b435b1d0_wrap_pyop2_kernel_prolong       4 0.0 7.4666e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c3b435e810_wrap_pyop2_kernel_prolong       4 0.0 4.5288e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f0eb3547d0_wrap_pyop2_kernel_prolong       4 0.0 7.4744e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f0eb355e90_wrap_pyop2_kernel_prolong       4 0.0 5.8034e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15218b137790_wrap_pyop2_kernel_prolong       4 0.0 7.4720e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15218b137590_wrap_pyop2_kernel_prolong       4 0.0 5.6065e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bda50f1750_wrap_pyop2_kernel_prolong       4 0.0 7.4815e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bda519f790_wrap_pyop2_kernel_prolong       4 0.0 5.6242e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1540207f7890_wrap_pyop2_kernel_prolong       4 0.0 7.4725e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1540207bd790_wrap_pyop2_kernel_prolong       4 0.0 6.2449e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1461c0de8e10_wrap_pyop2_kernel_prolong       4 0.0 7.4816e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1461c0dea950_wrap_pyop2_kernel_prolong       4 0.0 6.7902e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149064a2d710_wrap_pyop2_kernel_prolong       4 0.0 7.4836e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149064a35910_wrap_pyop2_kernel_prolong       4 0.0 6.9821e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155336901c10_wrap_pyop2_kernel_prolong       4 0.0 7.4754e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15533815b0d0_wrap_pyop2_kernel_prolong       4 0.0 5.4247e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e3d8605850_wrap_pyop2_kernel_prolong       4 0.0 7.4784e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e3d8635ed0_wrap_pyop2_kernel_prolong       4 0.0 5.9597e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153ccf2a4290_wrap_pyop2_kernel_prolong       4 0.0 7.4773e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153ccf463310_wrap_pyop2_kernel_prolong       4 0.0 6.7385e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c423f98ed0_wrap_pyop2_kernel_prolong       4 0.0 7.4718e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c42364ba10_wrap_pyop2_kernel_prolong       4 0.0 6.0006e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15518ee04850_wrap_pyop2_kernel_prolong       4 0.0 7.4746e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15518ee06390_wrap_pyop2_kernel_prolong       4 0.0 6.1862e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145844d86810_wrap_pyop2_kernel_prolong       4 0.0 7.4854e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145844fc7490_wrap_pyop2_kernel_prolong       4 0.0 7.0857e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150460bb00d0_wrap_pyop2_kernel_prolong       4 0.0 7.4846e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150460ba9f50_wrap_pyop2_kernel_prolong       4 0.0 6.2639e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14657e607450_wrap_pyop2_kernel_prolong       4 0.0 7.4741e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14657dc9f250_wrap_pyop2_kernel_prolong       4 0.0 5.3567e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150088252250_wrap_pyop2_kernel_prolong       4 0.0 7.4873e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150088251990_wrap_pyop2_kernel_prolong       4 0.0 6.8355e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dfc6367010_wrap_pyop2_kernel_prolong       4 0.0 7.4886e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dfc62f59d0_wrap_pyop2_kernel_prolong       4 0.0 5.8335e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14855176f3d0_wrap_pyop2_kernel_prolong       4 0.0 7.4854e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14855176ca50_wrap_pyop2_kernel_prolong       4 0.0 6.2841e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148111d3a0d0_wrap_pyop2_kernel_prolong       4 0.0 7.4836e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148111d3b9d0_wrap_pyop2_kernel_prolong       4 0.0 7.0204e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493c586a490_wrap_pyop2_kernel_prolong       4 0.0 7.4807e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493c584af90_wrap_pyop2_kernel_prolong       4 0.0 7.0983e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1460b95e1d10_wrap_pyop2_kernel_prolong       4 0.0 7.4799e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1460b95e1f90_wrap_pyop2_kernel_prolong       4 0.0 6.0823e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150405f08090_wrap_pyop2_kernel_prolong       4 0.0 7.4783e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150405f0df50_wrap_pyop2_kernel_prolong       4 0.0 6.0927e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147077a85a90_wrap_pyop2_kernel_prolong       4 0.0 7.4857e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147077a856d0_wrap_pyop2_kernel_prolong       4 0.0 6.2298e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c01f8eb690_wrap_pyop2_kernel_prolong       4 0.0 7.4934e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c01f8f17d0_wrap_pyop2_kernel_prolong       4 0.0 6.1639e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1543ceef4850_wrap_pyop2_kernel_prolong       4 0.0 7.4815e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1543ceced090_wrap_pyop2_kernel_prolong       4 0.0 5.4610e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14641885c610_wrap_pyop2_kernel_prolong       4 0.0 7.4850e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146418b22d10_wrap_pyop2_kernel_prolong       4 0.0 7.2998e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14658c0ad850_wrap_pyop2_kernel_prolong       4 0.0 7.4844e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14658c0ab110_wrap_pyop2_kernel_prolong       4 0.0 5.2800e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15540134d8d0_wrap_pyop2_kernel_prolong       4 0.0 7.4659e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1554015801d0_wrap_pyop2_kernel_prolong       4 0.0 5.6606e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d93a247d90_wrap_pyop2_kernel_prolong       4 0.0 7.4771e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d93a217790_wrap_pyop2_kernel_prolong       4 0.0 5.6418e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d7116ebd0_wrap_pyop2_kernel_prolong       4 0.0 7.4722e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d71041590_wrap_pyop2_kernel_prolong       4 0.0 6.7225e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5fcb37110_wrap_pyop2_kernel_prolong       4 0.0 7.4669e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5fcb38ed0_wrap_pyop2_kernel_prolong       4 0.0 5.7970e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e73cad5fd0_wrap_pyop2_kernel_prolong       4 0.0 7.4738e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e73cace9d0_wrap_pyop2_kernel_prolong       4 0.0 6.6683e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151eb186a090_wrap_pyop2_kernel_prolong       4 0.0 7.4739e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151eb1745d50_wrap_pyop2_kernel_prolong       4 0.0 6.8613e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146fe67ce150_wrap_pyop2_kernel_prolong       4 0.0 7.4713e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146fe67cf310_wrap_pyop2_kernel_prolong       4 0.0 6.2702e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a2b93a28d0_wrap_pyop2_kernel_prolong       4 0.0 7.4722e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a2b963d650_wrap_pyop2_kernel_prolong       4 0.0 5.5997e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d88483bed0_wrap_pyop2_kernel_prolong       4 0.0 7.4915e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d884829110_wrap_pyop2_kernel_prolong       4 0.0 6.9418e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151597725390_wrap_pyop2_kernel_prolong       4 0.0 7.4686e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151597725e10_wrap_pyop2_kernel_prolong       4 0.0 5.5760e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15347c942450_wrap_pyop2_kernel_prolong       4 0.0 7.4792e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15347c935c90_wrap_pyop2_kernel_prolong       4 0.0 6.8772e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498c9686c50_wrap_pyop2_kernel_prolong       4 0.0 7.4737e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498c9687490_wrap_pyop2_kernel_prolong       4 0.0 7.0715e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154a02026cd0_wrap_pyop2_kernel_prolong       4 0.0 7.4686e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154a02027f90_wrap_pyop2_kernel_prolong       4 0.0 5.8713e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15291f9e5110_wrap_pyop2_kernel_prolong       4 0.0 7.4716e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1529240216d0_wrap_pyop2_kernel_prolong       4 0.0 6.0901e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc953fdfd0_wrap_pyop2_kernel_prolong       4 0.0 7.4802e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc951d7d90_wrap_pyop2_kernel_prolong       4 0.0 6.7455e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148159e93ad0_wrap_pyop2_kernel_prolong       4 0.0 7.4733e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148159fb1110_wrap_pyop2_kernel_prolong       4 0.0 6.7298e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1525af516990_wrap_pyop2_kernel_prolong       4 0.0 7.4746e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1525af3a5c50_wrap_pyop2_kernel_prolong       4 0.0 6.4330e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1460e712a9d0_wrap_pyop2_kernel_prolong       4 0.0 7.4721e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1460e7129590_wrap_pyop2_kernel_prolong       4 0.0 6.3575e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14723df95bd0_wrap_pyop2_kernel_prolong       4 0.0 7.4809e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14723df97f10_wrap_pyop2_kernel_prolong       4 0.0 7.1567e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ea2903ed0_wrap_pyop2_kernel_prolong       4 0.0 7.6212e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ea26e4f90_wrap_pyop2_kernel_prolong       4 0.0 5.2681e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c705d7dd0_wrap_pyop2_kernel_prolong       4 0.0 7.6200e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c705bd190_wrap_pyop2_kernel_prolong       4 0.0 5.2468e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497010f0b90_wrap_pyop2_kernel_prolong       4 0.0 7.6180e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497004a5f10_wrap_pyop2_kernel_prolong       4 0.0 5.5982e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c5b87afd0_wrap_pyop2_kernel_prolong       4 0.0 7.6204e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c5b87a510_wrap_pyop2_kernel_prolong       4 0.0 6.0710e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c7a7876210_wrap_pyop2_kernel_prolong       4 0.0 7.6212e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c7a78ed5d0_wrap_pyop2_kernel_prolong       4 0.0 6.3107e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150bd6138690_wrap_pyop2_kernel_prolong       4 0.0 7.6259e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150bd615bfd0_wrap_pyop2_kernel_prolong       4 0.0 7.3418e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d0e61d7cd0_wrap_pyop2_kernel_prolong       4 0.0 7.6190e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d0e60a0b50_wrap_pyop2_kernel_prolong       4 0.0 5.6310e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5bf173d90_wrap_pyop2_kernel_prolong       4 0.0 7.6210e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5bf177090_wrap_pyop2_kernel_prolong       4 0.0 6.0761e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1e674ef90_wrap_pyop2_kernel_prolong       4 0.0 7.6213e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1e674d910_wrap_pyop2_kernel_prolong       4 0.0 5.8501e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458d6adc710_wrap_pyop2_kernel_prolong       4 0.0 7.6220e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458d62d7910_wrap_pyop2_kernel_prolong       4 0.0 5.9362e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d80be7790_wrap_pyop2_kernel_prolong       4 0.0 7.6241e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d7bf56350_wrap_pyop2_kernel_prolong       4 0.0 6.1141e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153e8708f210_wrap_pyop2_kernel_prolong       4 0.0 7.6220e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153e85791d10_wrap_pyop2_kernel_prolong       4 0.0 6.7405e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f7bbb5d510_wrap_pyop2_kernel_prolong       4 0.0 7.6229e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f7bbd76bd0_wrap_pyop2_kernel_prolong       4 0.0 6.7163e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b8b2276950_wrap_pyop2_kernel_prolong       4 0.0 7.6084e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b8b291d050_wrap_pyop2_kernel_prolong       4 0.0 5.0155e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ade8128e10_wrap_pyop2_kernel_prolong       4 0.0 7.6139e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ade812ad50_wrap_pyop2_kernel_prolong       4 0.0 5.9285e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1526744b6350_wrap_pyop2_kernel_prolong       4 0.0 7.6187e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15267448e490_wrap_pyop2_kernel_prolong       4 0.0 6.3688e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f01adc1a10_wrap_pyop2_kernel_prolong       4 0.0 7.6062e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f01ad7dd10_wrap_pyop2_kernel_prolong       4 0.0 5.6393e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14facb7e0b90_wrap_pyop2_kernel_prolong       4 0.0 7.6148e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14facb7c6dd0_wrap_pyop2_kernel_prolong       4 0.0 5.8391e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1545c5739f50_wrap_pyop2_kernel_prolong       4 0.0 7.6167e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1545c5739610_wrap_pyop2_kernel_prolong       4 0.0 6.1124e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145e747099d0_wrap_pyop2_kernel_prolong       4 0.0 7.6014e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145e746f0a10_wrap_pyop2_kernel_prolong       4 0.0 5.4108e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150dd0462390_wrap_pyop2_kernel_prolong       4 0.0 7.5973e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150dd04a7950_wrap_pyop2_kernel_prolong       4 0.0 4.7326e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15240be46710_wrap_pyop2_kernel_prolong       4 0.0 7.6132e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15240be4de90_wrap_pyop2_kernel_prolong       4 0.0 5.7358e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1473907d45d0_wrap_pyop2_kernel_prolong       4 0.0 7.6082e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1473907cd390_wrap_pyop2_kernel_prolong       4 0.0 5.6852e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1489e05172d0_wrap_pyop2_kernel_prolong       4 0.0 7.6095e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1489e0514b10_wrap_pyop2_kernel_prolong       4 0.0 7.1246e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497aba5ead0_wrap_pyop2_kernel_prolong       4 0.0 7.6441e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497ab229450_wrap_pyop2_kernel_prolong       4 0.0 5.5109e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bccbd7a450_wrap_pyop2_kernel_prolong       4 0.0 7.6191e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bccbd79d90_wrap_pyop2_kernel_prolong       4 0.0 7.1173e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d87c3f1d0_wrap_pyop2_kernel_prolong       4 0.0 7.6029e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d87ec0a50_wrap_pyop2_kernel_prolong       4 0.0 5.2764e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148cd6481290_wrap_pyop2_kernel_prolong       4 0.0 7.6045e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148cd64d8550_wrap_pyop2_kernel_prolong       4 0.0 5.7998e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148803602710_wrap_pyop2_kernel_prolong       4 0.0 7.6187e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14880239d710_wrap_pyop2_kernel_prolong       4 0.0 6.6926e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c4bd687f50_wrap_pyop2_kernel_prolong       4 0.0 7.6057e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c4bd6136d0_wrap_pyop2_kernel_prolong       4 0.0 5.4319e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d5a653150_wrap_pyop2_kernel_prolong       4 0.0 7.6105e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d59d9a8d0_wrap_pyop2_kernel_prolong       4 0.0 6.5684e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1531a01dcfd0_wrap_pyop2_kernel_prolong       4 0.0 7.6057e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1531a01a13d0_wrap_pyop2_kernel_prolong       4 0.0 6.6258e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146701946ad0_wrap_pyop2_kernel_prolong       4 0.0 7.6068e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146701944050_wrap_pyop2_kernel_prolong       4 0.0 5.2519e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1535d4477390_wrap_pyop2_kernel_prolong       4 0.0 7.6129e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1535d4ef5bd0_wrap_pyop2_kernel_prolong       4 0.0 6.6279e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d08396ce10_wrap_pyop2_kernel_prolong       4 0.0 7.6081e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d08396f290_wrap_pyop2_kernel_prolong       4 0.0 5.5297e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a5cc77750_wrap_pyop2_kernel_prolong       4 0.0 7.6065e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a57f66b90_wrap_pyop2_kernel_prolong       4 0.0 6.0629e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1492d0ff9750_wrap_pyop2_kernel_prolong       4 0.0 7.6216e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1492d0ffac10_wrap_pyop2_kernel_prolong       4 0.0 6.8615e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a60b87b10_wrap_pyop2_kernel_prolong       4 0.0 7.6115e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a60ba1a50_wrap_pyop2_kernel_prolong       4 0.0 6.1929e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15358de6e550_wrap_pyop2_kernel_prolong       4 0.0 7.6159e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15358de6db90_wrap_pyop2_kernel_prolong       4 0.0 6.4825e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14efb55723d0_wrap_pyop2_kernel_prolong       4 0.0 7.6447e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14efb5571d50_wrap_pyop2_kernel_prolong       4 0.0 6.0724e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b4e4efbd0_wrap_pyop2_kernel_prolong       4 0.0 7.6090e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b4e4ed250_wrap_pyop2_kernel_prolong       4 0.0 6.3029e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15193b442750_wrap_pyop2_kernel_prolong       4 0.0 7.6487e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15193b442590_wrap_pyop2_kernel_prolong       4 0.0 5.8287e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f4bed3dd0_wrap_pyop2_kernel_prolong       4 0.0 7.6214e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f4b6c5b90_wrap_pyop2_kernel_prolong       4 0.0 5.8243e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150ab3dcb990_wrap_pyop2_kernel_prolong       4 0.0 7.6062e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150ab3dc96d0_wrap_pyop2_kernel_prolong       4 0.0 6.4440e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149cd35c45d0_wrap_pyop2_kernel_prolong       4 0.0 7.6178e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149cd35ed850_wrap_pyop2_kernel_prolong       4 0.0 7.1449e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152457aa7c50_wrap_pyop2_kernel_prolong       4 0.0 7.6045e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152457aa5490_wrap_pyop2_kernel_prolong       4 0.0 5.9593e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c925ab8890_wrap_pyop2_kernel_prolong       4 0.0 7.6125e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c925abc290_wrap_pyop2_kernel_prolong       4 0.0 6.5089e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d633803810_wrap_pyop2_kernel_prolong       4 0.0 7.6248e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d6337ce490_wrap_pyop2_kernel_prolong       4 0.0 5.9583e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14678832f990_wrap_pyop2_kernel_prolong       4 0.0 7.6083e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1467882ed4d0_wrap_pyop2_kernel_prolong       4 0.0 6.0189e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed48f02ad0_wrap_pyop2_kernel_prolong       4 0.0 7.6379e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed48f00a90_wrap_pyop2_kernel_prolong       4 0.0 7.3875e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c0931cc0d0_wrap_pyop2_kernel_prolong       4 0.0 7.6427e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c0931b2710_wrap_pyop2_kernel_prolong       4 0.0 6.9088e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee87ac6bd0_wrap_pyop2_kernel_prolong       4 0.0 7.6181e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee86f1fb90_wrap_pyop2_kernel_prolong       4 0.0 7.1487e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1536474ce650_wrap_pyop2_kernel_prolong       4 0.0 7.6099e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15364729bad0_wrap_pyop2_kernel_prolong       4 0.0 5.4384e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e42f687750_wrap_pyop2_kernel_prolong       4 0.0 7.6104e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e42ed40390_wrap_pyop2_kernel_prolong       4 0.0 6.0564e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a72d72f10_wrap_pyop2_kernel_prolong       4 0.0 7.6086e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a72d702d0_wrap_pyop2_kernel_prolong       4 0.0 6.7151e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15165568a1d0_wrap_pyop2_kernel_prolong       4 0.0 7.6296e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151654cc09d0_wrap_pyop2_kernel_prolong       4 0.0 6.1938e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15126148d590_wrap_pyop2_kernel_prolong       4 0.0 7.6027e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15126146f290_wrap_pyop2_kernel_prolong       4 0.0 6.0581e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154442c0b410_wrap_pyop2_kernel_prolong       4 0.0 7.6016e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154442c08990_wrap_pyop2_kernel_prolong       4 0.0 5.2958e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bfa2e87c50_wrap_pyop2_kernel_prolong       4 0.0 7.5991e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bfa2e85210_wrap_pyop2_kernel_prolong       4 0.0 4.7344e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ae6b548a50_wrap_pyop2_kernel_prolong       4 0.0 7.6004e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ae6b782f90_wrap_pyop2_kernel_prolong       4 0.0 5.6006e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b2333e6d0_wrap_pyop2_kernel_prolong       4 0.0 7.6421e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b2333df90_wrap_pyop2_kernel_prolong       4 0.0 6.4014e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1553a5bbb810_wrap_pyop2_kernel_prolong       4 0.0 7.6275e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1553a5dab3d0_wrap_pyop2_kernel_prolong       4 0.0 6.1938e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d3bb6bc690_wrap_pyop2_kernel_prolong       4 0.0 7.6238e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d3bb6bc450_wrap_pyop2_kernel_prolong       4 0.0 7.1213e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1541a8709390_wrap_pyop2_kernel_prolong       4 0.0 7.6029e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1541a8935890_wrap_pyop2_kernel_prolong       4 0.0 5.8265e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b88bf94bd0_wrap_pyop2_kernel_prolong       4 0.0 7.6110e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b88bf4cc10_wrap_pyop2_kernel_prolong       4 0.0 6.9495e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154cd2e1bfd0_wrap_pyop2_kernel_prolong       4 0.0 7.6043e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154cd2e1ae90_wrap_pyop2_kernel_prolong       4 0.0 6.0493e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e1a386710_wrap_pyop2_kernel_prolong       4 0.0 7.6066e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e1a361ad0_wrap_pyop2_kernel_prolong       4 0.0 5.7644e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146120f17110_wrap_pyop2_kernel_prolong       4 0.0 7.6101e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146120f1de90_wrap_pyop2_kernel_prolong       4 0.0 6.6521e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd6924e950_wrap_pyop2_kernel_prolong       4 0.0 7.6054e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd6924edd0_wrap_pyop2_kernel_prolong       4 0.0 6.4607e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1518352925d0_wrap_pyop2_kernel_prolong       4 0.0 7.6201e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15183529e390_wrap_pyop2_kernel_prolong       4 0.0 6.2025e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14828486ff10_wrap_pyop2_kernel_prolong       4 0.0 7.6228e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148284a79f90_wrap_pyop2_kernel_prolong       4 0.0 7.3675e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d155661dd0_wrap_pyop2_kernel_prolong       4 0.0 7.6021e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d155661450_wrap_pyop2_kernel_prolong       4 0.0 4.9368e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab4062d050_wrap_pyop2_kernel_prolong       4 0.0 7.6020e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab40dacc50_wrap_pyop2_kernel_prolong       4 0.0 6.1159e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c3f24b9890_wrap_pyop2_kernel_prolong       4 0.0 7.6172e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c3f25af750_wrap_pyop2_kernel_prolong       4 0.0 6.5057e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e305c92e50_wrap_pyop2_kernel_prolong       4 0.0 7.6176e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e305c81950_wrap_pyop2_kernel_prolong       4 0.0 5.7825e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b0fdc71a90_wrap_pyop2_kernel_prolong       4 0.0 7.6467e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b0fdc738d0_wrap_pyop2_kernel_prolong       4 0.0 7.1050e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148575986b50_wrap_pyop2_kernel_prolong       4 0.0 7.6350e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148575754290_wrap_pyop2_kernel_prolong       4 0.0 6.4075e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f31fe7a490_wrap_pyop2_kernel_prolong       4 0.0 7.6519e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f31fe7bc10_wrap_pyop2_kernel_prolong       4 0.0 7.6415e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14970b64d810_wrap_pyop2_kernel_prolong       4 0.0 7.6196e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14970b64ce90_wrap_pyop2_kernel_prolong       4 0.0 6.0630e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d1028d7110_wrap_pyop2_kernel_prolong       4 0.0 7.6133e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d1028cd450_wrap_pyop2_kernel_prolong       4 0.0 5.2541e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1490fc57f5d0_wrap_pyop2_kernel_prolong       4 0.0 7.6011e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1490fc5a0750_wrap_pyop2_kernel_prolong       4 0.0 5.7553e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15012cd1e610_wrap_pyop2_kernel_prolong       4 0.0 7.6130e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15012d638c90_wrap_pyop2_kernel_prolong       4 0.0 5.4248e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148375522110_wrap_pyop2_kernel_prolong       4 0.0 7.6411e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148375520a90_wrap_pyop2_kernel_prolong       4 0.0 6.4729e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154a5a0c5fd0_wrap_pyop2_kernel_prolong       4 0.0 7.6222e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154a5a0c5710_wrap_pyop2_kernel_prolong       4 0.0 7.0615e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14729ec75bd0_wrap_pyop2_kernel_prolong       4 0.0 7.6009e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14729ec75790_wrap_pyop2_kernel_prolong       4 0.0 5.4131e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d8da3e410_wrap_pyop2_kernel_prolong       4 0.0 7.6165e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d8dc5dc10_wrap_pyop2_kernel_prolong       4 0.0 6.4622e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15477682c190_wrap_pyop2_kernel_prolong       4 0.0 7.6108e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1547767fe410_wrap_pyop2_kernel_prolong       4 0.0 6.6062e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f953959f10_wrap_pyop2_kernel_prolong       4 0.0 7.6197e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f9539596d0_wrap_pyop2_kernel_prolong       4 0.0 6.4572e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ad22de510_wrap_pyop2_kernel_prolong       4 0.0 7.6213e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ad22ddc10_wrap_pyop2_kernel_prolong       4 0.0 7.4011e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed04402010_wrap_pyop2_kernel_prolong       4 0.0 7.6375e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed044016d0_wrap_pyop2_kernel_prolong       4 0.0 6.2068e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e03d6e7310_wrap_pyop2_kernel_prolong       4 0.0 7.6131e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e03d6b24d0_wrap_pyop2_kernel_prolong       4 0.0 7.5941e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153970f19cd0_wrap_pyop2_kernel_prolong       4 0.0 7.6060e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153970f1bf90_wrap_pyop2_kernel_prolong       4 0.0 5.6386e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146eba14ad90_wrap_pyop2_kernel_prolong       4 0.0 7.6072e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146eba163610_wrap_pyop2_kernel_prolong       4 0.0 5.4317e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154d8d77ee50_wrap_pyop2_kernel_prolong       4 0.0 7.6223e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154d8d7a1d10_wrap_pyop2_kernel_prolong       4 0.0 7.1325e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad8b143410_wrap_pyop2_kernel_prolong       4 0.0 7.6154e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad8b141350_wrap_pyop2_kernel_prolong       4 0.0 6.3883e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154acb378250_wrap_pyop2_kernel_prolong       4 0.0 7.6134e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154acb3cedd0_wrap_pyop2_kernel_prolong       4 0.0 6.4912e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eac28846d0_wrap_pyop2_kernel_prolong       4 0.0 7.6194e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eac2883350_wrap_pyop2_kernel_prolong       4 0.0 6.4351e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e9cbecd50_wrap_pyop2_kernel_prolong       4 0.0 7.6488e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e9cbeeb50_wrap_pyop2_kernel_prolong       4 0.0 5.9444e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d2f8083b50_wrap_pyop2_kernel_prolong       4 0.0 7.6247e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d2f80800d0_wrap_pyop2_kernel_prolong       4 0.0 5.9867e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a1aeede10_wrap_pyop2_kernel_prolong       4 0.0 7.6198e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a1ac9add0_wrap_pyop2_kernel_prolong       4 0.0 6.7999e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15093ec5dad0_wrap_pyop2_kernel_prolong       4 0.0 7.6126e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15093ec5d210_wrap_pyop2_kernel_prolong       4 0.0 6.1665e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152901558210_wrap_pyop2_kernel_prolong       4 0.0 7.6383e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152901509010_wrap_pyop2_kernel_prolong       4 0.0 6.8772e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1496ef8a58d0_wrap_pyop2_kernel_prolong       4 0.0 7.6236e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1496eeedf090_wrap_pyop2_kernel_prolong       4 0.0 7.0239e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be7644a690_wrap_pyop2_kernel_prolong       4 0.0 7.6187e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be75ba2450_wrap_pyop2_kernel_prolong       4 0.0 7.4128e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided        104 1.0 1.0688e-02 3.2 0.00e+00 0.0 9.1e+04 4.0e+00 1.0e+02  0  0  0  0  0   0  0  0  0  1    -0
SFSetGraph           104 1.0 3.4268e-04 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              104 1.0 1.4321e-02 2.6 0.00e+00 0.0 1.8e+05 2.2e+01 1.0e+02  0  0  0  0  0   0  0  0  0  1    -0
SFPack           3518529 1.1 4.0789e+00 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack         3518529 1.1 1.7919e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy            34533 1.0 1.4246e+01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecSet             53715 1.0 1.6403e+01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecAYPX            61392 1.0 2.6002e+01 2.2 9.31e+09 1.1 0.0e+00 0.0e+00 0.0e+00  2  1  0  0  0   3  3  0  0  0 72772
VecAXPBYCZ         15348 1.0 7.1648e-03 2.2 3.22e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 914484
VecScatterBegin  3518529 1.1 4.7534e+01 1.2 0.00e+00 0.0 4.5e+07 2.2e+04 0.0e+00  4  0 84 52  0   7  0 99 100  0    -0
VecScatterEnd    3518529 1.1 4.0487e+01 10.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
MatMult            38370 1.0 3.1634e+02 1.1 2.20e+11 1.1 4.2e+07 2.3e+04 0.0e+00 25 23 78 52  0  47 62 92 100  0 140896
MatMultAdd         11511 1.0 1.8295e+01 1.1 9.30e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   3  3  0  0  0 103355
MatMultTranspose   11511 1.0 1.7629e+01 2.7 9.30e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  3  0  0  0 107265
MatSolve         1753509 1.1 2.1633e+02 1.2 1.09e+11 1.1 3.8e+06 7.2e+01 5.2e+02 17 11  7  0  2  33 30  8  0  6 101822
MatLUFactorNum       206 1.0 1.1385e+00 1.3 4.93e+06 5.3 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   250
MatResidual        11511 1.0 1.7268e+02 1.2 1.11e+11 1.1 1.3e+07 3.9e+04 0.0e+00 13 12 23 26  0  24 31 28 50  0 130797
PCSetUp              309 1.0 1.1399e+00 1.3 4.93e+06 5.3 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   250
PCSetUpOnBlocks    15348 1.0 3.7875e-02 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply            11511 1.0 2.9179e+02 1.2 1.09e+11 1.1 3.7e+07 1.4e+02 4.4e+03 23 12 70  0 19  43 31 82  1 53 75764
PCApplyOnBlocks  1749672 1.1 1.9297e+02 1.2 1.08e+11 1.1 0.0e+00 0.0e+00 0.0e+00 15 11  0  0  0  29 30  0  0  0 114119
KSPSetUp             103 1.0 2.2575e-05 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve           11511 1.0 4.6103e+02 1.1 2.26e+11 1.1 4.1e+07 1.2e+04 8.2e+03 37 24 77 26 36  70 64 91 50 100 99637
MGSmooth Level 0    3837 1.0 6.2859e+01 2.1 9.52e+08 1.5 3.7e+07 1.4e+02 8.2e+03  3  0 70  0 36   6  0 82  1 100  2264
MGSmooth Level 1    7674 1.0 4.2844e+02 1.1 2.26e+11 1.1 4.2e+06 1.2e+05 0.0e+00 34 24  8 26  0  65 63  9 50  0 106884
MGResid Level 1     3837 1.0 1.7076e+02 1.2 1.11e+11 1.1 4.2e+06 1.2e+05 0.0e+00 13 12  8 26  0  24 31  9 50  0 132173
MGInterp Level 1    7674 1.0 3.5169e+01 1.5 1.86e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3  2  0  0  0   5  5  0  0  0 107310
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   175            173
              Viewer     3              3
           Index Set  3881           3881
   IS L to G Mapping   435            429
             Section   493            493
   Star Forest Graph   661            659
              Vector  1580           1573
              Matrix  1306           1281
      Preconditioner   237            237
       Krylov Solver   235            235
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

           Index Set   208            208
   Star Forest Graph   108            103
              Vector   207            207
    Distributed Mesh     2              0
     Discrete System     2              0
           Weak Form     2              0
========================================================================================================================
Average time to get PetscTime(): 2.6e-08
Average time for MPI_Barrier(): 7.265e-06
Average time for zero size MPI_Send(): 2.64539e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_mg_coarse_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_mg_levels_1_pc_linesmooth_sub_sub_pc_factor_mat_ordering_type natural # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murr_monthly/vlumping_hmg/h2.profile # (source: code)
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

