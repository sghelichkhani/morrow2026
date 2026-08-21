****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0541.gadi.nci.org.au with 832 processes, by sg8812 on Fri Aug 21 17:34:42 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           1.687e+03     1.000   1.687e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                1.518e+12     1.131   1.432e+12  1.191e+15
Flops/sec:            8.998e+08     1.131   8.490e+08  7.064e+11
MPI Msg Count:        1.731e+05     4.206   1.075e+05  8.940e+07
MPI Msg Len (bytes):  1.390e+10     2.694   1.012e+05  9.044e+12
MPI Reductions:       1.255e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 6.2776e+02  37.2%  6.9790e+14  58.6%  2.346e+07  26.2%  1.609e+05       41.7%  9.550e+03  76.1%
 1:        MG Apply: 1.0590e+03  62.8%  4.9354e+14  41.4%  6.594e+07  73.8%  7.993e+04       58.3%  2.980e+03  23.7%

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

BuildTwoSided       1022 1.0 5.0674e+01 2.4 0.00e+00 0.0 6.5e+05 4.0e+00 1.0e+03  2  0  1  0  8   6  0  3  0 11    -0
BuildTwoSidedF       983 1.0 5.0659e+01 2.4 0.00e+00 0.0 1.1e+06 1.3e+06 9.8e+02  2  0  1 15  8   6  0  5 36 10    -0
SFSetGraph            42 1.0 5.6551e-03 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               39 1.0 4.6064e-02 2.1 0.00e+00 0.0 2.1e+05 2.7e+03 3.9e+01  0  0  0  0  0   0  0  1  0  0    -0
SFBcastBegin         719 1.0 3.5980e-01 2.9 0.00e+00 0.0 3.3e+06 9.5e+04 0.0e+00  0  0  4  3  0   0  0 14  8  0    -0
SFBcastEnd           719 1.0 1.4739e+01 95.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        311 1.0 1.0140e-01 17.7 0.00e+00 0.0 1.5e+06 1.0e+05 0.0e+00  0  0  2  2  0   0  0  6  4  0    -0
SFReduceEnd          311 1.0 2.9916e+00 60.4 2.92e+07 2.7 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  6338
SFFetchOpBegin         2 1.0 2.6885e-05 8.6 0.00e+00 0.0 7.1e+03 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 1.3841e-03 76.3 0.00e+00 0.0 7.1e+03 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 3.4071e-03 3.1 0.00e+00 0.0 5.6e+03 1.3e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         21 1.0 3.9318e-02 1.4 0.00e+00 0.0 1.8e+05 2.7e+02 2.4e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           21 1.0 1.1899e-02 6.2 0.00e+00 0.0 8.2e+04 1.6e+02 2.1e+01  0  0  0  0  0   0  0  0  0  0    -0
SFPack              4628 1.0 1.6489e+00 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            4630 1.0 1.7201e-01 7.0 2.92e+07 2.7 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 110238
VecDot               225 1.0 1.0708e+00 4.2 1.83e+08 1.1 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  2   0  0  0  0  2 135705
VecMDot             3370 1.0 5.9681e+01 2.2 1.72e+10 1.1 0.0e+00 0.0e+00 3.4e+03  2  1  0  0 27   6  2  0  0 35 229304
VecNorm             4198 1.0 1.2496e+01 2.6 3.42e+09 1.1 0.0e+00 0.0e+00 4.2e+03  1  0  0  0 33   1  0  0  0 44 216963
VecScale            3673 1.0 1.1237e+00 1.2 1.49e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 1055536
VecCopy             1652 1.0 2.2145e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               605 1.0 5.0840e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              303 1.0 5.1045e-01 1.2 2.47e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 383359
VecWAXPY             226 1.0 4.3419e-01 1.2 9.19e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 168080
VecMAXPY            3673 1.0 2.5262e+01 1.1 2.00e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   4  2  0  0  0 627884
VecScatterBegin     3596 1.0 1.4737e+00 2.7 0.00e+00 0.0 1.7e+07 1.1e+05 0.0e+00  0  0 19 20  0   0  0 73 48  0    -0
VecScatterEnd       3596 1.0 2.4045e+01 36.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecReduceArith       450 1.0 3.3428e-01 2.7 3.66e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 869392
VecReduceComm        225 1.0 2.9593e-01 8.5 0.00e+00 0.0 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  2   0  0  0  0  2    -0
VecNormalize         847 1.0 3.6405e+00 2.2 1.03e+09 1.1 0.0e+00 0.0e+00 8.5e+02  0  0  0  0  7   0  0  0  0  9 225386
MatMult             3596 1.0 1.5329e+02 1.3 1.04e+11 1.1 1.7e+07 1.1e+05 0.0e+00  8  7 19 20  0  22 12 73 48  0 536643
MatSolve             847 1.0 3.3371e+01 1.2 2.37e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  2  0  0  0   5  3  0  0  0 561365
MatLUFactorSym         1 1.0 2.9235e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum       154 1.0 7.8496e+01 1.0 1.97e+10 1.1 0.0e+00 0.0e+00 0.0e+00  5  1  0  0  0  12  2  0  0  0 195515
MatILUFactorSym        2 1.0 3.0942e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCopy               75 1.0 3.9448e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
MatConvert             1 1.0 1.6944e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin    1142 1.0 5.4080e+01 2.3 0.00e+00 0.0 1.1e+06 1.3e+06 9.8e+02  2  0  1 15  8   6  0  5 36 10    -0
MatAssemblyEnd      1142 1.0 1.2615e+01 12.8 2.43e+08 0.0 1.9e+04 1.3e+04 1.7e+01  0  0  0  0  0   1  0  0  0  0  6764
MatGetRowIJ            2 1.0 7.5340e-06 25.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         2 1.0 1.2007e-02 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       302 1.0 7.9388e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
MatTranspose           2 1.0 1.4733e-02 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 1.2651e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        154 1.0 1.9801e+00 1.6 2.26e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 902908
MatPtAPSymbolic        1 1.0 3.0754e-01 1.0 0.00e+00 0.0 1.4e+04 1.8e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric        77 1.0 1.4448e+01 1.0 9.01e+09 1.1 3.7e+05 3.1e+05 8.2e+01  1  1  0  1  1   2  1  2  3  1 494685
MatGetLocalMat        77 1.0 5.7495e-01 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol         77 1.0 7.1773e-01 4.5 0.00e+00 0.0 3.7e+05 3.1e+05 0.0e+00  0  0  0  1  0   0  0  2  3  0    -0
PCSetUp              225 1.0 1.7484e+02 1.0 8.31e+10 1.1 4.0e+06 1.3e+05 1.8e+03 10  6  5  6 14  28  9 17 13 19 375663
PCApply             2600 1.0 1.0848e+03 1.1 6.23e+11 1.1 6.6e+07 8.0e+04 3.0e+03 63 41 74 58 24 Multiple stages 454976
PCApplyOnBlocks      847 1.0 3.3381e+01 1.2 2.37e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  2  0  0  0   5  3  0  0  0 561195
KSPSetUp             225 1.0 1.4263e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             225 1.0 1.2192e+03 1.0 7.32e+11 1.1 7.8e+07 8.4e+04 8.4e+03 72 49 88 73 67 Multiple stages 475327
KSPGMRESOrthog      3370 1.0 7.9962e+01 1.7 3.45e+10 1.1 0.0e+00 0.0e+00 3.4e+03  4  2  0  0 27  10  4  0  0 35 342290
DMPlexCreateGmsh       1 1.0 4.1857e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 7.8203e+00 18.7 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   1  0  0  0  0    -0
Mesh Partition         2 1.0 7.0608e-01 1.0 0.00e+00 0.0 5.9e+04 2.8e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         2 1.0 1.1328e-01 1.0 0.00e+00 0.0 2.1e+05 3.5e+02 1.1e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 7.9800e-02 15855.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 1.1847e-01 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 7.4342e-03 1.5 0.00e+00 0.0 1.1e+04 2.7e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 5.5200e-03 1.4 0.00e+00 0.0 5.6e+03 1.1e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 3.0125e-02 1.1 0.00e+00 0.0 6.4e+03 2.0e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp           1 1.0 2.3073e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 8.3200e-01 1.0 0.00e+00 0.0 3.4e+04 2.3e+03 6.3e+01  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistCones        2 1.0 1.3927e-02 1.1 0.00e+00 0.0 3.3e+04 6.7e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 7.9901e-02 1.0 0.00e+00 0.0 1.1e+05 3.7e+02 7.6e+01  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistOvrlp        1 1.0 2.6564e-02 1.0 0.00e+00 0.0 2.4e+05 9.7e+01 8.0e+01  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistField        3 1.0 1.2281e-02 1.2 0.00e+00 0.0 5.1e+04 1.4e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         4 1.0 1.8473e-01 20.4 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       4 1.0 1.8591e-02 629.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             75 1.0 1.6174e+03 1.0 1.52e+12 1.1 8.9e+07 1.0e+05 1.2e+04 96 100 99 100 96 Multiple stages 736614
SNESSetUp              1 1.0 6.1331e-05 8.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     300 1.0 3.2766e+01 1.2 2.71e+11 1.2 3.2e+06 1.1e+05 0.0e+00  2 18  4  4  0   5 30 14  9  0 6405673
SNESJacobianEval     225 1.0 1.7961e+02 1.0 4.26e+11 1.2 2.1e+06 6.9e+05 9.0e+02 11 28  2 16  7  29 47  9 39  9 1839100
SNESLineSearch       225 1.0 2.8057e+01 1.0 2.11e+11 1.2 3.2e+06 1.1e+05 9.0e+02  2 14  4  4  7   4 23 14  9  9 5822398
firedrake              1 1.0 1.6843e+03 1.0 1.52e+12 1.1 8.9e+07 1.0e+05 1.3e+04 100 100 100 100 100 Multiple stages 707382
firedrake.__init__       1 1.0 1.5029e+01 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
CreateMesh             1 1.0 8.7803e+00 6.4 0.00e+00 0.0 4.9e+05 2.6e+02 2.0e+02  0  0  1  0  2   1  0  2  0  2    -0
firedrake.mesh._from_gmsh       1 1.0 7.8217e+00 18.7 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 1.2822e-03 53.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 3.1330e-06 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 4.1094e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 1.1696e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       9 1.0 2.9136e-02 1.2 0.00e+00 0.0 9.5e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      11 1.0 1.1754e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       9 1.0 2.7507e-02 1.2 0.00e+00 0.0 9.5e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       8 1.0 2.6227e-02 1.2 0.00e+00 0.0 9.5e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       8 1.0 2.6146e-02 1.2 0.00e+00 0.0 9.5e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      16 1.0 1.3562e-02 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 1.0185e-02 3.0 0.00e+00 0.0 9.5e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 4.2602e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 1.0032e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      55 1.0 3.4657e-02 3.6 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 2.3693e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 1.5398e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       2 1.0 3.8430e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       3 1.0 8.3091e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 2.3648e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     634 1.0 8.8177e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      2412 1.0 1.8183e+02 1.2 6.97e+11 1.2 2.9e+06 1.0e+05 1.5e+01 10 45  3  3  0  26 77 13  8  0 2970669
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 2.3315e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    4824 1.0 2.5620e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   4  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      16 1.0 1.2274e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
GlobalKernel: generate loopy      16 0.0 1.4982e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      16 0.0 8.7052e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      16 1.0 1.3876e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.load      16 1.0 1.3875e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      16 1.0 9.5145e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.make_so      16 1.0 9.3450e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
ParLoopRednBegin    2412 1.0 8.1606e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      2412 1.0 6.8160e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 9.5011e-04 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 4.8798e+00 1.0 6.87e+07 1.1 8.5e+04 4.5e+04 1.2e+01  0  0  0  0  0   1  0  0  0  0 11183
firedrake.interpolation.interpolate      11 1.0 4.4898e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      11 1.0 5.9617e+00 1.0 7.12e+07 1.1 9.5e+04 4.0e+04 3.4e+01  0  0  0  0  0   1  0  0  0  0  9479
firedrake.formmanipulation.split_form      12 1.0 4.3246e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      12 1.0 2.2652e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      11 1.0 1.6402e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       6 1.2 1.0072e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     614 1.0 4.1163e-01 2.4 0.00e+00 0.0 2.9e+06 1.0e+05 2.0e+00  0  0  3  3  0   0  0 13  8  0    -0
Parloop_Cells_wrap_expression_kernel      22 1.0 5.4276e+00 1.0 7.12e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0 10412
firedrake.halo.Halo.global_to_local_end     614 1.0 1.4614e+01 171.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.function.Function.assign     314 1.0 1.8517e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     313 1.0 1.7721e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.2259e-04 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate     154 1.0 1.7448e-03 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 6.0723e-05 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.4689e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.9406e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.2236e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 7.2745e+00 1.0 0.00e+00 0.0 2.8e+04 4.3e+05 2.3e+01  0  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 7.0282e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.7728e-04 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.1250e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.1249e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
CreateSparsity         2 1.0 4.0806e+00 1.1 0.00e+00 0.0 2.4e+04 2.6e+05 1.8e+01  0  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         2 1.0 5.5404e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      75 1.0 1.6177e+03 1.0 1.52e+12 1.1 8.9e+07 1.0e+05 1.2e+04 96 100 99 100 98 Multiple stages 736486
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 3.2887e-01 1207.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 1.7926e-05 3.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 3.2882e-01 1446.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 3.2878e-01 1654.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     600 1.0 8.6270e+00 1.5 6.94e+10 1.1 0.0e+00 0.0e+00 0.0e+00  0  5  0  0  0   1  8  0  0  0 6383760
Parloop_Cells_wrap_form0_exterior_facet_top_integral     600 1.0 9.9997e-01 1.0 9.02e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  7158
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral     600 1.0 1.2565e+00 1.1 6.49e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 27441
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     600 1.0 5.7893e+00 1.2 6.66e+10 1.1 0.0e+00 0.0e+00 0.0e+00  0  4  0  0  0   1  8  0  0  0 9136552
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     600 1.0 1.1847e+01 1.3 1.36e+11 1.3 0.0e+00 0.0e+00 0.0e+00  1  9  0  0  0   2 15  0  0  0 8597779
firedrake.halo.Halo.local_to_global_begin     300 1.0 1.1449e-01 9.8 0.00e+00 0.0 1.4e+06 1.1e+05 0.0e+00  0  0  2  2  0   0  0  6  4  0    -0
firedrake.halo.Halo.local_to_global_end     300 1.0 2.9936e+00 57.0 2.92e+07 2.7 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  6334
Parloop_Cells_wrap_form00_cell_integral     450 1.0 3.1853e+01 1.5 9.71e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   4 11  0  0  0 2419720
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     450 1.0 2.0121e+00 1.8 4.96e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 13087
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     450 1.0 3.6637e+01 1.2 1.28e+11 1.1 0.0e+00 0.0e+00 0.0e+00  2  9  0  0  0   5 15  0  0  0 2783268
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     450 1.0 7.9578e+01 1.3 2.01e+11 1.3 0.0e+00 0.0e+00 0.0e+00  4 13  0  0  0  11 22  0  0  0 1899559
firedrake.dmhooks.get_function_space       1 1.0 1.6360e-03 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 5.2248e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0       77 1.0 6.9196e+01 1.0 2.05e+08 54.1 0.0e+00 0.0e+00 2.0e+00  4  0  0  0  0  11  0  0  0  0   129
MGSetup Level 1       77 1.0 8.6395e+01 1.0 7.40e+10 1.1 3.7e+06 1.1e+05 1.6e+03  5  5  4  4 13  14  8 16 10 17 677394
firedrake.constant.Constant.assign      75 1.0 3.2064e-03 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided         76 1.0 6.0765e-02 3.0 0.00e+00 0.0 4.2e+05 4.0e+00 7.6e+01  0  0  0  0  1   0  0  1  0  3    -0
SFSetGraph            76 1.0 7.7400e-03 4.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               76 1.0 7.1969e-02 2.3 0.00e+00 0.0 8.5e+05 2.0e+02 7.6e+01  0  0  1  0  1   0  0  1  0  3    -0
SFPack             18200 1.0 4.0203e+00 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           18200 1.0 1.4873e-02 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             7800 1.0 9.1219e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecSet             10399 1.0 2.1742e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAYPX            15600 1.0 2.2125e+01 2.3 8.46e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  1  0  0  0 303573
VecAXPBYCZ          5200 1.0 9.6542e+00 1.6 1.06e+10 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  2  0  0  0 869650
VecScatterBegin    18200 1.0 4.5776e+00 3.0 0.00e+00 0.0 6.4e+07 8.3e+04 0.0e+00  0  0 71 58  0   0  0 97 100  0    -0
VecScatterEnd      18200 1.0 7.4266e+01 28.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
MatMult            10400 1.0 4.4140e+02 1.2 3.00e+11 1.1 4.9e+07 1.1e+05 0.0e+00 24 20 55 58  0  38 48 75 100  0 538983
MatMultAdd          2600 1.0 1.3281e+01 1.2 6.35e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 379285
MatMultTranspose    2600 1.0 1.0241e+01 2.3 6.35e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 491878
MatSolve           13000 1.0 6.6806e+02 1.2 2.92e+11 1.1 1.7e+07 7.0e+02 3.8e+02 36 19 19  0  3  57 47 25  0 13 344948
MatResidual         2600 1.0 1.1928e+02 1.4 7.61e+10 1.1 1.2e+07 1.1e+05 0.0e+00  6  5 14 15  0  10 12 19 25  0 505686
PCSetUpOnBlocks     5200 1.0 6.6377e-02 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply            13000 1.0 6.6831e+02 1.2 2.92e+11 1.1 1.7e+07 7.0e+02 3.8e+02 36 19 19  0  3  57 47 25  0 13 344823
PCApplyOnBlocks    10400 1.0 4.6839e+02 1.3 2.91e+11 1.1 0.0e+00 0.0e+00 0.0e+00 23 19  0  0  0  37 47  0  0  0 491085
KSPSolve            7800 1.0 9.7455e+02 1.1 5.35e+11 1.1 5.4e+07 7.4e+04 3.0e+03 55 36 60 44 24  88 86 81 75 100 434201
MGSmooth Level 0    2600 1.0 2.2577e+02 1.1 1.31e+10 89.7 1.7e+07 7.0e+02 3.0e+03 12  0 19  0 24  19  0 25  0 100  1895
MGSmooth Level 1    5200 1.0 7.7520e+02 1.1 5.34e+11 1.1 3.7e+07 1.1e+05 0.0e+00 43 35 41 44  0  69 86 56 75  0 545310
MGResid Level 1     2600 1.0 1.1929e+02 1.4 7.61e+10 1.1 1.2e+07 1.1e+05 0.0e+00  6  5 14 15  0  10 12 19 25  0 505627
MGInterp Level 1    5200 1.0 2.2838e+01 1.4 1.27e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 441136
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   160            160
              Viewer     3              3
           Index Set  2676           2676
   IS L to G Mapping     7              7
             Section    90             90
   Star Forest Graph    82            158
              Vector   449            449
              Matrix    28             28
      Preconditioner     6              6
       Krylov Solver     5              5
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

           Index Set   152            152
   Star Forest Graph    76              0
              Vector    76             76
========================================================================================================================
Average time to get PetscTime(): 2.54e-08
Average time for MPI_Barrier(): 7.747e-06
Average time for zero size MPI_Send(): 2.15622e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murr_horiz/vlumping_inexact_snapshot_lag3/h8.profile # (source: code)
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

