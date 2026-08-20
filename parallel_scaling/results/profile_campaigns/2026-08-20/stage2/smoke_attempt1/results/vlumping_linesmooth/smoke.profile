****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026-profile-stage2-20260820T053301Z/source/morrow/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0036.gadi.nci.org.au with 104 processes, by sg8812 on Thu Aug 20 15:42:44 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           8.277e+01     1.000   8.277e+01
Objects:              0.000e+00     0.000   0.000e+00
Flops:                2.283e+10     1.262   2.079e+10  2.162e+12
Flops/sec:            2.758e+08     1.262   2.512e+08  2.612e+10
MPI Msg Count:        7.841e+04     3.003   5.707e+04  5.936e+06
MPI Msg Len (bytes):  2.939e+08     2.240   4.041e+03  2.399e+10
MPI Reductions:       1.210e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 7.7673e+01  93.8%  2.0040e+12  92.7%  3.398e+06  57.2%  5.345e+03       75.7%  9.860e+03  81.5%
 1:        MG Apply: 5.1000e+00   6.2%  1.5830e+11   7.3%  2.538e+06  42.8%  2.296e+03       24.3%  2.217e+03  18.3%

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

BuildTwoSided        939 1.0 6.3036e-01 2.4 0.00e+00 0.0 5.9e+04 4.0e+00 9.1e+02  1  0  1  0  8   1  0  2  0  9    -0
BuildTwoSidedF       871 1.0 6.3398e-01 2.4 0.00e+00 0.0 9.2e+04 4.8e+04 8.7e+02  1  0  2 19  7   1  0  3 25  9    -0
SFSetGraph            71 1.0 3.0054e-04 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               68 1.0 7.4746e-03 1.3 0.00e+00 0.0 2.5e+04 1.2e+02 4.0e+01  0  0  0  0  0   0  0  1  0  0    -0
SFBcastBegin        1552 1.0 2.3499e-02 2.3 0.00e+00 0.0 8.0e+05 3.8e+03 0.0e+00  0  0 13 13  0   0  0 24 17  0    -0
SFBcastEnd          1552 1.0 4.8930e-01 44.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFReduceBegin       1265 1.0 1.4571e-02 3.3 0.00e+00 0.0 6.6e+05 4.0e+03 0.0e+00  0  0 11 11  0   0  0 20 15  0    -0
SFReduceEnd         1265 1.0 2.7065e-01 37.9 4.06e+06 2.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1224
SFFetchOpBegin         2 1.0 9.3830e-06 5.7 0.00e+00 0.0 8.2e+02 4.1e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 2.6509e-04 28.9 0.00e+00 0.0 8.2e+02 4.1e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 7.6650e-04 1.5 0.00e+00 0.0 6.6e+02 2.6e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         21 1.0 3.8555e-03 1.3 0.00e+00 0.0 2.1e+04 6.3e+01 2.4e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           21 1.0 1.9865e-03 2.6 0.00e+00 0.0 9.9e+03 3.5e+01 2.1e+01  0  0  0  0  0   0  0  0  0  0    -0
SFPack            116454 1.1 2.3561e-02 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack          116456 1.1 1.0961e-02 1.8 4.08e+06 2.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 30375
VecDot               173 1.0 1.5238e-02 4.0 1.74e+06 1.1 0.0e+00 0.0e+00 1.7e+02  0  0  0  0  1   0  0  0  0  2 11631
VecMDot             3082 1.0 8.6598e-01 4.1 1.64e+08 1.1 0.0e+00 0.0e+00 3.1e+03  1  1  0  0 25   1  1  0  0 31 19305
VecNorm             4855 1.0 6.1775e-01 2.1 4.89e+07 1.1 0.0e+00 0.0e+00 4.9e+03  1  0  0  0 40   1  0  0  0 49  8051
VecScale            3428 1.0 8.1561e-03 1.2 1.73e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 215310
VecCopy             3367 1.0 1.0408e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              4510 1.0 2.7813e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              346 1.0 5.4033e-03 1.2 3.49e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 65608
VecWAXPY            1248 1.0 5.7080e-03 1.5 1.17e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 208484
VecMAXPY            3428 1.0 2.7563e-02 1.2 1.96e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   0  1  0  0  0 721171
VecScatterBegin   113635 1.1 1.1214e-01 1.6 0.00e+00 0.0 1.7e+06 4.0e+03 0.0e+00  0  0 29 29  0   0  0 50 38  0    -0
VecScatterEnd     113635 1.1 2.0155e-01 6.5 1.94e+04 2.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     8
VecReduceArith       346 1.0 1.9542e-03 2.1 3.49e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 181382
VecReduceComm        173 1.0 2.4327e-02 20.4 0.00e+00 0.0 0.0e+00 0.0e+00 1.7e+02  0  0  0  0  1   0  0  0  0  2    -0
VecNormalize        1903 1.0 1.1484e-01 2.4 2.88e+07 1.1 0.0e+00 0.0e+00 1.9e+03  0  0  0  0 16   0  0  0  0 19 25466
MatMult             3255 1.0 1.1680e+00 1.3 1.15e+09 1.1 1.7e+06 4.0e+03 0.0e+00  1  5 29 29  0   1  6 50 38  0 99339
MatMultTranspose       6 1.0 3.4139e-03 1.2 2.17e+06 1.1 3.2e+03 4.0e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0 64015
MatSolve           53284 1.1 3.0703e-01 1.5 3.28e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  2  0  0  0   0  2  0  0  0 108592
MatLUFactorSym        29 1.1 5.1150e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum      5017 1.1 1.3201e+00 1.0 1.39e+08 1.1 0.0e+00 0.0e+00 0.0e+00  2  1  0  0  0   2  1  0  0  0 10485
MatAssemblyBegin    6066 1.1 6.8265e-01 2.1 0.00e+00 0.0 9.2e+04 4.8e+04 8.7e+02  1  0  2 19  7   1  0  3 25  9    -0
MatAssemblyEnd      6066 1.1 2.7351e-01 12.1 6.73e+06 0.0 2.1e+03 5.1e+02 1.7e+01  0  0  0  0  0   0  0  0  0  0  1007
MatGetRowIJ           28 1.1 3.3640e-06 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats     173 1.0 3.2982e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering        28 1.1 2.6254e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       346 1.0 4.4469e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatView              221 1.1 6.6693e-02 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+02  0  0  0  0  2   0  0  0  0  2    -0
MatTranspose           2 1.0 2.1539e-04 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 1.7149e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        346 1.0 3.1759e-02 1.2 6.30e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 198894
MatPtAPSymbolic        1 1.0 4.1783e-03 1.1 0.00e+00 0.0 1.6e+03 6.7e+03 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       173 1.0 2.2461e-01 1.0 2.49e+08 1.1 9.2e+04 1.2e+04 1.8e+02  0  1  2  5  1   0  1  3  6  2 111752
MatGetLocalMat       173 1.0 1.0237e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        173 1.0 3.1175e-02 1.5 0.00e+00 0.0 9.2e+04 1.2e+04 0.0e+00  0  0  2  5  0   0  0  3  6  0    -0
PCSetUp              173 1.0 4.0597e+00 1.0 1.57e+09 1.1 1.0e+06 4.7e+03 4.0e+03  5  7 17 20 33   5  8 30 26 41 38999
PCApply             1352 1.0 5.5414e+00 1.1 1.60e+09 1.1 2.5e+06 2.3e+03 2.2e+03  6  7 43 24 18   7  8 75 32 22 28567
PCApplyOnBlocks    53284 1.1 4.9858e-01 1.3 4.63e+08 1.1 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   1  2  0  0  0 94405
KSPSetUp             173 1.0 1.6765e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             173 1.0 6.0451e+00 1.0 2.26e+09 1.1 3.2e+06 2.7e+03 5.1e+03  7 10 55 36 42   8 11 96 48 52 37111
KSPGMRESOrthog      3082 1.0 8.8431e-01 3.9 3.29e+08 1.1 0.0e+00 0.0e+00 3.1e+03  1  2  0  0 25   1  2  0  0 31 37813
DMPlexCreateGmsh       1 1.0 1.4090e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 3.1901e-01 18.4 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Partition         2 1.0 5.1244e-02 1.0 0.00e+00 0.0 6.7e+03 6.1e+01 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         2 1.0 9.3516e-03 1.0 0.00e+00 0.0 2.5e+04 7.1e+01 1.1e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 1.5458e-03 771.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 5.2158e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 4.0318e-03 1.1 0.00e+00 0.0 1.3e+03 5.4e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 1.6894e-03 1.3 0.00e+00 0.0 6.6e+02 2.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 1.1344e-03 1.6 0.00e+00 0.0 7.6e+02 3.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp           1 1.0 5.8372e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 5.8076e-02 1.0 0.00e+00 0.0 4.4e+03 3.2e+02 6.3e+01  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistCones        2 1.0 1.1859e-03 1.0 0.00e+00 0.0 3.9e+03 1.3e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 4.0930e-03 1.0 0.00e+00 0.0 1.3e+04 7.3e+01 7.6e+01  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistOvrlp        1 1.0 3.7407e-03 1.1 0.00e+00 0.0 2.8e+04 3.7e+01 8.0e+01  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistField        3 1.0 2.0678e-03 1.2 0.00e+00 0.0 5.9e+03 3.5e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         4 1.0 4.7823e-03 15.6 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       4 1.0 2.5356e-04 44.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve              6 1.0 3.3432e+01 1.0 2.28e+10 1.3 5.9e+06 4.1e+03 1.2e+04 40 100 99 100 97 Multiple stages 64676
SNESSetUp              1 1.0 1.7903e-05 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval    1254 1.0 1.1943e+01 1.0 1.47e+10 1.3 1.3e+06 4.0e+03 0.0e+00 14 64 22 22  0  15 69 39 29  0 114991
SNESJacobianEval     173 1.0 1.1058e+01 1.0 4.23e+09 1.3 1.8e+05 2.6e+04 6.9e+02 13 18  3 20  6  14 20  5 26  7 35870
SNESLineSearch       173 1.0 2.0113e+00 1.0 1.47e+10 1.3 1.4e+06 4.0e+03 1.8e+03  2 64 24 24 15   3 69 41 31 18 684188
firedrake              1 1.0 8.0450e+01 1.0 2.28e+10 1.3 5.9e+06 4.0e+03 1.2e+04 97 100 100 100 100 Multiple stages 26878
firedrake.__init__       1 1.0 7.0272e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  8  0  0  0  0   9  0  0  0  0    -0
CreateMesh             1 1.0 4.1066e-01 3.8 0.00e+00 0.0 5.7e+04 6.2e+01 2.0e+02  0  0  1  0  2   0  0  2  0  2    -0
firedrake.mesh._from_gmsh       1 1.0 3.1983e-01 18.4 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 8.7325e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 1.5530e-06 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 2.3035e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 5.2542e-04 5.8 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      10 1.0 2.4927e-02 1.1 0.00e+00 0.0 1.1e+03 5.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      12 1.0 1.2109e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      10 1.0 2.3118e-02 1.1 0.00e+00 0.0 1.1e+03 5.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       9 1.0 2.1930e-02 1.1 0.00e+00 0.0 1.1e+03 5.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       9 1.0 2.1860e-02 1.1 0.00e+00 0.0 1.1e+03 5.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      18 1.0 1.3035e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 2.0225e-03 1.1 0.00e+00 0.0 1.1e+03 5.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 2.9796e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       8 1.0 1.1111e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      55 1.0 6.9165e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 1.7507e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  2  0  0  0  0   2  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 1.5647e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       2 1.0 4.1163e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       3 1.0 7.7370e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 1.7465e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  2  0  0  0  0   2  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     218 1.0 1.8220e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      6974 1.0 2.7192e+01 1.0 1.89e+10 1.3 7.6e+05 4.0e+03 1.5e+01 32 82 13 13  0  34 88 22 17  0 65073
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 1.7148e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)   13948 1.0 2.4684e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 30  0  0  0  0  31  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      16 1.0 1.0592e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 12  0  0  0  0  13  0  0  0  0    -0
GlobalKernel: generate loopy      16 0.0 1.4523e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      16 0.0 8.6913e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      16 1.0 1.3928e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 17  0  0  0  0  18  0  0  0  0    -0
pyop2.compilation.load      16 1.0 1.3927e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 17  0  0  0  0  18  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      16 1.0 8.8873e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 11  0  0  0  0  11  0  0  0  0    -0
pyop2.compilation.make_so      16 1.0 8.7345e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 11  0  0  0  0  11  0  0  0  0    -0
ParLoopRednBegin    6974 1.0 4.7451e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      6974 1.0 6.4820e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 5.8211e-04 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 4.6396e+00 1.0 8.52e+05 1.1 9.6e+03 1.7e+03 1.2e+01  6  0  0  0  0   6  0  0  0  0    19
firedrake.interpolation.interpolate      11 1.0 3.6247e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      11 1.0 5.5198e+00 1.0 8.82e+05 1.1 1.1e+04 1.5e+03 3.4e+01  7  0  0  0  0   7  0  0  0  0    16
firedrake.formmanipulation.split_form      12 1.0 3.6811e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      12 1.0 2.3910e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      11 1.0 1.5626e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       6 1.0 1.0305e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin    1447 1.0 3.1783e-02 1.7 0.00e+00 0.0 7.6e+05 4.0e+03 2.0e+00  0  0 13 13  0   0  0 22 17  0    -0
Parloop_Cells_wrap_expression_kernel      22 1.0 5.3151e+00 1.0 8.82e+05 1.1 0.0e+00 0.0e+00 0.0e+00  6  0  0  0  0   7  0  0  0  0    17
firedrake.halo.Halo.global_to_local_end    1447 1.0 4.3274e-01 42.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.assign      37 1.0 2.8165e-02 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      36 1.0 1.1062e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 9.1815e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate       4 1.0 2.4286e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 2.2299e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.4154e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 2.2164e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.1293e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 2.9769e+00 1.0 0.00e+00 0.0 3.2e+03 1.6e+04 2.3e+01  4  0  0  0  0   4  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 5.6476e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 1.3674e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 4.9598e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  6  0  0  0  0   6  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 4.9598e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  6  0  0  0  0   6  0  0  0  0    -0
CreateSparsity         2 1.0 1.2442e-01 4.7 0.00e+00 0.0 2.7e+03 9.4e+03 1.8e+01  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         2 1.0 5.6758e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve       6 1.0 3.3473e+01 1.0 2.28e+10 1.3 5.9e+06 4.1e+03 1.2e+04 40 100 99 100 97 Multiple stages 64597
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 2.8350e-01 920.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 7.9850e-06 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 2.8345e-01 1083.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 2.8342e-01 1223.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral    2508 1.0 2.0913e+00 1.1 3.59e+09 1.1 0.0e+00 0.0e+00 0.0e+00  2 17  0  0  0   2 18  0  0  0 174632
Parloop_Cells_wrap_form0_exterior_facet_top_integral    2508 1.0 1.1505e+00 1.0 4.67e+06 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0   413
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral    2508 1.0 1.2334e+00 1.0 9.87e+07 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0  1461
Parloop_Cells_wrap_form0_interior_facet_horiz_integral    2508 1.0 1.8510e+00 1.0 3.35e+09 1.1 0.0e+00 0.0e+00 0.0e+00  2 16  0  0  0   2 17  0  0  0 183786
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral    2508 1.0 3.0928e+00 1.1 7.77e+09 1.6 0.0e+00 0.0e+00 0.0e+00  4 31  0  0  0   4 33  0  0  0 215127
firedrake.halo.Halo.local_to_global_begin    1254 1.0 2.0719e-02 1.9 0.00e+00 0.0 6.6e+05 4.0e+03 0.0e+00  0  0 11 11  0   0  0 19 15  0    -0
firedrake.halo.Halo.local_to_global_end    1254 1.0 2.7427e-01 25.6 4.06e+06 2.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1208
Parloop_Cells_wrap_form00_cell_integral     346 1.0 2.2726e+00 1.0 9.25e+08 1.1 0.0e+00 0.0e+00 0.0e+00  3  4  0  0  0   3  5  0  0  0 41369
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     346 1.0 1.2855e+00 1.0 1.39e+07 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0   197
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     346 1.0 2.7159e+00 1.0 1.19e+09 1.1 0.0e+00 0.0e+00 0.0e+00  3  6  0  0  0   3  6  0  0  0 44419
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     346 1.0 4.1947e+00 1.1 2.12e+09 1.6 0.0e+00 0.0e+00 0.0e+00  5  8  0  0  0   5  9  0  0  0 43258
firedrake.dmhooks.get_function_space       2 1.0 1.2457e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 4.8438e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0      173 1.0 1.2436e+00 1.0 6.44e+06 48.6 0.0e+00 0.0e+00 2.0e+00  2  0  0  0  0   2  0  0  0  0    90
MGSetup Level 1      173 1.0 1.6871e+00 1.0 1.31e+09 1.1 9.1e+05 4.0e+03 3.6e+03  2  6 15 15 30   2  7 27 20 37 78898
firedrake.constant.Constant.assign       5 1.0 1.6399e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided        173 1.0 4.8006e-03 1.6 0.00e+00 0.0 8.7e+04 4.0e+00 1.7e+02  0  0  1  0  1   0  0  3  0  8    -0
SFSetGraph           173 1.0 9.5883e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              173 1.0 8.2037e-03 1.5 0.00e+00 0.0 1.7e+05 3.6e+01 1.7e+02  0  0  3  0  1   0  0  7  0  8    -0
SFPack            163592 1.1 1.6668e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack          163592 1.1 7.6562e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             4056 1.0 8.3825e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet             10815 1.0 3.5215e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecAYPX             5408 1.0 1.4491e-02 1.4 4.09e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  3  0  0  0 286771
VecScatterBegin   163592 1.1 1.5832e-01 1.7 0.00e+00 0.0 2.1e+06 2.8e+03 0.0e+00  0  0 35 24  0   2  0 83 100  0    -0
VecScatterEnd     163592 1.1 1.9855e-01 4.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
MatMult             2704 1.0 1.4222e+00 1.6 9.57e+08 1.1 1.4e+06 4.0e+03 0.0e+00  1  4 24 24  0  20 61 56 98  0 67774
MatMultAdd          1352 1.0 2.9310e-02 1.7 4.09e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  3  0  0  0 141782
MatMultTranspose    1352 1.0 4.0828e-02 1.3 4.09e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  3  0  0  0 101785
MatSolve           77064 1.1 3.7930e+00 1.1 5.53e+08 1.2 1.1e+06 9.9e+01 8.6e+02  4  2 19  0  7  72 31 44  2 39 13036
MatResidual         1352 1.0 6.0237e-01 1.3 4.85e+08 1.1 7.1e+05 4.0e+03 0.0e+00  1  2 12 12  0  10 31 28 49  0 81158
PCApply             4056 1.0 4.0165e+00 1.1 5.53e+08 1.2 1.1e+06 9.9e+01 8.6e+02  5  2 19  0  7  77 31 44  2 39 12310
PCApplyOnBlocks    75712 1.1 6.2574e-01 1.7 4.66e+08 1.1 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   9 30  0  0  0 75709
KSPSolve            4056 1.0 4.9207e+00 1.1 1.04e+09 1.1 1.8e+06 1.6e+03 2.2e+03  5  5 31 12 18  88 64 72 51 100 20546
MGSmooth Level 0    1352 1.0 3.4434e+00 1.1 1.03e+08 19.9 1.1e+06 9.9e+01 2.2e+03  4  0 19  0 18  65  1 44  2 100   601
MGSmooth Level 1    2704 1.0 1.6042e+00 1.6 9.79e+08 1.1 7.1e+05 4.0e+03 0.0e+00  1  5 12 12  0  23 63 28 49  0 61731
MGResid Level 1     1352 1.0 6.0358e-01 1.3 4.85e+08 1.1 7.1e+05 4.0e+03 0.0e+00  1  2 12 12  0  10 31 28 49  0 80995
MGInterp Level 1    2704 1.0 7.0831e-02 1.4 8.18e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  5  0  0  0 117339
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container    22             22
              Viewer     9              9
           Index Set   745            745
   IS L to G Mapping    35             35
             Section    90             90
   Star Forest Graph   112            285
              Vector   892            892
              Matrix   160            160
      Preconditioner    34             34
       Krylov Solver    32             32
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

           Index Set   346            346
   Star Forest Graph   173              0
              Vector   173            173
========================================================================================================================
Average time to get PetscTime(): 2.56e-08
Average time for MPI_Barrier(): 4.3592e-06
Average time for zero size MPI_Send(): 1.79438e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026-profile-stage2-20260820T053301Z/smoke/results/vlumping_linesmooth/smoke.profile # (source: code)
-options_left # (source: code)
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

