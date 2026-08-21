****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0649.gadi.nci.org.au with 416 processes, by sg8812 on Thu Aug 20 23:50:35 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           1.254e+03     1.000   1.254e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                1.237e+12     1.125   1.191e+12  4.956e+14
Flops/sec:            9.871e+08     1.125   9.503e+08  3.953e+11
MPI Msg Count:        3.132e+05     3.788   2.127e+05  8.848e+07
MPI Msg Len (bytes):  1.374e+10     3.199   4.533e+04  4.011e+12
MPI Reductions:       2.592e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 7.5774e+02  60.4%  3.9316e+14  79.3%  2.144e+07  24.2%  1.191e+05       63.7%  1.938e+04  74.8%
 1:        MG Apply: 4.9581e+02  39.6%  1.0240e+14  20.7%  6.704e+07  75.8%  2.174e+04       36.3%  6.519e+03  25.2%

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

BuildTwoSided       1937 1.0 6.7678e+01 3.6 0.00e+00 0.0 4.2e+05 4.0e+00 1.7e+03  4  0  0  0  7   6  0  2  0  9    -0
BuildTwoSidedF      1593 1.0 6.4015e+01 3.2 0.00e+00 0.0 5.1e+05 1.4e+06 1.6e+03  4  0  1 18  6   6  0  2 29  8    -0
SFSetGraph           353 1.0 1.6190e-02 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              344 1.0 4.2879e+00 82.8 0.00e+00 0.0 3.3e+05 1.0e+03 1.2e+02  0  0  0  0  0   0  0  2  0  1    -0
SFBcastBegin         914 1.0 4.3498e-01 3.6 0.00e+00 0.0 1.9e+06 8.6e+04 0.0e+00  0  0  2  4  0   0  0  9  6  0    -0
SFBcastEnd           914 1.0 1.7110e+01 163.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        345 1.0 1.4176e-01 31.1 0.00e+00 0.0 7.5e+05 1.1e+05 0.0e+00  0  0  1  2  0   0  0  4  3  0    -0
SFReduceEnd          345 1.0 4.1271e+00 99.8 3.46e+07 3.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2442
SFFetchOpBegin         6 1.0 3.6238e-05 5.6 0.00e+00 0.0 1.1e+04 7.1e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           6 1.0 1.0251e-03 24.7 0.00e+00 0.0 1.1e+04 7.1e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          4 1.0 1.5168e-03 2.7 0.00e+00 0.0 5.4e+03 1.1e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         51 1.0 9.7748e-03 1.3 0.00e+00 0.0 2.7e+05 7.8e+01 6.0e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           53 1.0 5.4340e-03 2.4 0.00e+00 0.0 1.3e+05 3.6e+01 5.3e+01  0  0  0  0  0   0  0  1  0  0    -0
SFRemoteOff            2 1.0 8.8096e-05 2.8 0.00e+00 0.0 4.7e+03 1.6e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack           1122345 1.1 2.6535e+00 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack         1122351 1.1 2.4330e-01 3.4 3.46e+07 3.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 41429
VecDot               225 1.0 9.4694e-01 4.7 1.81e+08 1.1 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  1   0  0  0  0  1 78477
VecMDot             7105 1.0 6.7983e+01 2.5 2.53e+10 1.1 0.0e+00 0.0e+00 7.1e+03  4  2  0  0 27   7  3  0  0 37 152143
VecNorm             8306 1.0 1.8712e+01 2.3 4.78e+09 1.1 0.0e+00 0.0e+00 8.3e+03  1  0  0  0 32   2  0  0  0 43 104599
VecScale            7781 1.0 1.8223e+00 1.3 2.18e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 489440
VecCopy             2028 1.0 2.5247e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              6302 1.0 4.9925e+00 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecAXPY              676 1.0 7.9785e-01 1.3 3.63e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 186438
VecWAXPY             225 1.0 4.4846e-01 1.2 9.07e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 82853
VecMAXPY            7781 1.0 3.8393e+01 1.1 2.92e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3  2  0  0  0   5  3  0  0  0 311991
VecScatterBegin  1121080 1.1 1.6723e+01 1.4 0.00e+00 0.0 1.6e+07 8.5e+04 0.0e+00  1  0 19 35  0   2  0 76 54  0    -0
VecScatterEnd    1121080 1.1 3.0798e+01 33.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecReduceArith       450 1.0 3.6026e-01 2.3 3.63e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 412548
VecReduceComm        225 1.0 3.9869e-01 12.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  1   0  0  0  0  1    -0
VecNormalize        4859 1.0 1.1946e+01 2.4 3.00e+09 1.1 0.0e+00 0.0e+00 4.9e+03  1  0  0  0 19   1  0  0  0 25 102809
MatMult             7330 1.0 2.1726e+02 1.1 1.48e+11 1.1 1.6e+07 8.5e+04 0.0e+00 16 12 19 35  0  27 15 76 54  0 278439
MatSolve          556784 1.1 7.1289e+01 1.5 3.49e+10 1.1 0.0e+00 0.0e+00 0.0e+00  4  3  0  0  0   7  4  0  0  0 200405
MatLUFactorSym       225 1.1 2.2863e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum     50627 1.1 1.2034e+01 1.1 1.44e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   1  2  0  0  0 491393
MatILUFactorSym        2 1.0 1.6534e-04 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin   53410 1.1 6.7953e+01 2.2 0.00e+00 0.0 5.1e+05 1.4e+06 1.6e+03  4  0  1 18  6   7  0  2 29  8    -0
MatAssemblyEnd     53410 1.1 1.2863e+01 13.3 2.72e+08 0.0 1.8e+04 7.5e+03 7.1e+01  1  0  0  0  0   1  0  0  0  0  3539
MatGetRowIJ          226 1.1 3.3253e-05 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats     225 1.0 2.8583e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 2.2e+02  2  0  0  0  1   4  0  0  0  1    -0
MatGetOrdering       226 1.1 4.5036e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       900 1.0 7.7600e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
MatTranspose           8 1.0 1.5778e-02 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.8e+01  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          8 1.0 1.5512e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 1.8e+01  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum       1352 1.0 5.7110e+00 1.6 6.54e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  1  0  0  0 468155
MatPtAPSymbolic        3 1.0 2.1732e-01 1.0 0.00e+00 0.0 2.0e+04 6.7e+04 2.1e+01  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       675 1.0 4.1034e+01 1.0 2.61e+10 1.1 1.5e+06 1.2e+05 6.9e+02  3  2  2  5  3   5  3  7  7  4 260391
MatGetLocalMat       679 1.0 1.9494e+00 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        679 1.0 1.1706e+00 2.4 0.00e+00 0.0 1.5e+06 1.2e+05 0.0e+00  0  0  2  5  0   0  0  7  7  0    -0
MatSetPreallCOO       32 1.0 6.6431e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       32 1.0 3.4524e-05 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp              225 1.0 3.0287e+02 1.0 1.65e+11 1.1 1.1e+07 6.9e+04 1.1e+04 24 14 13 20 43  40 17 54 31 57 222686
PCApply             2697 1.0 5.1414e+02 1.1 2.51e+11 1.1 6.7e+07 2.2e+04 6.5e+03 40 21 76 36 25 Multiple stages 199168
PCApplyOnBlocks   556784 1.1 8.4844e+01 1.4 4.93e+10 1.1 0.0e+00 0.0e+00 0.0e+00  5  4  0  0  0   9  5  0  0  0 238036
KSPSetUp             225 1.0 1.4213e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             225 1.0 6.5596e+02 1.0 3.64e+11 1.1 7.3e+07 3.0e+04 1.2e+04 52 30 83 54 47 Multiple stages 226922
KSPGMRESOrthog      7105 1.0 9.9680e+01 1.7 5.05e+10 1.1 0.0e+00 0.0e+00 7.1e+03  7  4  0  0 27  11  5  0  0 37 207526
DMRefine               2 1.0 3.2560e-02 1.0 2.09e+03 1.0 3.2e+04 3.4e+01 6.3e+01  0  0  0  0  0   0  0  0  0  0    27
DMPlexCreateGmsh       1 1.0 2.1537e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 5.3101e+00 236.8 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Partition         4 1.0 1.3168e-01 1.0 0.00e+00 0.0 7.9e+04 6.2e+01 5.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         4 1.0 2.5869e-02 1.1 0.00e+00 0.0 2.9e+05 7.2e+01 2.4e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 3.8343e-03 1163.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       4 1.0 2.8435e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        4 1.0 3.9804e-03 1.2 0.00e+00 0.0 1.6e+04 4.9e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       4 1.0 1.5394e-03 4.1 0.00e+00 0.0 7.8e+03 1.9e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          4 1.0 2.6019e-03 2.3 0.00e+00 0.0 8.2e+03 2.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          29 1.0 1.0183e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 1.3300e-01 1.0 0.00e+00 0.0 1.7e+04 1.8e+02 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        4 1.0 3.5153e-03 1.2 0.00e+00 0.0 4.5e+04 1.1e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       4 1.0 1.0739e-02 1.0 0.00e+00 0.0 1.5e+05 7.0e+01 1.5e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistOvrlp        3 1.0 2.7749e-02 1.0 0.00e+00 0.0 3.6e+05 6.8e+01 2.4e+02  0  0  0  0  1   0  0  2  0  1    -0
DMPlexDistField        7 1.0 5.1161e-03 1.3 0.00e+00 0.0 6.6e+04 5.7e+01 2.0e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         2 1.0 5.0015e-04 1.6 0.00e+00 0.0 2.3e+04 2.8e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify        41 1.0 8.3493e-03 6.8 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      41 1.0 5.9735e-04 10.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          2 1.0 1.2606e-04 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          2 1.0 4.2326e-03 1.6 0.00e+00 0.0 1.8e+04 2.8e+01 1.9e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          2 1.0 1.2512e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          2 1.0 3.8871e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             2 1.0 3.9801e-04 2.0 0.00e+00 0.0 1.4e+04 2.7e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         2 1.0 9.8904e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         2 1.0 1.0881e-03 2.2 0.00e+00 0.0 3.6e+03 3.6e+01 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMSwarmSetSizes        4 1.0 7.6438e-05 4.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             75 1.0 1.1856e+03 1.0 1.24e+12 1.1 8.8e+07 4.6e+04 2.5e+04 95 100 99 100 97 Multiple stages 417958
SNESSetUp              1 1.0 4.8667e-05 5.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     300 1.0 3.2509e+01 1.1 2.73e+11 1.2 1.5e+06 1.2e+05 0.0e+00  2 22  2  5  0   4 27  7  7  0 3300629
SNESJacobianEval     225 1.0 1.8331e+02 1.0 4.28e+11 1.2 1.0e+06 7.8e+05 9.0e+02 15 34  1 20  3  24 43  5 31  5 921210
SNESLineSearch       225 1.0 2.7872e+01 1.0 2.12e+11 1.2 1.5e+06 1.2e+05 9.0e+02  2 17  2  5  3   4 21  7  7  5 2996323
DualSpaceSetUp         8 1.0 6.1228e-03 1.4 1.08e+02 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     7
FESetUp                8 1.0 1.4268e-02 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 1.2514e+03 1.0 1.24e+12 1.1 8.8e+07 4.5e+04 2.6e+04 100 100 100 100 100 Multiple stages 396003
firedrake.__init__       1 1.0 1.3401e+01 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateMesh             3 1.0 5.5119e+00 24.6 0.00e+00 0.0 7.0e+05 7.4e+01 4.4e+02  0  0  1  0  2   0  0  3  0  2    -0
firedrake.mesh._from_gmsh       1 1.0 5.3109e+00 236.4 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       3 1.0 1.2944e-03 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       3 1.0 1.5040e-04 33.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        7 1.0 7.5672e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          3 1.0 1.0841e-03 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      36 1.0 1.9903e-01 6.1 0.00e+00 0.0 3.3e+04 1.0e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      44 1.0 2.8744e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      40 1.0 1.9590e-01 6.6 0.00e+00 0.0 3.3e+04 1.0e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      39 1.0 1.9183e-01 7.5 0.00e+00 0.0 3.3e+04 1.0e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      39 1.0 1.9163e-01 7.5 0.00e+00 0.0 3.3e+04 1.0e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      78 1.0 9.8072e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       6 1.0 6.0848e-03 1.2 0.00e+00 0.0 1.5e+04 8.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__      12 1.0 7.5297e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      24 1.0 2.3123e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      76 1.0 3.3415e-02 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          3 1.0 9.8038e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       3 1.0 2.4527e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       8 1.0 8.1839e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       5 1.0 1.2502e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       3 1.0 9.7351e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     662 1.0 9.4014e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      2424 1.0 1.8219e+02 1.2 7.01e+11 1.2 1.4e+06 1.2e+05 3.8e+01 13 56  2  4  0  22 70  7  6  0 1515674
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       6 1.0 9.3091e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    4848 1.0 2.6330e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      19 1.0 1.0954e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
GlobalKernel: generate loopy      19 0.0 1.3902e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      19 0.0 8.8147e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      21 1.0 2.0388e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.load      20 1.0 2.0387e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      20 1.0 1.0302e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.make_so      20 1.0 1.0089e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
ParLoopRednBegin    2424 1.0 9.0283e-03 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      2424 1.0 7.6653e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       3 1.0 1.1109e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong       4 1.0 7.8425e+00 1.0 1.36e+07 1.1 3.8e+04 1.3e+04 1.3e+01  1  0  0  0  0   1  0  0  0  0   711
firedrake.interpolation.interpolate      21 1.0 7.1297e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      15 1.0 1.8571e+01 1.0 8.42e+07 1.1 1.4e+05 1.8e+04 1.8e+02  1  0  0  0  1   2  0  1  0  1  1857
firedrake.formmanipulation.split_form      16 1.0 6.2089e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      16 1.0 2.9765e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      17 1.0 3.3494e-01 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       8 1.3 2.8060e-01 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     621 1.0 4.7534e+00 21.4 0.00e+00 0.0 1.4e+06 1.2e+05 4.0e+00  0  0  2  4  0   0  0  7  6  0    -0
Parloop_Cells_wrap_expression_kernel      34 1.0 7.1228e+00 1.0 8.42e+07 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0  4842
firedrake.halo.Halo.global_to_local_end     621 1.0 1.4940e+01 170.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       3 1.0 6.5015e+00 32.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f1143fad0_wrap_pyop2_kernel_prolong       4 0.0 7.5982e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f111e2610_wrap_pyop2_kernel_prolong       4 0.0 5.1008e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 4.0245e+00 1.0 6.81e+07 1.1 3.5e+04 6.0e+04 1.1e+01  0  0  0  0  0   1  0  0  0  0  6935
firedrake.function.Function.assign     314 1.0 1.8116e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     313 1.0 1.7266e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.3409e-04 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate     154 1.0 1.9852e-03 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 5.9048e-05 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.4383e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.9393e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.1912e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 7.6255e+00 1.0 0.00e+00 0.0 1.4e+04 4.8e+05 2.3e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 6.6551e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.7827e-04 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.1812e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.1812e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
CreateSparsity         4 1.0 4.5424e+00 1.1 0.00e+00 0.0 3.1e+04 1.1e+05 4.6e+01  0  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         4 1.0 5.6417e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      75 1.0 1.1859e+03 1.0 1.24e+12 1.1 8.8e+07 4.6e+04 2.5e+04 95 100 99 100 97 Multiple stages 417857
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 3.6403e-01 1265.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 1.4977e-05 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 3.6398e-01 1523.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 3.6395e-01 1716.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     600 1.0 8.9686e+00 1.5 6.88e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   1  7  0  0  0 3140327
Parloop_Cells_wrap_form0_exterior_facet_top_integral     600 1.0 1.0280e+00 1.0 8.94e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  3561
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral     600 1.0 1.2740e+00 1.1 5.90e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 19278
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     600 1.0 5.5206e+00 1.1 6.60e+10 1.1 0.0e+00 0.0e+00 0.0e+00  0  5  0  0  0   1  7  0  0  0 4899821
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     600 1.0 1.1709e+01 1.3 1.38e+11 1.3 0.0e+00 0.0e+00 0.0e+00  1 11  0  0  0   1 13  0  0  0 4445101
firedrake.halo.Halo.local_to_global_begin     300 1.0 1.5575e-01 14.9 0.00e+00 0.0 6.7e+05 1.2e+05 0.0e+00  0  0  1  2  0   0  0  3  3  0    -0
firedrake.halo.Halo.local_to_global_end     300 1.0 4.1299e+00 94.6 3.46e+07 3.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2441
Parloop_Cells_wrap_form00_cell_integral     450 1.0 3.1391e+01 1.5 9.62e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  8  0  0  0   3 10  0  0  0 1255684
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     450 1.0 1.8350e+00 1.7 4.51e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 10222
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     450 1.0 3.6128e+01 1.2 1.27e+11 1.1 0.0e+00 0.0e+00 0.0e+00  3 11  0  0  0   4 13  0  0  0 1443426
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     450 1.0 8.2433e+01 1.4 2.05e+11 1.3 0.0e+00 0.0e+00 0.0e+00  6 16  0  0  0   9 20  0  0  0 936972
firedrake.dmhooks.get_function_space       2 1.0 2.3057e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       3 1.0 1.9594e-04 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.VertexOnlyMesh       2 1.0 1.0406e+01 1.0 0.00e+00 0.0 5.9e+04 7.9e+01 2.2e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh._pic_swarm_in_mesh       2 1.0 1.0390e+01 1.0 0.00e+00 0.0 4.1e+04 6.5e+01 1.2e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh._parent_mesh_embedding       2 1.0 9.2732e+00 1.0 0.00e+00 0.0 2.3e+04 2.8e+01 8.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshGeometry.locate_cells_ref_coords_and_dists       2 1.0 5.6575e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshGeometry._c_locator       2 1.0 5.6314e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.src_locate_cell       2 1.0 5.0446e+00 17.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.pointquery_utils.compile_coordinate_element       2 1.0 5.0303e+00 32.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.pointquery_utils.make_wrapper       2 1.0 4.3071e+00 337.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.parloop.generate_single_cell_wrapper       2 1.0 4.3070e+00 341.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
c_locator_run          2 1.0 1.9086e-01 10.6 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._ctypes       2 1.0 1.7547e-01 27.0 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._constant_ctypes       2 1.0 1.7452e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.rtree       2 1.0 1.8800e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.bounding_box_coords       2 1.0 2.4688e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
rtree_build            2 1.0 1.5405e-03 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._dmswarm_create       4 1.0 2.8359e-02 37.3 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._swarm_original_ordering_preserve       2 1.0 1.1105e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.VertexOnlyMeshTopology.__init__       4 1.0 2.8892e-02 2.2 0.00e+00 0.0 1.8e+04 1.1e+02 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_vom_from_vom_topology       4 1.0 4.2607e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.action       2 1.0 4.9161e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0      225 1.0 1.0239e+00 1.8 1.41e+08 1.1 5.8e+06 2.4e+02 5.5e+03  0  0  7  0 21   0  0 27  0 28 56136
MGSetup Level 1      225 1.0 2.4802e+02 1.0 1.39e+11 1.1 5.0e+06 1.2e+05 5.0e+03 20 11  6 15 19  33 14 23 24 26 228651
firedrake.constant.Constant.assign      75 1.0 3.5408e-03 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152af6e05190_wrap_pyop2_kernel_prolong       4 0.0 7.5671e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152af6e06a90_wrap_pyop2_kernel_prolong       4 0.0 5.6609e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14688730ba10_wrap_pyop2_kernel_prolong       4 0.0 7.5842e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146884d1c410_wrap_pyop2_kernel_prolong       4 0.0 5.3839e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14694c694f50_wrap_pyop2_kernel_prolong       4 0.0 7.6013e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1469479c66d0_wrap_pyop2_kernel_prolong       4 0.0 4.8643e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f7d6f05390_wrap_pyop2_kernel_prolong       4 0.0 7.5142e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f7d6db23d0_wrap_pyop2_kernel_prolong       4 0.0 5.6656e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14988ea17ed0_wrap_pyop2_kernel_prolong       4 0.0 7.5611e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14988ea63290_wrap_pyop2_kernel_prolong       4 0.0 6.2863e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a49eb74d10_wrap_pyop2_kernel_prolong       4 0.0 7.5750e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a49eb3af10_wrap_pyop2_kernel_prolong       4 0.0 5.3946e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e8d2fdcfd0_wrap_pyop2_kernel_prolong       4 0.0 7.5070e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e8d2fbfc50_wrap_pyop2_kernel_prolong       4 0.0 6.2267e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151de354e890_wrap_pyop2_kernel_prolong       4 0.0 7.5932e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151de2c556d0_wrap_pyop2_kernel_prolong       4 0.0 5.3907e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1464b6142fd0_wrap_pyop2_kernel_prolong       4 0.0 7.5895e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1464b60e8b90_wrap_pyop2_kernel_prolong       4 0.0 6.3092e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e44d580e50_wrap_pyop2_kernel_prolong       4 0.0 7.5979e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e44d678650_wrap_pyop2_kernel_prolong       4 0.0 5.6866e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519044fbc10_wrap_pyop2_kernel_prolong       4 0.0 7.5689e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1518ffbc5390_wrap_pyop2_kernel_prolong       4 0.0 5.4386e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cfba2754d0_wrap_pyop2_kernel_prolong       4 0.0 7.5957e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf982b2890_wrap_pyop2_kernel_prolong       4 0.0 6.9765e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ddc895b10_wrap_pyop2_kernel_prolong       4 0.0 7.5912e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ddc8952d0_wrap_pyop2_kernel_prolong       4 0.0 5.4099e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145926893790_wrap_pyop2_kernel_prolong       4 0.0 7.5326e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145926893550_wrap_pyop2_kernel_prolong       4 0.0 5.5051e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac5d50de50_wrap_pyop2_kernel_prolong       4 0.0 7.5749e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac5cabb3d0_wrap_pyop2_kernel_prolong       4 0.0 6.0677e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bfbd7ed550_wrap_pyop2_kernel_prolong       4 0.0 7.5399e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bfbcb7cb90_wrap_pyop2_kernel_prolong       4 0.0 5.2231e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f07c7b850_wrap_pyop2_kernel_prolong       4 0.0 7.6004e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f0742ce10_wrap_pyop2_kernel_prolong       4 0.0 5.8986e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e42429250_wrap_pyop2_kernel_prolong       4 0.0 7.5058e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e4244b910_wrap_pyop2_kernel_prolong       4 0.0 7.1211e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15078387d3d0_wrap_pyop2_kernel_prolong       4 0.0 7.5052e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15078370c7d0_wrap_pyop2_kernel_prolong       4 0.0 6.0362e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eb3fa31890_wrap_pyop2_kernel_prolong       4 0.0 7.5018e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eb3fa33c90_wrap_pyop2_kernel_prolong       4 0.0 6.1574e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152dd83cd890_wrap_pyop2_kernel_prolong       4 0.0 7.5051e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152dd83ea4d0_wrap_pyop2_kernel_prolong       4 0.0 6.3259e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ec94335250_wrap_pyop2_kernel_prolong       4 0.0 7.5071e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ec9433c990_wrap_pyop2_kernel_prolong       4 0.0 6.4767e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152f564ff350_wrap_pyop2_kernel_prolong       4 0.0 7.5037e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152f5640de50_wrap_pyop2_kernel_prolong       4 0.0 5.8980e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1477cd57bd10_wrap_pyop2_kernel_prolong       4 0.0 7.5622e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1477cd540dd0_wrap_pyop2_kernel_prolong       4 0.0 6.0090e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a3db48a4d0_wrap_pyop2_kernel_prolong       4 0.0 7.5376e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a3dab7b290_wrap_pyop2_kernel_prolong       4 0.0 6.0605e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150cb75975d0_wrap_pyop2_kernel_prolong       4 0.0 7.5006e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150cb75a8bd0_wrap_pyop2_kernel_prolong       4 0.0 5.8024e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a090b558d0_wrap_pyop2_kernel_prolong       4 0.0 7.5094e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a090b56fd0_wrap_pyop2_kernel_prolong       4 0.0 6.6848e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145eb44e7a10_wrap_pyop2_kernel_prolong       4 0.0 7.5614e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145eb4482fd0_wrap_pyop2_kernel_prolong       4 0.0 6.4058e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc006b0fd0_wrap_pyop2_kernel_prolong       4 0.0 7.5379e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc008c19d0_wrap_pyop2_kernel_prolong       4 0.0 6.0423e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14605994ca90_wrap_pyop2_kernel_prolong       4 0.0 7.5827e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14605994c690_wrap_pyop2_kernel_prolong       4 0.0 6.0570e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e6703dd150_wrap_pyop2_kernel_prolong       4 0.0 7.5107e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e67029cbd0_wrap_pyop2_kernel_prolong       4 0.0 6.0136e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1537b7061450_wrap_pyop2_kernel_prolong       4 0.0 7.5731e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1537b7061b10_wrap_pyop2_kernel_prolong       4 0.0 5.4258e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1546139fd7d0_wrap_pyop2_kernel_prolong       4 0.0 7.5007e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1546139fcc90_wrap_pyop2_kernel_prolong       4 0.0 5.8946e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145b3358a190_wrap_pyop2_kernel_prolong       4 0.0 7.5720e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145b33589890_wrap_pyop2_kernel_prolong       4 0.0 7.1268e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b3a5a5910_wrap_pyop2_kernel_prolong       4 0.0 7.5652e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b3a5a17d0_wrap_pyop2_kernel_prolong       4 0.0 6.1401e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154355baca10_wrap_pyop2_kernel_prolong       4 0.0 7.5801e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154355bfb5d0_wrap_pyop2_kernel_prolong       4 0.0 6.3621e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148494f2d2d0_wrap_pyop2_kernel_prolong       4 0.0 7.5876e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148494f2e410_wrap_pyop2_kernel_prolong       4 0.0 5.1972e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1533354f4850_wrap_pyop2_kernel_prolong       4 0.0 7.5118e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15333503a010_wrap_pyop2_kernel_prolong       4 0.0 6.4125e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14afcd9b12d0_wrap_pyop2_kernel_prolong       4 0.0 7.5958e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14afcd953b10_wrap_pyop2_kernel_prolong       4 0.0 5.1801e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb02957350_wrap_pyop2_kernel_prolong       4 0.0 7.5438e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb0283b350_wrap_pyop2_kernel_prolong       4 0.0 6.9651e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14784a8bacd0_wrap_pyop2_kernel_prolong       4 0.0 7.5418e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14784a8b8310_wrap_pyop2_kernel_prolong       4 0.0 5.8640e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5d1305550_wrap_pyop2_kernel_prolong       4 0.0 7.5035e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5d12bfd50_wrap_pyop2_kernel_prolong       4 0.0 5.8680e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1508bb85cb90_wrap_pyop2_kernel_prolong       4 0.0 7.5362e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1508bb8fad10_wrap_pyop2_kernel_prolong       4 0.0 6.2427e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b90644890_wrap_pyop2_kernel_prolong       4 0.0 7.5831e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b8b2ea6d0_wrap_pyop2_kernel_prolong       4 0.0 5.8105e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145e97b54bd0_wrap_pyop2_kernel_prolong       4 0.0 7.5510e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145e97d4c790_wrap_pyop2_kernel_prolong       4 0.0 6.6906e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150b56257a10_wrap_pyop2_kernel_prolong       4 0.0 7.6037e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150b562553d0_wrap_pyop2_kernel_prolong       4 0.0 6.1138e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150c7422e350_wrap_pyop2_kernel_prolong       4 0.0 7.5440e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150c740ede10_wrap_pyop2_kernel_prolong       4 0.0 6.2455e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152452e91c10_wrap_pyop2_kernel_prolong       4 0.0 7.6052e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152452eb4e90_wrap_pyop2_kernel_prolong       4 0.0 6.3846e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a21bb51250_wrap_pyop2_kernel_prolong       4 0.0 7.5767e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a21bb72450_wrap_pyop2_kernel_prolong       4 0.0 6.9364e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1513e3f54d10_wrap_pyop2_kernel_prolong       4 0.0 7.5061e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1513e3d75450_wrap_pyop2_kernel_prolong       4 0.0 5.9961e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1535cdc9a650_wrap_pyop2_kernel_prolong       4 0.0 7.5591e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1535cd5ef690_wrap_pyop2_kernel_prolong       4 0.0 6.6517e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a01a02bf10_wrap_pyop2_kernel_prolong       4 0.0 7.4930e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a019eaf550_wrap_pyop2_kernel_prolong       4 0.0 5.2553e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f4cb65d210_wrap_pyop2_kernel_prolong       4 0.0 7.4929e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f4a8dd53d0_wrap_pyop2_kernel_prolong       4 0.0 5.2420e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145efc2cd0d0_wrap_pyop2_kernel_prolong       4 0.0 7.5558e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145efc261ed0_wrap_pyop2_kernel_prolong       4 0.0 6.0858e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff331f7110_wrap_pyop2_kernel_prolong       4 0.0 7.5488e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff328c2bd0_wrap_pyop2_kernel_prolong       4 0.0 5.3672e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1532b92c3cd0_wrap_pyop2_kernel_prolong       4 0.0 7.4984e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1532b9be9210_wrap_pyop2_kernel_prolong       4 0.0 5.6588e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f443abdd0_wrap_pyop2_kernel_prolong       4 0.0 7.4991e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f443a8850_wrap_pyop2_kernel_prolong       4 0.0 6.3058e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e6bd56b90_wrap_pyop2_kernel_prolong       4 0.0 7.4933e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e6bd67cd0_wrap_pyop2_kernel_prolong       4 0.0 5.2511e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1551274c3c90_wrap_pyop2_kernel_prolong       4 0.0 7.5006e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1551276ab810_wrap_pyop2_kernel_prolong       4 0.0 5.5456e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151992c21590_wrap_pyop2_kernel_prolong       4 0.0 7.5085e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151992bc4290_wrap_pyop2_kernel_prolong       4 0.0 7.3587e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f0cce61090_wrap_pyop2_kernel_prolong       4 0.0 7.4951e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f0ccddd150_wrap_pyop2_kernel_prolong       4 0.0 6.0150e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a11b0bd810_wrap_pyop2_kernel_prolong       4 0.0 7.5038e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a11b0bf890_wrap_pyop2_kernel_prolong       4 0.0 5.8469e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e47e4cbd0_wrap_pyop2_kernel_prolong       4 0.0 7.5027e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e47e4c390_wrap_pyop2_kernel_prolong       4 0.0 6.9369e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1536ce158d10_wrap_pyop2_kernel_prolong       4 0.0 7.5010e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1536ce1583d0_wrap_pyop2_kernel_prolong       4 0.0 6.9663e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c5d5924bd0_wrap_pyop2_kernel_prolong       4 0.0 7.4931e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c5d504c250_wrap_pyop2_kernel_prolong       4 0.0 4.5441e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14554219add0_wrap_pyop2_kernel_prolong       4 0.0 7.4994e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455421986d0_wrap_pyop2_kernel_prolong       4 0.0 5.6440e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce9872d110_wrap_pyop2_kernel_prolong       4 0.0 7.4965e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce9872ed10_wrap_pyop2_kernel_prolong       4 0.0 6.0076e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d4dd78d610_wrap_pyop2_kernel_prolong       4 0.0 7.5857e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d4dd78e150_wrap_pyop2_kernel_prolong       4 0.0 6.9102e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c54be98650_wrap_pyop2_kernel_prolong       4 0.0 7.5523e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c54be9d150_wrap_pyop2_kernel_prolong       4 0.0 6.7224e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ceeffe8fd0_wrap_pyop2_kernel_prolong       4 0.0 7.5102e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ceeffe92d0_wrap_pyop2_kernel_prolong       4 0.0 7.1767e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15012ba694d0_wrap_pyop2_kernel_prolong       4 0.0 7.5272e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15012ba68a10_wrap_pyop2_kernel_prolong       4 0.0 6.6521e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1492883997d0_wrap_pyop2_kernel_prolong       4 0.0 7.5062e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14928837d450_wrap_pyop2_kernel_prolong       4 0.0 6.2677e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a47f6a610_wrap_pyop2_kernel_prolong       4 0.0 7.5057e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a47f83010_wrap_pyop2_kernel_prolong       4 0.0 6.3097e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e1bb0fcd90_wrap_pyop2_kernel_prolong       4 0.0 7.5318e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e1bb10a750_wrap_pyop2_kernel_prolong       4 0.0 5.8141e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14faf21ecfd0_wrap_pyop2_kernel_prolong       4 0.0 7.5297e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14faf222e7d0_wrap_pyop2_kernel_prolong       4 0.0 6.0651e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149bb37a0b50_wrap_pyop2_kernel_prolong       4 0.0 7.5243e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149bb380b990_wrap_pyop2_kernel_prolong       4 0.0 5.6536e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eedc86ded0_wrap_pyop2_kernel_prolong       4 0.0 7.5332e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eed7d19e90_wrap_pyop2_kernel_prolong       4 0.0 6.4461e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155376103f90_wrap_pyop2_kernel_prolong       4 0.0 7.4943e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155376103d10_wrap_pyop2_kernel_prolong       4 0.0 4.6852e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146fa44b8ad0_wrap_pyop2_kernel_prolong       4 0.0 7.5520e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146fa445af10_wrap_pyop2_kernel_prolong       4 0.0 5.7563e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f4d44142d0_wrap_pyop2_kernel_prolong       4 0.0 7.5156e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f4d4387210_wrap_pyop2_kernel_prolong       4 0.0 5.9766e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15456993fbd0_wrap_pyop2_kernel_prolong       4 0.0 7.5209e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154569943390_wrap_pyop2_kernel_prolong       4 0.0 5.2082e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1460a199f950_wrap_pyop2_kernel_prolong       4 0.0 7.5213e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1460a19a98d0_wrap_pyop2_kernel_prolong       4 0.0 6.4290e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1543bf4b3290_wrap_pyop2_kernel_prolong       4 0.0 7.5142e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1543bf4b2dd0_wrap_pyop2_kernel_prolong       4 0.0 7.6542e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149366bf87d0_wrap_pyop2_kernel_prolong       4 0.0 7.4991e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149365faef50_wrap_pyop2_kernel_prolong       4 0.0 5.7363e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a88198990_wrap_pyop2_kernel_prolong       4 0.0 7.5584e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a88199550_wrap_pyop2_kernel_prolong       4 0.0 6.0925e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d7b2c74f50_wrap_pyop2_kernel_prolong       4 0.0 7.5024e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d7b2c744d0_wrap_pyop2_kernel_prolong       4 0.0 6.3932e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153271f15390_wrap_pyop2_kernel_prolong       4 0.0 7.5030e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153271f16490_wrap_pyop2_kernel_prolong       4 0.0 6.6424e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15030432fc10_wrap_pyop2_kernel_prolong       4 0.0 7.4991e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15030430fa90_wrap_pyop2_kernel_prolong       4 0.0 5.8054e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14977e75bf50_wrap_pyop2_kernel_prolong       4 0.0 7.5034e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14977e759950_wrap_pyop2_kernel_prolong       4 0.0 6.9070e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14db24963b90_wrap_pyop2_kernel_prolong       4 0.0 7.5026e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14db24961110_wrap_pyop2_kernel_prolong       4 0.0 6.7187e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b99bc4fd0_wrap_pyop2_kernel_prolong       4 0.0 7.4967e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b9996ee90_wrap_pyop2_kernel_prolong       4 0.0 5.6422e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5a8a60fd0_wrap_pyop2_kernel_prolong       4 0.0 7.4981e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5a8a97390_wrap_pyop2_kernel_prolong       4 0.0 6.3886e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d81bbc7c90_wrap_pyop2_kernel_prolong       4 0.0 7.5299e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d81bbc48d0_wrap_pyop2_kernel_prolong       4 0.0 7.6621e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1462ba646f10_wrap_pyop2_kernel_prolong       4 0.0 7.5679e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1462ba6444d0_wrap_pyop2_kernel_prolong       4 0.0 6.2501e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147759fc8750_wrap_pyop2_kernel_prolong       4 0.0 7.5035e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147759e4ad90_wrap_pyop2_kernel_prolong       4 0.0 6.2171e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1504f0880850_wrap_pyop2_kernel_prolong       4 0.0 7.5144e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1504f0881610_wrap_pyop2_kernel_prolong       4 0.0 5.9299e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1544314ea1d0_wrap_pyop2_kernel_prolong       4 0.0 7.5123e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1544314b19d0_wrap_pyop2_kernel_prolong       4 0.0 4.6335e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151414483850_wrap_pyop2_kernel_prolong       4 0.0 7.4957e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1514144ac9d0_wrap_pyop2_kernel_prolong       4 0.0 5.7985e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c07b24be90_wrap_pyop2_kernel_prolong       4 0.0 7.5394e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c07b26dc90_wrap_pyop2_kernel_prolong       4 0.0 6.5833e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c3e986d50_wrap_pyop2_kernel_prolong       4 0.0 7.5022e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c3ea80990_wrap_pyop2_kernel_prolong       4 0.0 6.4415e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f8af2d510_wrap_pyop2_kernel_prolong       4 0.0 7.5014e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f8ad5c410_wrap_pyop2_kernel_prolong       4 0.0 6.0644e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d6c79bde10_wrap_pyop2_kernel_prolong       4 0.0 7.5049e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d6c6e09fd0_wrap_pyop2_kernel_prolong       4 0.0 6.9116e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1546991650d0_wrap_pyop2_kernel_prolong       4 0.0 7.5028e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154699165410_wrap_pyop2_kernel_prolong       4 0.0 6.8581e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e70b0ef890_wrap_pyop2_kernel_prolong       4 0.0 7.7476e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e70b00aed0_wrap_pyop2_kernel_prolong       4 0.0 5.3584e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153d17f39190_wrap_pyop2_kernel_prolong       4 0.0 7.7463e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153d1c1a5bd0_wrap_pyop2_kernel_prolong       4 0.0 5.2344e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ca3d998d0_wrap_pyop2_kernel_prolong       4 0.0 7.7502e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ca3df65d0_wrap_pyop2_kernel_prolong       4 0.0 6.0768e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b4716bf50_wrap_pyop2_kernel_prolong       4 0.0 7.7468e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b46ee9990_wrap_pyop2_kernel_prolong       4 0.0 5.6605e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148350f50b90_wrap_pyop2_kernel_prolong       4 0.0 7.7473e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148350f50890_wrap_pyop2_kernel_prolong       4 0.0 5.8801e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f31ee992d0_wrap_pyop2_kernel_prolong       4 0.0 7.7524e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f31ee9b8d0_wrap_pyop2_kernel_prolong       4 0.0 6.1953e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f17310e590_wrap_pyop2_kernel_prolong       4 0.0 7.7416e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f17301d510_wrap_pyop2_kernel_prolong       4 0.0 4.8491e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15137e7d9490_wrap_pyop2_kernel_prolong       4 0.0 7.7477e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15137e83bd50_wrap_pyop2_kernel_prolong       4 0.0 6.0292e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd9c6fcb90_wrap_pyop2_kernel_prolong       4 0.0 7.7318e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd9c97df90_wrap_pyop2_kernel_prolong       4 0.0 5.6899e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1495b1909490_wrap_pyop2_kernel_prolong       4 0.0 7.7290e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1495b1909e50_wrap_pyop2_kernel_prolong       4 0.0 5.4425e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14749f78d290_wrap_pyop2_kernel_prolong       4 0.0 7.7454e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14749f7695d0_wrap_pyop2_kernel_prolong       4 0.0 5.5915e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151c942d8f10_wrap_pyop2_kernel_prolong       4 0.0 7.7496e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151c9433ad90_wrap_pyop2_kernel_prolong       4 0.0 6.0027e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a94cbd110_wrap_pyop2_kernel_prolong       4 0.0 7.7562e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a94afd210_wrap_pyop2_kernel_prolong       4 0.0 7.4453e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cbef2a0990_wrap_pyop2_kernel_prolong       4 0.0 7.7389e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cbef09b9d0_wrap_pyop2_kernel_prolong       4 0.0 5.6812e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b7d6450c90_wrap_pyop2_kernel_prolong       4 0.0 7.7451e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b7d8cf44d0_wrap_pyop2_kernel_prolong       4 0.0 5.2941e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148d5d8d1810_wrap_pyop2_kernel_prolong       4 0.0 7.7445e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148d5d8e2c90_wrap_pyop2_kernel_prolong       4 0.0 6.2750e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fefcf8acd0_wrap_pyop2_kernel_prolong       4 0.0 7.7455e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fefc6154d0_wrap_pyop2_kernel_prolong       4 0.0 6.2303e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c054cdebd0_wrap_pyop2_kernel_prolong       4 0.0 7.7346e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c054f4ec10_wrap_pyop2_kernel_prolong       4 0.0 6.2641e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14797dfc8910_wrap_pyop2_kernel_prolong       4 0.0 7.7422e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14797df3e310_wrap_pyop2_kernel_prolong       4 0.0 6.5518e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1471cd9e4e10_wrap_pyop2_kernel_prolong       4 0.0 7.7483e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1471cd9e60d0_wrap_pyop2_kernel_prolong       4 0.0 6.3796e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456200bdd50_wrap_pyop2_kernel_prolong       4 0.0 7.7430e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14561b7cd910_wrap_pyop2_kernel_prolong       4 0.0 5.2794e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1545ee582d10_wrap_pyop2_kernel_prolong       4 0.0 7.7320e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1545edc12650_wrap_pyop2_kernel_prolong       4 0.0 6.9354e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1502089610d0_wrap_pyop2_kernel_prolong       4 0.0 7.7455e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1502081cab90_wrap_pyop2_kernel_prolong       4 0.0 6.2011e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c09965210_wrap_pyop2_kernel_prolong       4 0.0 7.7450e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c08f6e290_wrap_pyop2_kernel_prolong       4 0.0 7.6616e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152eddf7af10_wrap_pyop2_kernel_prolong       4 0.0 7.7460e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152edd5fef90_wrap_pyop2_kernel_prolong       4 0.0 6.4838e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1464c9e9f450_wrap_pyop2_kernel_prolong       4 0.0 7.7542e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1464c9436e90_wrap_pyop2_kernel_prolong       4 0.0 7.6685e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dbf208de50_wrap_pyop2_kernel_prolong       4 0.0 7.7394e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dbf20cb790_wrap_pyop2_kernel_prolong       4 0.0 5.8784e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e50a25a50_wrap_pyop2_kernel_prolong       4 0.0 7.7429e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e50a27e90_wrap_pyop2_kernel_prolong       4 0.0 5.5460e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aaa41b3490_wrap_pyop2_kernel_prolong       4 0.0 7.7490e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa9f9bfe90_wrap_pyop2_kernel_prolong       4 0.0 6.8322e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147498a2d9d0_wrap_pyop2_kernel_prolong       4 0.0 7.7505e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147498a7d450_wrap_pyop2_kernel_prolong       4 0.0 6.5455e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14768eb79250_wrap_pyop2_kernel_prolong       4 0.0 7.7427e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14768f6a36d0_wrap_pyop2_kernel_prolong       4 0.0 5.6089e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458b6a1be90_wrap_pyop2_kernel_prolong       4 0.0 7.7531e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458b67f9390_wrap_pyop2_kernel_prolong       4 0.0 7.3296e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c90a2a1790_wrap_pyop2_kernel_prolong       4 0.0 7.7424e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c90a4f4cd0_wrap_pyop2_kernel_prolong       4 0.0 6.0846e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b7e2282c50_wrap_pyop2_kernel_prolong       4 0.0 7.7353e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b7e192bb10_wrap_pyop2_kernel_prolong       4 0.0 5.2996e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15050e5a8ed0_wrap_pyop2_kernel_prolong       4 0.0 7.7394e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15050e5aa190_wrap_pyop2_kernel_prolong       4 0.0 5.5063e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b65e68c50_wrap_pyop2_kernel_prolong       4 0.0 7.7483e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b65fb55d0_wrap_pyop2_kernel_prolong       4 0.0 6.7213e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bdb9348d50_wrap_pyop2_kernel_prolong       4 0.0 7.7434e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bdb82371d0_wrap_pyop2_kernel_prolong       4 0.0 6.5462e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1459e22ba850_wrap_pyop2_kernel_prolong       4 0.0 7.7443e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1459e22bb710_wrap_pyop2_kernel_prolong       4 0.0 5.9472e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1521b1c36810_wrap_pyop2_kernel_prolong       4 0.0 7.7463e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1521b25ae090_wrap_pyop2_kernel_prolong       4 0.0 7.6662e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146b3e17fe50_wrap_pyop2_kernel_prolong       4 0.0 7.7369e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146b3e17eb10_wrap_pyop2_kernel_prolong       4 0.0 5.0759e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1481ef663050_wrap_pyop2_kernel_prolong       4 0.0 7.7419e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1481ef6633d0_wrap_pyop2_kernel_prolong       4 0.0 5.4444e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5fd45b590_wrap_pyop2_kernel_prolong       4 0.0 7.7463e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5fd45a750_wrap_pyop2_kernel_prolong       4 0.0 5.8657e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145cc463c9d0_wrap_pyop2_kernel_prolong       4 0.0 7.7440e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145cc46d6d90_wrap_pyop2_kernel_prolong       4 0.0 6.8813e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1539ef971450_wrap_pyop2_kernel_prolong       4 0.0 7.7442e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1539ef7f39d0_wrap_pyop2_kernel_prolong       4 0.0 6.1898e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1548deb7e5d0_wrap_pyop2_kernel_prolong       4 0.0 7.7456e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1548de1ccf50_wrap_pyop2_kernel_prolong       4 0.0 6.6834e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15486037cbd0_wrap_pyop2_kernel_prolong       4 0.0 7.7479e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1548617a8490_wrap_pyop2_kernel_prolong       4 0.0 6.7722e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1502d454a0d0_wrap_pyop2_kernel_prolong       4 0.0 7.7467e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1502d43aee90_wrap_pyop2_kernel_prolong       4 0.0 6.7716e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f86fb0e10_wrap_pyop2_kernel_prolong       4 0.0 7.7529e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f879fef90_wrap_pyop2_kernel_prolong       4 0.0 7.1755e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c8d941cd90_wrap_pyop2_kernel_prolong       4 0.0 7.7448e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c8d941e3d0_wrap_pyop2_kernel_prolong       4 0.0 6.7556e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522a135be10_wrap_pyop2_kernel_prolong       4 0.0 7.7415e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522a15990d0_wrap_pyop2_kernel_prolong       4 0.0 6.2181e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a8ed8d710_wrap_pyop2_kernel_prolong       4 0.0 7.7518e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a8e27ac50_wrap_pyop2_kernel_prolong       4 0.0 7.0248e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152599440ed0_wrap_pyop2_kernel_prolong       4 0.0 7.7554e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152599443c50_wrap_pyop2_kernel_prolong       4 0.0 7.1381e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1550a5290d10_wrap_pyop2_kernel_prolong       4 0.0 7.7218e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1550a5292c50_wrap_pyop2_kernel_prolong       4 0.0 4.9406e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d392c0c90_wrap_pyop2_kernel_prolong       4 0.0 7.7248e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d39341dd0_wrap_pyop2_kernel_prolong       4 0.0 5.7750e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f3b79d250_wrap_pyop2_kernel_prolong       4 0.0 7.7269e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f3b7f7350_wrap_pyop2_kernel_prolong       4 0.0 5.4649e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152b687bc810_wrap_pyop2_kernel_prolong       4 0.0 7.7301e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152b63e57dd0_wrap_pyop2_kernel_prolong       4 0.0 5.3869e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a0ff655c90_wrap_pyop2_kernel_prolong       4 0.0 7.7293e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a0ff654bd0_wrap_pyop2_kernel_prolong       4 0.0 6.5499e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14981d7c6d10_wrap_pyop2_kernel_prolong       4 0.0 7.7343e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14981d763150_wrap_pyop2_kernel_prolong       4 0.0 6.1908e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154236fa7990_wrap_pyop2_kernel_prolong       4 0.0 7.7259e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154236556bd0_wrap_pyop2_kernel_prolong       4 0.0 5.9712e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f586361250_wrap_pyop2_kernel_prolong       4 0.0 7.7239e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f586361790_wrap_pyop2_kernel_prolong       4 0.0 5.5305e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f738604550_wrap_pyop2_kernel_prolong       4 0.0 7.7366e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f7384875d0_wrap_pyop2_kernel_prolong       4 0.0 7.4937e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152fcb02b310_wrap_pyop2_kernel_prolong       4 0.0 7.7278e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152fcb041b90_wrap_pyop2_kernel_prolong       4 0.0 6.0386e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cdb0a81950_wrap_pyop2_kernel_prolong       4 0.0 7.7318e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cdb017b190_wrap_pyop2_kernel_prolong       4 0.0 6.5874e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ced610d050_wrap_pyop2_kernel_prolong       4 0.0 7.7318e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ced6294710_wrap_pyop2_kernel_prolong       4 0.0 6.3213e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14917c3146d0_wrap_pyop2_kernel_prolong       4 0.0 7.7374e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491778a2b90_wrap_pyop2_kernel_prolong       4 0.0 7.5371e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152ed83c8a10_wrap_pyop2_kernel_prolong       4 0.0 7.7273e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152ed83c9a90_wrap_pyop2_kernel_prolong       4 0.0 6.2757e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150efcb67d10_wrap_pyop2_kernel_prolong       4 0.0 7.7278e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150efcb64bd0_wrap_pyop2_kernel_prolong       4 0.0 5.9616e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1505f92f3990_wrap_pyop2_kernel_prolong       4 0.0 7.7369e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1505f92f2390_wrap_pyop2_kernel_prolong       4 0.0 6.8708e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154225399dd0_wrap_pyop2_kernel_prolong       4 0.0 7.7263e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154225399890_wrap_pyop2_kernel_prolong       4 0.0 5.4938e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151fccd6e810_wrap_pyop2_kernel_prolong       4 0.0 7.7266e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151fccdd6890_wrap_pyop2_kernel_prolong       4 0.0 5.8236e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153506de0310_wrap_pyop2_kernel_prolong       4 0.0 7.7372e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153506b96010_wrap_pyop2_kernel_prolong       4 0.0 7.0754e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c845698d0_wrap_pyop2_kernel_prolong       4 0.0 7.7298e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c8456bc50_wrap_pyop2_kernel_prolong       4 0.0 5.7643e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15473f2debd0_wrap_pyop2_kernel_prolong       4 0.0 7.7371e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15473e5aed50_wrap_pyop2_kernel_prolong       4 0.0 6.7651e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a225b4550_wrap_pyop2_kernel_prolong       4 0.0 7.7345e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a22497ad0_wrap_pyop2_kernel_prolong       4 0.0 6.6698e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455affd3150_wrap_pyop2_kernel_prolong       4 0.0 7.7363e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455afe51550_wrap_pyop2_kernel_prolong       4 0.0 6.1158e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e3b5dcd310_wrap_pyop2_kernel_prolong       4 0.0 7.7345e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e3b5e2ebd0_wrap_pyop2_kernel_prolong       4 0.0 7.0228e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e4ed6c6d0_wrap_pyop2_kernel_prolong       4 0.0 7.7439e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e4ed6d490_wrap_pyop2_kernel_prolong       4 0.0 7.0225e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1471184e4bd0_wrap_pyop2_kernel_prolong       4 0.0 7.7495e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1471184e5890_wrap_pyop2_kernel_prolong       4 0.0 7.5368e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153fe92f4c50_wrap_pyop2_kernel_prolong       4 0.0 7.7347e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153fe9107fd0_wrap_pyop2_kernel_prolong       4 0.0 5.9120e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491c5154990_wrap_pyop2_kernel_prolong       4 0.0 7.7308e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491c50f7ad0_wrap_pyop2_kernel_prolong       4 0.0 4.3815e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a02e30a210_wrap_pyop2_kernel_prolong       4 0.0 7.7293e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a02e2dab90_wrap_pyop2_kernel_prolong       4 0.0 5.6314e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150018606dd0_wrap_pyop2_kernel_prolong       4 0.0 7.7353e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1500185bf8d0_wrap_pyop2_kernel_prolong       4 0.0 6.3829e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d77237ca90_wrap_pyop2_kernel_prolong       4 0.0 7.7393e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d771964e10_wrap_pyop2_kernel_prolong       4 0.0 6.6177e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151477a74bd0_wrap_pyop2_kernel_prolong       4 0.0 7.7455e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1514778776d0_wrap_pyop2_kernel_prolong       4 0.0 7.2882e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1534b98b38d0_wrap_pyop2_kernel_prolong       4 0.0 7.7303e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1534b987ced0_wrap_pyop2_kernel_prolong       4 0.0 5.2877e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e9e0809b10_wrap_pyop2_kernel_prolong       4 0.0 7.7341e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e9e07c14d0_wrap_pyop2_kernel_prolong       4 0.0 6.2693e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153a074ed690_wrap_pyop2_kernel_prolong       4 0.0 7.7426e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153a0738ec50_wrap_pyop2_kernel_prolong       4 0.0 7.7787e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15243020f990_wrap_pyop2_kernel_prolong       4 0.0 7.7347e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152430277e90_wrap_pyop2_kernel_prolong       4 0.0 7.0486e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15216413db90_wrap_pyop2_kernel_prolong       4 0.0 7.7339e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15215ffcecd0_wrap_pyop2_kernel_prolong       4 0.0 6.2352e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14edad4285d0_wrap_pyop2_kernel_prolong       4 0.0 7.7390e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14edad2fcd10_wrap_pyop2_kernel_prolong       4 0.0 6.0075e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c5acfd450_wrap_pyop2_kernel_prolong       4 0.0 7.7361e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c5acfeb50_wrap_pyop2_kernel_prolong       4 0.0 6.6052e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f64bf5d90_wrap_pyop2_kernel_prolong       4 0.0 7.7346e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f64bf6fd0_wrap_pyop2_kernel_prolong       4 0.0 5.2785e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a151b3590_wrap_pyop2_kernel_prolong       4 0.0 7.7454e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a1479eed0_wrap_pyop2_kernel_prolong       4 0.0 7.1381e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ec48ced9d0_wrap_pyop2_kernel_prolong       4 0.0 7.7439e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ec48ce6490_wrap_pyop2_kernel_prolong       4 0.0 7.0811e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe5c61b850_wrap_pyop2_kernel_prolong       4 0.0 7.7383e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe5c4f9fd0_wrap_pyop2_kernel_prolong       4 0.0 6.2023e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1547a795cf50_wrap_pyop2_kernel_prolong       4 0.0 7.7371e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1547a794b450_wrap_pyop2_kernel_prolong       4 0.0 6.3659e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d48eaedcd0_wrap_pyop2_kernel_prolong       4 0.0 7.7441e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d48e965790_wrap_pyop2_kernel_prolong       4 0.0 7.1473e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ad00b1bd0_wrap_pyop2_kernel_prolong       4 0.0 7.7369e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ad00f1050_wrap_pyop2_kernel_prolong       4 0.0 5.5419e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab710319d0_wrap_pyop2_kernel_prolong       4 0.0 7.7402e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab70ef46d0_wrap_pyop2_kernel_prolong       4 0.0 6.8312e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a67dd13ed0_wrap_pyop2_kernel_prolong       4 0.0 7.7419e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a67dd2de50_wrap_pyop2_kernel_prolong       4 0.0 7.0789e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15234b4fdcd0_wrap_pyop2_kernel_prolong       4 0.0 7.7339e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15234b4fc050_wrap_pyop2_kernel_prolong       4 0.0 5.6611e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff9195d9d0_wrap_pyop2_kernel_prolong       4 0.0 7.7440e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff9195ead0_wrap_pyop2_kernel_prolong       4 0.0 7.4387e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ad42f0e90_wrap_pyop2_kernel_prolong       4 0.0 7.7431e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ad42a9910_wrap_pyop2_kernel_prolong       4 0.0 7.2547e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14750ac06650_wrap_pyop2_kernel_prolong       4 0.0 7.7443e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14750ac06d10_wrap_pyop2_kernel_prolong       4 0.0 8.0479e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152cf5f85210_wrap_pyop2_kernel_prolong       4 0.0 7.5798e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152cf5fb83d0_wrap_pyop2_kernel_prolong       4 0.0 4.8967e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff8c12da90_wrap_pyop2_kernel_prolong       4 0.0 7.5790e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff87a31b10_wrap_pyop2_kernel_prolong       4 0.0 5.6272e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1490feeb0e90_wrap_pyop2_kernel_prolong       4 0.0 7.5796e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1490ff0a8bd0_wrap_pyop2_kernel_prolong       4 0.0 5.6442e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd1e554d50_wrap_pyop2_kernel_prolong       4 0.0 7.5770e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd1db6ec50_wrap_pyop2_kernel_prolong       4 0.0 4.6211e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147bafb780d0_wrap_pyop2_kernel_prolong       4 0.0 7.5790e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147bafb2a210_wrap_pyop2_kernel_prolong       4 0.0 5.5694e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b41ddee50_wrap_pyop2_kernel_prolong       4 0.0 7.5870e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b40b21250_wrap_pyop2_kernel_prolong       4 0.0 7.1234e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150293c61f10_wrap_pyop2_kernel_prolong       4 0.0 7.5814e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150293e46bd0_wrap_pyop2_kernel_prolong       4 0.0 5.8229e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153fe84140d0_wrap_pyop2_kernel_prolong       4 0.0 7.5806e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153fe846df90_wrap_pyop2_kernel_prolong       4 0.0 5.8299e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed27c80990_wrap_pyop2_kernel_prolong       4 0.0 7.5842e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed2739ba50_wrap_pyop2_kernel_prolong       4 0.0 6.4054e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d4bd4dc0d0_wrap_pyop2_kernel_prolong       4 0.0 7.5795e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d4bd4ef4d0_wrap_pyop2_kernel_prolong       4 0.0 5.8600e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14640903e990_wrap_pyop2_kernel_prolong       4 0.0 7.5831e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14640903e290_wrap_pyop2_kernel_prolong       4 0.0 6.2441e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1545aeff0a10_wrap_pyop2_kernel_prolong       4 0.0 7.5846e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1545ae84b550_wrap_pyop2_kernel_prolong       4 0.0 6.6816e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493c1d670d0_wrap_pyop2_kernel_prolong       4 0.0 7.5869e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493c0c228d0_wrap_pyop2_kernel_prolong       4 0.0 6.9110e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d405e7a710_wrap_pyop2_kernel_prolong       4 0.0 7.5721e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d405e78e50_wrap_pyop2_kernel_prolong       4 0.0 5.0361e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149463298e50_wrap_pyop2_kernel_prolong       4 0.0 7.5769e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149463298310_wrap_pyop2_kernel_prolong       4 0.0 5.9852e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1485b3134990_wrap_pyop2_kernel_prolong       4 0.0 7.5717e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1485b2fc11d0_wrap_pyop2_kernel_prolong       4 0.0 6.0777e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1524cd2efb90_wrap_pyop2_kernel_prolong       4 0.0 7.5796e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1524cd2ee9d0_wrap_pyop2_kernel_prolong       4 0.0 6.4529e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150579f78e90_wrap_pyop2_kernel_prolong       4 0.0 7.5596e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15057a8d6bd0_wrap_pyop2_kernel_prolong       4 0.0 5.3977e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1509f55cce10_wrap_pyop2_kernel_prolong       4 0.0 7.5818e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1509f4bead10_wrap_pyop2_kernel_prolong       4 0.0 7.6110e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1517880eb290_wrap_pyop2_kernel_prolong       4 0.0 7.5693e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1517880e9850_wrap_pyop2_kernel_prolong       4 0.0 6.7255e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478d1763c90_wrap_pyop2_kernel_prolong       4 0.0 7.5652e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478d171b490_wrap_pyop2_kernel_prolong       4 0.0 5.7090e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152dc3d71c50_wrap_pyop2_kernel_prolong       4 0.0 7.5706e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152dc3d6a350_wrap_pyop2_kernel_prolong       4 0.0 6.2024e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148dc941b7d0_wrap_pyop2_kernel_prolong       4 0.0 7.5740e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148dc9f3a790_wrap_pyop2_kernel_prolong       4 0.0 6.6915e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d752889050_wrap_pyop2_kernel_prolong       4 0.0 7.5725e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d752889850_wrap_pyop2_kernel_prolong       4 0.0 6.6335e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151f15f210d0_wrap_pyop2_kernel_prolong       4 0.0 7.5779e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151f15f204d0_wrap_pyop2_kernel_prolong       4 0.0 6.6271e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad30fcbcd0_wrap_pyop2_kernel_prolong       4 0.0 7.5745e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad30e56e10_wrap_pyop2_kernel_prolong       4 0.0 7.6627e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f26e1a0a10_wrap_pyop2_kernel_prolong       4 0.0 7.5723e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f26e1a29d0_wrap_pyop2_kernel_prolong       4 0.0 5.2629e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d79e6d590_wrap_pyop2_kernel_prolong       4 0.0 7.5668e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d79e1bd50_wrap_pyop2_kernel_prolong       4 0.0 5.2089e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15390ac24690_wrap_pyop2_kernel_prolong       4 0.0 7.5799e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15390ae073d0_wrap_pyop2_kernel_prolong       4 0.0 6.3887e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fde4d6fbd0_wrap_pyop2_kernel_prolong       4 0.0 7.5705e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fde4da0b10_wrap_pyop2_kernel_prolong       4 0.0 5.3289e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aaccd1bdd0_wrap_pyop2_kernel_prolong       4 0.0 7.5804e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aaccd1bd90_wrap_pyop2_kernel_prolong       4 0.0 5.8566e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1535ad58da10_wrap_pyop2_kernel_prolong       4 0.0 7.5874e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1535adf3f150_wrap_pyop2_kernel_prolong       4 0.0 7.2933e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bbc0773950_wrap_pyop2_kernel_prolong       4 0.0 7.5776e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bbbbd50550_wrap_pyop2_kernel_prolong       4 0.0 5.8361e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aacb13e590_wrap_pyop2_kernel_prolong       4 0.0 7.5806e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aacb15b0d0_wrap_pyop2_kernel_prolong       4 0.0 6.0806e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a5b2f8810_wrap_pyop2_kernel_prolong       4 0.0 7.5751e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a5b462d10_wrap_pyop2_kernel_prolong       4 0.0 6.4055e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f48a2f0d0_wrap_pyop2_kernel_prolong       4 0.0 7.5814e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f48aaba50_wrap_pyop2_kernel_prolong       4 0.0 5.7231e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1536c2954850_wrap_pyop2_kernel_prolong       4 0.0 7.5838e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1536c294ac90_wrap_pyop2_kernel_prolong       4 0.0 6.3966e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ba2841190_wrap_pyop2_kernel_prolong       4 0.0 7.5863e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ba27faf50_wrap_pyop2_kernel_prolong       4 0.0 7.6280e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f3c6cad90_wrap_pyop2_kernel_prolong       4 0.0 7.5868e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f3c6c83d0_wrap_pyop2_kernel_prolong       4 0.0 7.1462e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519b302da10_wrap_pyop2_kernel_prolong       4 0.0 7.5753e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519b304fb90_wrap_pyop2_kernel_prolong       4 0.0 5.3379e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5458b3610_wrap_pyop2_kernel_prolong       4 0.0 7.5580e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5458b3090_wrap_pyop2_kernel_prolong       4 0.0 5.8759e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150da89eef50_wrap_pyop2_kernel_prolong       4 0.0 7.5643e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150da89ed050_wrap_pyop2_kernel_prolong       4 0.0 6.0603e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b1fa1b0e10_wrap_pyop2_kernel_prolong       4 0.0 7.5676e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b1fa1b2190_wrap_pyop2_kernel_prolong       4 0.0 5.8286e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e30fb67b90_wrap_pyop2_kernel_prolong       4 0.0 7.5740e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e30fb33750_wrap_pyop2_kernel_prolong       4 0.0 5.2507e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146aeba2a610_wrap_pyop2_kernel_prolong       4 0.0 7.5641e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146af00976d0_wrap_pyop2_kernel_prolong       4 0.0 5.8418e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b57e41cc50_wrap_pyop2_kernel_prolong       4 0.0 7.5679e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b57e41e490_wrap_pyop2_kernel_prolong       4 0.0 6.0139e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5d436ed50_wrap_pyop2_kernel_prolong       4 0.0 7.5699e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5d4282950_wrap_pyop2_kernel_prolong       4 0.0 7.0624e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c5508f790_wrap_pyop2_kernel_prolong       4 0.0 7.5769e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c4fd1fe10_wrap_pyop2_kernel_prolong       4 0.0 6.9526e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15258edf3b50_wrap_pyop2_kernel_prolong       4 0.0 7.5795e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15258edf0810_wrap_pyop2_kernel_prolong       4 0.0 6.6520e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150bab664a50_wrap_pyop2_kernel_prolong       4 0.0 7.5774e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150bab633310_wrap_pyop2_kernel_prolong       4 0.0 6.4730e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d97535d410_wrap_pyop2_kernel_prolong       4 0.0 7.5639e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d97535d950_wrap_pyop2_kernel_prolong       4 0.0 6.2380e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c55567e90_wrap_pyop2_kernel_prolong       4 0.0 7.5839e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c55748c90_wrap_pyop2_kernel_prolong       4 0.0 7.8035e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1524656fe550_wrap_pyop2_kernel_prolong       4 0.0 7.5522e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152464d4ae50_wrap_pyop2_kernel_prolong       4 0.0 4.9817e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c87794f850_wrap_pyop2_kernel_prolong       4 0.0 7.5679e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c8777ced90_wrap_pyop2_kernel_prolong       4 0.0 5.9560e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a2ca1def90_wrap_pyop2_kernel_prolong       4 0.0 7.5581e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a2c97d6510_wrap_pyop2_kernel_prolong       4 0.0 5.9980e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1520bd635250_wrap_pyop2_kernel_prolong       4 0.0 7.5598e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1520bd634a10_wrap_pyop2_kernel_prolong       4 0.0 5.8611e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da34f898d0_wrap_pyop2_kernel_prolong       4 0.0 7.5653e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da34682850_wrap_pyop2_kernel_prolong       4 0.0 6.2557e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150145864c90_wrap_pyop2_kernel_prolong       4 0.0 7.5565e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150145865d90_wrap_pyop2_kernel_prolong       4 0.0 5.7036e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145f8fdebcd0_wrap_pyop2_kernel_prolong       4 0.0 7.5578e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145f8fd93d90_wrap_pyop2_kernel_prolong       4 0.0 5.8900e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1470823fe010_wrap_pyop2_kernel_prolong       4 0.0 7.5628e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1470823fd950_wrap_pyop2_kernel_prolong       4 0.0 5.6669e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e647589810_wrap_pyop2_kernel_prolong       4 0.0 7.5622e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e6475899d0_wrap_pyop2_kernel_prolong       4 0.0 7.5175e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b1f1be8f90_wrap_pyop2_kernel_prolong       4 0.0 7.5566e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b1f1be8750_wrap_pyop2_kernel_prolong       4 0.0 5.5717e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15529ac05190_wrap_pyop2_kernel_prolong       4 0.0 7.5750e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15529ac27650_wrap_pyop2_kernel_prolong       4 0.0 6.8220e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b9ab298590_wrap_pyop2_kernel_prolong       4 0.0 7.5637e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b9ab29a190_wrap_pyop2_kernel_prolong       4 0.0 6.5565e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d5cd54c850_wrap_pyop2_kernel_prolong       4 0.0 7.5606e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d5cd54f490_wrap_pyop2_kernel_prolong       4 0.0 6.0890e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a0aed9a890_wrap_pyop2_kernel_prolong       4 0.0 7.5702e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a0aec12010_wrap_pyop2_kernel_prolong       4 0.0 5.7063e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c7ea4a3e50_wrap_pyop2_kernel_prolong       4 0.0 7.5722e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c7ea480d10_wrap_pyop2_kernel_prolong       4 0.0 4.6548e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152b7f3f8890_wrap_pyop2_kernel_prolong       4 0.0 7.5636e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152b7f462a10_wrap_pyop2_kernel_prolong       4 0.0 6.6202e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150cd9d58810_wrap_pyop2_kernel_prolong       4 0.0 7.5627e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150cd9d89790_wrap_pyop2_kernel_prolong       4 0.0 5.4529e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c79c0c1090_wrap_pyop2_kernel_prolong       4 0.0 7.5689e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c797727d90_wrap_pyop2_kernel_prolong       4 0.0 5.9299e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ca59817150_wrap_pyop2_kernel_prolong       4 0.0 7.5781e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ca597c6650_wrap_pyop2_kernel_prolong       4 0.0 7.0909e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1463657ca950_wrap_pyop2_kernel_prolong       4 0.0 7.5561e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146365534450_wrap_pyop2_kernel_prolong       4 0.0 4.9976e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14993ace8910_wrap_pyop2_kernel_prolong       4 0.0 7.5776e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14993ace8750_wrap_pyop2_kernel_prolong       4 0.0 6.3907e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c46199b8d0_wrap_pyop2_kernel_prolong       4 0.0 7.5754e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c461c3a410_wrap_pyop2_kernel_prolong       4 0.0 6.2013e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dffa59eb90_wrap_pyop2_kernel_prolong       4 0.0 7.5745e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dffa798110_wrap_pyop2_kernel_prolong       4 0.0 6.1256e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14efbc895650_wrap_pyop2_kernel_prolong       4 0.0 7.5803e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14efbc894f90_wrap_pyop2_kernel_prolong       4 0.0 7.2200e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15360734d0d0_wrap_pyop2_kernel_prolong       4 0.0 7.5780e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153607356390_wrap_pyop2_kernel_prolong       4 0.0 6.3833e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1543769215d0_wrap_pyop2_kernel_prolong       4 0.0 7.5698e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154376921210_wrap_pyop2_kernel_prolong       4 0.0 7.5497e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f8466fe50_wrap_pyop2_kernel_prolong       4 0.0 7.5632e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f7fd25c90_wrap_pyop2_kernel_prolong       4 0.0 5.0964e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf540a9650_wrap_pyop2_kernel_prolong       4 0.0 7.5651e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf54326650_wrap_pyop2_kernel_prolong       4 0.0 5.3248e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce90351c10_wrap_pyop2_kernel_prolong       4 0.0 7.5674e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce903533d0_wrap_pyop2_kernel_prolong       4 0.0 5.6746e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ef2c6b650_wrap_pyop2_kernel_prolong       4 0.0 7.5649e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ef2c33810_wrap_pyop2_kernel_prolong       4 0.0 6.1064e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce00f3ef50_wrap_pyop2_kernel_prolong       4 0.0 7.5683e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce00deafd0_wrap_pyop2_kernel_prolong       4 0.0 6.4356e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1501168c0a10_wrap_pyop2_kernel_prolong       4 0.0 7.5766e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15011651fb50_wrap_pyop2_kernel_prolong       4 0.0 7.3484e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1482d82100d0_wrap_pyop2_kernel_prolong       4 0.0 7.5600e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1482d80b0250_wrap_pyop2_kernel_prolong       4 0.0 6.4135e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e46da13e90_wrap_pyop2_kernel_prolong       4 0.0 7.5747e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e46da13690_wrap_pyop2_kernel_prolong       4 0.0 7.0409e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14930a1bd590_wrap_pyop2_kernel_prolong       4 0.0 7.5666e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14930a1bead0_wrap_pyop2_kernel_prolong       4 0.0 6.8103e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149040ebfe50_wrap_pyop2_kernel_prolong       4 0.0 7.5581e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149040ebfc10_wrap_pyop2_kernel_prolong       4 0.0 6.3992e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1494b6691650_wrap_pyop2_kernel_prolong       4 0.0 7.5800e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1494b6684590_wrap_pyop2_kernel_prolong       4 0.0 6.6588e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dfd0941dd0_wrap_pyop2_kernel_prolong       4 0.0 7.5652e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dfd07dcbd0_wrap_pyop2_kernel_prolong       4 0.0 7.2840e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f704c0d50_wrap_pyop2_kernel_prolong       4 0.0 7.5683e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f704c2ed0_wrap_pyop2_kernel_prolong       4 0.0 7.4772e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14572b2751d0_wrap_pyop2_kernel_prolong       4 0.0 7.5645e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14572b276dd0_wrap_pyop2_kernel_prolong       4 0.0 5.7211e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a95edfd550_wrap_pyop2_kernel_prolong       4 0.0 7.5578e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a95f0af610_wrap_pyop2_kernel_prolong       4 0.0 5.8865e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150d536e97d0_wrap_pyop2_kernel_prolong       4 0.0 7.5810e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150d52f14b50_wrap_pyop2_kernel_prolong       4 0.0 7.7510e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f22b576d0_wrap_pyop2_kernel_prolong       4 0.0 7.5728e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f21b86790_wrap_pyop2_kernel_prolong       4 0.0 6.9635e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152ffbbc1150_wrap_pyop2_kernel_prolong       4 0.0 7.5538e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152ffbb2e250_wrap_pyop2_kernel_prolong       4 0.0 5.0136e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145522876510_wrap_pyop2_kernel_prolong       4 0.0 7.5680e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455228ca710_wrap_pyop2_kernel_prolong       4 0.0 7.1850e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14662e2a4490_wrap_pyop2_kernel_prolong       4 0.0 7.5673e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14662e278d10_wrap_pyop2_kernel_prolong       4 0.0 6.4005e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145f60691310_wrap_pyop2_kernel_prolong       4 0.0 7.5672e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145f6050e150_wrap_pyop2_kernel_prolong       4 0.0 6.9323e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b005b22250_wrap_pyop2_kernel_prolong       4 0.0 7.5686e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b005ad9790_wrap_pyop2_kernel_prolong       4 0.0 7.4890e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456509ef7d0_wrap_pyop2_kernel_prolong       4 0.0 7.5682e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456507f3b50_wrap_pyop2_kernel_prolong       4 0.0 5.5277e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d3f41b9f10_wrap_pyop2_kernel_prolong       4 0.0 7.5685e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d3f41b9810_wrap_pyop2_kernel_prolong       4 0.0 7.5585e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15157e116a10_wrap_pyop2_kernel_prolong       4 0.0 7.5777e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15157e122ed0_wrap_pyop2_kernel_prolong       4 0.0 7.5375e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e1ced08d0_wrap_pyop2_kernel_prolong       4 0.0 7.5832e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e1ced2310_wrap_pyop2_kernel_prolong       4 0.0 7.9682e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145cd0d0dfd0_wrap_pyop2_kernel_prolong       4 0.0 7.6635e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145cd0cff010_wrap_pyop2_kernel_prolong       4 0.0 5.5523e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152802c07f50_wrap_pyop2_kernel_prolong       4 0.0 7.6286e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152802c5d390_wrap_pyop2_kernel_prolong       4 0.0 5.5934e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1459dff44f90_wrap_pyop2_kernel_prolong       4 0.0 7.5921e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1459df822290_wrap_pyop2_kernel_prolong       4 0.0 5.9634e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b20ebdd50_wrap_pyop2_kernel_prolong       4 0.0 7.6157e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b20ebf390_wrap_pyop2_kernel_prolong       4 0.0 5.8243e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b02f89e5d0_wrap_pyop2_kernel_prolong       4 0.0 7.5898e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b02f887a50_wrap_pyop2_kernel_prolong       4 0.0 5.5375e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15446699b890_wrap_pyop2_kernel_prolong       4 0.0 7.6188e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154465fe8c50_wrap_pyop2_kernel_prolong       4 0.0 5.9776e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14735a421b90_wrap_pyop2_kernel_prolong       4 0.0 7.6301e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14735a322cd0_wrap_pyop2_kernel_prolong       4 0.0 4.8365e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1482b6630910_wrap_pyop2_kernel_prolong       4 0.0 7.6533e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1482b5df2750_wrap_pyop2_kernel_prolong       4 0.0 5.3758e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147bd83c1410_wrap_pyop2_kernel_prolong       4 0.0 7.6280e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147bd8168850_wrap_pyop2_kernel_prolong       4 0.0 5.7479e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b6150f0d0_wrap_pyop2_kernel_prolong       4 0.0 7.6646e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b617ad0d0_wrap_pyop2_kernel_prolong       4 0.0 5.9259e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1492fcc05090_wrap_pyop2_kernel_prolong       4 0.0 7.6204e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1492fc45a450_wrap_pyop2_kernel_prolong       4 0.0 5.8182e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15059f6e1f50_wrap_pyop2_kernel_prolong       4 0.0 7.6685e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15059f9308d0_wrap_pyop2_kernel_prolong       4 0.0 5.7846e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1469c8cfd3d0_wrap_pyop2_kernel_prolong       4 0.0 7.6391e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1469c8b6bd50_wrap_pyop2_kernel_prolong       4 0.0 7.1042e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145b3236bc50_wrap_pyop2_kernel_prolong       4 0.0 7.5975e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145b3236b710_wrap_pyop2_kernel_prolong       4 0.0 6.2565e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f5f78f5890_wrap_pyop2_kernel_prolong       4 0.0 7.5919e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f5f7b78f10_wrap_pyop2_kernel_prolong       4 0.0 5.5149e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ced2039c10_wrap_pyop2_kernel_prolong       4 0.0 7.6590e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ced203ba90_wrap_pyop2_kernel_prolong       4 0.0 5.1311e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1524cd0e9250_wrap_pyop2_kernel_prolong       4 0.0 7.6094e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1524cd0eb150_wrap_pyop2_kernel_prolong       4 0.0 5.2566e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b227b9c50_wrap_pyop2_kernel_prolong       4 0.0 7.6086e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b2243a490_wrap_pyop2_kernel_prolong       4 0.0 5.7740e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b4ca355310_wrap_pyop2_kernel_prolong       4 0.0 7.6304e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b4ca355750_wrap_pyop2_kernel_prolong       4 0.0 7.5810e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15399e2fcf90_wrap_pyop2_kernel_prolong       4 0.0 7.6496e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15399d9b78d0_wrap_pyop2_kernel_prolong       4 0.0 6.0380e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14625ae4d690_wrap_pyop2_kernel_prolong       4 0.0 7.6241e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14625ae4f010_wrap_pyop2_kernel_prolong       4 0.0 5.8576e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df77d95cd0_wrap_pyop2_kernel_prolong       4 0.0 7.6537e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df77d95490_wrap_pyop2_kernel_prolong       4 0.0 7.3640e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b99cd63ed0_wrap_pyop2_kernel_prolong       4 0.0 7.6402e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b99cd63350_wrap_pyop2_kernel_prolong       4 0.0 6.6916e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aebf518e90_wrap_pyop2_kernel_prolong       4 0.0 7.5992e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aebf553d50_wrap_pyop2_kernel_prolong       4 0.0 6.9310e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1547c7a3ff50_wrap_pyop2_kernel_prolong       4 0.0 7.6039e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1547c795a3d0_wrap_pyop2_kernel_prolong       4 0.0 7.1528e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e75000b710_wrap_pyop2_kernel_prolong       4 0.0 7.6257e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e7500f5cd0_wrap_pyop2_kernel_prolong       4 0.0 7.4364e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152864d2fe50_wrap_pyop2_kernel_prolong       4 0.0 7.5966e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152864d3c150_wrap_pyop2_kernel_prolong       4 0.0 5.8522e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154af775d810_wrap_pyop2_kernel_prolong       4 0.0 7.6513e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154af775e090_wrap_pyop2_kernel_prolong       4 0.0 5.0880e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478a26bedd0_wrap_pyop2_kernel_prolong       4 0.0 7.6555e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478a26bca50_wrap_pyop2_kernel_prolong       4 0.0 5.3031e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf9d9db990_wrap_pyop2_kernel_prolong       4 0.0 7.6644e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf9d9daf50_wrap_pyop2_kernel_prolong       4 0.0 6.7552e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee3a685690_wrap_pyop2_kernel_prolong       4 0.0 7.5914e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee3a6bff50_wrap_pyop2_kernel_prolong       4 0.0 6.2897e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ec02dcb6d0_wrap_pyop2_kernel_prolong       4 0.0 7.6284e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ec02d7a690_wrap_pyop2_kernel_prolong       4 0.0 6.5256e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b19e251290_wrap_pyop2_kernel_prolong       4 0.0 7.6373e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b19e252e10_wrap_pyop2_kernel_prolong       4 0.0 5.3881e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f0e2f51c90_wrap_pyop2_kernel_prolong       4 0.0 7.5934e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f0e2fc11d0_wrap_pyop2_kernel_prolong       4 0.0 6.4633e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146cd1a71090_wrap_pyop2_kernel_prolong       4 0.0 7.6100e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146cd1a72c90_wrap_pyop2_kernel_prolong       4 0.0 6.6848e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d9a44ea50_wrap_pyop2_kernel_prolong       4 0.0 7.6488e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d99b3b190_wrap_pyop2_kernel_prolong       4 0.0 6.8602e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151726ec56d0_wrap_pyop2_kernel_prolong       4 0.0 7.6458e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151726d4fe10_wrap_pyop2_kernel_prolong       4 0.0 7.4655e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1468df9792d0_wrap_pyop2_kernel_prolong       4 0.0 7.6100e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1468df037790_wrap_pyop2_kernel_prolong       4 0.0 6.4977e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df4f964950_wrap_pyop2_kernel_prolong       4 0.0 7.5997e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df4f966e90_wrap_pyop2_kernel_prolong       4 0.0 6.7066e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15305da26fd0_wrap_pyop2_kernel_prolong       4 0.0 7.6009e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15305d9de710_wrap_pyop2_kernel_prolong       4 0.0 6.4209e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf9a5cb2d0_wrap_pyop2_kernel_prolong       4 0.0 7.6691e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf9a582610_wrap_pyop2_kernel_prolong       4 0.0 6.4501e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c543487810_wrap_pyop2_kernel_prolong       4 0.0 7.6175e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c543466690_wrap_pyop2_kernel_prolong       4 0.0 6.4727e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cbf1ebcd90_wrap_pyop2_kernel_prolong       4 0.0 7.5874e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cbf21380d0_wrap_pyop2_kernel_prolong       4 0.0 5.9747e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c484deb990_wrap_pyop2_kernel_prolong       4 0.0 7.5979e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c484b97750_wrap_pyop2_kernel_prolong       4 0.0 6.1792e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f00a5dd10_wrap_pyop2_kernel_prolong       4 0.0 7.6497e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f00cdab10_wrap_pyop2_kernel_prolong       4 0.0 6.1563e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147796f39610_wrap_pyop2_kernel_prolong       4 0.0 7.6044e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147796f3b850_wrap_pyop2_kernel_prolong       4 0.0 5.8630e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491c5f00a50_wrap_pyop2_kernel_prolong       4 0.0 7.6377e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491c5f02910_wrap_pyop2_kernel_prolong       4 0.0 5.0400e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151161c57e50_wrap_pyop2_kernel_prolong       4 0.0 7.6583e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151161c561d0_wrap_pyop2_kernel_prolong       4 0.0 7.3102e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad517e7e10_wrap_pyop2_kernel_prolong       4 0.0 7.6283e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad517f1650_wrap_pyop2_kernel_prolong       4 0.0 5.4498e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a58a5cc190_wrap_pyop2_kernel_prolong       4 0.0 7.6092e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a58a886ad0_wrap_pyop2_kernel_prolong       4 0.0 7.1081e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14583f369950_wrap_pyop2_kernel_prolong       4 0.0 7.5931e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14583f4cd5d0_wrap_pyop2_kernel_prolong       4 0.0 6.3253e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c7704ef350_wrap_pyop2_kernel_prolong       4 0.0 7.5985e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c7704ee8d0_wrap_pyop2_kernel_prolong       4 0.0 7.1645e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153102a252d0_wrap_pyop2_kernel_prolong       4 0.0 7.5820e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153103394bd0_wrap_pyop2_kernel_prolong       4 0.0 5.0583e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152de3c16110_wrap_pyop2_kernel_prolong       4 0.0 7.5874e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152de33f7650_wrap_pyop2_kernel_prolong       4 0.0 5.7706e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f557493d0_wrap_pyop2_kernel_prolong       4 0.0 7.5905e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f56078f10_wrap_pyop2_kernel_prolong       4 0.0 6.0398e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a44bd9d590_wrap_pyop2_kernel_prolong       4 0.0 7.5898e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a44bf84b50_wrap_pyop2_kernel_prolong       4 0.0 6.4710e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149992b9d890_wrap_pyop2_kernel_prolong       4 0.0 7.5899e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149992b9e6d0_wrap_pyop2_kernel_prolong       4 0.0 5.2120e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1513a87c1250_wrap_pyop2_kernel_prolong       4 0.0 7.5981e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1513a3d73610_wrap_pyop2_kernel_prolong       4 0.0 6.8565e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1530ad404b90_wrap_pyop2_kernel_prolong       4 0.0 7.5878e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1530ad406a10_wrap_pyop2_kernel_prolong       4 0.0 5.8450e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf8b0a3510_wrap_pyop2_kernel_prolong       4 0.0 7.5848e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf8aec70d0_wrap_pyop2_kernel_prolong       4 0.0 5.1114e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b58cbdb6d0_wrap_pyop2_kernel_prolong       4 0.0 7.5981e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b58cb636d0_wrap_pyop2_kernel_prolong       4 0.0 6.0158e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b3b0eead0_wrap_pyop2_kernel_prolong       4 0.0 7.5998e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b3b2299d0_wrap_pyop2_kernel_prolong       4 0.0 6.0120e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1529a582b2d0_wrap_pyop2_kernel_prolong       4 0.0 7.5940e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1529a57def10_wrap_pyop2_kernel_prolong       4 0.0 5.6618e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ba13f53dd0_wrap_pyop2_kernel_prolong       4 0.0 7.5939e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ba13f50410_wrap_pyop2_kernel_prolong       4 0.0 6.0686e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e0aa2a8bd0_wrap_pyop2_kernel_prolong       4 0.0 7.6031e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e083937f90_wrap_pyop2_kernel_prolong       4 0.0 6.1479e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e43ab680d0_wrap_pyop2_kernel_prolong       4 0.0 7.5920e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e43ab0e7d0_wrap_pyop2_kernel_prolong       4 0.0 5.0367e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14597426fcd0_wrap_pyop2_kernel_prolong       4 0.0 7.5980e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14597426ca50_wrap_pyop2_kernel_prolong       4 0.0 6.1201e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153aa68b1e50_wrap_pyop2_kernel_prolong       4 0.0 7.5989e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153aa6881310_wrap_pyop2_kernel_prolong       4 0.0 6.3875e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152377235e10_wrap_pyop2_kernel_prolong       4 0.0 7.5985e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15237724de10_wrap_pyop2_kernel_prolong       4 0.0 6.7052e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe4be49e10_wrap_pyop2_kernel_prolong       4 0.0 7.6029e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe4be4a210_wrap_pyop2_kernel_prolong       4 0.0 6.8947e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146860dae510_wrap_pyop2_kernel_prolong       4 0.0 7.5950e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146862076590_wrap_pyop2_kernel_prolong       4 0.0 6.9153e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ae68598b10_wrap_pyop2_kernel_prolong       4 0.0 7.5944e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ae6859a910_wrap_pyop2_kernel_prolong       4 0.0 6.3622e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f2b970ab90_wrap_pyop2_kernel_prolong       4 0.0 7.6067e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f2b970b890_wrap_pyop2_kernel_prolong       4 0.0 6.2635e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d16e129090_wrap_pyop2_kernel_prolong       4 0.0 7.5972e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d16df53210_wrap_pyop2_kernel_prolong       4 0.0 6.6546e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14636e4e65d0_wrap_pyop2_kernel_prolong       4 0.0 7.5912e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14636dc1d790_wrap_pyop2_kernel_prolong       4 0.0 5.7466e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fddc1af890_wrap_pyop2_kernel_prolong       4 0.0 7.6015e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fddc1af810_wrap_pyop2_kernel_prolong       4 0.0 6.9319e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cb72b97e10_wrap_pyop2_kernel_prolong       4 0.0 7.5934e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cb72b95610_wrap_pyop2_kernel_prolong       4 0.0 6.4648e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ffc67f4f50_wrap_pyop2_kernel_prolong       4 0.0 7.6046e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ffc6813790_wrap_pyop2_kernel_prolong       4 0.0 7.7932e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a155acc90_wrap_pyop2_kernel_prolong       4 0.0 7.5994e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a155ae9d0_wrap_pyop2_kernel_prolong       4 0.0 5.8346e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148ad5532090_wrap_pyop2_kernel_prolong       4 0.0 7.6156e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148ad4b97010_wrap_pyop2_kernel_prolong       4 0.0 6.0041e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1509ebebdad0_wrap_pyop2_kernel_prolong       4 0.0 7.5979e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1509ebd5fcd0_wrap_pyop2_kernel_prolong       4 0.0 7.1373e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146950a59990_wrap_pyop2_kernel_prolong       4 0.0 7.5937e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146950c78310_wrap_pyop2_kernel_prolong       4 0.0 4.9006e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151d1486b750_wrap_pyop2_kernel_prolong       4 0.0 7.5993e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151d0feb3bd0_wrap_pyop2_kernel_prolong       4 0.0 6.8871e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c7d51bda10_wrap_pyop2_kernel_prolong       4 0.0 7.5951e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c7d53fd3d0_wrap_pyop2_kernel_prolong       4 0.0 6.9935e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151beb1e9610_wrap_pyop2_kernel_prolong       4 0.0 7.5911e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151beb19e010_wrap_pyop2_kernel_prolong       4 0.0 6.4198e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150d0db6a190_wrap_pyop2_kernel_prolong       4 0.0 7.5906e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150d0db26350_wrap_pyop2_kernel_prolong       4 0.0 5.9890e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d68afc4cd0_wrap_pyop2_kernel_prolong       4 0.0 7.5894e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d68b03bd90_wrap_pyop2_kernel_prolong       4 0.0 6.4171e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f5aaa48a90_wrap_pyop2_kernel_prolong       4 0.0 7.5907e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f5aaa12250_wrap_pyop2_kernel_prolong       4 0.0 4.8872e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15047c63c610_wrap_pyop2_kernel_prolong       4 0.0 7.5953e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15047c637e90_wrap_pyop2_kernel_prolong       4 0.0 6.8962e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d26f58ead0_wrap_pyop2_kernel_prolong       4 0.0 7.5931e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d26ec42bd0_wrap_pyop2_kernel_prolong       4 0.0 6.3781e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa3da460d0_wrap_pyop2_kernel_prolong       4 0.0 7.6002e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa3d0fa910_wrap_pyop2_kernel_prolong       4 0.0 7.0708e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d3fb97d1d0_wrap_pyop2_kernel_prolong       4 0.0 7.5915e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d3fb97d450_wrap_pyop2_kernel_prolong       4 0.0 7.1853e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152a916abcd0_wrap_pyop2_kernel_prolong       4 0.0 7.5933e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152a915a5310_wrap_pyop2_kernel_prolong       4 0.0 5.8380e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc5025d1d0_wrap_pyop2_kernel_prolong       4 0.0 7.5926e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc502739d0_wrap_pyop2_kernel_prolong       4 0.0 6.9204e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b91c4e3d0_wrap_pyop2_kernel_prolong       4 0.0 7.5875e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b91c86d50_wrap_pyop2_kernel_prolong       4 0.0 6.3762e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14733e348c50_wrap_pyop2_kernel_prolong       4 0.0 7.5918e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14733e2f0810_wrap_pyop2_kernel_prolong       4 0.0 6.0142e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150120ca8890_wrap_pyop2_kernel_prolong       4 0.0 7.5985e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150120ca9650_wrap_pyop2_kernel_prolong       4 0.0 7.5932e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1507d6b1bfd0_wrap_pyop2_kernel_prolong       4 0.0 7.5865e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1507d6b1b950_wrap_pyop2_kernel_prolong       4 0.0 5.5642e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d8cc183f10_wrap_pyop2_kernel_prolong       4 0.0 7.5968e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d8cc182f90_wrap_pyop2_kernel_prolong       4 0.0 6.8861e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148bfec92910_wrap_pyop2_kernel_prolong       4 0.0 7.5905e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148bfed10410_wrap_pyop2_kernel_prolong       4 0.0 6.6532e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1454cc386f50_wrap_pyop2_kernel_prolong       4 0.0 7.5902e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1454cc33f190_wrap_pyop2_kernel_prolong       4 0.0 6.4409e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f7edac5d0_wrap_pyop2_kernel_prolong       4 0.0 7.5932e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f7e355910_wrap_pyop2_kernel_prolong       4 0.0 6.6838e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d7040d610_wrap_pyop2_kernel_prolong       4 0.0 7.5945e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d7042e5d0_wrap_pyop2_kernel_prolong       4 0.0 6.8360e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f849928750_wrap_pyop2_kernel_prolong       4 0.0 7.5968e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f8498fafd0_wrap_pyop2_kernel_prolong       4 0.0 7.6361e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided        225 1.0 3.4694e-02 3.8 0.00e+00 0.0 4.0e+05 4.0e+00 2.2e+02  0  0  0  0  1   0  0  1  0  3    -0
SFSetGraph           225 1.0 7.5661e-04 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              225 1.0 4.4324e-02 2.5 0.00e+00 0.0 7.9e+05 2.2e+01 2.2e+02  0  0  1  0  1   0  0  1  0  3    -0
SFPack           2473149 1.1 2.6417e+00 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack         2473149 1.1 1.4436e-01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy            24273 1.0 1.0516e+01 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecSet             37755 1.0 1.1462e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecAYPX            43152 1.0 1.9353e+01 1.9 6.54e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   3  3  0  0  0 138464
VecAXPBYCZ         10788 1.0 5.6385e-03 2.2 2.27e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 1645600
VecScatterBegin  2473149 1.1 3.4633e+01 1.2 0.00e+00 0.0 6.5e+07 2.2e+04 0.0e+00  3  0 74 36  0   6  0 97 100  0    -0
VecScatterEnd    2473149 1.1 4.1961e+01 16.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
MatMult            26970 1.0 2.3625e+02 1.2 1.54e+11 1.1 6.0e+07 2.4e+04 0.0e+00 17 13 68 36  0  44 62 90 100  0 267351
MatMultAdd          8091 1.0 1.3819e+01 1.2 6.54e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   3  3  0  0  0 193778
MatMultTranspose    8091 1.0 1.2426e+01 2.1 6.54e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  3  0  0  0 215498
MatSolve         1232529 1.1 2.1483e+02 1.3 7.66e+10 1.1 6.7e+06 6.2e+01 1.1e+03 14  6  8  0  4  36 30 10  0 17 145201
MatLUFactorNum       448 1.0 5.9582e+00 1.3 2.01e+07 10.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0   223
MatResidual         8091 1.0 1.2855e+02 1.3 7.83e+10 1.1 1.8e+07 4.0e+04 0.0e+00  9  6 20 18  0  23 31 27 50  0 248966
PCSetUp              672 1.0 5.9613e+00 1.3 2.01e+07 10.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0   222
PCSetUpOnBlocks    10788 1.0 3.6422e-02 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply             8091 1.0 2.6749e+02 1.2 7.68e+10 1.1 5.5e+07 1.4e+02 3.8e+03 19  6 62  0 15  48 31 82  1 59 117045
PCApplyOnBlocks  1229832 1.1 1.7079e+02 1.4 7.61e+10 1.1 0.0e+00 0.0e+00 0.0e+00 10  6  0  0  0  27 30  0  0  0 182602
KSPSetUp             224 1.0 4.6553e-05 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve            8091 1.0 3.9000e+02 1.1 1.59e+11 1.1 6.1e+07 1.2e+04 6.5e+03 29 13 69 18 25  73 64 91 50 100 166856
MGSmooth Level 0    2697 1.0 7.4438e+01 1.3 8.99e+08 2.1 5.5e+07 1.4e+02 6.5e+03  5  0 62  0 25  13  0 82  1 100  2729
MGSmooth Level 1    5394 1.0 3.3249e+02 1.2 1.59e+11 1.1 6.0e+06 1.2e+05 0.0e+00 24 13  7 18  0  60 63  9 50  0 195105
MGResid Level 1     2697 1.0 1.2535e+02 1.3 7.82e+10 1.1 6.0e+06 1.2e+05 0.0e+00  9  6  7 18  0  22 31  9 50  0 255162
MGInterp Level 1    5394 1.0 2.5495e+01 1.4 1.30e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  1  0  0  0   5  5  0  0  0 209630
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   239            237
              Viewer     3              3
           Index Set  4477           4477
   IS L to G Mapping   435            429
             Section   493            493
   Star Forest Graph   661            659
              Vector  2296           2289
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

           Index Set   450            450
   Star Forest Graph   229            224
              Vector   449            449
    Distributed Mesh     2              0
     Discrete System     2              0
           Weak Form     2              0
========================================================================================================================
Average time to get PetscTime(): 2.6e-08
Average time for MPI_Barrier(): 1.07932e-05
Average time for zero size MPI_Send(): 2.74503e-06
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

