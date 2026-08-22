****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0300.gadi.nci.org.au with 416 processes, by sg8812 on Sat Aug 22 11:41:55 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           2.459e+03     1.000   2.459e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                2.609e+12     1.146   2.480e+12  1.032e+15
Flops/sec:            1.061e+09     1.146   1.009e+09  4.196e+11
MPI Msg Count:        3.719e+05     3.739   2.560e+05  1.065e+08
MPI Msg Len (bytes):  2.070e+10     2.874   5.248e+04  5.588e+12
MPI Reductions:       2.194e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 1.1650e+03  47.4%  7.4909e+14  72.6%  1.623e+07  15.2%  1.862e+05       54.1%  1.440e+04  65.6%
 1:        MG Apply: 1.2940e+03  52.6%  2.8258e+14  27.4%  9.026e+07  84.8%  2.843e+04       45.9%  7.518e+03  34.3%

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

BuildTwoSided       1737 1.0 8.6236e+01 4.4 0.00e+00 0.0 4.2e+05 4.0e+00 1.3e+03  2  0  0  0  6   4  0  3  0  9    -0
BuildTwoSidedF      1153 1.0 8.6107e+01 4.0 0.00e+00 0.0 5.2e+05 1.9e+06 1.2e+03  2  0  0 18  5   4  0  3 32  8    -0
SFSetGraph           593 1.1 2.8650e-02 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              584 1.1 4.2066e+00 57.5 0.00e+00 0.0 3.3e+05 1.4e+03 1.2e+02  0  0  0  0  1   0  0  2  0  1    -0
SFBcastBegin         916 1.0 6.2026e-01 3.2 0.00e+00 0.0 1.9e+06 1.1e+05 0.0e+00  0  0  2  4  0   0  0 12  7  0    -0
SFBcastEnd           916 1.0 2.3053e+01 89.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        346 1.0 1.6081e-01 5.2 0.00e+00 0.0 7.7e+05 1.4e+05 0.0e+00  0  0  1  2  0   0  0  5  4  0    -0
SFReduceEnd          346 1.0 6.2772e+00 50.7 4.98e+07 2.9 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2143
SFFetchOpBegin         6 1.0 3.5050e-05 7.0 0.00e+00 0.0 1.1e+04 9.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           6 1.0 9.1712e-04 21.3 0.00e+00 0.0 1.1e+04 9.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          4 1.0 2.3645e-03 4.0 0.00e+00 0.0 5.2e+03 1.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         51 1.0 1.1407e-02 1.2 0.00e+00 0.0 2.6e+05 1.1e+02 6.0e+01  0  0  0  0  0   0  0  2  0  0    -0
SFSectionSF           53 1.0 6.0441e-03 2.5 0.00e+00 0.0 1.3e+05 4.9e+01 5.3e+01  0  0  0  0  0   0  0  1  0  0    -0
SFRemoteOff            2 1.0 9.3806e-05 3.1 0.00e+00 0.0 4.7e+03 2.1e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack            794287 1.1 4.1653e+00 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack          794293 1.1 3.5902e-01 3.4 4.98e+07 2.9 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 37470
VecDot               226 1.0 1.6284e+00 3.3 3.78e+08 1.1 0.0e+00 0.0e+00 2.3e+02  0  0  0  0  1   0  0  0  0  2 92857
VecMDot             5082 1.0 1.2997e+02 1.9 6.10e+10 1.1 0.0e+00 0.0e+00 5.1e+03  4  2  0  0 23   7  3  0  0 35 188017
VecNorm             5991 1.0 2.8418e+01 3.1 8.64e+09 1.1 0.0e+00 0.0e+00 6.0e+03  1  0  0  0 27   1  0  0  0 42 121757
VecScale            5464 1.0 8.8415e+00 1.1 3.88e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0 175732
VecCopy             1738 1.0 4.9070e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              2457 1.0 4.0723e+00 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              382 1.0 1.2099e+00 1.2 5.08e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 168184
VecWAXPY             227 1.0 9.7196e-01 1.2 1.90e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 78131
VecMAXPY            5464 1.0 8.8409e+01 1.1 6.83e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3  3  0  0  0   7  4  0  0  0 309260
VecScatterBegin   793019 1.1 1.2546e+01 1.4 0.00e+00 0.0 1.2e+07 1.3e+05 0.0e+00  0  0 11 29  0   1  0 75 54  0    -0
VecScatterEnd     793019 1.1 6.0066e+01 26.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecReduceArith       452 1.0 8.1988e-01 2.4 7.55e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 368867
VecReduceComm        226 1.0 6.3872e-01 15.5 0.00e+00 0.0 0.0e+00 0.0e+00 2.3e+02  0  0  0  0  1   0  0  0  0  2    -0
VecNormalize        1668 1.0 1.0696e+01 2.8 2.13e+09 1.1 0.0e+00 0.0e+00 1.7e+03  0  0  0  0  8   1  0  0  0 12 79602
MatMult             5309 1.0 3.8816e+02 1.2 2.70e+11 1.1 1.2e+07 1.3e+05 0.0e+00 15 10 11 29  0  31 14 75 54  0 278810
MatSolve          393829 1.1 4.2488e+01 1.3 2.47e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  1  0  0  0   3  1  0  0  0 233122
MatLUFactorSym       465 1.1 3.9460e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum     35343 1.1 8.7946e+00 1.2 1.01e+10 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 460120
MatILUFactorSym        2 1.0 3.1583e-04 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCopy               75 1.0 7.8864e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
MatConvert             1 1.0 3.2148e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin   36946 1.1 9.1110e+01 3.6 0.00e+00 0.0 5.2e+05 1.9e+06 1.2e+03  2  0  0 18  5   5  0  3 32  8    -0
MatAssemblyEnd     36946 1.1 2.0845e+01 7.2 3.71e+08 0.0 1.8e+04 9.8e+03 7.1e+01  0  0  0  0  0   1  0  0  0  0  2909
MatGetRowIJ          466 1.1 9.6852e-05 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats      76 1.0 2.1251e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 4.6e+02  1  0  0  0  2   2  0  0  0  3    -0
MatGetOrdering       466 1.1 8.5277e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       457 1.0 1.7318e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
MatTranspose           8 1.0 2.9015e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 1.8e+01  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          8 1.0 2.8538e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 1.8e+01  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        310 1.0 2.7333e+00 1.1 4.63e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 677845
MatPtAPSymbolic        3 1.0 4.9599e-01 1.0 0.00e+00 0.0 2.1e+04 8.7e+04 2.1e+01  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       231 1.0 2.2397e+01 1.1 1.85e+10 1.1 5.3e+05 1.5e+05 2.5e+02  1  1  1  1  1   2  1  3  3  2 330904
MatGetLocalMat       235 1.0 1.1740e+00 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        235 1.0 1.1760e+00 6.3 0.00e+00 0.0 5.4e+05 1.5e+05 0.0e+00  0  0  1  1  0   0  0  3  3  0    -0
MatSetPreallCOO       32 1.0 6.4907e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       32 1.0 3.4055e-05 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp              226 1.0 2.3282e+02 1.0 1.17e+11 1.1 4.1e+06 8.8e+04 4.3e+03  9  5  4  6 20  20  6 25 12 30 200659
PCApply             3569 1.0 1.3225e+03 1.1 7.06e+11 1.1 9.0e+07 2.8e+04 7.5e+03 53 27 85 46 34 Multiple stages 213672
PCApplyOnBlocks   393829 1.1 5.1925e+01 1.3 3.48e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  1  0  0  0   4  2  0  0  0 268625
KSPSetUp             226 1.0 5.6380e-02 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             226 1.0 1.7387e+03 1.0 1.04e+12 1.1 9.8e+07 3.9e+04 1.5e+04 71 40 92 69 68 Multiple stages 239689
KSPGMRESOrthog      5082 1.0 2.0114e+02 1.4 1.22e+11 1.1 0.0e+00 0.0e+00 5.1e+03  7  5  0  0 23  14  7  0  0 35 242985
DMRefine               2 1.0 2.1613e-01 1.0 2.09e+03 1.0 3.2e+04 4.5e+01 6.3e+01  0  0  0  0  0   0  0  0  0  0     4
DMPlexCreateGmsh       1 1.0 3.0814e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 5.0674e+00 159.9 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Partition         4 1.0 2.3540e-01 1.0 0.00e+00 0.0 7.7e+04 8.6e+01 5.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         4 1.0 2.9718e-02 1.0 0.00e+00 0.0 2.8e+05 1.0e+02 2.4e+02  0  0  0  0  1   0  0  2  0  2    -0
DMPlexPartSelf         1 1.0 5.6993e-03 1690.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       4 1.0 3.6767e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        4 1.0 4.4593e-03 1.4 0.00e+00 0.0 1.5e+04 6.9e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       4 1.0 1.7912e-03 4.1 0.00e+00 0.0 7.5e+03 2.7e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          4 1.0 3.1844e-03 1.8 0.00e+00 0.0 8.0e+03 3.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          29 1.0 1.5584e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 2.3295e-01 1.0 0.00e+00 0.0 1.7e+04 3.4e+02 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        4 1.0 3.9003e-03 1.1 0.00e+00 0.0 4.5e+04 1.6e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       4 1.0 1.2699e-02 1.0 0.00e+00 0.0 1.4e+05 9.9e+01 1.5e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistOvrlp        3 1.0 3.6007e-02 1.0 0.00e+00 0.0 3.5e+05 9.2e+01 2.4e+02  0  0  0  0  1   0  0  2  0  2    -0
DMPlexDistField        7 1.0 6.5048e-03 1.2 0.00e+00 0.0 6.5e+04 7.7e+01 2.0e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         2 1.0 4.3284e-04 1.2 0.00e+00 0.0 2.3e+04 3.8e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify        41 1.0 1.2803e-02 7.4 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      41 1.0 1.0815e-03 12.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          2 1.0 1.1989e-04 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          2 1.0 3.7844e-03 1.5 0.00e+00 0.0 1.8e+04 3.7e+01 1.9e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          2 1.0 1.7417e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          2 1.0 4.8381e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             2 1.0 3.9258e-04 1.9 0.00e+00 0.0 1.4e+04 3.5e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         2 1.0 1.3422e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         2 1.0 9.4441e-04 1.6 0.00e+00 0.0 3.5e+03 4.7e+01 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMSwarmSetSizes        4 1.0 8.3058e-05 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             75 1.0 2.3828e+03 1.0 2.61e+12 1.1 1.1e+08 5.3e+04 2.1e+04 97 100 99 100 96 Multiple stages 432941
SNESSetUp              1 1.0 6.5302e-05 9.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     301 1.0 5.3949e+01 1.2 5.58e+11 1.2 1.5e+06 1.6e+05 0.0e+00  2 21  1  4  0   4 29 10  8  0 4043967
SNESJacobianEval     226 1.0 3.3545e+02 1.0 8.78e+11 1.2 1.0e+06 1.0e+06 9.0e+02 14 33  1 19  4  29 46  6 35  6 1024724
SNESLineSearch       226 1.0 5.5669e+01 1.0 4.34e+11 1.2 1.5e+06 1.6e+05 9.0e+02  2 16  1  4  4   5 23 10  8  6 3053648
DualSpaceSetUp         8 1.0 5.5038e-03 1.2 1.08e+02 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     8
FESetUp                8 1.0 1.8318e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 2.4566e+03 1.0 2.61e+12 1.1 1.1e+08 5.2e+04 2.2e+04 100 100 100 100 100 Multiple stages 419959
firedrake.__init__       1 1.0 1.0856e+01 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
CreateMesh             3 1.0 5.3887e+00 15.3 0.00e+00 0.0 6.9e+05 1.0e+02 4.4e+02  0  0  1  0  2   0  0  4  0  3    -0
firedrake.mesh._from_gmsh       1 1.0 5.0680e+00 159.8 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       3 1.0 1.2450e-03 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       3 1.0 6.6020e-06 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        7 1.0 1.0753e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          3 1.0 1.3924e-03 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      36 1.0 4.1467e-02 1.2 0.00e+00 0.0 3.2e+04 1.4e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      44 1.0 2.7357e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      40 1.0 3.8140e-02 1.2 0.00e+00 0.0 3.2e+04 1.4e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      39 1.0 3.4158e-02 1.2 0.00e+00 0.0 3.2e+04 1.4e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      39 1.0 3.3953e-02 1.2 0.00e+00 0.0 3.2e+04 1.4e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      78 1.0 1.0002e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       6 1.0 7.4462e-03 1.1 0.00e+00 0.0 1.4e+04 1.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__      12 1.0 8.0119e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      24 1.0 3.4908e-04 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      76 1.0 4.8706e-02 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          3 1.0 2.7034e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       3 1.0 2.5858e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       8 1.0 7.3926e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       5 1.0 6.2907e-04 5.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       3 1.0 2.6965e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     662 1.0 1.1756e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      2433 1.0 3.3650e+02 1.2 1.44e+12 1.2 1.4e+06 1.5e+05 3.8e+01 13 54  1  4  0  27 75  9  7  0 1669832
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       6 1.0 2.6504e+00 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    4866 1.0 2.8807e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      19 1.0 1.1864e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
GlobalKernel: generate loopy      19 0.0 1.5396e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      19 0.0 9.2652e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      21 1.0 2.1684e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.load      20 1.0 2.1683e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      20 1.0 1.1394e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.make_so      20 1.0 1.1211e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
ParLoopRednBegin    2433 1.0 8.9892e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      2433 1.0 7.3244e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       3 1.0 1.5169e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong       4 1.0 1.0056e+01 1.0 2.82e+07 1.1 3.8e+04 1.8e+04 1.3e+01  0  0  0  0  0   1  0  0  0  0  1123
firedrake.interpolation.interpolate      21 1.0 6.8633e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      15 1.0 3.4516e+01 1.0 1.74e+08 1.1 1.4e+05 2.4e+04 1.8e+02  1  0  0  0  1   3  0  1  0  1  2024
firedrake.formmanipulation.split_form      16 1.0 7.7820e-03 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      16 1.0 3.7832e-04 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      17 1.0 3.6160e-01 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       8 1.1 2.9571e-01 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     623 1.0 5.4829e+00 17.0 0.00e+00 0.0 1.5e+06 1.5e+05 4.0e+00  0  0  1  4  0   0  0  9  7  0    -0
Parloop_Cells_wrap_expression_kernel      34 1.0 7.2783e+00 1.0 1.74e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  9599
firedrake.halo.Halo.global_to_local_end     623 1.0 2.2331e+01 124.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       3 1.0 6.7687e+00 33.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b5a076f50_wrap_pyop2_kernel_prolong       4 0.0 7.3565e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b5a075250_wrap_pyop2_kernel_prolong       4 0.0 1.0824e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 4.0729e+00 1.0 1.41e+08 1.1 3.5e+04 7.9e+04 1.1e+01  0  0  0  0  0   0  0  0  0  0 13881
firedrake.function.Function.assign     314 1.0 3.8967e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     313 1.0 3.8112e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.5615e-04 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate     154 1.0 1.9345e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 6.7832e-05 3.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 1.5620e-01 5.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 2.8007e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 1.5366e-01 5.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 1.1912e+01 1.0 0.00e+00 0.0 1.4e+04 6.3e+05 2.3e+01  0  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 7.3627e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 3.2462e-04 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.0839e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.0838e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateSparsity         4 1.0 8.1156e+00 1.1 0.00e+00 0.0 3.0e+04 1.4e+05 4.6e+01  0  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         4 1.0 1.2110e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      75 1.0 2.3833e+03 1.0 2.61e+12 1.1 1.1e+08 5.3e+04 2.1e+04 97 100 99 100 97 Multiple stages 432846
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 3.0160e-01 927.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 9.7000e-06 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 3.0154e-01 1106.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 3.0151e-01 1254.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     602 1.0 1.5902e+01 1.5 1.43e+11 1.1 0.0e+00 0.0e+00 0.0e+00  0  6  0  0  0   1  8  0  0  0 3599846
Parloop_Cells_wrap_form0_exterior_facet_top_integral     602 1.0 1.0232e+00 1.0 1.86e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  7272
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral     602 1.0 1.2914e+00 1.1 9.48e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 27154
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     602 1.0 9.6413e+00 1.2 1.37e+11 1.1 0.0e+00 0.0e+00 0.0e+00  0  5  0  0  0   1  7  0  0  0 5702661
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     602 1.0 2.1296e+01 1.3 2.78e+11 1.2 0.0e+00 0.0e+00 0.0e+00  1 10  0  0  0   2 14  0  0  0 4972027
firedrake.halo.Halo.local_to_global_begin     301 1.0 1.7745e-01 4.7 0.00e+00 0.0 6.9e+05 1.6e+05 0.0e+00  0  0  1  2  0   0  0  4  4  0    -0
firedrake.halo.Halo.local_to_global_end     301 1.0 6.2810e+00 48.8 4.98e+07 2.9 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2142
Parloop_Cells_wrap_form00_cell_integral     452 1.0 6.0054e+01 1.5 2.00e+11 1.1 0.0e+00 0.0e+00 0.0e+00  2  8  0  0  0   4 11  0  0  0 1335557
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     452 1.0 2.4926e+00 1.9 7.25e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 10757
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     452 1.0 7.3181e+01 1.2 2.65e+11 1.1 0.0e+00 0.0e+00 0.0e+00  3 10  0  0  0   6 14  0  0  0 1449987
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     452 1.0 1.5451e+02 1.3 4.13e+11 1.2 0.0e+00 0.0e+00 0.0e+00  6 15  0  0  0  12 21  0  0  0 1018332
firedrake.dmhooks.get_function_space       2 1.0 2.5238e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       3 1.0 1.6586e-04 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.VertexOnlyMesh       2 1.0 2.6158e+01 1.0 0.00e+00 0.0 6.0e+04 1.0e+02 2.2e+01  1  0  0  0  0   2  0  0  0  0    -0
firedrake.mesh._pic_swarm_in_mesh       2 1.0 2.6143e+01 1.0 0.00e+00 0.0 4.1e+04 8.6e+01 1.2e+01  1  0  0  0  0   2  0  0  0  0    -0
firedrake.mesh._parent_mesh_embedding       2 1.0 1.7045e+01 1.0 0.00e+00 0.0 2.3e+04 3.8e+01 8.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshGeometry.locate_cells_ref_coords_and_dists       2 1.0 5.6788e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry._c_locator       2 1.0 5.3629e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.pointquery_utils.src_locate_cell       2 1.0 4.7398e+00 24.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.pointquery_utils.compile_coordinate_element       2 1.0 4.7257e+00 30.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.pointquery_utils.make_wrapper       2 1.0 4.2074e+00 337.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.parloop.generate_single_cell_wrapper       2 1.0 4.2072e+00 341.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
c_locator_run          2 1.0 5.2967e-01 12.8 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._ctypes       2 1.0 5.0440e-01 31.2 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._constant_ctypes       2 1.0 1.9607e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.rtree       2 1.0 1.9864e-03 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.bounding_box_coords       2 1.0 2.9144e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
rtree_build            2 1.0 1.6083e-03 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._dmswarm_create       4 1.0 3.5599e-01 469.8 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._swarm_original_ordering_preserve       2 1.0 9.0936e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.VertexOnlyMeshTopology.__init__       4 1.0 7.8664e-02 5.5 0.00e+00 0.0 1.8e+04 1.5e+02 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_vom_from_vom_topology       4 1.0 5.7036e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.action       2 1.0 4.4612e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0       77 1.0 1.0837e+00 1.2 1.01e+08 1.1 2.1e+06 3.1e+02 1.9e+03  0  0  2  0  9   0  0 13  0 13 37010
MGSetup Level 1       77 1.0 1.7245e+02 1.0 9.81e+10 1.1 1.8e+06 1.6e+05 2.1e+03  7  4  2  5 10  15  5 11  9 14 227722
firedrake.constant.Constant.assign      75 1.0 3.9252e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b4d14b1550_wrap_pyop2_kernel_prolong       4 0.0 7.3980e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b4d14b0d50_wrap_pyop2_kernel_prolong       4 0.0 1.1086e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153d82888310_wrap_pyop2_kernel_prolong       4 0.0 7.4784e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153d8281da90_wrap_pyop2_kernel_prolong       4 0.0 9.9187e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e13091c10_wrap_pyop2_kernel_prolong       4 0.0 7.4799e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e130910d0_wrap_pyop2_kernel_prolong       4 0.0 1.1021e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c8aeb51290_wrap_pyop2_kernel_prolong       4 0.0 7.4917e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c8aec9cd90_wrap_pyop2_kernel_prolong       4 0.0 1.0937e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146623a8d890_wrap_pyop2_kernel_prolong       4 0.0 7.3674e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146623a8d610_wrap_pyop2_kernel_prolong       4 0.0 1.3253e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d601921bd0_wrap_pyop2_kernel_prolong       4 0.0 7.3508e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d601915b90_wrap_pyop2_kernel_prolong       4 0.0 9.6238e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14db9ba09910_wrap_pyop2_kernel_prolong       4 0.0 7.4846e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14db9ba0a190_wrap_pyop2_kernel_prolong       4 0.0 1.1952e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15378328a1d0_wrap_pyop2_kernel_prolong       4 0.0 7.3628e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153783289350_wrap_pyop2_kernel_prolong       4 0.0 1.2346e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153d0936e9d0_wrap_pyop2_kernel_prolong       4 0.0 7.3548e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153d08a4dad0_wrap_pyop2_kernel_prolong       4 0.0 1.0600e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1516e19ddd10_wrap_pyop2_kernel_prolong       4 0.0 7.3715e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1516e19e5c10_wrap_pyop2_kernel_prolong       4 0.0 1.2698e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc8ad05c50_wrap_pyop2_kernel_prolong       4 0.0 7.5007e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc8ad068d0_wrap_pyop2_kernel_prolong       4 0.0 1.2557e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f5b6467e90_wrap_pyop2_kernel_prolong       4 0.0 7.3628e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f5b645d750_wrap_pyop2_kernel_prolong       4 0.0 1.2768e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14622d8f2610_wrap_pyop2_kernel_prolong       4 0.0 7.4259e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14622cebda50_wrap_pyop2_kernel_prolong       4 0.0 1.1062e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1468f01cec90_wrap_pyop2_kernel_prolong       4 0.0 7.3499e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1468f03fd850_wrap_pyop2_kernel_prolong       4 0.0 1.0193e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d511309cd0_wrap_pyop2_kernel_prolong       4 0.0 7.3994e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d5108e6b10_wrap_pyop2_kernel_prolong       4 0.0 1.3349e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf8be7b950_wrap_pyop2_kernel_prolong       4 0.0 7.3590e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf8be491d0_wrap_pyop2_kernel_prolong       4 0.0 1.0600e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d0a7aa390_wrap_pyop2_kernel_prolong       4 0.0 7.3590e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d0a6af0d0_wrap_pyop2_kernel_prolong       4 0.0 1.2188e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bcb1663090_wrap_pyop2_kernel_prolong       4 0.0 7.4500e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bcb03c8850_wrap_pyop2_kernel_prolong       4 0.0 1.1201e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb92601bd0_wrap_pyop2_kernel_prolong       4 0.0 7.4216e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb924c2650_wrap_pyop2_kernel_prolong       4 0.0 1.1171e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14571f6414d0_wrap_pyop2_kernel_prolong       4 0.0 7.3580e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14571f640190_wrap_pyop2_kernel_prolong       4 0.0 1.1644e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c38b44c50_wrap_pyop2_kernel_prolong       4 0.0 7.4408e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c38b45690_wrap_pyop2_kernel_prolong       4 0.0 1.2049e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15141dd42b50_wrap_pyop2_kernel_prolong       4 0.0 7.3620e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15141dd39590_wrap_pyop2_kernel_prolong       4 0.0 1.2316e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f7e8e17fd0_wrap_pyop2_kernel_prolong       4 0.0 7.4463e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f7e8e15a50_wrap_pyop2_kernel_prolong       4 0.0 1.3205e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151761007790_wrap_pyop2_kernel_prolong       4 0.0 7.4833e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151761202650_wrap_pyop2_kernel_prolong       4 0.0 1.2349e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d5a1ee3d90_wrap_pyop2_kernel_prolong       4 0.0 7.4345e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d5a1ee0410_wrap_pyop2_kernel_prolong       4 0.0 1.2212e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce5f6e1e90_wrap_pyop2_kernel_prolong       4 0.0 7.4289e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce5f6e0b90_wrap_pyop2_kernel_prolong       4 0.0 1.1846e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e16f33690_wrap_pyop2_kernel_prolong       4 0.0 7.3832e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e16f31a50_wrap_pyop2_kernel_prolong       4 0.0 1.1124e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb2fa9f890_wrap_pyop2_kernel_prolong       4 0.0 7.3684e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb2fa9d4d0_wrap_pyop2_kernel_prolong       4 0.0 1.3531e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145c96b2b590_wrap_pyop2_kernel_prolong       4 0.0 7.4178e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145c96b2be10_wrap_pyop2_kernel_prolong       4 0.0 1.2488e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f8fb9610d0_wrap_pyop2_kernel_prolong       4 0.0 7.4836e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f8fb938f10_wrap_pyop2_kernel_prolong       4 0.0 1.2094e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ca492cce50_wrap_pyop2_kernel_prolong       4 0.0 7.3819e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ca48a01a50_wrap_pyop2_kernel_prolong       4 0.0 1.3190e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152b161b60d0_wrap_pyop2_kernel_prolong       4 0.0 7.3564e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152b161b7290_wrap_pyop2_kernel_prolong       4 0.0 1.1072e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b9f3f73650_wrap_pyop2_kernel_prolong       4 0.0 7.3619e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b9f3f69c10_wrap_pyop2_kernel_prolong       4 0.0 1.2656e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e4555ea350_wrap_pyop2_kernel_prolong       4 0.0 7.3656e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e455fc9990_wrap_pyop2_kernel_prolong       4 0.0 1.2957e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a827b2ed0_wrap_pyop2_kernel_prolong       4 0.0 7.3555e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1509ad51db90_wrap_pyop2_kernel_prolong       4 0.0 1.1490e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dee555e310_wrap_pyop2_kernel_prolong       4 0.0 7.4408e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dee555f750_wrap_pyop2_kernel_prolong       4 0.0 1.0964e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ebec7c23d0_wrap_pyop2_kernel_prolong       4 0.0 7.4775e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ebec7c01d0_wrap_pyop2_kernel_prolong       4 0.0 1.3025e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a31dca2950_wrap_pyop2_kernel_prolong       4 0.0 7.3831e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a31dacd7d0_wrap_pyop2_kernel_prolong       4 0.0 1.3748e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf0aeb3910_wrap_pyop2_kernel_prolong       4 0.0 7.3535e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf0a509b90_wrap_pyop2_kernel_prolong       4 0.0 1.1210e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14af67b2dd90_wrap_pyop2_kernel_prolong       4 0.0 7.3547e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14af67b2f7d0_wrap_pyop2_kernel_prolong       4 0.0 1.0160e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153eb201db90_wrap_pyop2_kernel_prolong       4 0.0 7.3626e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153eb2031e50_wrap_pyop2_kernel_prolong       4 0.0 1.2146e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e20215350_wrap_pyop2_kernel_prolong       4 0.0 7.4525e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e1b7962d0_wrap_pyop2_kernel_prolong       4 0.0 1.3157e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1530ebb69d10_wrap_pyop2_kernel_prolong       4 0.0 7.4869e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1530ebb43850_wrap_pyop2_kernel_prolong       4 0.0 1.1883e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eeecc7d090_wrap_pyop2_kernel_prolong       4 0.0 7.4291e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eeecc5ac50_wrap_pyop2_kernel_prolong       4 0.0 1.3634e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14865f01de90_wrap_pyop2_kernel_prolong       4 0.0 7.3567e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14865f2761d0_wrap_pyop2_kernel_prolong       4 0.0 1.1854e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa20ebea50_wrap_pyop2_kernel_prolong       4 0.0 7.3561e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa1bd43b90_wrap_pyop2_kernel_prolong       4 0.0 1.1521e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ba5fcbbd0_wrap_pyop2_kernel_prolong       4 0.0 7.3687e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b9fa09090_wrap_pyop2_kernel_prolong       4 0.0 1.3495e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f6802bf910_wrap_pyop2_kernel_prolong       4 0.0 7.3555e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f680299a90_wrap_pyop2_kernel_prolong       4 0.0 1.1083e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d394f55bd0_wrap_pyop2_kernel_prolong       4 0.0 7.4047e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d394788f90_wrap_pyop2_kernel_prolong       4 0.0 1.1951e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b36f37950_wrap_pyop2_kernel_prolong       4 0.0 7.4514e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b36f37c50_wrap_pyop2_kernel_prolong       4 0.0 1.3040e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152a95551a10_wrap_pyop2_kernel_prolong       4 0.0 7.4497e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152a95514cd0_wrap_pyop2_kernel_prolong       4 0.0 1.4679e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155279d0ae50_wrap_pyop2_kernel_prolong       4 0.0 7.4008e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155279f3d150_wrap_pyop2_kernel_prolong       4 0.0 1.0922e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c713a28c50_wrap_pyop2_kernel_prolong       4 0.0 7.3687e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c7187ae710_wrap_pyop2_kernel_prolong       4 0.0 1.1267e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1483735db010_wrap_pyop2_kernel_prolong       4 0.0 7.3535e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1483735e1950_wrap_pyop2_kernel_prolong       4 0.0 1.1311e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1471e6c74990_wrap_pyop2_kernel_prolong       4 0.0 7.3542e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1471e6c3ca50_wrap_pyop2_kernel_prolong       4 0.0 1.2284e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe67dc35d0_wrap_pyop2_kernel_prolong       4 0.0 7.3553e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe67dc2b50_wrap_pyop2_kernel_prolong       4 0.0 1.1522e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d39945110_wrap_pyop2_kernel_prolong       4 0.0 7.3939e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d39a9cdd0_wrap_pyop2_kernel_prolong       4 0.0 1.2655e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152153a5d010_wrap_pyop2_kernel_prolong       4 0.0 7.3709e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152153a56d50_wrap_pyop2_kernel_prolong       4 0.0 1.0968e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e578be9910_wrap_pyop2_kernel_prolong       4 0.0 7.3484e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e578a6ef10_wrap_pyop2_kernel_prolong       4 0.0 1.0589e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15196611ec10_wrap_pyop2_kernel_prolong       4 0.0 7.3746e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15196637f3d0_wrap_pyop2_kernel_prolong       4 0.0 1.3114e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15342b3f2390_wrap_pyop2_kernel_prolong       4 0.0 7.3880e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15342b3f1a50_wrap_pyop2_kernel_prolong       4 0.0 1.2766e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153d44776850_wrap_pyop2_kernel_prolong       4 0.0 7.4613e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153d44774b10_wrap_pyop2_kernel_prolong       4 0.0 1.3281e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145a1483f150_wrap_pyop2_kernel_prolong       4 0.0 7.4279e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145a0fe85650_wrap_pyop2_kernel_prolong       4 0.0 1.1653e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a91795e050_wrap_pyop2_kernel_prolong       4 0.0 7.4299e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a91795e210_wrap_pyop2_kernel_prolong       4 0.0 1.4195e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cbfa24a390_wrap_pyop2_kernel_prolong       4 0.0 7.4636e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cbfa248790_wrap_pyop2_kernel_prolong       4 0.0 1.1997e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c61342290_wrap_pyop2_kernel_prolong       4 0.0 7.3569e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c611a2950_wrap_pyop2_kernel_prolong       4 0.0 1.2444e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f8fa09e50_wrap_pyop2_kernel_prolong       4 0.0 7.4579e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f8fa05690_wrap_pyop2_kernel_prolong       4 0.0 1.2040e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da8ba661d0_wrap_pyop2_kernel_prolong       4 0.0 7.3982e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da8b8270d0_wrap_pyop2_kernel_prolong       4 0.0 1.2049e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1490bb68be10_wrap_pyop2_kernel_prolong       4 0.0 7.4125e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1490bb6885d0_wrap_pyop2_kernel_prolong       4 0.0 1.1845e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146fbe35a310_wrap_pyop2_kernel_prolong       4 0.0 7.3882e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146fbe382250_wrap_pyop2_kernel_prolong       4 0.0 1.3715e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1538a14fe5d0_wrap_pyop2_kernel_prolong       4 0.0 7.3553e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1538a1551a10_wrap_pyop2_kernel_prolong       4 0.0 1.1200e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e508bd36d0_wrap_pyop2_kernel_prolong       4 0.0 7.3587e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e508bd3b10_wrap_pyop2_kernel_prolong       4 0.0 1.1867e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d4f4ac2850_wrap_pyop2_kernel_prolong       4 0.0 7.3946e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d4f4ab9f10_wrap_pyop2_kernel_prolong       4 0.0 1.3068e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d58071090_wrap_pyop2_kernel_prolong       4 0.0 7.4314e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d58070750_wrap_pyop2_kernel_prolong       4 0.0 1.1403e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147289eb1cd0_wrap_pyop2_kernel_prolong       4 0.0 7.3702e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147289c45450_wrap_pyop2_kernel_prolong       4 0.0 1.1196e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e9bc52e10_wrap_pyop2_kernel_prolong       4 0.0 7.4129e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152ea0877110_wrap_pyop2_kernel_prolong       4 0.0 1.2229e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e7b01c1ed0_wrap_pyop2_kernel_prolong       4 0.0 7.3922e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e7b01c1890_wrap_pyop2_kernel_prolong       4 0.0 1.3563e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d4eee4650_wrap_pyop2_kernel_prolong       4 0.0 7.4262e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d4eede290_wrap_pyop2_kernel_prolong       4 0.0 1.0035e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1461881826d0_wrap_pyop2_kernel_prolong       4 0.0 7.4021e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146188181f50_wrap_pyop2_kernel_prolong       4 0.0 1.2258e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f81903a90_wrap_pyop2_kernel_prolong       4 0.0 7.4158e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f81901810_wrap_pyop2_kernel_prolong       4 0.0 1.3628e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf5c8a5010_wrap_pyop2_kernel_prolong       4 0.0 7.3624e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf5c9b3d10_wrap_pyop2_kernel_prolong       4 0.0 1.3367e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a87e702e90_wrap_pyop2_kernel_prolong       4 0.0 7.4726e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a880d56110_wrap_pyop2_kernel_prolong       4 0.0 1.1095e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf8b072350_wrap_pyop2_kernel_prolong       4 0.0 7.4207e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf8b052bd0_wrap_pyop2_kernel_prolong       4 0.0 1.2910e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ec259a9710_wrap_pyop2_kernel_prolong       4 0.0 7.3926e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ec259a97d0_wrap_pyop2_kernel_prolong       4 0.0 1.0303e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150b3df08210_wrap_pyop2_kernel_prolong       4 0.0 7.3611e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150b3d523890_wrap_pyop2_kernel_prolong       4 0.0 1.2518e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1520ba81dbd0_wrap_pyop2_kernel_prolong       4 0.0 7.3974e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1520ba6bfa10_wrap_pyop2_kernel_prolong       4 0.0 1.2775e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5263607d0_wrap_pyop2_kernel_prolong       4 0.0 7.3617e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a526362890_wrap_pyop2_kernel_prolong       4 0.0 1.2173e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1527e6fad610_wrap_pyop2_kernel_prolong       4 0.0 7.4583e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1527e6faff90_wrap_pyop2_kernel_prolong       4 0.0 1.3914e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d15cfbe490_wrap_pyop2_kernel_prolong       4 0.0 7.4415e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d15cfbcc10_wrap_pyop2_kernel_prolong       4 0.0 1.1500e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a6911d8350_wrap_pyop2_kernel_prolong       4 0.0 7.4663e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a69105dd10_wrap_pyop2_kernel_prolong       4 0.0 1.2999e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1521537d8d50_wrap_pyop2_kernel_prolong       4 0.0 7.4669e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1521536716d0_wrap_pyop2_kernel_prolong       4 0.0 1.1016e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154484804f50_wrap_pyop2_kernel_prolong       4 0.0 7.3604e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1544846b6ed0_wrap_pyop2_kernel_prolong       4 0.0 1.3423e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153a71b69550_wrap_pyop2_kernel_prolong       4 0.0 7.4584e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153a71a14ad0_wrap_pyop2_kernel_prolong       4 0.0 1.1325e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1461b9a48b10_wrap_pyop2_kernel_prolong       4 0.0 7.4147e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1461b91326d0_wrap_pyop2_kernel_prolong       4 0.0 1.3850e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1533a7599890_wrap_pyop2_kernel_prolong       4 0.0 7.4258e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1533a73459d0_wrap_pyop2_kernel_prolong       4 0.0 1.2224e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ade04f3490_wrap_pyop2_kernel_prolong       4 0.0 7.3522e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ade04f2950_wrap_pyop2_kernel_prolong       4 0.0 1.1168e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15318fc98550_wrap_pyop2_kernel_prolong       4 0.0 7.4197e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15318f245950_wrap_pyop2_kernel_prolong       4 0.0 1.2522e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150e188f7dd0_wrap_pyop2_kernel_prolong       4 0.0 7.3557e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150e188f5850_wrap_pyop2_kernel_prolong       4 0.0 1.1862e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a20f1eba10_wrap_pyop2_kernel_prolong       4 0.0 7.3934e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a20f1e9790_wrap_pyop2_kernel_prolong       4 0.0 1.3224e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c7ad663450_wrap_pyop2_kernel_prolong       4 0.0 7.4030e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c7ad602450_wrap_pyop2_kernel_prolong       4 0.0 1.2994e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150cbd8ff710_wrap_pyop2_kernel_prolong       4 0.0 7.3818e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150cbda8d550_wrap_pyop2_kernel_prolong       4 0.0 1.2083e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1503a9855810_wrap_pyop2_kernel_prolong       4 0.0 7.3727e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1503a9815b10_wrap_pyop2_kernel_prolong       4 0.0 1.3247e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e0115e0a90_wrap_pyop2_kernel_prolong       4 0.0 7.3601e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e011629bd0_wrap_pyop2_kernel_prolong       4 0.0 1.1090e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1467bc731050_wrap_pyop2_kernel_prolong       4 0.0 7.5450e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1467bc5f1410_wrap_pyop2_kernel_prolong       4 0.0 1.1041e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb2508e3d0_wrap_pyop2_kernel_prolong       4 0.0 7.5443e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb24711f50_wrap_pyop2_kernel_prolong       4 0.0 1.0258e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149bb5c776d0_wrap_pyop2_kernel_prolong       4 0.0 7.5454e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149bb5a4d4d0_wrap_pyop2_kernel_prolong       4 0.0 1.1072e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b09d6c4dd0_wrap_pyop2_kernel_prolong       4 0.0 7.5436e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b09d6bf390_wrap_pyop2_kernel_prolong       4 0.0 1.0656e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153fa0f3ced0_wrap_pyop2_kernel_prolong       4 0.0 7.5454e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153fa05c8050_wrap_pyop2_kernel_prolong       4 0.0 1.1121e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15084af80990_wrap_pyop2_kernel_prolong       4 0.0 7.5501e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15084a502450_wrap_pyop2_kernel_prolong       4 0.0 1.1819e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14efb00b3d50_wrap_pyop2_kernel_prolong       4 0.0 7.5455e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14efb0085190_wrap_pyop2_kernel_prolong       4 0.0 1.1298e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e63c6f5ad0_wrap_pyop2_kernel_prolong       4 0.0 7.5486e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e63c7064d0_wrap_pyop2_kernel_prolong       4 0.0 1.1712e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a94691a10_wrap_pyop2_kernel_prolong       4 0.0 7.5532e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a94692490_wrap_pyop2_kernel_prolong       4 0.0 1.2380e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d119267d0_wrap_pyop2_kernel_prolong       4 0.0 7.5486e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d11926a50_wrap_pyop2_kernel_prolong       4 0.0 1.1417e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b96c113390_wrap_pyop2_kernel_prolong       4 0.0 7.5542e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b967e3ab50_wrap_pyop2_kernel_prolong       4 0.0 1.3063e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148abbdc3250_wrap_pyop2_kernel_prolong       4 0.0 7.5464e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148abbdc17d0_wrap_pyop2_kernel_prolong       4 0.0 1.1440e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149bed333e10_wrap_pyop2_kernel_prolong       4 0.0 7.5621e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149bed342290_wrap_pyop2_kernel_prolong       4 0.0 1.4317e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1504ee7800d0_wrap_pyop2_kernel_prolong       4 0.0 7.5262e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1504ee781ad0_wrap_pyop2_kernel_prolong       4 0.0 1.0611e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1546578d9710_wrap_pyop2_kernel_prolong       4 0.0 7.5243e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1546578dba90_wrap_pyop2_kernel_prolong       4 0.0 1.1073e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c4539cd2d0_wrap_pyop2_kernel_prolong       4 0.0 7.5463e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c452e85850_wrap_pyop2_kernel_prolong       4 0.0 1.1939e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1468f551fdd0_wrap_pyop2_kernel_prolong       4 0.0 7.5493e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1468f551f5d0_wrap_pyop2_kernel_prolong       4 0.0 1.2430e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1464091e1390_wrap_pyop2_kernel_prolong       4 0.0 7.5403e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146409279810_wrap_pyop2_kernel_prolong       4 0.0 1.2482e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14600f2df250_wrap_pyop2_kernel_prolong       4 0.0 7.5445e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14600f2c9a90_wrap_pyop2_kernel_prolong       4 0.0 1.1802e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150c1dbc5550_wrap_pyop2_kernel_prolong       4 0.0 7.5332e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150c1dbc7510_wrap_pyop2_kernel_prolong       4 0.0 1.0664e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e792d4d550_wrap_pyop2_kernel_prolong       4 0.0 7.5446e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e792a9f3d0_wrap_pyop2_kernel_prolong       4 0.0 1.2877e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153721733910_wrap_pyop2_kernel_prolong       4 0.0 7.5474e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1537217bd5d0_wrap_pyop2_kernel_prolong       4 0.0 1.2661e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da385dff10_wrap_pyop2_kernel_prolong       4 0.0 7.5448e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da385cf810_wrap_pyop2_kernel_prolong       4 0.0 1.1311e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1480f3ababd0_wrap_pyop2_kernel_prolong       4 0.0 7.5455e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1480f3949690_wrap_pyop2_kernel_prolong       4 0.0 1.2171e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df02194e10_wrap_pyop2_kernel_prolong       4 0.0 7.5532e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df0216e1d0_wrap_pyop2_kernel_prolong       4 0.0 1.2969e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15261bdeb8d0_wrap_pyop2_kernel_prolong       4 0.0 7.5447e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15261bde9750_wrap_pyop2_kernel_prolong       4 0.0 1.4594e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da13cc1050_wrap_pyop2_kernel_prolong       4 0.0 7.5296e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da1337e810_wrap_pyop2_kernel_prolong       4 0.0 1.0856e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d3eb7c3190_wrap_pyop2_kernel_prolong       4 0.0 7.5333e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d3eb7c2c50_wrap_pyop2_kernel_prolong       4 0.0 1.1963e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a9a969b190_wrap_pyop2_kernel_prolong       4 0.0 7.5465e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a9a963b310_wrap_pyop2_kernel_prolong       4 0.0 1.0774e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14baa74e06d0_wrap_pyop2_kernel_prolong       4 0.0 7.5396e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14baa72fc390_wrap_pyop2_kernel_prolong       4 0.0 1.2906e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1492b8a90_wrap_pyop2_kernel_prolong       4 0.0 7.5377e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f14927da90_wrap_pyop2_kernel_prolong       4 0.0 1.2203e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478d57e4810_wrap_pyop2_kernel_prolong       4 0.0 7.5384e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478d57c1650_wrap_pyop2_kernel_prolong       4 0.0 1.2211e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1552970ac690_wrap_pyop2_kernel_prolong       4 0.0 7.5440e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155297132850_wrap_pyop2_kernel_prolong       4 0.0 1.1490e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e20ed8b90_wrap_pyop2_kernel_prolong       4 0.0 7.5442e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e20cfbb10_wrap_pyop2_kernel_prolong       4 0.0 1.2064e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149906343150_wrap_pyop2_kernel_prolong       4 0.0 7.5362e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14990631ead0_wrap_pyop2_kernel_prolong       4 0.0 1.1916e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15501726e350_wrap_pyop2_kernel_prolong       4 0.0 7.5491e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15501712b050_wrap_pyop2_kernel_prolong       4 0.0 1.2481e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d16e51510_wrap_pyop2_kernel_prolong       4 0.0 7.5419e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d16e53c90_wrap_pyop2_kernel_prolong       4 0.0 1.3314e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f952762010_wrap_pyop2_kernel_prolong       4 0.0 7.5458e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f952762550_wrap_pyop2_kernel_prolong       4 0.0 1.2023e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153688b1f610_wrap_pyop2_kernel_prolong       4 0.0 7.5444e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1536881a0450_wrap_pyop2_kernel_prolong       4 0.0 1.1557e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154bcef5f510_wrap_pyop2_kernel_prolong       4 0.0 7.5404e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154bcef5cc10_wrap_pyop2_kernel_prolong       4 0.0 1.0575e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e3f5229bd0_wrap_pyop2_kernel_prolong       4 0.0 7.5472e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e3f536c510_wrap_pyop2_kernel_prolong       4 0.0 1.1568e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149859695f10_wrap_pyop2_kernel_prolong       4 0.0 7.5493e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149859672bd0_wrap_pyop2_kernel_prolong       4 0.0 1.3823e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d006dd3950_wrap_pyop2_kernel_prolong       4 0.0 7.5276e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d007033bd0_wrap_pyop2_kernel_prolong       4 0.0 1.1337e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f59da48d0_wrap_pyop2_kernel_prolong       4 0.0 7.5458e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f59da6690_wrap_pyop2_kernel_prolong       4 0.0 1.2838e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1485ff3d51d0_wrap_pyop2_kernel_prolong       4 0.0 7.5516e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1485ff3a0ad0_wrap_pyop2_kernel_prolong       4 0.0 1.4049e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f7ee98250_wrap_pyop2_kernel_prolong       4 0.0 7.5412e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f7e559150_wrap_pyop2_kernel_prolong       4 0.0 1.0742e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15091d426990_wrap_pyop2_kernel_prolong       4 0.0 7.5387e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15091cb6a4d0_wrap_pyop2_kernel_prolong       4 0.0 1.2299e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152dbe409d10_wrap_pyop2_kernel_prolong       4 0.0 7.5418e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152dbe623610_wrap_pyop2_kernel_prolong       4 0.0 1.4063e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1503eb6ef710_wrap_pyop2_kernel_prolong       4 0.0 7.5425e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1503eb6ee7d0_wrap_pyop2_kernel_prolong       4 0.0 1.1500e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd4e256b50_wrap_pyop2_kernel_prolong       4 0.0 7.5489e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd4e0eef10_wrap_pyop2_kernel_prolong       4 0.0 1.2868e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f283d2e710_wrap_pyop2_kernel_prolong       4 0.0 7.5532e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f283f65a10_wrap_pyop2_kernel_prolong       4 0.0 1.2057e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f26c8a990_wrap_pyop2_kernel_prolong       4 0.0 7.5594e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f26c8ae10_wrap_pyop2_kernel_prolong       4 0.0 1.4214e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f90ec07d0_wrap_pyop2_kernel_prolong       4 0.0 7.5230e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f905a99d0_wrap_pyop2_kernel_prolong       4 0.0 1.0951e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c90b7f8d0_wrap_pyop2_kernel_prolong       4 0.0 7.5310e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c903819d0_wrap_pyop2_kernel_prolong       4 0.0 1.1555e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15297a6679d0_wrap_pyop2_kernel_prolong       4 0.0 7.5445e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1529794f0cd0_wrap_pyop2_kernel_prolong       4 0.0 1.3342e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147dfe100090_wrap_pyop2_kernel_prolong       4 0.0 7.5386e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147dfd6cded0_wrap_pyop2_kernel_prolong       4 0.0 1.2419e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fabf6b6ed0_wrap_pyop2_kernel_prolong       4 0.0 7.5283e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fabf70bed0_wrap_pyop2_kernel_prolong       4 0.0 1.1443e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ceea28c10_wrap_pyop2_kernel_prolong       4 0.0 7.5333e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ceea01550_wrap_pyop2_kernel_prolong       4 0.0 1.2457e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cab41a9bd0_wrap_pyop2_kernel_prolong       4 0.0 7.5388e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cab40be710_wrap_pyop2_kernel_prolong       4 0.0 1.0916e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d1ec1edc10_wrap_pyop2_kernel_prolong       4 0.0 7.5277e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d1ec1ef810_wrap_pyop2_kernel_prolong       4 0.0 1.0711e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f5c672e510_wrap_pyop2_kernel_prolong       4 0.0 7.5307e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f5c65d7a90_wrap_pyop2_kernel_prolong       4 0.0 1.2022e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a2970756d0_wrap_pyop2_kernel_prolong       4 0.0 7.5350e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a29706d790_wrap_pyop2_kernel_prolong       4 0.0 1.2016e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498a1e86210_wrap_pyop2_kernel_prolong       4 0.0 7.5339e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498a1e874d0_wrap_pyop2_kernel_prolong       4 0.0 1.0880e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a26dd35e90_wrap_pyop2_kernel_prolong       4 0.0 7.5261e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a26dd35a10_wrap_pyop2_kernel_prolong       4 0.0 1.1846e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1507f1241e10_wrap_pyop2_kernel_prolong       4 0.0 7.5376e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1507f1243a50_wrap_pyop2_kernel_prolong       4 0.0 1.3817e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ffed6d5850_wrap_pyop2_kernel_prolong       4 0.0 7.5272e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ffed401810_wrap_pyop2_kernel_prolong       4 0.0 1.1491e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1501447fcd50_wrap_pyop2_kernel_prolong       4 0.0 7.5397e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15013fe7be50_wrap_pyop2_kernel_prolong       4 0.0 1.1421e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150b6fe7cb10_wrap_pyop2_kernel_prolong       4 0.0 7.5364e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150b6f5a6890_wrap_pyop2_kernel_prolong       4 0.0 1.2761e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d831c41d0_wrap_pyop2_kernel_prolong       4 0.0 7.5390e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d83403490_wrap_pyop2_kernel_prolong       4 0.0 1.1674e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154929888350_wrap_pyop2_kernel_prolong       4 0.0 7.5341e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1549296d1dd0_wrap_pyop2_kernel_prolong       4 0.0 1.2088e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c0c5f88d10_wrap_pyop2_kernel_prolong       4 0.0 7.5410e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c0c61a3ed0_wrap_pyop2_kernel_prolong       4 0.0 1.3049e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dcdf5d1910_wrap_pyop2_kernel_prolong       4 0.0 7.5321e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dcdf5d2850_wrap_pyop2_kernel_prolong       4 0.0 1.2655e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b7819338d0_wrap_pyop2_kernel_prolong       4 0.0 7.5245e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b781928f90_wrap_pyop2_kernel_prolong       4 0.0 1.1450e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f2123f450_wrap_pyop2_kernel_prolong       4 0.0 7.5305e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f20fbf5d0_wrap_pyop2_kernel_prolong       4 0.0 1.2523e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1467681490d0_wrap_pyop2_kernel_prolong       4 0.0 7.5401e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14676814a6d0_wrap_pyop2_kernel_prolong       4 0.0 1.2391e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1511f5254050_wrap_pyop2_kernel_prolong       4 0.0 7.5357e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1511f5257f90_wrap_pyop2_kernel_prolong       4 0.0 1.3301e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15525c65f810_wrap_pyop2_kernel_prolong       4 0.0 7.5496e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15525c65f210_wrap_pyop2_kernel_prolong       4 0.0 1.3325e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1531fc849190_wrap_pyop2_kernel_prolong       4 0.0 7.5401e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1531fc84bc90_wrap_pyop2_kernel_prolong       4 0.0 1.3067e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149589bbe310_wrap_pyop2_kernel_prolong       4 0.0 7.5190e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149589bce410_wrap_pyop2_kernel_prolong       4 0.0 1.0576e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b9ede683d0_wrap_pyop2_kernel_prolong       4 0.0 7.5296e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b9ede6bb90_wrap_pyop2_kernel_prolong       4 0.0 1.1771e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146750a2b090_wrap_pyop2_kernel_prolong       4 0.0 7.5383e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146750a79510_wrap_pyop2_kernel_prolong       4 0.0 1.1005e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1520a3f7a2d0_wrap_pyop2_kernel_prolong       4 0.0 7.5347e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1520a3f780d0_wrap_pyop2_kernel_prolong       4 0.0 1.2644e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1542046050d0_wrap_pyop2_kernel_prolong       4 0.0 7.5399e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154204607b10_wrap_pyop2_kernel_prolong       4 0.0 1.1196e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd53b81ad0_wrap_pyop2_kernel_prolong       4 0.0 7.5433e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd53913790_wrap_pyop2_kernel_prolong       4 0.0 1.3271e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c2021f55d0_wrap_pyop2_kernel_prolong       4 0.0 7.5244e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c2021f4650_wrap_pyop2_kernel_prolong       4 0.0 1.1518e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14802b79fa90_wrap_pyop2_kernel_prolong       4 0.0 7.5227e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14802b7b8410_wrap_pyop2_kernel_prolong       4 0.0 1.0866e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ea3003850_wrap_pyop2_kernel_prolong       4 0.0 7.5364e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ea2ebdf50_wrap_pyop2_kernel_prolong       4 0.0 1.2537e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154440985550_wrap_pyop2_kernel_prolong       4 0.0 7.5314e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1544409a05d0_wrap_pyop2_kernel_prolong       4 0.0 1.2609e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cbfb5ab790_wrap_pyop2_kernel_prolong       4 0.0 7.5338e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cbfb7ddbd0_wrap_pyop2_kernel_prolong       4 0.0 1.3336e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15445fb22390_wrap_pyop2_kernel_prolong       4 0.0 7.5514e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15445fb07ed0_wrap_pyop2_kernel_prolong       4 0.0 1.3665e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493a1f225d0_wrap_pyop2_kernel_prolong       4 0.0 7.5328e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493a0c912d0_wrap_pyop2_kernel_prolong       4 0.0 1.2643e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ead4e85450_wrap_pyop2_kernel_prolong       4 0.0 7.5205e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ead4ea1410_wrap_pyop2_kernel_prolong       4 0.0 1.0709e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1531e6de9f90_wrap_pyop2_kernel_prolong       4 0.0 7.5440e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1531e6de9590_wrap_pyop2_kernel_prolong       4 0.0 1.2049e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bc2c11fd90_wrap_pyop2_kernel_prolong       4 0.0 7.5464e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bc2c11f590_wrap_pyop2_kernel_prolong       4 0.0 1.3064e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1502ff503e10_wrap_pyop2_kernel_prolong       4 0.0 7.5396e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1502ff526d50_wrap_pyop2_kernel_prolong       4 0.0 1.2341e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14564dcbc990_wrap_pyop2_kernel_prolong       4 0.0 7.5385e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14564d496d50_wrap_pyop2_kernel_prolong       4 0.0 1.3471e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154714caf750_wrap_pyop2_kernel_prolong       4 0.0 7.5478e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154714ce4510_wrap_pyop2_kernel_prolong       4 0.0 1.2632e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ada60437d0_wrap_pyop2_kernel_prolong       4 0.0 7.5428e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ada6aa2290_wrap_pyop2_kernel_prolong       4 0.0 1.2295e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b309c01510_wrap_pyop2_kernel_prolong       4 0.0 7.5336e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b309c03010_wrap_pyop2_kernel_prolong       4 0.0 1.1316e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152968a95690_wrap_pyop2_kernel_prolong       4 0.0 7.5475e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152963bc9150_wrap_pyop2_kernel_prolong       4 0.0 1.5098e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c8f854f950_wrap_pyop2_kernel_prolong       4 0.0 7.5471e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c8f877d010_wrap_pyop2_kernel_prolong       4 0.0 1.2325e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fcdf5058d0_wrap_pyop2_kernel_prolong       4 0.0 7.5306e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fcdf652410_wrap_pyop2_kernel_prolong       4 0.0 1.2847e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14705b395910_wrap_pyop2_kernel_prolong       4 0.0 7.5449e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14705b394310_wrap_pyop2_kernel_prolong       4 0.0 1.3080e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab12e876d0_wrap_pyop2_kernel_prolong       4 0.0 7.5348e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab12428dd0_wrap_pyop2_kernel_prolong       4 0.0 1.3509e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146338235f50_wrap_pyop2_kernel_prolong       4 0.0 7.5161e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1463382354d0_wrap_pyop2_kernel_prolong       4 0.0 1.0833e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1521781cab10_wrap_pyop2_kernel_prolong       4 0.0 7.5149e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1521783d5a90_wrap_pyop2_kernel_prolong       4 0.0 1.1482e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148cd8b89dd0_wrap_pyop2_kernel_prolong       4 0.0 7.5185e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148cd8b881d0_wrap_pyop2_kernel_prolong       4 0.0 1.1779e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1545bac15ed0_wrap_pyop2_kernel_prolong       4 0.0 7.5158e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1545bac15a10_wrap_pyop2_kernel_prolong       4 0.0 1.2183e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dcbaa9d0d0_wrap_pyop2_kernel_prolong       4 0.0 7.5217e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dcbb33fe10_wrap_pyop2_kernel_prolong       4 0.0 1.2738e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151358ac84d0_wrap_pyop2_kernel_prolong       4 0.0 7.5130e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151358a69a10_wrap_pyop2_kernel_prolong       4 0.0 1.1314e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ba40bbd350_wrap_pyop2_kernel_prolong       4 0.0 7.5142e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ba40bbf610_wrap_pyop2_kernel_prolong       4 0.0 1.0472e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c115591d0_wrap_pyop2_kernel_prolong       4 0.0 7.5089e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c1155be90_wrap_pyop2_kernel_prolong       4 0.0 1.0961e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1527a4b17450_wrap_pyop2_kernel_prolong       4 0.0 7.5241e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1527a4b158d0_wrap_pyop2_kernel_prolong       4 0.0 1.3180e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f6409da610_wrap_pyop2_kernel_prolong       4 0.0 7.5209e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f6409e1f90_wrap_pyop2_kernel_prolong       4 0.0 1.2270e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a031c8c250_wrap_pyop2_kernel_prolong       4 0.0 7.5218e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a031b1cc90_wrap_pyop2_kernel_prolong       4 0.0 1.2541e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1548fb12e210_wrap_pyop2_kernel_prolong       4 0.0 7.5239e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1548fb125750_wrap_pyop2_kernel_prolong       4 0.0 1.2783e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a91f29b50_wrap_pyop2_kernel_prolong       4 0.0 7.5295e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a91cec410_wrap_pyop2_kernel_prolong       4 0.0 1.3182e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1494f50fa150_wrap_pyop2_kernel_prolong       4 0.0 7.5073e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1494f50fe110_wrap_pyop2_kernel_prolong       4 0.0 9.8772e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150836fbb6d0_wrap_pyop2_kernel_prolong       4 0.0 7.5126e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150836e4b050_wrap_pyop2_kernel_prolong       4 0.0 1.1257e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e9905c9e10_wrap_pyop2_kernel_prolong       4 0.0 7.5241e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e9905ca7d0_wrap_pyop2_kernel_prolong       4 0.0 1.2581e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146713e6ded0_wrap_pyop2_kernel_prolong       4 0.0 7.5134e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146713c37410_wrap_pyop2_kernel_prolong       4 0.0 1.2091e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c1d65bc90_wrap_pyop2_kernel_prolong       4 0.0 7.5137e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c1c52df50_wrap_pyop2_kernel_prolong       4 0.0 1.2057e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15392c40c110_wrap_pyop2_kernel_prolong       4 0.0 7.5186e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153927965c50_wrap_pyop2_kernel_prolong       4 0.0 1.1396e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1527e7882310_wrap_pyop2_kernel_prolong       4 0.0 7.5197e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1527e7882810_wrap_pyop2_kernel_prolong       4 0.0 1.1813e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cef7aabc90_wrap_pyop2_kernel_prolong       4 0.0 7.5252e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cef7a34b10_wrap_pyop2_kernel_prolong       4 0.0 1.2759e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14713443a110_wrap_pyop2_kernel_prolong       4 0.0 7.5170e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14712f8f9b50_wrap_pyop2_kernel_prolong       4 0.0 1.1400e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14868be65650_wrap_pyop2_kernel_prolong       4 0.0 7.5083e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14868bcebf50_wrap_pyop2_kernel_prolong       4 0.0 1.0687e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bc493e1350_wrap_pyop2_kernel_prolong       4 0.0 7.5205e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bc494895d0_wrap_pyop2_kernel_prolong       4 0.0 1.2893e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14808b73b9d0_wrap_pyop2_kernel_prolong       4 0.0 7.5116e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14808bb12a50_wrap_pyop2_kernel_prolong       4 0.0 1.1693e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b608aec10_wrap_pyop2_kernel_prolong       4 0.0 7.5188e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b608af090_wrap_pyop2_kernel_prolong       4 0.0 1.3416e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1472b2e45fd0_wrap_pyop2_kernel_prolong       4 0.0 7.5188e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1472b3bca8d0_wrap_pyop2_kernel_prolong       4 0.0 1.2025e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14800cb0c6d0_wrap_pyop2_kernel_prolong       4 0.0 7.5118e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14800cdc4b10_wrap_pyop2_kernel_prolong       4 0.0 1.2419e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15052cbcc150_wrap_pyop2_kernel_prolong       4 0.0 7.5192e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15052cba9dd0_wrap_pyop2_kernel_prolong       4 0.0 1.2742e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154cd339a4d0_wrap_pyop2_kernel_prolong       4 0.0 7.5149e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154cd339b310_wrap_pyop2_kernel_prolong       4 0.0 1.1894e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e0df295c90_wrap_pyop2_kernel_prolong       4 0.0 7.5172e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e0de721990_wrap_pyop2_kernel_prolong       4 0.0 1.2047e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f597a2ced0_wrap_pyop2_kernel_prolong       4 0.0 7.5189e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f597ad2bd0_wrap_pyop2_kernel_prolong       4 0.0 1.3555e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148763b9bad0_wrap_pyop2_kernel_prolong       4 0.0 7.5086e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148763b79f90_wrap_pyop2_kernel_prolong       4 0.0 1.1267e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f805555d0_wrap_pyop2_kernel_prolong       4 0.0 7.5231e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f80528150_wrap_pyop2_kernel_prolong       4 0.0 1.2819e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc49f2a490_wrap_pyop2_kernel_prolong       4 0.0 7.5154e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc49f2ab90_wrap_pyop2_kernel_prolong       4 0.0 1.2203e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1518170c9c50_wrap_pyop2_kernel_prolong       4 0.0 7.5159e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1518170c8110_wrap_pyop2_kernel_prolong       4 0.0 1.2925e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a6e3189a50_wrap_pyop2_kernel_prolong       4 0.0 7.5145e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a6e2801390_wrap_pyop2_kernel_prolong       4 0.0 1.2660e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145afdf742d0_wrap_pyop2_kernel_prolong       4 0.0 7.5187e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145afdf75f90_wrap_pyop2_kernel_prolong       4 0.0 1.2204e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455ac69dcd0_wrap_pyop2_kernel_prolong       4 0.0 7.5215e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455ac69d250_wrap_pyop2_kernel_prolong       4 0.0 1.2306e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a8e8f80110_wrap_pyop2_kernel_prolong       4 0.0 7.5182e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a8e8fb1b90_wrap_pyop2_kernel_prolong       4 0.0 1.1569e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a2c992050_wrap_pyop2_kernel_prolong       4 0.0 7.5248e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a2c991750_wrap_pyop2_kernel_prolong       4 0.0 1.4235e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146cd0c8ded0_wrap_pyop2_kernel_prolong       4 0.0 7.5208e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146cd0c8d790_wrap_pyop2_kernel_prolong       4 0.0 1.3049e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14857b569350_wrap_pyop2_kernel_prolong       4 0.0 7.5138e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14857a8b7a50_wrap_pyop2_kernel_prolong       4 0.0 1.0756e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151f79d62a90_wrap_pyop2_kernel_prolong       4 0.0 7.5209e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151f7946df50_wrap_pyop2_kernel_prolong       4 0.0 1.3517e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e155ace490_wrap_pyop2_kernel_prolong       4 0.0 7.5303e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e155acdcd0_wrap_pyop2_kernel_prolong       4 0.0 1.5021e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ba7e76b450_wrap_pyop2_kernel_prolong       4 0.0 7.5194e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ba7e761bd0_wrap_pyop2_kernel_prolong       4 0.0 1.1952e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1533d2f8e410_wrap_pyop2_kernel_prolong       4 0.0 7.5157e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1533d2f7bb10_wrap_pyop2_kernel_prolong       4 0.0 1.2158e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eced4ed4d0_wrap_pyop2_kernel_prolong       4 0.0 7.5194e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eced4ed1d0_wrap_pyop2_kernel_prolong       4 0.0 1.2984e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14af6e0191d0_wrap_pyop2_kernel_prolong       4 0.0 7.5179e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14af6d87a050_wrap_pyop2_kernel_prolong       4 0.0 1.2552e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b3838c650_wrap_pyop2_kernel_prolong       4 0.0 7.5300e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b3838f0d0_wrap_pyop2_kernel_prolong       4 0.0 1.3741e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c90c41ad0_wrap_pyop2_kernel_prolong       4 0.0 7.5246e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c902f16d0_wrap_pyop2_kernel_prolong       4 0.0 1.2761e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1513ca5862d0_wrap_pyop2_kernel_prolong       4 0.0 7.5254e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1513c9b8bd90_wrap_pyop2_kernel_prolong       4 0.0 1.3829e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c9ddc09790_wrap_pyop2_kernel_prolong       4 0.0 7.4979e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c9de7a2450_wrap_pyop2_kernel_prolong       4 0.0 1.1658e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152f283d3350_wrap_pyop2_kernel_prolong       4 0.0 7.4974e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152f282b0a90_wrap_pyop2_kernel_prolong       4 0.0 1.1133e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f4fe6a210_wrap_pyop2_kernel_prolong       4 0.0 7.5040e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f4fe69790_wrap_pyop2_kernel_prolong       4 0.0 1.1960e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1530ba1dea10_wrap_pyop2_kernel_prolong       4 0.0 7.5054e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1530ba09ad50_wrap_pyop2_kernel_prolong       4 0.0 1.2383e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c59c205890_wrap_pyop2_kernel_prolong       4 0.0 7.5231e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c59c22f410_wrap_pyop2_kernel_prolong       4 0.0 1.2129e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1544da42ad50_wrap_pyop2_kernel_prolong       4 0.0 7.5112e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1544da464510_wrap_pyop2_kernel_prolong       4 0.0 1.3149e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1489c4de8250_wrap_pyop2_kernel_prolong       4 0.0 7.5061e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1489c4db77d0_wrap_pyop2_kernel_prolong       4 0.0 1.2194e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5289ff550_wrap_pyop2_kernel_prolong       4 0.0 7.4999e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5289ffcd0_wrap_pyop2_kernel_prolong       4 0.0 1.1105e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dbcc6195d0_wrap_pyop2_kernel_prolong       4 0.0 7.5096e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dbcc0cb010_wrap_pyop2_kernel_prolong       4 0.0 1.2801e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee157c4d10_wrap_pyop2_kernel_prolong       4 0.0 7.5295e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee14e47790_wrap_pyop2_kernel_prolong       4 0.0 1.3264e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d68e69c10_wrap_pyop2_kernel_prolong       4 0.0 7.5032e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d68f07c10_wrap_pyop2_kernel_prolong       4 0.0 1.1498e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f0f748d950_wrap_pyop2_kernel_prolong       4 0.0 7.5082e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f0f745c890_wrap_pyop2_kernel_prolong       4 0.0 1.2176e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1470f86b9e90_wrap_pyop2_kernel_prolong       4 0.0 7.5101e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1470f86b9390_wrap_pyop2_kernel_prolong       4 0.0 1.3542e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145a18f5db90_wrap_pyop2_kernel_prolong       4 0.0 7.5055e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145a190bdc50_wrap_pyop2_kernel_prolong       4 0.0 1.2554e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455bb8d6f90_wrap_pyop2_kernel_prolong       4 0.0 7.5012e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455bb783a10_wrap_pyop2_kernel_prolong       4 0.0 1.0776e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eaadde92d0_wrap_pyop2_kernel_prolong       4 0.0 7.5152e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eaae01c850_wrap_pyop2_kernel_prolong       4 0.0 1.3616e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458e9c23710_wrap_pyop2_kernel_prolong       4 0.0 7.5129e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458e99da950_wrap_pyop2_kernel_prolong       4 0.0 1.2165e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152ab0231f10_wrap_pyop2_kernel_prolong       4 0.0 7.5102e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152ab01c2c50_wrap_pyop2_kernel_prolong       4 0.0 1.3443e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153db05cbc90_wrap_pyop2_kernel_prolong       4 0.0 7.5124e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153db04aa4d0_wrap_pyop2_kernel_prolong       4 0.0 1.2171e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b746475e10_wrap_pyop2_kernel_prolong       4 0.0 7.5116e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b74641e190_wrap_pyop2_kernel_prolong       4 0.0 1.1783e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146b78663650_wrap_pyop2_kernel_prolong       4 0.0 7.5060e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146b78802510_wrap_pyop2_kernel_prolong       4 0.0 1.1243e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145ac43607d0_wrap_pyop2_kernel_prolong       4 0.0 7.5198e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145ac4359d90_wrap_pyop2_kernel_prolong       4 0.0 1.3279e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1543836f2690_wrap_pyop2_kernel_prolong       4 0.0 7.5106e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1543836cce10_wrap_pyop2_kernel_prolong       4 0.0 1.2534e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff48fd69d0_wrap_pyop2_kernel_prolong       4 0.0 7.5153e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff48fd4890_wrap_pyop2_kernel_prolong       4 0.0 1.3599e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f15a34e290_wrap_pyop2_kernel_prolong       4 0.0 7.5135e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f15a5e0490_wrap_pyop2_kernel_prolong       4 0.0 1.3361e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15163d5eab90_wrap_pyop2_kernel_prolong       4 0.0 7.5188e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15163d885490_wrap_pyop2_kernel_prolong       4 0.0 1.3990e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f4b43f4d0_wrap_pyop2_kernel_prolong       4 0.0 7.5087e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f4b1c9010_wrap_pyop2_kernel_prolong       4 0.0 1.1777e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dea21f1f50_wrap_pyop2_kernel_prolong       4 0.0 7.5052e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dea21f3590_wrap_pyop2_kernel_prolong       4 0.0 1.1428e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e36f08af50_wrap_pyop2_kernel_prolong       4 0.0 7.5161e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e36f7281d0_wrap_pyop2_kernel_prolong       4 0.0 1.3525e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d6ec59510_wrap_pyop2_kernel_prolong       4 0.0 7.5065e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d6ec598d0_wrap_pyop2_kernel_prolong       4 0.0 1.0464e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146b5b96aad0_wrap_pyop2_kernel_prolong       4 0.0 7.5050e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146b5b96a050_wrap_pyop2_kernel_prolong       4 0.0 1.1532e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152875dff190_wrap_pyop2_kernel_prolong       4 0.0 7.5223e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15287602e510_wrap_pyop2_kernel_prolong       4 0.0 1.4555e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1468d87f5e90_wrap_pyop2_kernel_prolong       4 0.0 7.5070e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1468d87f72d0_wrap_pyop2_kernel_prolong       4 0.0 1.3372e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14800872a390_wrap_pyop2_kernel_prolong       4 0.0 7.5011e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148003d78e50_wrap_pyop2_kernel_prolong       4 0.0 1.2303e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b2150d8e90_wrap_pyop2_kernel_prolong       4 0.0 7.5142e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b2150db390_wrap_pyop2_kernel_prolong       4 0.0 1.3456e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1482aa9cf550_wrap_pyop2_kernel_prolong       4 0.0 7.5068e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1482aa8f7750_wrap_pyop2_kernel_prolong       4 0.0 1.2119e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e95335a0d0_wrap_pyop2_kernel_prolong       4 0.0 7.5018e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e953351cd0_wrap_pyop2_kernel_prolong       4 0.0 1.2280e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145885989410_wrap_pyop2_kernel_prolong       4 0.0 7.5096e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145885a60190_wrap_pyop2_kernel_prolong       4 0.0 1.3748e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f27fb24850_wrap_pyop2_kernel_prolong       4 0.0 7.5103e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f27fd5ddd0_wrap_pyop2_kernel_prolong       4 0.0 1.2716e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c48ccc3310_wrap_pyop2_kernel_prolong       4 0.0 7.4988e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c48cec2890_wrap_pyop2_kernel_prolong       4 0.0 1.1240e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d62acd990_wrap_pyop2_kernel_prolong       4 0.0 7.4974e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d62ac5550_wrap_pyop2_kernel_prolong       4 0.0 1.0917e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15060ff90690_wrap_pyop2_kernel_prolong       4 0.0 7.5092e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15060fff5390_wrap_pyop2_kernel_prolong       4 0.0 1.3825e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b6af563a50_wrap_pyop2_kernel_prolong       4 0.0 7.5072e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b6af536ed0_wrap_pyop2_kernel_prolong       4 0.0 1.2597e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cb06c6d650_wrap_pyop2_kernel_prolong       4 0.0 7.5066e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cb06c6ef50_wrap_pyop2_kernel_prolong       4 0.0 1.2165e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15473332dc50_wrap_pyop2_kernel_prolong       4 0.0 7.5070e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15473332d450_wrap_pyop2_kernel_prolong       4 0.0 1.2576e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf3caf9c90_wrap_pyop2_kernel_prolong       4 0.0 7.5038e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf3c17cbd0_wrap_pyop2_kernel_prolong       4 0.0 1.1819e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14780fb570d0_wrap_pyop2_kernel_prolong       4 0.0 7.4920e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14780fb27510_wrap_pyop2_kernel_prolong       4 0.0 9.8654e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1530635f9c50_wrap_pyop2_kernel_prolong       4 0.0 7.5135e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1530638059d0_wrap_pyop2_kernel_prolong       4 0.0 1.4121e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1544e11e1610_wrap_pyop2_kernel_prolong       4 0.0 7.5083e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1544e11e1790_wrap_pyop2_kernel_prolong       4 0.0 1.2095e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b3cc1d1710_wrap_pyop2_kernel_prolong       4 0.0 7.5148e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b3c7847610_wrap_pyop2_kernel_prolong       4 0.0 1.3309e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ec7a3ac850_wrap_pyop2_kernel_prolong       4 0.0 7.5130e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ec7a3faf90_wrap_pyop2_kernel_prolong       4 0.0 1.3093e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15536e379d10_wrap_pyop2_kernel_prolong       4 0.0 7.5131e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15536e39c490_wrap_pyop2_kernel_prolong       4 0.0 1.4258e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1543a46d7810_wrap_pyop2_kernel_prolong       4 0.0 7.5234e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1543a46d4050_wrap_pyop2_kernel_prolong       4 0.0 1.1427e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15430b4f9f50_wrap_pyop2_kernel_prolong       4 0.0 7.5168e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15430b4fb0d0_wrap_pyop2_kernel_prolong       4 0.0 1.0770e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1535e248c990_wrap_pyop2_kernel_prolong       4 0.0 7.5221e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1535e2037890_wrap_pyop2_kernel_prolong       4 0.0 1.2192e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b3aea952d0_wrap_pyop2_kernel_prolong       4 0.0 7.5238e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b3aea97f90_wrap_pyop2_kernel_prolong       4 0.0 1.2742e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519f56b5210_wrap_pyop2_kernel_prolong       4 0.0 7.5184e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519f56789d0_wrap_pyop2_kernel_prolong       4 0.0 1.1824e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b8cc59e10_wrap_pyop2_kernel_prolong       4 0.0 7.5285e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b8cb0af10_wrap_pyop2_kernel_prolong       4 0.0 1.3743e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14693457d650_wrap_pyop2_kernel_prolong       4 0.0 7.5190e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1469342c6590_wrap_pyop2_kernel_prolong       4 0.0 1.1543e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1475315d4690_wrap_pyop2_kernel_prolong       4 0.0 7.5156e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1475315a87d0_wrap_pyop2_kernel_prolong       4 0.0 1.1856e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1518356160d0_wrap_pyop2_kernel_prolong       4 0.0 7.5205e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1518355ed250_wrap_pyop2_kernel_prolong       4 0.0 1.3501e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1496266a3dd0_wrap_pyop2_kernel_prolong       4 0.0 7.5251e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1496268b5350_wrap_pyop2_kernel_prolong       4 0.0 1.3193e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148cafd70350_wrap_pyop2_kernel_prolong       4 0.0 7.5197e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148cb4bd5310_wrap_pyop2_kernel_prolong       4 0.0 1.1756e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1512655340d0_wrap_pyop2_kernel_prolong       4 0.0 7.5259e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151264ae1910_wrap_pyop2_kernel_prolong       4 0.0 1.2779e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14607ac5fbd0_wrap_pyop2_kernel_prolong       4 0.0 7.5179e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14607ac3fc10_wrap_pyop2_kernel_prolong       4 0.0 1.1390e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153ecbf80ed0_wrap_pyop2_kernel_prolong       4 0.0 7.5236e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153ecbf83b10_wrap_pyop2_kernel_prolong       4 0.0 1.2326e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f09dc5890_wrap_pyop2_kernel_prolong       4 0.0 7.5101e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f09d94290_wrap_pyop2_kernel_prolong       4 0.0 1.0555e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14560db7e7d0_wrap_pyop2_kernel_prolong       4 0.0 7.5246e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14560db76510_wrap_pyop2_kernel_prolong       4 0.0 1.2939e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1500aacade10_wrap_pyop2_kernel_prolong       4 0.0 7.5092e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1500aab566d0_wrap_pyop2_kernel_prolong       4 0.0 1.2242e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155254bd4690_wrap_pyop2_kernel_prolong       4 0.0 7.5091e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155254bb1510_wrap_pyop2_kernel_prolong       4 0.0 1.1289e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1541d0f36010_wrap_pyop2_kernel_prolong       4 0.0 7.5233e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1541d0ec6490_wrap_pyop2_kernel_prolong       4 0.0 1.3693e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15325898d9d0_wrap_pyop2_kernel_prolong       4 0.0 7.5048e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153253e86850_wrap_pyop2_kernel_prolong       4 0.0 1.1958e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b9d441f9d0_wrap_pyop2_kernel_prolong       4 0.0 7.5176e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b9d461fa90_wrap_pyop2_kernel_prolong       4 0.0 1.1947e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1486d841dfd0_wrap_pyop2_kernel_prolong       4 0.0 7.5208e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1486d83f0d50_wrap_pyop2_kernel_prolong       4 0.0 1.3231e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1490b5a7a750_wrap_pyop2_kernel_prolong       4 0.0 7.5249e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1490b5070590_wrap_pyop2_kernel_prolong       4 0.0 1.2894e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de2cf045d0_wrap_pyop2_kernel_prolong       4 0.0 7.5257e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de2cf06710_wrap_pyop2_kernel_prolong       4 0.0 1.4150e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15327112a750_wrap_pyop2_kernel_prolong       4 0.0 7.5199e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153271103bd0_wrap_pyop2_kernel_prolong       4 0.0 1.2439e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152f4799c490_wrap_pyop2_kernel_prolong       4 0.0 7.5357e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152f479cd610_wrap_pyop2_kernel_prolong       4 0.0 1.4773e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b9b9c90bd0_wrap_pyop2_kernel_prolong       4 0.0 7.5178e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b9b9c89bd0_wrap_pyop2_kernel_prolong       4 0.0 1.2187e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1547698b6110_wrap_pyop2_kernel_prolong       4 0.0 7.5248e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154769762390_wrap_pyop2_kernel_prolong       4 0.0 1.2908e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c61102d150_wrap_pyop2_kernel_prolong       4 0.0 7.5189e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c6110681d0_wrap_pyop2_kernel_prolong       4 0.0 1.2510e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a425f5b990_wrap_pyop2_kernel_prolong       4 0.0 7.5281e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a4255eb4d0_wrap_pyop2_kernel_prolong       4 0.0 1.3586e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1543357ed790_wrap_pyop2_kernel_prolong       4 0.0 7.5260e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1543357ef890_wrap_pyop2_kernel_prolong       4 0.0 1.2666e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1513049835d0_wrap_pyop2_kernel_prolong       4 0.0 7.5277e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151304981010_wrap_pyop2_kernel_prolong       4 0.0 1.3830e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456562e77d0_wrap_pyop2_kernel_prolong       4 0.0 7.5186e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456562e58d0_wrap_pyop2_kernel_prolong       4 0.0 1.2773e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c7eb87c90_wrap_pyop2_kernel_prolong       4 0.0 7.5106e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c7ea12ed0_wrap_pyop2_kernel_prolong       4 0.0 1.2400e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15255b910150_wrap_pyop2_kernel_prolong       4 0.0 7.5073e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15255b9097d0_wrap_pyop2_kernel_prolong       4 0.0 1.1460e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152ca759ae90_wrap_pyop2_kernel_prolong       4 0.0 7.5198e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152ca756e490_wrap_pyop2_kernel_prolong       4 0.0 1.3223e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d51e68bd0_wrap_pyop2_kernel_prolong       4 0.0 7.5181e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d51e72490_wrap_pyop2_kernel_prolong       4 0.0 1.3304e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152387e6f5d0_wrap_pyop2_kernel_prolong       4 0.0 7.5125e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152387e6dd50_wrap_pyop2_kernel_prolong       4 0.0 1.3369e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d6d194650_wrap_pyop2_kernel_prolong       4 0.0 7.5125e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d6d16d490_wrap_pyop2_kernel_prolong       4 0.0 1.3765e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15257b463f10_wrap_pyop2_kernel_prolong       4 0.0 7.5078e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15257bcdf090_wrap_pyop2_kernel_prolong       4 0.0 1.1279e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d403518cd0_wrap_pyop2_kernel_prolong       4 0.0 7.5089e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d40332d910_wrap_pyop2_kernel_prolong       4 0.0 1.2013e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1471a7824050_wrap_pyop2_kernel_prolong       4 0.0 7.5312e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1471a77fa850_wrap_pyop2_kernel_prolong       4 0.0 1.3891e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151c92b3afd0_wrap_pyop2_kernel_prolong       4 0.0 7.5191e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151c92b03090_wrap_pyop2_kernel_prolong       4 0.0 1.3175e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a132dedad0_wrap_pyop2_kernel_prolong       4 0.0 7.5267e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a132ca2190_wrap_pyop2_kernel_prolong       4 0.0 1.3263e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cb8a2294d0_wrap_pyop2_kernel_prolong       4 0.0 7.5292e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cb89671650_wrap_pyop2_kernel_prolong       4 0.0 1.4732e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d53f9ce690_wrap_pyop2_kernel_prolong       4 0.0 7.5244e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d53f8c0650_wrap_pyop2_kernel_prolong       4 0.0 1.3267e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b6a5ef9310_wrap_pyop2_kernel_prolong       4 0.0 7.5181e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b6a5f75490_wrap_pyop2_kernel_prolong       4 0.0 1.1891e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad1e171850_wrap_pyop2_kernel_prolong       4 0.0 7.5229e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad1e1f3f50_wrap_pyop2_kernel_prolong       4 0.0 1.2720e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14adf36ba550_wrap_pyop2_kernel_prolong       4 0.0 7.5261e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14adf33fe510_wrap_pyop2_kernel_prolong       4 0.0 1.2550e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152bc51825d0_wrap_pyop2_kernel_prolong       4 0.0 7.5245e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152bc536dfd0_wrap_pyop2_kernel_prolong       4 0.0 1.3863e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1526b60a7750_wrap_pyop2_kernel_prolong       4 0.0 7.5224e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1526b58f35d0_wrap_pyop2_kernel_prolong       4 0.0 1.4062e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1487a0e7a7d0_wrap_pyop2_kernel_prolong       4 0.0 7.5253e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1487a0e72150_wrap_pyop2_kernel_prolong       4 0.0 1.3311e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151541f9d990_wrap_pyop2_kernel_prolong       4 0.0 7.4996e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151541fc3fd0_wrap_pyop2_kernel_prolong       4 0.0 1.2622e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ad6cf6610_wrap_pyop2_kernel_prolong       4 0.0 7.5073e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ad6cd37d0_wrap_pyop2_kernel_prolong       4 0.0 1.2735e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1472bb0a9e90_wrap_pyop2_kernel_prolong       4 0.0 7.5056e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1472ba8751d0_wrap_pyop2_kernel_prolong       4 0.0 1.1912e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ca29d417d0_wrap_pyop2_kernel_prolong       4 0.0 7.5104e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ca29b50290_wrap_pyop2_kernel_prolong       4 0.0 1.1967e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b9c0d5a010_wrap_pyop2_kernel_prolong       4 0.0 7.5203e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b9c0d5b850_wrap_pyop2_kernel_prolong       4 0.0 1.3673e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e85fd7d990_wrap_pyop2_kernel_prolong       4 0.0 7.5165e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e85fd7fc90_wrap_pyop2_kernel_prolong       4 0.0 1.4385e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147698d6b110_wrap_pyop2_kernel_prolong       4 0.0 7.5108e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147698f58890_wrap_pyop2_kernel_prolong       4 0.0 1.1095e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e7857df90_wrap_pyop2_kernel_prolong       4 0.0 7.5165e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e7857cfd0_wrap_pyop2_kernel_prolong       4 0.0 1.2414e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ca28259210_wrap_pyop2_kernel_prolong       4 0.0 7.5116e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ca281f8b10_wrap_pyop2_kernel_prolong       4 0.0 1.3717e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151acc8efe50_wrap_pyop2_kernel_prolong       4 0.0 7.5030e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151acc6c84d0_wrap_pyop2_kernel_prolong       4 0.0 1.2553e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1516af650_wrap_pyop2_kernel_prolong       4 0.0 7.5045e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1516af910_wrap_pyop2_kernel_prolong       4 0.0 1.2954e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1523ef3da310_wrap_pyop2_kernel_prolong       4 0.0 7.5029e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1523ef3d9910_wrap_pyop2_kernel_prolong       4 0.0 1.2487e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1501e0aad6d0_wrap_pyop2_kernel_prolong       4 0.0 7.5015e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1501e08d7dd0_wrap_pyop2_kernel_prolong       4 0.0 1.2054e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da7f960490_wrap_pyop2_kernel_prolong       4 0.0 7.5000e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da7faab610_wrap_pyop2_kernel_prolong       4 0.0 1.2411e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1463137a92d0_wrap_pyop2_kernel_prolong       4 0.0 7.5077e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1463137fd710_wrap_pyop2_kernel_prolong       4 0.0 1.3702e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d253267b10_wrap_pyop2_kernel_prolong       4 0.0 7.5127e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d253163650_wrap_pyop2_kernel_prolong       4 0.0 1.2918e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b566156cd0_wrap_pyop2_kernel_prolong       4 0.0 7.5041e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b5661a9190_wrap_pyop2_kernel_prolong       4 0.0 1.2027e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b8d7a8a10_wrap_pyop2_kernel_prolong       4 0.0 7.5093e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b8d814850_wrap_pyop2_kernel_prolong       4 0.0 1.2603e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152b7a67d490_wrap_pyop2_kernel_prolong       4 0.0 7.5084e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152b7a8f5a90_wrap_pyop2_kernel_prolong       4 0.0 1.2153e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1511692bd150_wrap_pyop2_kernel_prolong       4 0.0 7.5089e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1511692ae150_wrap_pyop2_kernel_prolong       4 0.0 1.1819e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1474c9135c90_wrap_pyop2_kernel_prolong       4 0.0 7.4986e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1474c912db10_wrap_pyop2_kernel_prolong       4 0.0 1.1395e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb932f3a50_wrap_pyop2_kernel_prolong       4 0.0 7.5142e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb932f16d0_wrap_pyop2_kernel_prolong       4 0.0 1.3816e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1504224e7a10_wrap_pyop2_kernel_prolong       4 0.0 7.5182e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1504224e5550_wrap_pyop2_kernel_prolong       4 0.0 1.3407e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153beb382090_wrap_pyop2_kernel_prolong       4 0.0 7.5069e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153bebae37d0_wrap_pyop2_kernel_prolong       4 0.0 1.3152e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c629a12d0_wrap_pyop2_kernel_prolong       4 0.0 7.5194e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c629a1a10_wrap_pyop2_kernel_prolong       4 0.0 1.4186e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf333b49d0_wrap_pyop2_kernel_prolong       4 0.0 7.5172e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf30d61ad0_wrap_pyop2_kernel_prolong       4 0.0 1.4452e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d26faa9d10_wrap_pyop2_kernel_prolong       4 0.0 7.5172e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d26f974350_wrap_pyop2_kernel_prolong       4 0.0 1.2053e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1523293458d0_wrap_pyop2_kernel_prolong       4 0.0 7.5112e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1523293459d0_wrap_pyop2_kernel_prolong       4 0.0 1.2156e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d60a54a490_wrap_pyop2_kernel_prolong       4 0.0 7.5153e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d60a6fcf10_wrap_pyop2_kernel_prolong       4 0.0 1.3232e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c9e5a85f90_wrap_pyop2_kernel_prolong       4 0.0 7.5126e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c9e5876350_wrap_pyop2_kernel_prolong       4 0.0 1.3233e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce687da050_wrap_pyop2_kernel_prolong       4 0.0 7.5129e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce687b9990_wrap_pyop2_kernel_prolong       4 0.0 1.2143e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ede1dc5b90_wrap_pyop2_kernel_prolong       4 0.0 7.5225e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ede1dc5590_wrap_pyop2_kernel_prolong       4 0.0 1.4760e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155260f679d0_wrap_pyop2_kernel_prolong       4 0.0 7.4970e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15526119a110_wrap_pyop2_kernel_prolong       4 0.0 1.0911e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15347f237010_wrap_pyop2_kernel_prolong       4 0.0 7.5012e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1534845eacd0_wrap_pyop2_kernel_prolong       4 0.0 1.2379e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1484ba38d550_wrap_pyop2_kernel_prolong       4 0.0 7.5115e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1484ba385f10_wrap_pyop2_kernel_prolong       4 0.0 1.3281e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f4b015d210_wrap_pyop2_kernel_prolong       4 0.0 7.5010e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f4b0156fd0_wrap_pyop2_kernel_prolong       4 0.0 1.1758e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150dab629690_wrap_pyop2_kernel_prolong       4 0.0 7.5133e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150dab62b290_wrap_pyop2_kernel_prolong       4 0.0 1.3848e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153719a6b590_wrap_pyop2_kernel_prolong       4 0.0 7.5063e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15371993c7d0_wrap_pyop2_kernel_prolong       4 0.0 1.2911e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b2a121d50_wrap_pyop2_kernel_prolong       4 0.0 7.5092e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b29fdfa50_wrap_pyop2_kernel_prolong       4 0.0 1.3296e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1547cf1de3d0_wrap_pyop2_kernel_prolong       4 0.0 7.5058e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1547cf09cd10_wrap_pyop2_kernel_prolong       4 0.0 1.2877e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b08092090_wrap_pyop2_kernel_prolong       4 0.0 7.5077e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b082ce610_wrap_pyop2_kernel_prolong       4 0.0 1.2661e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b560353d50_wrap_pyop2_kernel_prolong       4 0.0 7.5036e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b5600e48d0_wrap_pyop2_kernel_prolong       4 0.0 1.2222e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1513e0aab710_wrap_pyop2_kernel_prolong       4 0.0 7.5122e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1513e0a72710_wrap_pyop2_kernel_prolong       4 0.0 1.2222e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a796e5f7d0_wrap_pyop2_kernel_prolong       4 0.0 7.5151e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a797092450_wrap_pyop2_kernel_prolong       4 0.0 1.3328e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153a708d5610_wrap_pyop2_kernel_prolong       4 0.0 7.5145e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153a708d5e10_wrap_pyop2_kernel_prolong       4 0.0 1.1863e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14760c22bcd0_wrap_pyop2_kernel_prolong       4 0.0 7.5131e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147607f8b750_wrap_pyop2_kernel_prolong       4 0.0 1.1982e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15065c9baa50_wrap_pyop2_kernel_prolong       4 0.0 7.5146e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15065c871e10_wrap_pyop2_kernel_prolong       4 0.0 1.2944e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c7fdd63990_wrap_pyop2_kernel_prolong       4 0.0 7.5085e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c7fdca18d0_wrap_pyop2_kernel_prolong       4 0.0 1.3497e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cbbfa65d50_wrap_pyop2_kernel_prolong       4 0.0 7.5209e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cbbfa65410_wrap_pyop2_kernel_prolong       4 0.0 1.2802e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f3a941ad0_wrap_pyop2_kernel_prolong       4 0.0 7.5141e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f3a941210_wrap_pyop2_kernel_prolong       4 0.0 1.3371e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fca8414c90_wrap_pyop2_kernel_prolong       4 0.0 7.5127e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fca84a8bd0_wrap_pyop2_kernel_prolong       4 0.0 1.3462e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e7b558bd0_wrap_pyop2_kernel_prolong       4 0.0 7.5131e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e7b4faa90_wrap_pyop2_kernel_prolong       4 0.0 1.4698e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided         76 1.0 1.2806e-02 3.4 0.00e+00 0.0 1.7e+05 4.0e+00 7.6e+01  0  0  0  0  0   0  0  0  0  1    -0
SFSetGraph            76 1.0 4.6901e-04 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               76 1.0 1.6895e-02 2.8 0.00e+00 0.0 3.4e+05 3.3e+01 7.6e+01  0  0  0  0  0   0  0  0  0  1    -0
SFPack           6699013 1.1 5.7314e+00 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack         6699013 1.1 3.3589e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy            32121 1.0 3.0909e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecSet             49963 1.0 3.1701e+01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecAYPX            57104 1.0 4.9761e+01 2.4 1.79e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  1  0  0  0   3  3  0  0  0 144366
VecAXPBYCZ         14276 1.0 1.0632e-02 1.9 6.21e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 2339594
VecScatterBegin  6699013 1.1 8.8517e+01 1.3 0.00e+00 0.0 8.9e+07 2.9e+04 0.0e+00  3  0 84 46  0   6  0 99 100  0    -0
VecScatterEnd    6699013 1.1 1.0817e+02 8.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
MatMult            35690 1.0 6.1177e+02 1.1 4.23e+11 1.1 8.1e+07 3.1e+04 0.0e+00 23 16 76 46  0  44 60 90 100  0 276901
MatMultAdd         10707 1.0 3.6128e+01 1.2 1.79e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   3  3  0  0  0 198703
MatMultTranspose   10707 1.0 2.9858e+01 1.8 1.79e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  3  0  0  0 240428
MatSolve         3344153 1.1 4.6261e+02 1.2 2.09e+11 1.1 8.8e+06 1.2e+02 3.8e+02 17  8  8  0  2  32 30 10  0  5 180786
MatLUFactorNum     69752 1.1 2.1920e+01 1.2 1.99e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  3  0  0  0 364139
MatResidual        10707 1.0 3.3563e+02 1.2 2.15e+11 1.1 2.4e+07 5.2e+04 0.0e+00 12  8 23 23  0  23 30 27 50  0 255754
MatAssemblyBegin   69600 1.1 1.4913e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyEnd     69600 1.1 1.6497e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats     150 1.0 4.1825e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
PCSetUp            69978 1.1 6.3429e+01 1.3 1.99e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  1  0  0  0   4  3  0  0  0 125838
PCSetUpOnBlocks    14276 1.0 4.5234e-02 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply            10707 1.0 6.5787e+02 1.2 2.30e+11 1.1 7.4e+07 1.9e+02 3.9e+03 25  9 69  0 18  47 33 82  1 53 139722
PCApplyOnBlocks  3340584 1.1 4.1316e+02 1.3 2.29e+11 1.1 0.0e+00 0.0e+00 0.0e+00 15  9  0  0  0  28 32  0  0  0 221677
KSPSetUp           69676 1.1 5.1770e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve           10707 1.0 9.8726e+02 1.1 4.56e+11 1.1 8.2e+07 1.6e+04 7.5e+03 38 18 77 23 34  72 65 91 50 100 184829
MGSmooth Level 0    3569 1.0 1.4525e+02 1.6 2.24e+09 1.9 7.4e+07 1.9e+02 7.5e+03  4  0 69  0 34   8  0 82  1 100  3789
MGSmooth Level 1    7138 1.0 8.8969e+02 1.2 4.54e+11 1.1 8.1e+06 1.6e+05 0.0e+00 34 18  8 23  0  65 64  9 50  0 204479
MGResid Level 1     3569 1.0 3.2971e+02 1.3 2.14e+11 1.1 8.1e+06 1.6e+05 0.0e+00 12  8  8 23  0  23 30  9 50  0 260167
MGInterp Level 1    7138 1.0 6.4048e+01 1.3 3.58e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  1  0  0  0   5  5  0  0  0 223701
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   237            235
              Viewer     3              3
           Index Set  6653           6653
   IS L to G Mapping   676            670
             Section   493            493
   Star Forest Graph   901            899
              Vector  2141           2134
              Matrix  2509           2484
      Preconditioner   477            477
       Krylov Solver   475            475
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

           Index Set   152            152
   Star Forest Graph    80             75
              Vector   152            152
    Distributed Mesh     2              0
     Discrete System     2              0
           Weak Form     2              0
========================================================================================================================
Average time to get PetscTime(): 2.56e-08
Average time for MPI_Barrier(): 1.16988e-05
Average time for zero size MPI_Send(): 2.80635e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_mg_coarse_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_mg_levels_1_pc_linesmooth_sub_sub_pc_factor_mat_ordering_type natural # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murr_strong/vlumping_hmg_snapshot_lag3/s4.profile # (source: code)
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

