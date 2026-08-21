****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0525.gadi.nci.org.au with 208 processes, by sg8812 on Thu Aug 20 23:41:31 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           5.154e+02     1.000   5.154e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                5.504e+11     1.141   5.242e+11  1.090e+14
Flops/sec:            1.068e+09     1.141   1.017e+09  2.115e+11
MPI Msg Count:        1.649e+05     3.464   1.122e+05  2.334e+07
MPI Msg Len (bytes):  7.757e+09     2.527   4.644e+04  1.084e+12
MPI Reductions:       2.085e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 3.6664e+02  71.1%  9.3117e+13  85.4%  9.021e+06  38.6%  8.599e+04       71.6%  1.635e+04  78.4%
 1:        MG Apply: 1.4877e+02  28.9%  1.5911e+13  14.6%  1.432e+07  61.4%  2.153e+04       28.4%  4.481e+03  21.5%

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

BuildTwoSided       1555 1.0 3.3115e+01 4.0 0.00e+00 0.0 1.8e+05 4.0e+00 1.4e+03  4  0  1  0  7   5  0  2  0  9    -0
BuildTwoSidedF      1362 1.0 3.2553e+01 3.8 0.00e+00 0.0 2.5e+05 9.9e+05 1.4e+03  4  0  1 23  7   5  0  3 32  8    -0
SFSetGraph           199 1.0 9.5239e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              193 1.0 1.2925e+00 53.6 0.00e+00 0.0 1.1e+05 1.0e+03 8.1e+01  0  0  0  0  0   0  0  1  0  0    -0
SFBcastBegin         818 1.0 2.6257e-01 2.9 0.00e+00 0.0 8.6e+05 6.5e+04 0.0e+00  0  0  4  5  0   0  0  9  7  0    -0
SFBcastEnd           818 1.0 1.0229e+01 149.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        331 1.0 5.2837e-02 3.9 0.00e+00 0.0 3.6e+05 7.6e+04 0.0e+00  0  0  2  3  0   0  0  4  4  0    -0
SFReduceEnd          331 1.0 1.5213e+00 34.6 2.43e+07 2.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2256
SFFetchOpBegin         4 1.0 2.7755e-05 5.5 0.00e+00 0.0 3.5e+03 6.4e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           4 1.0 8.7632e-04 38.9 0.00e+00 0.0 3.5e+03 6.4e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          3 1.0 1.4168e-03 2.4 0.00e+00 0.0 2.0e+03 2.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         36 1.0 7.0255e-03 1.3 0.00e+00 0.0 8.6e+04 7.7e+01 4.2e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           37 1.0 3.9448e-03 3.3 0.00e+00 0.0 4.2e+04 3.7e+01 3.7e+01  0  0  0  0  0   0  0  0  0  0    -0
SFRemoteOff            1 1.0 6.2227e-05 3.6 0.00e+00 0.0 1.1e+03 1.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack            566738 1.1 1.2259e+00 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack          566742 1.1 1.4179e-01 2.8 2.43e+07 2.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 24202
VecDot               225 1.0 4.2782e-01 5.9 9.07e+07 1.1 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  1   0  0  0  0  1 43425
VecMDot             6010 1.0 1.8020e+01 2.4 8.06e+09 1.1 0.0e+00 0.0e+00 6.0e+03  2  2  0  0 29   3  2  0  0 37 91548
VecNorm             7210 1.0 6.6193e+00 3.8 1.98e+09 1.1 0.0e+00 0.0e+00 7.2e+03  1  0  0  0 35   1  0  0  0 44 61208
VecScale            6685 1.0 2.2223e-01 1.2 8.83e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 814033
VecCopy             2026 1.0 1.0217e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              6300 1.0 2.3383e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecAXPY              675 1.0 2.3024e-01 1.2 1.82e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 161518
VecWAXPY             225 1.0 1.9780e-01 1.1 4.54e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 46962
VecMAXPY            6685 1.0 1.0294e+01 1.1 9.64e+09 1.1 0.0e+00 0.0e+00 0.0e+00  2  2  0  0  0   3  2  0  0  0 191794
VecScatterBegin   565585 1.1 7.6721e+00 1.3 0.00e+00 0.0 6.9e+06 5.5e+04 0.0e+00  1  0 30 35  0   2  0 77 49  0    -0
VecScatterEnd     565585 1.1 9.3814e+00 19.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecReduceArith       450 1.0 1.5461e-01 2.2 1.81e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 240316
VecReduceComm        225 1.0 1.1687e-01 6.4 0.00e+00 0.0 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  1   0  0  0  0  1    -0
VecNormalize        4782 1.0 4.2655e+00 5.1 1.50e+09 1.1 0.0e+00 0.0e+00 4.8e+03  0  0  0  0 23   1  0  0  0 29 71976
MatMult             6235 1.0 8.6242e+01 1.1 5.94e+10 1.1 6.9e+06 5.5e+04 0.0e+00 16 11 30 35  0  22 13 77 49  0 140599
MatSolve          279507 1.1 2.8304e+01 1.2 1.74e+10 1.1 0.0e+00 0.0e+00 0.0e+00  5  3  0  0  0   7  4  0  0  0 126182
MatLUFactorSym       113 1.1 1.3611e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum     25426 1.1 6.0818e+00 1.2 7.22e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 243075
MatILUFactorSym        1 1.0 6.4112e-05 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin   27498 1.1 3.3437e+01 2.5 0.00e+00 0.0 2.5e+05 9.9e+05 1.4e+03  4  0  1 23  7   6  0  3 32  8    -0
MatAssemblyEnd     27498 1.1 9.2741e+00 12.9 1.94e+08 0.0 6.7e+03 6.9e+03 4.4e+01  1  0  0  0  0   1  0  0  0  0  1669
MatGetRowIJ          113 1.1 2.7412e-05 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats     225 1.0 1.4394e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+02  3  0  0  0  1   4  0  0  0  1    -0
MatGetOrdering       113 1.1 1.9919e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       675 1.0 3.8528e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
MatTranspose           5 1.0 6.5564e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          5 1.0 7.7305e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        901 1.0 2.0118e+00 1.1 3.27e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  1  0  0  0 331389
MatPtAPSymbolic        2 1.0 9.8320e-02 1.0 0.00e+00 0.0 6.7e+03 6.9e+04 1.4e+01  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       450 1.0 1.6022e+01 1.0 1.31e+10 1.1 5.0e+05 1.2e+05 4.6e+02  3  2  2  6  2   4  3  6  8  3 166408
MatGetLocalMat       452 1.0 8.3300e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        452 1.0 6.9639e-01 2.2 0.00e+00 0.0 5.0e+05 1.2e+05 0.0e+00  0  0  2  6  0   0  0  6  8  0    -0
MatSetPreallCOO       16 1.0 4.7880e-05 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       16 1.0 1.9912e-05 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp              225 1.0 1.3879e+02 1.0 8.24e+10 1.1 5.3e+06 5.0e+04 1.0e+04 27 15 23 25 49  38 18 59 35 63 121374
PCApply             1678 1.0 1.5051e+02 1.0 7.79e+10 1.1 1.4e+07 2.2e+04 4.5e+03 29 15 61 28 21 Multiple stages 105716
PCApplyOnBlocks   279507 1.1 3.5012e+01 1.2 2.47e+10 1.1 0.0e+00 0.0e+00 0.0e+00  7  5  0  0  0   9  5  0  0  0 144204
KSPSetUp             225 1.0 7.2040e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             225 1.0 1.9210e+02 1.0 1.10e+11 1.1 1.6e+07 2.9e+04 8.1e+03 37 21 69 43 39 Multiple stages 116890
KSPGMRESOrthog      6010 1.0 2.5886e+01 1.7 1.61e+10 1.1 0.0e+00 0.0e+00 6.0e+03  4  3  0  0 29   6  4  0  0 37 127460
DMRefine               1 1.0 4.1779e-02 1.0 1.04e+03 1.0 6.9e+03 3.2e+01 3.0e+01  0  0  0  0  0   0  0  0  0  0     5
DMPlexCreateGmsh       1 1.0 2.0213e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 5.1083e+00 239.5 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  1  0  0  0  0   1  0  0  0  0    -0
Mesh Partition         3 1.0 9.9325e-02 1.0 0.00e+00 0.0 2.6e+04 6.5e+01 3.8e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         3 1.0 1.8458e-02 1.1 0.00e+00 0.0 9.6e+04 7.6e+01 1.8e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 2.9775e-03 1051.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       3 1.0 1.8744e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        3 1.0 3.5207e-03 1.2 0.00e+00 0.0 5.1e+03 5.4e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       3 1.0 1.2578e-03 5.5 0.00e+00 0.0 2.6e+03 2.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          3 1.0 2.2311e-03 2.5 0.00e+00 0.0 2.8e+03 2.8e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          15 1.0 9.5152e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 1.0095e-01 1.0 0.00e+00 0.0 8.6e+03 3.3e+02 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        3 1.0 2.0541e-03 1.1 0.00e+00 0.0 1.5e+04 1.2e+02 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       3 1.0 7.2680e-03 1.0 0.00e+00 0.0 4.9e+04 7.5e+01 1.1e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistOvrlp        2 1.0 1.8987e-02 1.0 0.00e+00 0.0 1.2e+05 5.9e+01 1.6e+02  0  0  1  0  1   0  0  1  0  1    -0
DMPlexDistField        5 1.0 4.0393e-03 1.2 0.00e+00 0.0 2.2e+04 5.1e+01 1.4e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         1 1.0 1.7027e-04 1.2 0.00e+00 0.0 5.7e+03 2.6e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify        23 1.0 6.8099e-03 7.8 0.00e+00 0.0 0.0e+00 0.0e+00 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      23 1.0 5.5114e-04 17.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          1 1.0 6.7559e-05 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          1 1.0 2.4521e-03 1.8 0.00e+00 0.0 3.4e+03 2.5e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          1 1.0 6.1856e-05 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          1 1.0 2.0113e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             1 1.0 2.6743e-04 2.5 0.00e+00 0.0 3.4e+03 2.5e+01 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         1 1.0 4.8923e-05 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         1 1.0 5.8742e-04 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMSwarmSetSizes        2 1.0 2.3315e-05 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             75 1.0 4.5705e+02 1.0 5.50e+11 1.1 2.3e+07 4.7e+04 2.0e+04 89 100 99 100 97 Multiple stages 238532
SNESSetUp              1 1.0 5.0993e-05 7.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     300 1.0 2.1370e+01 1.1 1.38e+11 1.2 7.5e+05 8.2e+04 0.0e+00  4 25  3  6  0   6 29  8  8  0 1253720
SNESJacobianEval     225 1.0 9.9358e+01 1.0 2.16e+11 1.2 5.0e+05 5.4e+05 9.0e+02 19 39  2 25  4  27 45  6 35  6 424352
SNESLineSearch       225 1.0 1.3811e+01 1.0 1.07e+11 1.2 7.5e+05 8.2e+04 9.0e+02  3 19  3  6  4   4 22  8  8  6 1509941
DualSpaceSetUp         4 1.0 3.2054e-03 1.3 5.40e+01 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     4
FESetUp                4 1.0 1.7221e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 5.1329e+02 1.0 5.50e+11 1.1 2.3e+07 4.6e+04 2.1e+04 100 100 100 100 100 Multiple stages 212411
firedrake.__init__       1 1.0 1.0737e+01 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
CreateMesh             2 1.0 5.2614e+00 30.4 0.00e+00 0.0 2.3e+05 7.3e+01 3.2e+02  1  0  1  0  2   1  0  3  0  2    -0
firedrake.mesh._from_gmsh       1 1.0 5.1091e+00 239.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       2 1.0 1.3873e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       2 1.0 4.8880e-06 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        4 1.0 5.1482e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          2 1.0 7.8092e-04 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      24 1.0 2.9306e-02 1.2 0.00e+00 0.0 9.1e+03 9.0e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      29 1.0 2.2361e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      26 1.0 2.6694e-02 1.2 0.00e+00 0.0 9.1e+03 9.0e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      25 1.0 2.3801e-02 1.2 0.00e+00 0.0 9.1e+03 9.0e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      25 1.0 2.3653e-02 1.2 0.00e+00 0.0 9.1e+03 9.0e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      50 1.0 8.7811e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       4 1.0 3.0311e-03 1.1 0.00e+00 0.0 4.7e+03 7.8e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       8 1.0 5.6124e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      16 1.0 1.7966e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      66 1.0 2.3972e-02 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          2 1.0 9.6742e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       2 1.0 1.7512e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       5 1.0 5.2625e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       4 1.0 1.0585e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       2 1.0 9.6251e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     648 1.0 8.6104e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      2418 1.0 1.0484e+02 1.2 3.54e+11 1.2 6.9e+05 8.1e+04 2.6e+01 19 63  3  5  0  27 74  8  7  0 657637
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       4 1.0 9.2412e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    4836 1.0 2.6125e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  5  0  0  0  0   7  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      19 1.0 1.0923e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
GlobalKernel: generate loopy      19 0.0 1.4205e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      19 0.0 8.7456e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      20 1.0 1.9126e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   5  0  0  0  0    -0
pyop2.compilation.load      20 1.0 1.9125e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   5  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      20 1.0 1.0202e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
pyop2.compilation.make_so      20 1.0 9.9707e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
ParLoopRednBegin    2418 1.0 6.5813e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      2418 1.0 6.1591e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       2 1.0 7.3435e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong       2 1.0 4.1861e+00 1.0 5.44e+06 1.1 1.2e+04 1.2e+04 7.0e+00  1  0  0  0  0   1  0  0  0  0   266
firedrake.interpolation.interpolate      16 1.0 4.9067e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      13 1.0 1.2327e+01 1.0 4.07e+07 1.1 4.3e+04 1.8e+04 1.1e+02  2  0  0  0  1   3  0  0  0  1   677
firedrake.formmanipulation.split_form      14 1.0 6.3703e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      14 1.0 1.3138e-03 8.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      14 1.0 3.2560e-01 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       8 1.0 2.7392e-01 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     618 1.0 1.8209e+00 9.6 0.00e+00 0.0 7.0e+05 8.0e+04 3.0e+00  0  0  3  5  0   0  0  8  7  0    -0
Parloop_Cells_wrap_expression_kernel      28 1.0 7.1564e+00 1.0 4.07e+07 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0  1166
firedrake.halo.Halo.global_to_local_end     618 1.0 9.7835e+00 137.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       2 1.0 4.3766e+00 27.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150d8794a310_wrap_pyop2_kernel_prolong       4 0.0 7.4072e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 3.8741e+00 1.0 3.41e+07 1.1 1.7e+04 4.1e+04 1.1e+01  1  0  0  0  0   1  0  0  0  0  1801
firedrake.function.Function.assign     314 1.0 8.0624e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     313 1.0 7.3881e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.4953e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate     154 1.0 1.0326e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 3.9940e-05 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.4428e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.9640e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.1975e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 5.1664e+00 1.0 0.00e+00 0.0 6.7e+03 3.3e+05 2.3e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 6.3469e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.1099e-04 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.0916e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.0916e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateSparsity         3 1.0 2.0058e+00 1.2 0.00e+00 0.0 1.0e+04 1.1e+05 3.2e+01  0  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         3 1.0 2.7409e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      75 1.0 4.5719e+02 1.0 5.50e+11 1.1 2.3e+07 4.7e+04 2.0e+04 89 100 99 100 98 Multiple stages 238456
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 2.9161e-01 1099.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 8.4650e-06 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 2.9156e-01 1321.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 2.9153e-01 1512.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     600 1.0 4.9736e+00 1.3 3.44e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   1  8  0  0  0 1415695
Parloop_Cells_wrap_form0_exterior_facet_top_integral     600 1.0 9.9191e-01 1.0 4.47e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   923
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral     600 1.0 1.3652e+00 1.0 4.72e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  8996
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     600 1.0 3.6147e+00 1.2 3.30e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   1  7  0  0  0 1870847
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     600 1.0 7.2011e+00 1.3 7.06e+10 1.3 0.0e+00 0.0e+00 0.0e+00  1 12  0  0  0   2 14  0  0  0 1801422
firedrake.halo.Halo.local_to_global_begin     300 1.0 6.2207e-02 3.1 0.00e+00 0.0 3.3e+05 8.2e+04 0.0e+00  0  0  1  3  0   0  0  4  4  0    -0
firedrake.halo.Halo.local_to_global_end     300 1.0 1.5229e+00 33.0 2.43e+07 2.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2253
Parloop_Cells_wrap_form00_cell_integral     450 1.0 1.7116e+01 1.5 4.81e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3  9  0  0  0   4 11  0  0  0 575733
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     450 1.0 1.7858e+00 1.4 3.61e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  5252
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     450 1.0 1.9468e+01 1.2 6.37e+10 1.1 0.0e+00 0.0e+00 0.0e+00  4 12  0  0  0   5 14  0  0  0 669655
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     450 1.0 4.3287e+01 1.4 1.05e+11 1.3 0.0e+00 0.0e+00 0.0e+00  7 18  0  0  0  10 21  0  0  0 444629
firedrake.dmhooks.get_function_space       2 1.0 2.4004e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       2 1.0 7.8865e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.VertexOnlyMesh       1 1.0 4.6374e+00 1.0 0.00e+00 0.0 1.5e+04 7.3e+01 1.1e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh._pic_swarm_in_mesh       1 1.0 4.6318e+00 1.0 0.00e+00 0.0 1.0e+04 6.0e+01 6.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh._parent_mesh_embedding       1 1.0 4.6061e+00 1.0 0.00e+00 0.0 5.7e+03 2.6e+01 4.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshGeometry.locate_cells_ref_coords_and_dists       1 1.0 4.3839e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshGeometry._c_locator       1 1.0 4.3784e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.src_locate_cell       1 1.0 3.7862e+00 17.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.compile_coordinate_element       1 1.0 3.7780e+00 35.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.pointquery_utils.make_wrapper       1 1.0 3.3515e+00 498.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.parloop.generate_single_cell_wrapper       1 1.0 3.3514e+00 503.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
c_locator_run          1 1.0 2.6300e-02 7.3 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._ctypes       1 1.0 2.4097e-02 21.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._constant_ctypes       1 1.0 1.0260e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.rtree       1 1.0 1.6901e-03 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.bounding_box_coords       1 1.0 1.3016e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
rtree_build            1 1.0 1.4943e-03 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._dmswarm_create       2 1.0 7.7575e-03 20.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._swarm_original_ordering_preserve       1 1.0 2.4441e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.VertexOnlyMeshTopology.__init__       2 1.0 1.1343e-02 2.1 0.00e+00 0.0 4.4e+03 1.0e+02 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_vom_from_vom_topology       2 1.0 2.5411e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.action       1 1.0 2.9568e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0      225 1.0 4.1325e-01 1.3 6.60e+07 1.1 2.6e+06 1.6e+02 4.9e+03  0  0 11  0 23   0  0 28  0 30 32346
MGSetup Level 1      225 1.0 1.1494e+02 1.0 6.93e+10 1.1 2.5e+06 8.2e+04 4.8e+03 22 13 11 19 23  31 15 28 27 30 123265
firedrake.constant.Constant.assign      75 1.0 3.4807e-03 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b35ee0cd0_wrap_pyop2_kernel_prolong       4 0.0 7.4098e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f60ca8a6d0_wrap_pyop2_kernel_prolong       4 0.0 7.4116e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1476c356ce90_wrap_pyop2_kernel_prolong       4 0.0 7.4116e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152afa0d3310_wrap_pyop2_kernel_prolong       4 0.0 7.4130e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c7a6157990_wrap_pyop2_kernel_prolong       4 0.0 7.4133e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a83c6db290_wrap_pyop2_kernel_prolong       4 0.0 7.4120e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1534f43ddb10_wrap_pyop2_kernel_prolong       4 0.0 7.4097e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151cf4343210_wrap_pyop2_kernel_prolong       4 0.0 7.4148e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1528d4509a50_wrap_pyop2_kernel_prolong       4 0.0 7.4109e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f7f6c9e50_wrap_pyop2_kernel_prolong       4 0.0 7.4213e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f27962c50_wrap_pyop2_kernel_prolong       4 0.0 7.4134e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14771aa2f010_wrap_pyop2_kernel_prolong       4 0.0 7.4130e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152fdba9a990_wrap_pyop2_kernel_prolong       4 0.0 7.4030e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bda843fbd0_wrap_pyop2_kernel_prolong       4 0.0 7.4059e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f90dc1e50_wrap_pyop2_kernel_prolong       4 0.0 7.4119e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151c232ff150_wrap_pyop2_kernel_prolong       4 0.0 7.4091e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ca5a294610_wrap_pyop2_kernel_prolong       4 0.0 7.4037e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c5e713250_wrap_pyop2_kernel_prolong       4 0.0 7.4150e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522749fdb50_wrap_pyop2_kernel_prolong       4 0.0 7.3996e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151f20ee8610_wrap_pyop2_kernel_prolong       4 0.0 7.4091e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b73f2feed0_wrap_pyop2_kernel_prolong       4 0.0 7.4225e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c636f6650_wrap_pyop2_kernel_prolong       4 0.0 7.4079e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152a6ff03ed0_wrap_pyop2_kernel_prolong       4 0.0 7.4075e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a32411190_wrap_pyop2_kernel_prolong       4 0.0 7.4107e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d3b0837b90_wrap_pyop2_kernel_prolong       4 0.0 7.3996e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a651fb0410_wrap_pyop2_kernel_prolong       4 0.0 7.4012e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1471b12d87d0_wrap_pyop2_kernel_prolong       4 0.0 7.4032e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148bab27b510_wrap_pyop2_kernel_prolong       4 0.0 7.4186e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146eae0f37d0_wrap_pyop2_kernel_prolong       4 0.0 7.4074e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b18a1318d0_wrap_pyop2_kernel_prolong       4 0.0 7.4119e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1490bc9df650_wrap_pyop2_kernel_prolong       4 0.0 7.4154e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14593a629110_wrap_pyop2_kernel_prolong       4 0.0 7.4079e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a6d548b8d0_wrap_pyop2_kernel_prolong       4 0.0 7.4019e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1464b9762f90_wrap_pyop2_kernel_prolong       4 0.0 7.4144e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152f03fdb690_wrap_pyop2_kernel_prolong       4 0.0 7.3993e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153e1b1d5750_wrap_pyop2_kernel_prolong       4 0.0 7.4155e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153525da1510_wrap_pyop2_kernel_prolong       4 0.0 7.4181e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148864883150_wrap_pyop2_kernel_prolong       4 0.0 7.4182e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1481c9d992d0_wrap_pyop2_kernel_prolong       4 0.0 7.4110e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1485c4e76e50_wrap_pyop2_kernel_prolong       4 0.0 7.4137e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a21ce6b150_wrap_pyop2_kernel_prolong       4 0.0 7.4036e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15021222cbd0_wrap_pyop2_kernel_prolong       4 0.0 7.4031e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a17efc94d0_wrap_pyop2_kernel_prolong       4 0.0 7.4094e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145557a57650_wrap_pyop2_kernel_prolong       4 0.0 7.4155e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14890614fb10_wrap_pyop2_kernel_prolong       4 0.0 7.4068e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153309639d90_wrap_pyop2_kernel_prolong       4 0.0 7.4094e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145e62366a10_wrap_pyop2_kernel_prolong       4 0.0 7.4198e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1483a0ce9c90_wrap_pyop2_kernel_prolong       4 0.0 7.3858e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1464cbd861d0_wrap_pyop2_kernel_prolong       4 0.0 7.4115e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b3f12af9d0_wrap_pyop2_kernel_prolong       4 0.0 7.4106e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c77834bd0_wrap_pyop2_kernel_prolong       4 0.0 7.4209e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149edf8ea790_wrap_pyop2_kernel_prolong       4 0.0 7.3863e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145a813f9c10_wrap_pyop2_kernel_prolong       4 0.0 7.3897e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d64f7a7390_wrap_pyop2_kernel_prolong       4 0.0 7.4033e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1464fa9cc0d0_wrap_pyop2_kernel_prolong       4 0.0 7.3942e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15254f702bd0_wrap_pyop2_kernel_prolong       4 0.0 7.3876e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e54cea2d10_wrap_pyop2_kernel_prolong       4 0.0 7.4054e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150b63bd41d0_wrap_pyop2_kernel_prolong       4 0.0 7.3967e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b7e358e550_wrap_pyop2_kernel_prolong       4 0.0 7.4021e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146382286010_wrap_pyop2_kernel_prolong       4 0.0 7.4054e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14700b85ecd0_wrap_pyop2_kernel_prolong       4 0.0 7.4019e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1529e5e6ca10_wrap_pyop2_kernel_prolong       4 0.0 7.4029e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a54e1f4550_wrap_pyop2_kernel_prolong       4 0.0 7.4059e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f511ab08d0_wrap_pyop2_kernel_prolong       4 0.0 7.4184e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d019b5c9d0_wrap_pyop2_kernel_prolong       4 0.0 7.3851e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148263d1fa90_wrap_pyop2_kernel_prolong       4 0.0 7.4031e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aef1ff22d0_wrap_pyop2_kernel_prolong       4 0.0 7.4082e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a12384b550_wrap_pyop2_kernel_prolong       4 0.0 7.4068e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac9b95a250_wrap_pyop2_kernel_prolong       4 0.0 7.4041e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493a1bb4e90_wrap_pyop2_kernel_prolong       4 0.0 7.4192e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1475698b42d0_wrap_pyop2_kernel_prolong       4 0.0 7.4015e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148d7817c0d0_wrap_pyop2_kernel_prolong       4 0.0 7.3887e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e8fa73c950_wrap_pyop2_kernel_prolong       4 0.0 7.4003e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bcc0422b90_wrap_pyop2_kernel_prolong       4 0.0 7.4057e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b1e5eb390_wrap_pyop2_kernel_prolong       4 0.0 7.4050e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c172b9910_wrap_pyop2_kernel_prolong       4 0.0 7.4088e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e829f2d10_wrap_pyop2_kernel_prolong       4 0.0 7.4063e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15176c5205d0_wrap_pyop2_kernel_prolong       4 0.0 7.3974e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14933e7cdfd0_wrap_pyop2_kernel_prolong       4 0.0 7.3980e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e2a3974750_wrap_pyop2_kernel_prolong       4 0.0 7.3995e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152f9eae5fd0_wrap_pyop2_kernel_prolong       4 0.0 7.3973e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14def94fc190_wrap_pyop2_kernel_prolong       4 0.0 7.3950e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cefe8e4d90_wrap_pyop2_kernel_prolong       4 0.0 7.3996e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1506c0d32250_wrap_pyop2_kernel_prolong       4 0.0 7.3970e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1479ae0f3190_wrap_pyop2_kernel_prolong       4 0.0 7.3906e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150c3b8df210_wrap_pyop2_kernel_prolong       4 0.0 7.3967e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed4c55d550_wrap_pyop2_kernel_prolong       4 0.0 7.3931e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e306558ad0_wrap_pyop2_kernel_prolong       4 0.0 7.4020e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b6fbd7ee50_wrap_pyop2_kernel_prolong       4 0.0 7.3981e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa04a06f90_wrap_pyop2_kernel_prolong       4 0.0 7.4080e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c62a284050_wrap_pyop2_kernel_prolong       4 0.0 7.3977e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15530d511510_wrap_pyop2_kernel_prolong       4 0.0 7.3912e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f227478510_wrap_pyop2_kernel_prolong       4 0.0 7.4115e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455025c87d0_wrap_pyop2_kernel_prolong       4 0.0 7.3984e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151009c9fb90_wrap_pyop2_kernel_prolong       4 0.0 7.3981e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e335b66bd0_wrap_pyop2_kernel_prolong       4 0.0 7.3974e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b7ba27890_wrap_pyop2_kernel_prolong       4 0.0 7.3967e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146519a6edd0_wrap_pyop2_kernel_prolong       4 0.0 7.3965e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a4226e6f90_wrap_pyop2_kernel_prolong       4 0.0 7.4075e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fff112d210_wrap_pyop2_kernel_prolong       4 0.0 7.3938e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1465cbde9c10_wrap_pyop2_kernel_prolong       4 0.0 7.4038e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15499a050190_wrap_pyop2_kernel_prolong       4 0.0 7.4098e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b039bf4690_wrap_pyop2_kernel_prolong       4 0.0 7.4103e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150964fec8d0_wrap_pyop2_kernel_prolong       4 0.0 7.6840e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1474ac928b50_wrap_pyop2_kernel_prolong       4 0.0 7.6573e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1461a43944d0_wrap_pyop2_kernel_prolong       4 0.0 7.6063e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15019cb25250_wrap_pyop2_kernel_prolong       4 0.0 7.6116e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f026456ad0_wrap_pyop2_kernel_prolong       4 0.0 7.6403e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb0c772bd0_wrap_pyop2_kernel_prolong       4 0.0 7.6633e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146979d31c10_wrap_pyop2_kernel_prolong       4 0.0 7.6345e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d155006090_wrap_pyop2_kernel_prolong       4 0.0 7.6456e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151de6927510_wrap_pyop2_kernel_prolong       4 0.0 7.6430e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b3f43c51d0_wrap_pyop2_kernel_prolong       4 0.0 7.6685e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1539126f6fd0_wrap_pyop2_kernel_prolong       4 0.0 7.6741e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150191b80d50_wrap_pyop2_kernel_prolong       4 0.0 7.6917e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153ae0ba7a50_wrap_pyop2_kernel_prolong       4 0.0 7.6212e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c453b4ef50_wrap_pyop2_kernel_prolong       4 0.0 7.5167e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152a2e801890_wrap_pyop2_kernel_prolong       4 0.0 7.5636e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14adcef40c50_wrap_pyop2_kernel_prolong       4 0.0 7.5965e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1462b7354b50_wrap_pyop2_kernel_prolong       4 0.0 7.5901e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df4635be10_wrap_pyop2_kernel_prolong       4 0.0 7.6063e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145c07f82ad0_wrap_pyop2_kernel_prolong       4 0.0 7.5849e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152eee24c910_wrap_pyop2_kernel_prolong       4 0.0 7.5990e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15046d852910_wrap_pyop2_kernel_prolong       4 0.0 7.5638e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146970f45490_wrap_pyop2_kernel_prolong       4 0.0 7.5760e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de1b17de90_wrap_pyop2_kernel_prolong       4 0.0 7.5941e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ff08c1010_wrap_pyop2_kernel_prolong       4 0.0 7.5341e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151928d21590_wrap_pyop2_kernel_prolong       4 0.0 7.5878e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bbf8802d90_wrap_pyop2_kernel_prolong       4 0.0 7.5697e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f250e0c890_wrap_pyop2_kernel_prolong       4 0.0 7.5382e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1466978ebe90_wrap_pyop2_kernel_prolong       4 0.0 7.5619e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f0ed231f90_wrap_pyop2_kernel_prolong       4 0.0 7.5526e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ebfb81fd0_wrap_pyop2_kernel_prolong       4 0.0 7.5421e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1548ecf655d0_wrap_pyop2_kernel_prolong       4 0.0 7.5478e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15256a061c50_wrap_pyop2_kernel_prolong       4 0.0 7.5515e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15370863c810_wrap_pyop2_kernel_prolong       4 0.0 7.5200e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e084269810_wrap_pyop2_kernel_prolong       4 0.0 7.5987e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e410441010_wrap_pyop2_kernel_prolong       4 0.0 7.6121e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15285c757750_wrap_pyop2_kernel_prolong       4 0.0 7.5364e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d7bd80d210_wrap_pyop2_kernel_prolong       4 0.0 7.5736e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1483a35d2e90_wrap_pyop2_kernel_prolong       4 0.0 7.5506e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c8f725710_wrap_pyop2_kernel_prolong       4 0.0 7.5761e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152db4da9150_wrap_pyop2_kernel_prolong       4 0.0 7.5746e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14613bea0b50_wrap_pyop2_kernel_prolong       4 0.0 7.5114e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154902635750_wrap_pyop2_kernel_prolong       4 0.0 7.5353e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d365b35d90_wrap_pyop2_kernel_prolong       4 0.0 7.5183e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145758774350_wrap_pyop2_kernel_prolong       4 0.0 7.5193e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145e536ad2d0_wrap_pyop2_kernel_prolong       4 0.0 7.5174e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154174824450_wrap_pyop2_kernel_prolong       4 0.0 7.5134e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150efc67f1d0_wrap_pyop2_kernel_prolong       4 0.0 7.5283e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1467fafc8a50_wrap_pyop2_kernel_prolong       4 0.0 7.5287e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149bc7b2d810_wrap_pyop2_kernel_prolong       4 0.0 7.5218e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c4a913c0d0_wrap_pyop2_kernel_prolong       4 0.0 7.5350e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145787b09550_wrap_pyop2_kernel_prolong       4 0.0 7.5215e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c5c48e4bd0_wrap_pyop2_kernel_prolong       4 0.0 7.5674e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152a05253d50_wrap_pyop2_kernel_prolong       4 0.0 7.5060e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b341c68350_wrap_pyop2_kernel_prolong       4 0.0 7.6173e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ca104540d0_wrap_pyop2_kernel_prolong       4 0.0 7.5352e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f48b490910_wrap_pyop2_kernel_prolong       4 0.0 7.5858e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15529f381ed0_wrap_pyop2_kernel_prolong       4 0.0 7.5149e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1553ece2b750_wrap_pyop2_kernel_prolong       4 0.0 7.7120e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152ae2bfd5d0_wrap_pyop2_kernel_prolong       4 0.0 7.5147e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14968035e510_wrap_pyop2_kernel_prolong       4 0.0 7.5525e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1550c0edb6d0_wrap_pyop2_kernel_prolong       4 0.0 7.6969e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a1d9a774d0_wrap_pyop2_kernel_prolong       4 0.0 7.5216e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a6fba54710_wrap_pyop2_kernel_prolong       4 0.0 7.6289e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aabf8e89d0_wrap_pyop2_kernel_prolong       4 0.0 7.5211e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c01e534850_wrap_pyop2_kernel_prolong       4 0.0 7.5610e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152699b560d0_wrap_pyop2_kernel_prolong       4 0.0 7.6243e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb08e79410_wrap_pyop2_kernel_prolong       4 0.0 7.5614e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151bcf449fd0_wrap_pyop2_kernel_prolong       4 0.0 7.5141e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145b319b3a10_wrap_pyop2_kernel_prolong       4 0.0 7.6325e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1540a6b05550_wrap_pyop2_kernel_prolong       4 0.0 7.5379e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c01aad910_wrap_pyop2_kernel_prolong       4 0.0 7.5423e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c807facd0_wrap_pyop2_kernel_prolong       4 0.0 7.5778e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c7289b7190_wrap_pyop2_kernel_prolong       4 0.0 7.5135e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15032bb60090_wrap_pyop2_kernel_prolong       4 0.0 7.5234e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147aadef11d0_wrap_pyop2_kernel_prolong       4 0.0 7.5799e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f316981610_wrap_pyop2_kernel_prolong       4 0.0 7.5375e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1496f0c8a290_wrap_pyop2_kernel_prolong       4 0.0 7.5206e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a29cf5850_wrap_pyop2_kernel_prolong       4 0.0 7.7121e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d671a68290_wrap_pyop2_kernel_prolong       4 0.0 7.6290e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a11c251b10_wrap_pyop2_kernel_prolong       4 0.0 7.7506e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da37a46550_wrap_pyop2_kernel_prolong       4 0.0 7.5848e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152206334190_wrap_pyop2_kernel_prolong       4 0.0 7.5417e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad36c08ed0_wrap_pyop2_kernel_prolong       4 0.0 7.6137e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1507b5995290_wrap_pyop2_kernel_prolong       4 0.0 7.6927e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c508bc9ad0_wrap_pyop2_kernel_prolong       4 0.0 7.5222e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145c4a09ddd0_wrap_pyop2_kernel_prolong       4 0.0 7.5840e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a61538b510_wrap_pyop2_kernel_prolong       4 0.0 7.6380e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f905f77510_wrap_pyop2_kernel_prolong       4 0.0 7.6084e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dad44b6e10_wrap_pyop2_kernel_prolong       4 0.0 7.6671e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14837e293790_wrap_pyop2_kernel_prolong       4 0.0 7.6109e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f3d4231850_wrap_pyop2_kernel_prolong       4 0.0 7.5475e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d66c571bd0_wrap_pyop2_kernel_prolong       4 0.0 7.5747e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154d018ba6d0_wrap_pyop2_kernel_prolong       4 0.0 7.5767e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150c8dab6590_wrap_pyop2_kernel_prolong       4 0.0 7.5692e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148042ee1510_wrap_pyop2_kernel_prolong       4 0.0 7.6681e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a4d36f7490_wrap_pyop2_kernel_prolong       4 0.0 7.6376e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1528bc88ab10_wrap_pyop2_kernel_prolong       4 0.0 7.6206e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1544cddcbd90_wrap_pyop2_kernel_prolong       4 0.0 7.5455e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1553f69defd0_wrap_pyop2_kernel_prolong       4 0.0 7.5523e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15015b1b61d0_wrap_pyop2_kernel_prolong       4 0.0 7.7003e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148509c71010_wrap_pyop2_kernel_prolong       4 0.0 7.6054e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d230f4fe50_wrap_pyop2_kernel_prolong       4 0.0 7.5909e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522adcb3410_wrap_pyop2_kernel_prolong       4 0.0 7.6303e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b45d7ef10_wrap_pyop2_kernel_prolong       4 0.0 7.5221e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided        225 1.0 2.8170e-02 3.9 0.00e+00 0.0 2.5e+05 4.0e+00 2.2e+02  0  0  1  0  1   0  0  2  0  5    -0
SFSetGraph           225 1.0 1.3548e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              225 1.0 3.2658e-02 3.2 0.00e+00 0.0 5.0e+05 3.3e+01 2.2e+02  0  0  2  0  1   0  0  3  0  5    -0
SFPack            776914 1.1 1.0183e+00 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack          776914 1.1 3.9030e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy            10068 1.0 1.7646e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecSet             18456 1.0 3.4428e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecAYPX            16780 1.0 3.9806e+00 1.3 2.03e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  3  0  0  0 104652
VecAXPBYCZ          3356 1.0 2.7893e-03 3.1 5.64e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 413945
VecScatterBegin   776914 1.1 1.0313e+01 1.2 0.00e+00 0.0 1.3e+07 2.4e+04 0.0e+00  2  0 56 28  0   6  0 91 100  0    -0
VecScatterEnd     776914 1.1 9.2065e+00 10.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
MatMult            10068 1.0 7.2183e+01 1.1 4.80e+10 1.1 1.1e+07 2.8e+04 0.0e+00 13  9 48 28  0  45 62 78 100  0 135856
MatMultAdd          3356 1.0 4.5058e+00 1.2 2.03e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  3  0  0  0 92402
MatMultTranspose    3356 1.0 3.4691e+00 1.6 2.03e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  3  0  0  0 120016
MatSolve          384262 1.1 5.5262e+01 1.2 2.38e+10 1.1 3.1e+06 8.9e+01 1.1e+03 10  4 13  0  5  36 31 22  0 25 87833
MatLUFactorNum       224 1.0 2.4733e+00 1.1 1.71e+07 79.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   2  0  0  0  0   150
MatResidual         3356 1.0 3.8854e+01 1.2 2.43e+10 1.1 3.7e+06 4.1e+04 0.0e+00  7  5 16 14  0  23 31 26 50  0 127914
PCSetUp              224 1.0 2.4755e+00 1.1 1.71e+07 79.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   2  0  0  0  0   150
PCSetUpOnBlocks     3356 1.0 1.6269e-02 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply             5034 1.0 7.2312e+01 1.1 2.38e+10 1.1 1.1e+07 1.2e+02 2.8e+03 14  4 45  0 13  47 31 74  0 63 67323
PCApplyOnBlocks   382584 1.1 4.2620e+01 1.2 2.37e+10 1.1 0.0e+00 0.0e+00 0.0e+00  8  4  0  0  0  28 30  0  0  0 113751
KSPSolve            5034 1.0 1.0845e+02 1.1 4.95e+10 1.1 1.2e+07 1.2e+04 4.5e+03 21  9 53 14 21  72 64 87 50 100 93247
MGSmooth Level 0    1678 1.0 1.8357e+01 1.2 3.70e+08 3.1 1.1e+07 1.2e+02 4.5e+03  3  0 45  0 21  11  0 74  0 100  1634
MGSmooth Level 1    3356 1.0 9.2392e+01 1.1 4.93e+10 1.1 1.9e+06 8.2e+04 0.0e+00 17  9  8 14  0  60 63 13 50  0 109128
MGResid Level 1     1678 1.0 3.8732e+01 1.2 2.43e+10 1.1 1.9e+06 8.2e+04 0.0e+00  7  5  8 14  0  23 31 13 50  0 128247
MGInterp Level 1    3356 1.0 7.8274e+00 1.3 4.06e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   5  5  0  0  0 106205
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   200            199
              Viewer     3              3
           Index Set  2359           2359
   IS L to G Mapping   221            217
             Section   294            294
   Star Forest Graph   377            376
              Vector  1874           1870
              Matrix   663            649
      Preconditioner   122            122
       Krylov Solver   120            120
     DMKSP interface     1              1
                SNES     1              1
              DMSNES     1              1
      SNESLineSearch     1              1
    Distributed Mesh    73             74
            DM Label   206            206
          Quadrature    72             72
      Mesh Transform     1              1
       Swarm Cell DM     2              2
    GraphPartitioner    23             23
     Discrete System   105            106
           Weak Form   105            106
        Linear Space     6              6
          Dual Space    26             26
            FE Space     4              4

--- Event Stage 1: MG Apply

           Index Set   450            450
   Star Forest Graph   227            224
              Vector   449            449
    Distributed Mesh     1              0
     Discrete System     1              0
           Weak Form     1              0
========================================================================================================================
Average time to get PetscTime(): 2.76e-08
Average time for MPI_Barrier(): 7.9984e-06
Average time for zero size MPI_Send(): 2.65718e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_mg_coarse_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_mg_levels_1_pc_linesmooth_sub_sub_pc_factor_mat_ordering_type natural # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murrumbidgee/vlumping_hmg/sweep.profile # (source: code)
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

