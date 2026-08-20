****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026-profile-stage2-20260820T053301Z/source/morrow/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0289.gadi.nci.org.au with 832 processes, by sg8812 on Thu Aug 20 16:23:14 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           1.749e+03     1.000   1.749e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                1.341e+12     1.134   1.264e+12  1.052e+15
Flops/sec:            7.666e+08     1.134   7.227e+08  6.013e+11
MPI Msg Count:        2.503e+05     5.979   1.108e+05  9.220e+07
MPI Msg Len (bytes):  1.320e+10     2.694   9.319e+04  8.592e+12
MPI Reductions:       1.930e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 9.3415e+02  53.4%  7.9976e+14  76.0%  3.493e+07  37.9%  1.473e+05       59.9%  1.477e+04  76.5%
 1:        MG Apply: 8.1492e+02  46.6%  2.5189e+14  24.0%  5.727e+07  62.1%  6.016e+04       40.1%  4.516e+03  23.4%

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

BuildTwoSided       1397 1.0 5.7775e+01 2.4 0.00e+00 0.0 6.5e+05 4.0e+00 1.2e+03  2  0  1  0  6   4  0  2  0  8    -0
BuildTwoSidedF      1131 1.0 5.7758e+01 2.4 0.00e+00 0.0 1.1e+06 1.3e+06 1.1e+03  2  0  1 16  6   4  0  3 27  8    -0
SFSetGraph           269 1.1 1.3657e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              266 1.1 6.0907e-02 1.8 0.00e+00 0.0 2.1e+05 2.7e+03 4.0e+01  0  0  0  0  0   0  0  1  0  0    -0
SFBcastBegin         719 1.0 3.6256e-01 2.9 0.00e+00 0.0 3.3e+06 9.5e+04 0.0e+00  0  0  4  4  0   0  0  9  6  0    -0
SFBcastEnd           719 1.0 1.4302e+01 80.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFReduceBegin        311 1.0 9.8827e-02 17.9 0.00e+00 0.0 1.5e+06 1.0e+05 0.0e+00  0  0  2  2  0   0  0  4  3  0    -0
SFReduceEnd          311 1.0 2.8984e+00 52.7 2.92e+07 2.7 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  6542
SFFetchOpBegin         2 1.0 2.4752e-05 7.6 0.00e+00 0.0 7.1e+03 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 1.5840e-03 76.9 0.00e+00 0.0 7.1e+03 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 3.4750e-03 3.2 0.00e+00 0.0 5.6e+03 1.3e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         21 1.0 4.0001e-02 1.4 0.00e+00 0.0 1.8e+05 2.7e+02 2.4e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           21 1.0 1.2257e-02 5.8 0.00e+00 0.0 8.2e+04 1.6e+02 2.1e+01  0  0  0  0  0   0  0  0  0  0    -0
SFPack           1130548 1.1 2.5697e+00 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack         1130550 1.1 2.1603e-01 3.1 2.92e+07 2.7 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 87777
VecDot               225 1.0 9.9561e-01 4.6 1.83e+08 1.1 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  1   0  0  0  0  2 145951
VecMDot             5641 1.0 8.3233e+01 2.1 3.42e+10 1.1 0.0e+00 0.0e+00 5.6e+03  4  3  0  0 29   7  3  0  0 38 325925
VecNorm             6616 1.0 1.9539e+01 2.3 5.38e+09 1.1 0.0e+00 0.0e+00 6.6e+03  1  0  0  0 34   1  1  0  0 45 218675
VecScale            6091 1.0 1.8335e+00 1.3 2.48e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 1072719
VecCopy             1800 1.0 2.5106e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              5850 1.0 4.9063e+00 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              450 1.0 7.4514e-01 1.3 3.66e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 390024
VecWAXPY             225 1.0 4.3505e-01 1.2 9.15e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 167006
VecMAXPY            6091 1.0 4.8465e+01 1.1 3.88e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3  3  0  0  0   5  4  0  0  0 634915
VecScatterBegin  1129516 1.1 1.5683e+01 1.5 0.00e+00 0.0 2.8e+07 1.1e+05 0.0e+00  1  0 30 35  0   2  0 80 58  0    -0
VecScatterEnd    1129516 1.1 3.4180e+01 30.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecReduceArith       450 1.0 3.4375e-01 3.2 3.66e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 845431
VecReduceComm        225 1.0 3.4199e-01 13.7 0.00e+00 0.0 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  1   0  0  0  0  2    -0
VecNormalize        2475 1.0 1.0892e+01 2.8 3.02e+09 1.1 0.0e+00 0.0e+00 2.5e+03  0  0  0  0 13   1  0  0  0 17 220130
MatMult             5866 1.0 2.4202e+02 1.2 1.69e+11 1.1 2.8e+07 1.1e+05 0.0e+00 13 13 30 35  0  24 17 80 58  0 554447
MatSolve          559350 1.1 7.0841e+01 1.5 3.52e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3  3  0  0  0   6  3  0  0  0 393958
MatLUFactorSym       227 1.1 3.0364e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum     51075 1.1 1.7876e+02 1.0 1.48e+10 1.1 0.0e+00 0.0e+00 0.0e+00 10  1  0  0  0  19  1  0  0  0 64786
MatAssemblyBegin   52436 1.1 5.8458e+01 2.0 0.00e+00 0.0 1.1e+06 1.3e+06 1.1e+03  2  0  1 16  6   5  0  3 27  8    -0
MatAssemblyEnd     52436 1.1 1.1257e+01 12.3 2.43e+08 0.0 1.9e+04 1.3e+04 1.7e+01  0  0  0  0  0   1  0  0  0  0  7580
MatGetRowIJ          226 1.1 5.6909e-05 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats     225 1.0 2.8883e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 2.3e+02  1  0  0  0  1   3  0  0  0  2    -0
MatGetOrdering       226 1.1 3.9064e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       450 1.0 7.9141e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
MatTranspose           2 1.0 1.4284e-02 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 1.2432e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        450 1.0 4.7693e+00 1.4 6.59e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  1  0  0  0 1095367
MatPtAPSymbolic        1 1.0 2.4815e-01 1.0 0.00e+00 0.0 1.4e+04 1.8e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       225 1.0 3.6795e+01 1.0 2.63e+10 1.1 1.1e+06 3.2e+05 2.3e+02  2  2  1  4  1   4  3  3  7  2 567602
MatGetLocalMat       225 1.0 1.8358e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        225 1.0 7.9893e-01 1.8 0.00e+00 0.0 1.1e+06 3.2e+05 0.0e+00  0  0  1  4  0   0  0  3  7  0    -0
PCSetUp              225 1.0 4.4623e+02 1.0 1.66e+11 1.1 1.2e+07 1.3e+05 5.4e+03 26 13 13 17 28  48 16 34 29 37 295421
PCApply             3391 1.0 8.3322e+02 1.0 3.25e+11 1.1 5.7e+07 6.0e+04 4.5e+03 47 24 62 40 23 Multiple stages 302305
PCApplyOnBlocks   559350 1.1 8.4219e+01 1.5 4.97e+10 1.1 0.0e+00 0.0e+00 0.0e+00  4  4  0  0  0   7  5  0  0  0 468579
KSPSetUp             225 1.0 1.8941e-02 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             225 1.0 1.0250e+03 1.0 4.74e+11 1.1 7.3e+07 7.0e+04 1.2e+04 59 36 80 60 60 Multiple stages 364471
KSPGMRESOrthog      5641 1.0 1.2259e+02 1.6 6.84e+10 1.1 0.0e+00 0.0e+00 5.6e+03  6  5  0  0 29  11  7  0  0 38 442579
DMPlexCreateGmsh       1 1.0 4.1792e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 1.2927e+00 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Partition         2 1.0 6.8719e-01 1.0 0.00e+00 0.0 5.9e+04 2.8e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         2 1.0 1.1316e-01 1.0 0.00e+00 0.0 2.1e+05 3.5e+02 1.1e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 7.8419e-02 15877.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 1.1348e-01 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 1.3937e-02 2.7 0.00e+00 0.0 1.1e+04 2.7e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 6.5884e-03 1.4 0.00e+00 0.0 5.6e+03 1.1e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 2.8282e-02 1.1 0.00e+00 0.0 6.4e+03 2.0e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp           1 1.0 2.3251e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 8.0718e-01 1.0 0.00e+00 0.0 3.4e+04 2.3e+03 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        2 1.0 1.4784e-02 1.1 0.00e+00 0.0 3.3e+04 6.7e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 7.9228e-02 1.0 0.00e+00 0.0 1.1e+05 3.7e+02 7.6e+01  0  0  0  0  0   0  0  0  0  1    -0
DMPlexDistOvrlp        1 1.0 2.3750e-02 1.0 0.00e+00 0.0 2.4e+05 9.7e+01 8.0e+01  0  0  0  0  0   0  0  1  0  1    -0
DMPlexDistField        3 1.0 1.1975e-02 1.2 0.00e+00 0.0 5.1e+04 1.4e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         4 1.0 1.8519e-01 20.1 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       4 1.0 1.8218e-02 637.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             75 1.0 1.6873e+03 1.0 1.34e+12 1.1 9.2e+07 9.4e+04 1.9e+04 96 100 99 100 98 Multiple stages 623246
SNESSetUp              1 1.0 5.1820e-05 7.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     300 1.0 3.1297e+01 1.2 2.71e+11 1.2 3.2e+06 1.1e+05 0.0e+00  2 20  3  4  0   3 26  9  7  0 6706381
SNESJacobianEval     225 1.0 1.7335e+02 1.0 4.26e+11 1.2 2.1e+06 6.9e+05 9.0e+02 10 31  2 17  5  19 41  6 29  6 1905458
SNESLineSearch       225 1.0 2.7141e+01 1.0 2.11e+11 1.2 3.2e+06 1.1e+05 9.0e+02  2 16  3  4  5   3 20  9  7  6 6018960
firedrake              1 1.0 1.7468e+03 1.0 1.34e+12 1.1 9.2e+07 9.3e+04 1.9e+04 100 100 100 100 100 Multiple stages 602029
firedrake.__init__       1 1.0 6.9935e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
CreateMesh             1 1.0 2.2242e+00 1.6 0.00e+00 0.0 4.9e+05 2.6e+02 2.0e+02  0  0  1  0  1   0  0  1  0  1    -0
firedrake.mesh._from_gmsh       1 1.0 1.2936e+00 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 1.2874e-03 63.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 3.1130e-06 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 3.7018e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 7.3831e-04 4.5 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      10 1.0 2.9374e-02 1.1 0.00e+00 0.0 9.5e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      12 1.0 1.7050e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      10 1.0 2.7369e-02 1.1 0.00e+00 0.0 9.5e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       9 1.0 2.5993e-02 1.1 0.00e+00 0.0 9.5e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       9 1.0 2.5909e-02 1.1 0.00e+00 0.0 9.5e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      18 1.0 1.3991e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 5.6352e-03 1.5 0.00e+00 0.0 9.5e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 4.2527e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       8 1.0 1.3946e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      55 1.0 2.9979e-02 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 2.2909e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 1.5259e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       2 1.0 4.0335e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       3 1.0 8.2985e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 2.2866e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     634 1.0 8.5159e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      2412 1.0 1.7587e+02 1.2 6.97e+11 1.2 2.9e+06 1.0e+05 1.5e+01  9 51  3  4  0  17 68  8  6  0 3071266
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 2.2538e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    4824 1.0 2.5467e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      16 1.0 1.2171e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
GlobalKernel: generate loopy      16 0.0 1.7532e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      16 0.0 8.3980e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      16 1.0 1.3751e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.load      16 1.0 1.3750e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      16 1.0 9.5218e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.make_so      16 1.0 9.3319e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
ParLoopRednBegin    2412 1.0 9.5155e-03 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      2412 1.0 6.9309e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 9.0324e-04 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 4.8298e+00 1.0 6.87e+07 1.1 8.5e+04 4.5e+04 1.2e+01  0  0  0  0  0   1  0  0  0  0 11299
firedrake.interpolation.interpolate      11 1.0 4.1491e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      11 1.0 5.8970e+00 1.0 7.12e+07 1.1 9.5e+04 4.0e+04 3.4e+01  0  0  0  0  0   1  0  0  0  0  9583
firedrake.formmanipulation.split_form      12 1.0 4.1920e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      12 1.0 1.9467e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      11 1.0 1.5791e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       6 1.2 1.0261e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     614 1.0 4.1337e-01 2.4 0.00e+00 0.0 2.9e+06 1.0e+05 2.0e+00  0  0  3  4  0   0  0  8  6  0    -0
Parloop_Cells_wrap_expression_kernel      22 1.0 5.4144e+00 1.0 7.12e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0 10437
firedrake.halo.Halo.global_to_local_end     614 1.0 1.4172e+01 163.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.assign     314 1.0 1.7282e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     313 1.0 1.6384e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 4.6726e-04 5.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate     154 1.0 1.8548e-03 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 7.3663e-05 3.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.5151e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 2.1940e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.2602e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 7.2721e+00 1.0 0.00e+00 0.0 2.8e+04 4.3e+05 2.3e+01  0  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 6.7284e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.8814e-04 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.0420e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.0420e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
CreateSparsity         2 1.0 4.0968e+00 1.1 0.00e+00 0.0 2.4e+04 2.6e+05 1.8e+01  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         2 1.0 5.4988e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      75 1.0 1.6876e+03 1.0 1.34e+12 1.1 9.2e+07 9.4e+04 1.9e+04 96 100 99 100 98 Multiple stages 623140
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 3.5120e-01 1102.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 8.1760e-06 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 3.5115e-01 1294.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 3.5112e-01 1470.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     600 1.0 8.3356e+00 1.5 6.94e+10 1.1 0.0e+00 0.0e+00 0.0e+00  0  5  0  0  0   1  7  0  0  0 6606908
Parloop_Cells_wrap_form0_exterior_facet_top_integral     600 1.0 1.0095e+00 1.0 9.02e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  7091
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral     600 1.0 1.2509e+00 1.1 6.49e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 27563
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     600 1.0 5.4832e+00 1.2 6.66e+10 1.1 0.0e+00 0.0e+00 0.0e+00  0  5  0  0  0   1  7  0  0  0 9646450
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     600 1.0 1.1253e+01 1.3 1.36e+11 1.3 0.0e+00 0.0e+00 0.0e+00  1 10  0  0  0   1 13  0  0  0 9052103
firedrake.halo.Halo.local_to_global_begin     300 1.0 1.1112e-01 10.6 0.00e+00 0.0 1.4e+06 1.1e+05 0.0e+00  0  0  2  2  0   0  0  4  3  0    -0
firedrake.halo.Halo.local_to_global_end     300 1.0 2.9021e+00 50.3 2.92e+07 2.7 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  6534
Parloop_Cells_wrap_form00_cell_integral     450 1.0 3.1165e+01 1.5 9.71e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  7  0  0  0   3 10  0  0  0 2473152
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     450 1.0 1.9936e+00 1.8 4.96e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 13209
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     450 1.0 3.5777e+01 1.2 1.28e+11 1.1 0.0e+00 0.0e+00 0.0e+00  2 10  0  0  0   3 13  0  0  0 2850179
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     450 1.0 7.6925e+01 1.3 2.01e+11 1.3 0.0e+00 0.0e+00 0.0e+00  4 14  0  0  0   7 19  0  0  0 1965072
firedrake.dmhooks.get_function_space       2 1.0 2.0721e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 5.2002e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0      225 1.0 1.7004e+02 1.0 5.81e+08 50.5 0.0e+00 0.0e+00 2.0e+00 10  0  0  0  0  18  0  0  0  0   153
MGSetup Level 1      225 1.0 2.3834e+02 1.0 1.40e+11 1.1 1.1e+07 1.1e+05 5.0e+03 14 11 12 13 26  25 14 31 22 34 465357
firedrake.constant.Constant.assign      75 1.0 3.2605e-03 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided        225 1.0 1.3070e-01 3.1 0.00e+00 0.0 1.3e+06 4.0e+00 2.2e+02  0  0  1  0  1   0  0  2  0  5    -0
SFSetGraph           225 1.0 1.8010e-02 4.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              225 1.0 1.5558e-01 2.5 0.00e+00 0.0 2.5e+06 2.0e+02 2.2e+02  0  0  3  0  1   0  0  4  0  5    -0
SFPack           3095983 1.1 2.9636e+00 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack         3095983 1.1 1.8541e-01 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy            10173 1.0 1.2377e+01 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecSet             27127 1.0 1.4697e+01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecAYPX            13564 1.0 2.0863e+01 2.1 8.28e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  3  0  0  0 314909
VecScatterBegin  3095983 1.1 4.1509e+01 1.3 0.00e+00 0.0 5.1e+07 6.8e+04 0.0e+00  2  0 55 40  0   5  0 89 100  0    -0
VecScatterEnd    3095983 1.1 4.0927e+01 20.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
MatMult             6782 1.0 2.8419e+02 1.2 1.96e+11 1.1 3.2e+07 1.1e+05 0.0e+00 15 15 35 40  0  32 62 56 100  0 545922
MatMultAdd          3391 1.0 1.7678e+01 1.2 8.28e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  3  0  0  0 371639
MatMultTranspose    3391 1.0 1.4174e+01 2.2 8.28e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   1  3  0  0  0 463515
MatSolve         1536123 1.1 4.7579e+02 1.1 1.11e+11 1.3 2.5e+07 6.4e+02 1.1e+03 25  7 27  0  6  54 31 44  0 25 161904
MatResidual         3391 1.0 1.5377e+02 1.3 9.92e+10 1.1 1.6e+07 1.1e+05 0.0e+00  8  7 17 20  0  17 31 28 50  0 511590
PCApply            10173 1.0 5.2697e+02 1.1 1.11e+11 1.3 2.5e+07 6.4e+02 1.1e+03 28  7 27  0  6  61 31 44  0 25 146180
PCApplyOnBlocks  1532732 1.1 1.9866e+02 1.4 9.63e+10 1.1 0.0e+00 0.0e+00 0.0e+00  9  7  0  0  0  20 30  0  0  0 384951
KSPSolve           10173 1.0 6.7896e+02 1.1 2.12e+11 1.2 4.1e+07 4.2e+04 4.5e+03 37 15 45 20 23  80 64 72 50 100 235772
MGSmooth Level 0    3391 1.0 3.0124e+02 1.1 1.67e+10 90.4 2.5e+07 6.4e+02 4.5e+03 16  0 27  0 23  35  0 44  0 100  1852
MGSmooth Level 1    6782 1.0 4.0113e+02 1.2 2.01e+11 1.1 1.6e+07 1.1e+05 0.0e+00 21 15 17 20  0  45 63 28 50  0 397683
MGResid Level 1     3391 1.0 1.5379e+02 1.3 9.92e+10 1.1 1.6e+07 1.1e+05 0.0e+00  8  7 17 20  0  17 31 28 50  0 511530
MGInterp Level 1    6782 1.0 3.0719e+01 1.4 1.66e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  1  0  0  0   3  5  0  0  0 427741
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   160            160
              Viewer     3              3
           Index Set  4658           4658
   IS L to G Mapping   228            228
             Section    90             90
   Star Forest Graph   305            530
              Vector  1693           1693
              Matrix  1130           1130
      Preconditioner   227            227
       Krylov Solver   225            225
     DMKSP interface     1              1
                SNES     1              1
              DMSNES     1              1
      SNESLineSearch     1              1
    Distributed Mesh    16             16
            DM Label    51             51
    GraphPartitioner     4              4
     Discrete System    24             24
           Weak Form    24             24

--- Event Stage 1: MG Apply

           Index Set   450            450
   Star Forest Graph   225              0
              Vector   225            225
========================================================================================================================
Average time to get PetscTime(): 2.61e-08
Average time for MPI_Barrier(): 8.0038e-06
Average time for zero size MPI_Send(): 2.14039e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026-profile-stage2-20260820T053301Z/stage2/results/vlumping_linesmooth/h8.profile # (source: code)
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

