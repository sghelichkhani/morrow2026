****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0432.gadi.nci.org.au with 104 processes, by sg8812 on Thu Aug 27 15:52:04 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           2.597e+03     1.000   2.597e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                4.340e+12     1.207   4.073e+12  4.236e+14
Flops/sec:            1.671e+09     1.207   1.568e+09  1.631e+11
MPI Msg Count:        2.454e+05     3.158   1.766e+05  1.837e+07
MPI Msg Len (bytes):  2.969e+10     2.993   1.186e+05  2.178e+12
MPI Reductions:       3.959e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 1.9070e+03  73.4%  3.8412e+14  90.7%  9.332e+06  50.8%  1.791e+05       76.8%  3.216e+04  81.2%
 1:        MG Apply: 6.9009e+02  26.6%  3.9514e+13   9.3%  9.033e+06  49.2%  5.604e+04       23.2%  7.412e+03  18.7%

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

BuildTwoSided       3784 1.0 1.7886e+02 5.2 0.00e+00 0.0 2.2e+05 4.0e+00 3.5e+03  4  0  1  0  9   6  0  2  0 11    -0
BuildTwoSidedF      3446 1.0 1.7765e+02 5.3 0.00e+00 0.0 3.6e+05 1.5e+06 3.4e+03  4  0  2 24  9   6  0  4 31 11    -0
SFSetGraph           345 1.1 1.5816e-02 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              338 1.1 2.2952e+00 65.4 0.00e+00 0.0 6.9e+04 1.1e+03 9.8e+01  0  0  0  0  0   0  0  1  0  0    -0
SFBcastBegin        2889 1.0 1.5880e+00 3.2 0.00e+00 0.0 1.5e+06 1.1e+05 0.0e+00  0  0  8  8  0   0  0 16 10  0    -0
SFBcastEnd          2889 1.0 4.8509e+01 59.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin       1919 1.0 4.8293e-01 19.9 0.00e+00 0.0 1.0e+06 1.2e+05 0.0e+00  0  0  5  5  0   0  0 11  7  0    -0
SFReduceEnd         1919 1.0 2.2805e+01 63.8 2.03e+08 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   652
SFFetchOpBegin         6 1.0 2.8906e-05 3.9 0.00e+00 0.0 2.5e+03 7.3e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           6 1.0 6.0024e-04 14.1 0.00e+00 0.0 2.5e+03 7.3e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          4 1.0 6.8540e-04 1.1 0.00e+00 0.0 1.2e+03 1.2e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         49 1.0 4.5485e-03 1.3 0.00e+00 0.0 5.9e+04 8.2e+01 5.8e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           51 1.0 3.0587e-03 1.9 0.00e+00 0.0 2.9e+04 3.8e+01 5.1e+01  0  0  0  0  0   0  0  0  0  0    -0
SFRemoteOff            2 1.0 7.7362e-05 2.2 0.00e+00 0.0 1.1e+03 1.6e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack           3664130 1.2 6.4326e+00 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack         3664136 1.2 1.1014e+00 5.0 2.03e+08 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 13505
VecDot               688 1.0 2.5383e+00 5.8 5.94e+08 1.2 0.0e+00 0.0e+00 6.9e+02  0  0  0  0  2   0  0  0  0  2 23481
VecMDot            10852 1.0 1.4579e+02 3.6 4.45e+10 1.2 0.0e+00 0.0e+00 1.1e+04  4  1  0  0 27   5  1  0  0 34 30635
VecNorm            14794 1.0 6.4279e+01 3.6 1.28e+10 1.2 0.0e+00 0.0e+00 1.5e+04  1  0  0  0 37   2  0  0  0 46 19938
VecScale           12228 1.0 4.7828e+00 1.4 5.28e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 110741
VecCopy             7233 1.0 1.1064e+01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecSet             17888 1.0 1.5715e+01 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecAXPY             1376 1.0 2.4922e+00 1.2 1.19e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 47831
VecWAXPY            1843 1.0 4.2470e+00 1.2 1.30e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 30577
VecMAXPY           12228 1.0 7.1223e+01 1.2 5.39e+10 1.2 0.0e+00 0.0e+00 0.0e+00  3  1  0  0  0   4  1  0  0  0 75910
VecScatterBegin  3659316 1.2 4.7941e+01 1.4 0.00e+00 0.0 6.0e+06 1.2e+05 0.0e+00  2  0 33 34  0   2  0 65 44  0    -0
VecScatterEnd    3659316 1.2 8.1990e+01 36.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecReduceArith      1376 1.0 1.0982e+00 2.2 1.19e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 108542
VecReduceComm        688 1.0 9.5630e-01 84.3 0.00e+00 0.0 0.0e+00 0.0e+00 6.9e+02  0  0  0  0  2   0  0  0  0  2    -0
VecNormalize        7568 1.0 4.5637e+01 3.4 9.81e+09 1.2 0.0e+00 0.0e+00 7.6e+03  1  0  0  0 19   1  0  0  0 24 21549
MatMult            11540 1.0 4.9437e+02 1.1 3.54e+11 1.2 6.0e+06 1.2e+05 0.0e+00 18  8 33 34  0  24  9 65 44  0 71493
MatSolve         1816320 1.2 2.1695e+02 1.4 1.14e+11 1.2 0.0e+00 0.0e+00 0.0e+00  7  3  0  0  0   9  3  0  0  0 52764
MatLUFactorSym       241 1.2 4.7898e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum    165808 1.2 6.3558e+01 1.1 4.75e+10 1.2 0.0e+00 0.0e+00 0.0e+00  2  1  0  0  0   3  1  0  0  0 74680
MatAssemblyBegin  169991 1.1 1.7774e+02 2.7 0.00e+00 0.0 3.6e+05 1.5e+06 3.4e+03  5  0  2 24  9   6  0  4 31 11    -0
MatAssemblyEnd    169991 1.1 3.7009e+01 22.6 7.73e+08 0.0 2.1e+03 1.5e+04 1.7e+01  1  0  0  0  0   1  0  0  0  0   884
MatGetRowIJ          240 1.2 3.6856e-05 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats     688 1.0 9.6275e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 2.4e+02  3  0  0  0  1   4  0  0  0  1    -0
MatGetOrdering       240 1.2 4.2473e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries      1376 1.0 3.2064e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
MatTranspose           2 1.0 1.4858e-02 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 1.0927e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum       1376 1.0 1.1767e+01 1.1 2.14e+10 1.2 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  1  0  0  0 181592
MatPtAPSymbolic        1 1.0 2.0413e-01 1.0 0.00e+00 0.0 1.6e+03 2.0e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       688 1.0 8.3195e+01 1.0 8.55e+10 1.2 3.6e+05 3.6e+05 6.9e+02  3  2  2  6  2   4  2  4  8  2 102751
MatGetLocalMat       688 1.0 5.8867e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        688 1.0 2.6589e+00 2.0 0.00e+00 0.0 3.6e+05 3.6e+05 0.0e+00  0  0  2  6  0   0  0  4  8  0    -0
MatSetPreallCOO       32 1.0 5.9327e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       32 1.0 2.6405e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp              688 1.0 8.9065e+02 1.0 5.40e+11 1.2 4.0e+06 1.4e+05 1.6e+04 34 13 22 26 41  47 14 43 34 50 60640
PCApply             3972 1.0 7.2206e+02 1.1 3.97e+11 1.2 9.0e+06 5.6e+04 7.4e+03 27  9 49 23 19  36 10 97 30 23 54724
PCApplyOnBlocks  1816320 1.2 2.6222e+02 1.4 1.61e+11 1.2 0.0e+00 0.0e+00 0.0e+00  8  4  0  0  0  11  4  0  0  0 61730
KSPSetUp             688 1.0 2.2130e-02 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             688 1.0 9.1030e+02 1.0 5.52e+11 1.2 1.1e+07 6.8e+04 1.6e+04 35 13 61 35 41 Multiple stages 60491
KSPGMRESOrthog     10852 1.0 1.9539e+02 2.0 8.91e+10 1.2 0.0e+00 0.0e+00 1.1e+04  6  2  0  0 27   8  2  0  0 34 45718
DMRefine               2 1.0 2.0954e-01 1.0 2.09e+03 1.0 7.4e+03 3.5e+01 6.3e+01  0  0  0  0  0   0  0  0  0  0     1
DMPlexCreateGmsh       1 1.0 3.1210e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 2.0494e+00 63.7 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Partition         4 1.0 5.8296e-02 1.0 0.00e+00 0.0 1.8e+04 6.4e+01 5.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         4 1.0 1.1695e-02 1.0 0.00e+00 0.0 6.7e+04 7.4e+01 2.4e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 1.1939e-03 530.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       4 1.0 1.1563e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        4 1.0 4.8049e-03 1.1 0.00e+00 0.0 3.6e+03 5.1e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       4 1.0 2.1337e-03 1.4 0.00e+00 0.0 1.8e+03 1.9e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          4 1.0 1.4322e-03 1.7 0.00e+00 0.0 1.9e+03 2.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          29 1.0 7.4620e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 6.2494e-02 1.0 0.00e+00 0.0 4.3e+03 1.8e+02 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        4 1.0 1.5473e-03 1.1 0.00e+00 0.0 1.1e+04 1.1e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       4 1.0 4.7365e-03 1.0 0.00e+00 0.0 3.5e+04 7.1e+01 1.5e+02  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistOvrlp        3 1.0 9.2648e-03 1.0 0.00e+00 0.0 8.3e+04 7.0e+01 2.4e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistField        7 1.0 2.2010e-03 1.2 0.00e+00 0.0 1.5e+04 5.8e+01 2.0e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify        41 1.0 2.0691e-02 21.4 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      41 1.0 2.5089e-04 4.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          2 1.0 1.1280e-04 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          2 1.0 2.9221e-03 1.6 0.00e+00 0.0 4.1e+03 2.9e+01 1.9e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          2 1.0 1.2093e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          2 1.0 2.9636e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             2 1.0 3.5563e-04 2.3 0.00e+00 0.0 3.3e+03 2.7e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         2 1.0 8.9617e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         2 1.0 7.2417e-04 2.0 0.00e+00 0.0 8.2e+02 3.7e+01 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             35 1.0 2.5328e+03 1.0 4.34e+12 1.2 1.8e+07 1.2e+05 3.9e+04 98 100 99 100 98 Multiple stages 167260
SNESSetUp              1 1.0 6.2119e-05 3.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval    1878 1.0 1.4521e+02 1.2 1.83e+12 1.2 2.0e+06 1.2e+05 0.0e+00  5 42 11 11  0   7 46 21 14  0 1215241
SNESJacobianEval     688 1.0 5.4939e+02 1.0 1.40e+12 1.2 7.2e+05 7.9e+05 2.8e+03 21 32  4 26  7  29 35  8 34  9 246552
SNESLineSearch       688 1.0 1.7122e+02 1.0 1.82e+12 1.2 2.3e+06 1.2e+05 3.9e+03  7 42 12 13 10   9 46 25 17 12 1026827
DualSpaceSetUp         8 1.0 5.0702e-03 1.1 1.08e+02 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     2
FESetUp                8 1.0 1.7638e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 2.5949e+03 1.0 4.34e+12 1.2 1.8e+07 1.2e+05 4.0e+04 100 100 100 100 100 Multiple stages 163259
firedrake.__init__       1 1.0 1.1706e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
CreateMesh             3 1.0 2.2222e+00 10.9 0.00e+00 0.0 1.6e+05 7.5e+01 4.4e+02  0  0  1  0  1   0  0  2  0  1    -0
firedrake.mesh._from_gmsh       1 1.0 2.0500e+00 63.6 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       3 1.0 1.3758e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       3 1.0 7.9990e-06 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        3 1.0 4.5828e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          3 1.0 1.1548e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      16 1.0 9.4063e-02 1.1 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      20 1.0 2.0564e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      20 1.0 9.1400e-02 1.0 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      19 1.0 8.8624e-02 1.0 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      19 1.0 8.8486e-02 1.0 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      38 1.0 7.2708e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       6 1.0 4.6237e-03 1.1 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__      12 1.0 8.8550e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      12 1.0 1.5590e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      65 1.0 2.2521e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          3 1.0 1.8965e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       3 1.0 2.2463e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       4 1.0 5.9445e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       5 1.0 1.2542e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       3 1.0 1.8900e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     406 1.0 6.9181e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute     12162 1.0 5.6731e+02 1.2 3.22e+12 1.2 1.4e+06 1.2e+05 3.2e+01 20 74  7  8  0  27 81 15 10  0 549749
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       6 1.0 1.8499e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)   24324 1.0 2.6018e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      17 1.0 1.0235e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
GlobalKernel: generate loopy      17 0.0 1.3480e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      17 0.0 8.4581e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      17 1.0 1.4561e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.load      17 1.0 1.4561e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      17 1.0 9.2125e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.compilation.make_so      17 1.0 9.0693e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednBegin   12162 1.0 3.2489e-02 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd     12162 1.0 3.0959e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       3 1.0 9.3782e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong       4 1.0 6.0691e+00 1.0 1.46e+07 1.2 8.9e+03 1.3e+04 1.3e+01  0  0  0  0  0   0  0  0  0  0   241
firedrake.interpolation.interpolate      13 1.0 4.9803e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      13 1.0 5.8839e+00 1.0 9.06e+07 1.2 1.4e+04 4.2e+04 3.7e+01  0  0  0  0  0   0  0  0  0  0  1544
firedrake.formmanipulation.split_form      14 1.0 4.5512e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      14 1.0 1.9958e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      13 1.0 1.5497e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       6 1.0 1.0188e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin    2622 1.0 4.1267e+00 4.3 0.00e+00 0.0 1.4e+06 1.2e+05 4.0e+00  0  0  8  8  0   0  0 15 10  0    -0
Parloop_Cells_wrap_expression_kernel      26 1.0 5.3850e+00 1.0 9.06e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1687
firedrake.halo.Halo.global_to_local_end    2622 1.0 4.6862e+01 96.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       1 1.0 5.4147e-01 8.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b66fc677d0_wrap_pyop2_kernel_prolong       4 0.0 7.4486e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b66fc6e090_wrap_pyop2_kernel_prolong       4 0.0 5.5438e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 3.9082e+00 1.0 7.34e+07 1.2 8.1e+03 6.1e+04 1.1e+01  0  0  0  0  0   0  0  0  0  0  1884
firedrake.function.Function.assign     154 1.0 1.0087e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     153 1.0 9.6493e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.3410e-04 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      56 1.0 6.3952e-04 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 6.0394e-05 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.3040e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.8076e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.0678e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 7.2286e+00 1.0 0.00e+00 0.0 3.2e+03 4.9e+05 2.3e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 6.1007e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.1768e-04 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.2270e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.2270e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateSparsity         2 1.0 3.7676e+00 1.1 0.00e+00 0.0 2.7e+03 2.8e+05 1.8e+01  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         2 1.0 6.0341e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      35 1.0 2.5329e+03 1.0 4.34e+12 1.2 1.8e+07 1.2e+05 3.9e+04 98 100 99 100 98 Multiple stages 167251
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 3.3022e-01 1094.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 1.0423e-05 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 3.3016e-01 1338.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 3.3013e-01 1519.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral    3756 1.0 4.0148e+01 1.4 4.66e+11 1.2 0.0e+00 0.0e+00 0.0e+00  1 11  0  0  0   2 12  0  0  0 1164029
Parloop_Cells_wrap_form0_exterior_facet_top_integral    3756 1.0 1.1910e+00 1.1 5.99e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  5047
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral    3756 1.0 1.8200e+00 1.4 4.49e+09 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 43576
Parloop_Cells_wrap_form0_interior_facet_horiz_integral    3756 1.0 2.6462e+01 1.3 4.43e+11 1.2 0.0e+00 0.0e+00 0.0e+00  1 10  0  0  0   1 12  0  0  0 1678479
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral    3756 1.0 5.9527e+01 1.3 9.17e+11 1.3 0.0e+00 0.0e+00 0.0e+00  2 20  0  0  0   3 22  0  0  0 1431529
firedrake.halo.Halo.local_to_global_begin    1878 1.0 5.6562e-01 8.7 0.00e+00 0.0 9.8e+05 1.2e+05 0.0e+00  0  0  5  5  0   0  0 11  7  0    -0
firedrake.halo.Halo.local_to_global_end    1878 1.0 2.2826e+01 60.4 2.03e+08 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   652
Parloop_Cells_wrap_form00_cell_integral    1376 1.0 8.0641e+01 1.4 3.17e+11 1.2 0.0e+00 0.0e+00 0.0e+00  3  8  0  0  0   4  8  0  0  0 394247
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral    1376 1.0 3.7777e+00 2.9 1.65e+09 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  7737
Parloop_Cells_wrap_form00_interior_facet_horiz_integral    1376 1.0 1.0761e+02 1.3 4.17e+11 1.2 0.0e+00 0.0e+00 0.0e+00  4 10  0  0  0   5 11  0  0  0 388656
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral    1376 1.0 2.4822e+02 1.4 6.64e+11 1.3 0.0e+00 0.0e+00 0.0e+00  8 15  0  0  0  11 16  0  0  0 248871
firedrake.dmhooks.get_function_space       2 1.0 2.4444e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 5.0239e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0      688 1.0 2.5285e+01 1.1 2.40e+08 8.0 0.0e+00 0.0e+00 2.0e+00  1  0  0  0  0   1  0  0  0  0   277
MGSetup Level 1      688 1.0 7.8236e+02 1.0 4.54e+11 1.2 3.6e+06 1.2e+05 1.5e+04 30 11 20 20 37  41 12 39 26 46 58098
firedrake.constant.Constant.assign      35 1.0 1.8851e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154446975fd0_wrap_pyop2_kernel_prolong       4 0.0 7.4265e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154446b81e10_wrap_pyop2_kernel_prolong       4 0.0 5.3969e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1467f7b34b50_wrap_pyop2_kernel_prolong       4 0.0 7.4536e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1467f7b7ca50_wrap_pyop2_kernel_prolong       4 0.0 6.5142e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a61aa02510_wrap_pyop2_kernel_prolong       4 0.0 7.4480e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a61aa01f10_wrap_pyop2_kernel_prolong       4 0.0 6.4127e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145e1be6f490_wrap_pyop2_kernel_prolong       4 0.0 7.4406e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145e1be9d790_wrap_pyop2_kernel_prolong       4 0.0 6.5942e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153604523310_wrap_pyop2_kernel_prolong       4 0.0 7.4542e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153604519f10_wrap_pyop2_kernel_prolong       4 0.0 7.3287e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152a5ffe4ed0_wrap_pyop2_kernel_prolong       4 0.0 7.4517e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152a5ffe6b50_wrap_pyop2_kernel_prolong       4 0.0 6.3582e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c645e8f90_wrap_pyop2_kernel_prolong       4 0.0 7.4448e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c643ab990_wrap_pyop2_kernel_prolong       4 0.0 5.3381e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d9f811690_wrap_pyop2_kernel_prolong       4 0.0 7.4535e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145da41f9f10_wrap_pyop2_kernel_prolong       4 0.0 6.7688e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f9f7e5d790_wrap_pyop2_kernel_prolong       4 0.0 7.4420e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f9f7e8a110_wrap_pyop2_kernel_prolong       4 0.0 5.0972e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf5c1f18d0_wrap_pyop2_kernel_prolong       4 0.0 7.4555e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf5c469b10_wrap_pyop2_kernel_prolong       4 0.0 7.2213e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154421353f50_wrap_pyop2_kernel_prolong       4 0.0 7.4482e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154420969950_wrap_pyop2_kernel_prolong       4 0.0 6.6495e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5862d46d0_wrap_pyop2_kernel_prolong       4 0.0 7.4535e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5862d5550_wrap_pyop2_kernel_prolong       4 0.0 6.5727e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e0aa05750_wrap_pyop2_kernel_prolong       4 0.0 7.4455e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e09ee90d0_wrap_pyop2_kernel_prolong       4 0.0 5.2951e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d59c237bd0_wrap_pyop2_kernel_prolong       4 0.0 7.4472e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d59c262250_wrap_pyop2_kernel_prolong       4 0.0 6.2540e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e7efb35710_wrap_pyop2_kernel_prolong       4 0.0 7.4459e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e7efb35190_wrap_pyop2_kernel_prolong       4 0.0 6.6007e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1543d8830d50_wrap_pyop2_kernel_prolong       4 0.0 7.4258e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1543d885a1d0_wrap_pyop2_kernel_prolong       4 0.0 5.1761e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a12fd6e3d0_wrap_pyop2_kernel_prolong       4 0.0 7.4387e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a12fd6fad0_wrap_pyop2_kernel_prolong       4 0.0 6.8102e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b97d8fc50_wrap_pyop2_kernel_prolong       4 0.0 7.4464e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b97d65c50_wrap_pyop2_kernel_prolong       4 0.0 6.1929e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15311d35b7d0_wrap_pyop2_kernel_prolong       4 0.0 7.4480e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15311c8cdbd0_wrap_pyop2_kernel_prolong       4 0.0 5.9522e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15460f65ff50_wrap_pyop2_kernel_prolong       4 0.0 7.4462e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15460f641d50_wrap_pyop2_kernel_prolong       4 0.0 5.9344e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f78fc3010_wrap_pyop2_kernel_prolong       4 0.0 7.4593e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f78fc0750_wrap_pyop2_kernel_prolong       4 0.0 7.9267e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1548ca33aa10_wrap_pyop2_kernel_prolong       4 0.0 7.4499e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1548ca33aa90_wrap_pyop2_kernel_prolong       4 0.0 7.0391e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a6b173450_wrap_pyop2_kernel_prolong       4 0.0 7.4527e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a6b164550_wrap_pyop2_kernel_prolong       4 0.0 6.2875e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14689cf9d450_wrap_pyop2_kernel_prolong       4 0.0 7.4429e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14689c146dd0_wrap_pyop2_kernel_prolong       4 0.0 7.3089e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1552cfdcb210_wrap_pyop2_kernel_prolong       4 0.0 7.4605e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1552cfdefbd0_wrap_pyop2_kernel_prolong       4 0.0 7.8563e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151d48da0950_wrap_pyop2_kernel_prolong       4 0.0 7.4429e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151d48da3350_wrap_pyop2_kernel_prolong       4 0.0 5.1057e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b1c4d66590_wrap_pyop2_kernel_prolong       4 0.0 7.4465e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b1c43b8b50_wrap_pyop2_kernel_prolong       4 0.0 5.4070e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1546d4136710_wrap_pyop2_kernel_prolong       4 0.0 7.4523e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1546d4135f10_wrap_pyop2_kernel_prolong       4 0.0 6.9169e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e22bfdfd0_wrap_pyop2_kernel_prolong       4 0.0 7.4477e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e22bff0d0_wrap_pyop2_kernel_prolong       4 0.0 6.0655e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152ddbf1f9d0_wrap_pyop2_kernel_prolong       4 0.0 7.4432e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152de0124390_wrap_pyop2_kernel_prolong       4 0.0 7.2522e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150081be6310_wrap_pyop2_kernel_prolong       4 0.0 7.4444e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150081575510_wrap_pyop2_kernel_prolong       4 0.0 6.2143e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dcd8346c50_wrap_pyop2_kernel_prolong       4 0.0 7.4406e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dcd8346b50_wrap_pyop2_kernel_prolong       4 0.0 5.5358e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1515e1a4af90_wrap_pyop2_kernel_prolong       4 0.0 7.4421e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1515e1a4af10_wrap_pyop2_kernel_prolong       4 0.0 5.9790e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1457f23cf850_wrap_pyop2_kernel_prolong       4 0.0 7.4476e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1457f23f9b50_wrap_pyop2_kernel_prolong       4 0.0 5.9243e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15213f8d8290_wrap_pyop2_kernel_prolong       4 0.0 7.4547e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15213f95bb10_wrap_pyop2_kernel_prolong       4 0.0 7.5613e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b43facd890_wrap_pyop2_kernel_prolong       4 0.0 7.4489e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b43facee10_wrap_pyop2_kernel_prolong       4 0.0 6.9961e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455132fdbd0_wrap_pyop2_kernel_prolong       4 0.0 7.4545e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455132fd490_wrap_pyop2_kernel_prolong       4 0.0 7.2215e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e6c4888690_wrap_pyop2_kernel_prolong       4 0.0 7.4519e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e6c48545d0_wrap_pyop2_kernel_prolong       4 0.0 8.0309e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519da3d9d10_wrap_pyop2_kernel_prolong       4 0.0 7.4373e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519da45f610_wrap_pyop2_kernel_prolong       4 0.0 5.3232e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fbafa580d0_wrap_pyop2_kernel_prolong       4 0.0 7.4436e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fbb4177790_wrap_pyop2_kernel_prolong       4 0.0 5.7629e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e6dc52fd0_wrap_pyop2_kernel_prolong       4 0.0 7.4472e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e6dc50ed0_wrap_pyop2_kernel_prolong       4 0.0 6.9512e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1489b066e1d0_wrap_pyop2_kernel_prolong       4 0.0 7.4470e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1489b066da50_wrap_pyop2_kernel_prolong       4 0.0 5.6825e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1482b9112250_wrap_pyop2_kernel_prolong       4 0.0 7.4436e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1482b91119d0_wrap_pyop2_kernel_prolong       4 0.0 6.5331e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a1d503a10_wrap_pyop2_kernel_prolong       4 0.0 7.4474e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a1d39d250_wrap_pyop2_kernel_prolong       4 0.0 6.9046e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149953ee19d0_wrap_pyop2_kernel_prolong       4 0.0 7.4507e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149953f73c90_wrap_pyop2_kernel_prolong       4 0.0 7.3166e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b5d1f0cd0_wrap_pyop2_kernel_prolong       4 0.0 7.4391e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b5c6c8cd0_wrap_pyop2_kernel_prolong       4 0.0 6.8656e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab22327e90_wrap_pyop2_kernel_prolong       4 0.0 7.4503e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab221c7650_wrap_pyop2_kernel_prolong       4 0.0 6.7576e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1546fd2c3ad0_wrap_pyop2_kernel_prolong       4 0.0 7.4459e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1546fca833d0_wrap_pyop2_kernel_prolong       4 0.0 6.3896e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149227284a90_wrap_pyop2_kernel_prolong       4 0.0 7.4563e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14922690ddd0_wrap_pyop2_kernel_prolong       4 0.0 6.9103e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14937dbb5a50_wrap_pyop2_kernel_prolong       4 0.0 7.4558e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14937dbb7450_wrap_pyop2_kernel_prolong       4 0.0 7.2919e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e60bd6a3d0_wrap_pyop2_kernel_prolong       4 0.0 7.4582e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e60bd78290_wrap_pyop2_kernel_prolong       4 0.0 6.6135e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b47f670d0_wrap_pyop2_kernel_prolong       4 0.0 7.4385e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b47642e90_wrap_pyop2_kernel_prolong       4 0.0 5.6024e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cb9a627150_wrap_pyop2_kernel_prolong       4 0.0 7.4289e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cb9a625650_wrap_pyop2_kernel_prolong       4 0.0 6.3895e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1462ab5e4190_wrap_pyop2_kernel_prolong       4 0.0 7.4388e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1462ab80b190_wrap_pyop2_kernel_prolong       4 0.0 7.9264e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149115c904d0_wrap_pyop2_kernel_prolong       4 0.0 7.4322e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149115cc2310_wrap_pyop2_kernel_prolong       4 0.0 6.6182e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1489004bd0d0_wrap_pyop2_kernel_prolong       4 0.0 7.4316e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1488fb9453d0_wrap_pyop2_kernel_prolong       4 0.0 6.1833e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14973e0b6c50_wrap_pyop2_kernel_prolong       4 0.0 7.4262e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14973e0b6410_wrap_pyop2_kernel_prolong       4 0.0 5.8612e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150168ab0110_wrap_pyop2_kernel_prolong       4 0.0 7.4357e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150168b23150_wrap_pyop2_kernel_prolong       4 0.0 5.4751e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f780822350_wrap_pyop2_kernel_prolong       4 0.0 7.4302e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f77be99510_wrap_pyop2_kernel_prolong       4 0.0 5.6194e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458d0bbe010_wrap_pyop2_kernel_prolong       4 0.0 7.4349e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458d0bbd710_wrap_pyop2_kernel_prolong       4 0.0 5.8729e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e819d3c710_wrap_pyop2_kernel_prolong       4 0.0 7.4419e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e819d5c390_wrap_pyop2_kernel_prolong       4 0.0 7.3115e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150ea8992f10_wrap_pyop2_kernel_prolong       4 0.0 7.4409e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150ea3dc03d0_wrap_pyop2_kernel_prolong       4 0.0 6.5743e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e40ffd590_wrap_pyop2_kernel_prolong       4 0.0 7.4468e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e40ffcf50_wrap_pyop2_kernel_prolong       4 0.0 7.3613e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146b557767d0_wrap_pyop2_kernel_prolong       4 0.0 7.4391e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146b55776910_wrap_pyop2_kernel_prolong       4 0.0 7.9814e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dfa25f2450_wrap_pyop2_kernel_prolong       4 0.0 7.4251e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dfa25f1d10_wrap_pyop2_kernel_prolong       4 0.0 5.6132e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c032ebe710_wrap_pyop2_kernel_prolong       4 0.0 7.4403e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c032ebdf90_wrap_pyop2_kernel_prolong       4 0.0 6.1750e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ea1cb53b50_wrap_pyop2_kernel_prolong       4 0.0 7.4379e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ea1cb513d0_wrap_pyop2_kernel_prolong       4 0.0 5.2367e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff9b2e2290_wrap_pyop2_kernel_prolong       4 0.0 7.4337e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff9b2e1390_wrap_pyop2_kernel_prolong       4 0.0 6.5064e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d5985eb350_wrap_pyop2_kernel_prolong       4 0.0 7.4297e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d5985497d0_wrap_pyop2_kernel_prolong       4 0.0 6.0492e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152419455590_wrap_pyop2_kernel_prolong       4 0.0 7.4409e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152419457a90_wrap_pyop2_kernel_prolong       4 0.0 7.8732e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493c9e53150_wrap_pyop2_kernel_prolong       4 0.0 7.4456e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493c9da2250_wrap_pyop2_kernel_prolong       4 0.0 5.9710e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e884a3b90_wrap_pyop2_kernel_prolong       4 0.0 7.4359e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e884cd510_wrap_pyop2_kernel_prolong       4 0.0 6.6463e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455266ed1d0_wrap_pyop2_kernel_prolong       4 0.0 7.4397e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455264d6e50_wrap_pyop2_kernel_prolong       4 0.0 7.8910e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b55b9bed0_wrap_pyop2_kernel_prolong       4 0.0 7.4352e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b55db7010_wrap_pyop2_kernel_prolong       4 0.0 5.9750e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1474c17df810_wrap_pyop2_kernel_prolong       4 0.0 7.4428e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1474c16a1750_wrap_pyop2_kernel_prolong       4 0.0 6.7860e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148892c13a50_wrap_pyop2_kernel_prolong       4 0.0 7.4370e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148892c10d90_wrap_pyop2_kernel_prolong       4 0.0 7.0314e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ba2b078690_wrap_pyop2_kernel_prolong       4 0.0 7.4384e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ba2b0d4110_wrap_pyop2_kernel_prolong       4 0.0 6.2004e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a37fca790_wrap_pyop2_kernel_prolong       4 0.0 7.4311e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a37746010_wrap_pyop2_kernel_prolong       4 0.0 5.1976e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152ee087d6d0_wrap_pyop2_kernel_prolong       4 0.0 7.4317e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152edbec8f10_wrap_pyop2_kernel_prolong       4 0.0 6.8158e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b4a2757010_wrap_pyop2_kernel_prolong       4 0.0 7.4325e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b4a2781d50_wrap_pyop2_kernel_prolong       4 0.0 6.7657e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f2c1a4dd0_wrap_pyop2_kernel_prolong       4 0.0 7.4299e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f2c1a7510_wrap_pyop2_kernel_prolong       4 0.0 6.5447e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14916363e750_wrap_pyop2_kernel_prolong       4 0.0 7.4390e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14916363dfd0_wrap_pyop2_kernel_prolong       4 0.0 6.6505e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15397bcf8790_wrap_pyop2_kernel_prolong       4 0.0 7.4367e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15397bd37610_wrap_pyop2_kernel_prolong       4 0.0 7.0992e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1487546732d0_wrap_pyop2_kernel_prolong       4 0.0 7.4284e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148754511610_wrap_pyop2_kernel_prolong       4 0.0 5.7704e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478b1961850_wrap_pyop2_kernel_prolong       4 0.0 7.4363e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478b1960810_wrap_pyop2_kernel_prolong       4 0.0 6.3940e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148815da7950_wrap_pyop2_kernel_prolong       4 0.0 7.4347e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148816035410_wrap_pyop2_kernel_prolong       4 0.0 6.8773e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd9b06e7d0_wrap_pyop2_kernel_prolong       4 0.0 7.4440e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd9af579d0_wrap_pyop2_kernel_prolong       4 0.0 6.1888e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cccedf7ad0_wrap_pyop2_kernel_prolong       4 0.0 7.4332e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cccedbd1d0_wrap_pyop2_kernel_prolong       4 0.0 7.4153e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154deccd2750_wrap_pyop2_kernel_prolong       4 0.0 7.4435e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154decedc290_wrap_pyop2_kernel_prolong       4 0.0 6.3199e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150b51aa0e90_wrap_pyop2_kernel_prolong       4 0.0 7.4337e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150b51885410_wrap_pyop2_kernel_prolong       4 0.0 6.1810e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146920541a90_wrap_pyop2_kernel_prolong       4 0.0 7.4375e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146920541410_wrap_pyop2_kernel_prolong       4 0.0 5.5064e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522dc0f7c10_wrap_pyop2_kernel_prolong       4 0.0 7.4436e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522d7fcf290_wrap_pyop2_kernel_prolong       4 0.0 7.5356e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c87d05090_wrap_pyop2_kernel_prolong       4 0.0 7.4340e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c87d07250_wrap_pyop2_kernel_prolong       4 0.0 5.9428e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1553d3a66bd0_wrap_pyop2_kernel_prolong       4 0.0 7.4345e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1553d80c00d0_wrap_pyop2_kernel_prolong       4 0.0 7.2871e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd10182d10_wrap_pyop2_kernel_prolong       4 0.0 7.4413e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd0beb16d0_wrap_pyop2_kernel_prolong       4 0.0 6.8715e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150c90889090_wrap_pyop2_kernel_prolong       4 0.0 7.4420e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150c90a99c10_wrap_pyop2_kernel_prolong       4 0.0 6.9788e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1460fe506c10_wrap_pyop2_kernel_prolong       4 0.0 7.4309e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1460fe505a90_wrap_pyop2_kernel_prolong       4 0.0 6.7121e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c60413f810_wrap_pyop2_kernel_prolong       4 0.0 7.4360e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c604152ad0_wrap_pyop2_kernel_prolong       4 0.0 5.4421e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f4cd1c7d0_wrap_pyop2_kernel_prolong       4 0.0 7.4419e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f4cdbd3d0_wrap_pyop2_kernel_prolong       4 0.0 7.7246e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145e16649f10_wrap_pyop2_kernel_prolong       4 0.0 7.4382e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145e168d5310_wrap_pyop2_kernel_prolong       4 0.0 6.4750e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e232a92610_wrap_pyop2_kernel_prolong       4 0.0 7.4433e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e232125e90_wrap_pyop2_kernel_prolong       4 0.0 8.1097e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1540ca19a790_wrap_pyop2_kernel_prolong       4 0.0 7.4439e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1540ca1ac0d0_wrap_pyop2_kernel_prolong       4 0.0 7.2481e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f26b17310_wrap_pyop2_kernel_prolong       4 0.0 7.4402e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f26b15210_wrap_pyop2_kernel_prolong       4 0.0 7.6816e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided        688 1.0 4.4394e-02 4.5 0.00e+00 0.0 4.5e+05 4.0e+00 6.9e+02  0  0  2  0  2   0  0  5  0  9    -0
SFSetGraph           688 1.0 3.0666e-02 4.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              688 1.0 6.3087e-02 2.0 0.00e+00 0.0 9.0e+05 2.2e+02 6.9e+02  0  0  5  0  2   0  0 10  0  9    -0
SFPack           3848868 1.2 3.9214e+00 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack         3848868 1.2 2.2706e-01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy            11916 1.0 1.5652e+01 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecSet             31775 1.0 1.7827e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecAYPX            15888 1.0 2.6806e+01 2.1 1.03e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  3  0  0  0 38509
VecScatterBegin  3848868 1.2 5.0557e+01 1.3 0.00e+00 0.0 6.8e+06 7.5e+04 0.0e+00  2  0 37 23  0   7  0 75 100  0    -0
VecScatterEnd    3848868 1.2 6.6659e+01 35.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
MatMult             7944 1.0 3.5425e+02 1.2 2.43e+11 1.2 4.2e+06 1.2e+05 0.0e+00 12  6 23 23  0  47 62 46 99  0 68681
MatMultAdd          3972 1.0 2.1170e+01 1.2 1.03e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  3  0  0  0 48762
MatMultTranspose    3972 1.0 1.7503e+01 1.9 1.03e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  3  0  0  0 58976
MatSolve         1910532 1.2 2.7831e+02 1.4 1.22e+11 1.2 4.9e+06 5.9e+02 3.4e+03  9  3 27  0  9  33 31 54  1 46 43427
MatResidual         3972 1.0 1.9863e+02 1.3 1.23e+11 1.2 2.1e+06 1.2e+05 0.0e+00  7  3 11 12  0  25 31 23 50  0 62113
PCApply            11916 1.0 3.4570e+02 1.4 1.22e+11 1.2 4.9e+06 5.9e+02 3.4e+03 11  3 27  0  9  43 31 54  1 46 34962
PCApplyOnBlocks  1906560 1.2 2.6530e+02 1.5 1.20e+11 1.2 0.0e+00 0.0e+00 0.0e+00  8  3  0  0  0  29 30  0  0  0 45291
KSPSolve           11916 1.0 5.3276e+02 1.2 2.53e+11 1.2 7.0e+06 3.7e+04 7.4e+03 19  6 38 12 19  70 64 77 50 100 47135
MGSmooth Level 0    3972 1.0 4.0269e+01 2.1 2.55e+09 12.6 4.9e+06 5.9e+02 7.4e+03  1  0 27  0 19   4  0 54  1 100  1749
MGSmooth Level 1    7944 1.0 5.1372e+02 1.3 2.50e+11 1.2 2.1e+06 1.2e+05 0.0e+00 17  6 11 12  0  66 63 23 50  0 48745
MGResid Level 1     3972 1.0 1.9865e+02 1.3 1.23e+11 1.2 2.1e+06 1.2e+05 0.0e+00  7  3 11 12  0  25 31 23 50  0 62107
MGInterp Level 1    7944 1.0 3.7366e+01 1.3 2.06e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   5  5  0  0  0 55253
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   149            149
              Viewer     3              3
           Index Set  3673           3673
   IS L to G Mapping   447            447
             Section   472            472
   Star Forest Graph   610           1298
              Vector  3643           3643
              Matrix  1328           1328
      Preconditioner   246            246
       Krylov Solver   244            244
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

           Index Set  1376           1376
   Star Forest Graph   688              0
              Vector   688            688
========================================================================================================================
Average time to get PetscTime(): 2.75e-08
Average time for MPI_Barrier(): 4.3788e-06
Average time for zero size MPI_Send(): 2.29518e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murr_monthly3/vlumping_linesmooth/h1.profile # (source: code)
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

