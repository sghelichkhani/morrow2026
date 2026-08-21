****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0621.gadi.nci.org.au with 832 processes, by sg8812 on Fri Aug 21 00:01:46 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           1.936e+03     1.000   1.936e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                1.632e+12     1.129   1.541e+12  1.282e+15
Flops/sec:            8.429e+08     1.129   7.959e+08  6.622e+11
MPI Msg Count:        2.183e+05     3.926   1.161e+05  9.658e+07
MPI Msg Len (bytes):  1.479e+10     2.695   9.964e+04  9.623e+12
MPI Reductions:       1.623e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 9.1948e+02  47.5%  8.1783e+14  63.8%  3.043e+07  31.5%  1.534e+05       48.5%  1.264e+04  77.9%
 1:        MG Apply: 1.0162e+03  52.5%  4.6393e+14  36.2%  6.614e+07  68.5%  7.492e+04       51.5%  3.569e+03  22.0%

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

BuildTwoSided       1170 1.0 5.8849e+01 2.6 0.00e+00 0.0 6.5e+05 4.0e+00 1.2e+03  2  0  1  0  7   5  0  2  0  9    -0
BuildTwoSidedF      1131 1.0 5.8849e+01 2.6 0.00e+00 0.0 1.1e+06 1.3e+06 1.1e+03  2  0  1 14  7   5  0  4 30  9    -0
SFSetGraph            42 1.0 5.7380e-03 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               39 1.0 4.4738e-02 2.4 0.00e+00 0.0 2.1e+05 2.7e+03 3.9e+01  0  0  0  0  0   0  0  1  0  0    -0
SFBcastBegin         719 1.0 3.6775e-01 3.0 0.00e+00 0.0 3.3e+06 9.5e+04 0.0e+00  0  0  3  3  0   0  0 11  7  0    -0
SFBcastEnd           719 1.0 1.4386e+01 72.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFReduceBegin        311 1.0 9.5304e-02 14.2 0.00e+00 0.0 1.5e+06 1.0e+05 0.0e+00  0  0  2  2  0   0  0  5  3  0    -0
SFReduceEnd          311 1.0 3.6547e+00 85.0 2.92e+07 2.7 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  5188
SFFetchOpBegin         2 1.0 4.0210e-05 12.7 0.00e+00 0.0 7.1e+03 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 1.5724e-03 100.8 0.00e+00 0.0 7.1e+03 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 3.4013e-03 3.0 0.00e+00 0.0 5.6e+03 1.3e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         21 1.0 3.9362e-02 1.4 0.00e+00 0.0 1.8e+05 2.7e+02 2.4e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           21 1.0 1.2075e-02 6.2 0.00e+00 0.0 8.2e+04 1.6e+02 2.1e+01  0  0  0  0  0   0  0  0  0  0    -0
SFPack              5951 1.0 2.0486e+00 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            5953 1.0 1.8437e-01 6.5 2.92e+07 2.7 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 102846
VecDot               225 1.0 1.0474e+00 3.9 1.83e+08 1.1 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  1   0  0  0  0  2 138738
VecMDot             4694 1.0 7.9655e+01 2.6 2.23e+10 1.1 0.0e+00 0.0e+00 4.7e+03  3  1  0  0 29   6  2  0  0 37 222330
VecNorm             5669 1.0 1.7830e+01 2.2 4.61e+09 1.1 0.0e+00 0.0e+00 5.7e+03  1  0  0  0 35   1  0  0  0 45 205343
VecScale            5144 1.0 1.5406e+00 1.2 2.09e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 1078159
VecCopy             1800 1.0 2.4053e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               900 1.0 7.4161e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              450 1.0 7.5024e-01 1.3 3.66e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 387371
VecWAXPY             225 1.0 4.3713e-01 1.2 9.15e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 166210
VecMAXPY            5144 1.0 3.3547e+01 1.1 2.61e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  2  0  0  0   3  3  0  0  0 618271
VecScatterBegin     4919 1.0 1.9287e+00 2.6 0.00e+00 0.0 2.3e+07 1.1e+05 0.0e+00  0  0 24 26  0   0  0 77 53  0    -0
VecScatterEnd       4919 1.0 2.8990e+01 29.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecReduceArith       450 1.0 3.3792e-01 2.5 3.66e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 860019
VecReduceComm        225 1.0 2.8529e-01 10.8 0.00e+00 0.0 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  1   0  0  0  0  2    -0
VecNormalize        2475 1.0 1.0714e+01 2.1 3.02e+09 1.1 0.0e+00 0.0e+00 2.5e+03  0  0  0  0 15   1  0  0  0 20 223780
MatMult             4919 1.0 2.0438e+02 1.2 1.42e+11 1.1 2.3e+07 1.1e+05 0.0e+00 10  9 24 26  0  21 14 77 53  0 550583
MatSolve            2475 1.0 9.8724e+01 1.2 6.93e+10 1.1 0.0e+00 0.0e+00 0.0e+00  5  4  0  0  0  10  7  0  0  0 554475
MatLUFactorSym         1 1.0 2.9932e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum       450 1.0 2.1362e+02 1.0 5.75e+10 1.1 0.0e+00 0.0e+00 0.0e+00 11  3  0  0  0  23  5  0  0  0 209930
MatILUFactorSym        1 1.0 1.5053e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin    1586 1.0 6.2316e+01 2.4 0.00e+00 0.0 1.1e+06 1.3e+06 1.1e+03  2  0  1 14  7   5  0  4 30  9    -0
MatAssemblyEnd      1586 1.0 1.1196e+01 11.5 2.43e+08 0.0 1.9e+04 1.3e+04 1.7e+01  0  0  0  0  0   1  0  0  0  0  7622
MatGetRowIJ            1 1.0 6.4420e-06 54.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         1 1.0 5.9864e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       450 1.0 8.0649e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
MatTranspose           2 1.0 1.4180e-02 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 1.2488e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        450 1.0 5.0236e+00 1.4 6.59e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  1  0  0  0 1039911
MatPtAPSymbolic        1 1.0 2.3448e-01 1.0 0.00e+00 0.0 1.4e+04 1.8e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       225 1.0 3.8993e+01 1.0 2.63e+10 1.1 1.1e+06 3.2e+05 2.3e+02  2  2  1  4  1   4  3  4  7  2 535600
MatGetLocalMat       225 1.0 1.6881e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        225 1.0 8.0521e-01 1.8 0.00e+00 0.0 1.1e+06 3.2e+05 0.0e+00  0  0  1  4  0   0  0  4  7  0    -0
PCSetUp              225 1.0 4.7475e+02 1.0 2.43e+11 1.1 1.2e+07 1.3e+05 5.2e+03 25 15 12 15 32  52 23 39 32 41 404257
PCApply             2444 1.0 1.0402e+03 1.0 5.86e+11 1.1 6.6e+07 7.5e+04 3.6e+03 53 36 68 51 22 Multiple stages 445994
PCApplyOnBlocks     2475 1.0 9.8755e+01 1.2 6.93e+10 1.1 0.0e+00 0.0e+00 0.0e+00  5  4  0  0  0  10  7  0  0  0 554301
KSPSetUp             225 1.0 1.3754e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             225 1.0 1.1671e+03 1.0 6.87e+11 1.1 7.8e+07 8.0e+04 8.7e+03 60 42 80 64 53 Multiple stages 465770
KSPGMRESOrthog      4694 1.0 1.0567e+02 1.8 4.46e+10 1.1 0.0e+00 0.0e+00 4.7e+03  4  3  0  0 29   9  4  0  0 37 335203
DMPlexCreateGmsh       1 1.0 4.0673e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 1.2031e+01 29.5 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   1  0  0  0  0    -0
Mesh Partition         2 1.0 6.7944e-01 1.0 0.00e+00 0.0 5.9e+04 2.8e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         2 1.0 1.1142e-01 1.0 0.00e+00 0.0 2.1e+05 3.5e+02 1.1e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 7.7575e-02 16104.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 1.1612e-01 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 1.0062e-02 3.5 0.00e+00 0.0 1.1e+04 2.7e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 5.3719e-03 1.4 0.00e+00 0.0 5.6e+03 1.1e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 2.8853e-02 1.1 0.00e+00 0.0 6.4e+03 2.0e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp           1 1.0 2.2480e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 7.9452e-01 1.0 0.00e+00 0.0 3.4e+04 2.3e+03 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        2 1.0 1.3235e-02 1.1 0.00e+00 0.0 3.3e+04 6.7e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 7.9042e-02 1.0 0.00e+00 0.0 1.1e+05 3.7e+02 7.6e+01  0  0  0  0  0   0  0  0  0  1    -0
DMPlexDistOvrlp        1 1.0 2.7706e-02 1.0 0.00e+00 0.0 2.4e+05 9.7e+01 8.0e+01  0  0  0  0  0   0  0  1  0  1    -0
DMPlexDistField        3 1.0 1.2336e-02 1.2 0.00e+00 0.0 5.1e+04 1.4e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         4 1.0 1.8214e-01 20.2 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       4 1.0 1.8402e-02 614.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             75 1.0 1.8622e+03 1.0 1.63e+12 1.1 9.6e+07 1.0e+05 1.6e+04 96 100 99 100 97 Multiple stages 688263
SNESSetUp              1 1.0 6.0528e-05 7.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     300 1.0 3.2773e+01 1.2 2.71e+11 1.2 3.2e+06 1.1e+05 0.0e+00  2 16  3  4  0   3 26 11  7  0 6404274
SNESJacobianEval     225 1.0 1.7673e+02 1.0 4.26e+11 1.2 2.1e+06 6.9e+05 9.0e+02  9 26  2 15  6  19 40  7 32  7 1869019
SNESLineSearch       225 1.0 2.8170e+01 1.0 2.11e+11 1.2 3.2e+06 1.1e+05 9.0e+02  1 13  3  4  6   3 20 11  7  7 5799102
firedrake              1 1.0 1.9304e+03 1.0 1.63e+12 1.1 9.7e+07 1.0e+05 1.6e+04 100 100 100 100 100 Multiple stages 663980
firedrake.__init__       1 1.0 1.5242e+01 3.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
CreateMesh             1 1.0 1.2939e+01 9.8 0.00e+00 0.0 4.9e+05 2.6e+02 2.0e+02  0  0  1  0  1   1  0  2  0  2    -0
firedrake.mesh._from_gmsh       1 1.0 1.2032e+01 29.5 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 8.7983e-04 39.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 3.5680e-06 4.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 3.9235e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 7.8534e-04 3.9 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       9 1.0 2.2771e-02 1.2 0.00e+00 0.0 9.5e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      11 1.0 1.2587e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       9 1.0 2.1217e-02 1.2 0.00e+00 0.0 9.5e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       8 1.0 1.9962e-02 1.2 0.00e+00 0.0 9.5e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       8 1.0 1.9891e-02 1.2 0.00e+00 0.0 9.5e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      16 1.0 8.7700e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 4.0302e-03 1.5 0.00e+00 0.0 9.5e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 4.1324e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 1.0487e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      55 1.0 3.8391e-02 3.9 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 1.0091e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 1.6115e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       2 1.0 5.0530e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       3 1.0 8.3646e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 1.0039e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     634 1.0 8.9030e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      2412 1.0 1.8227e+02 1.2 6.97e+11 1.2 2.9e+06 1.0e+05 1.5e+01  8 42  3  3  0  18 66 10  7  0 2963427
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 9.7058e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    4824 1.0 2.4190e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      16 1.0 1.1588e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
GlobalKernel: generate loopy      16 0.0 1.4221e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      16 0.0 8.6181e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      16 1.0 1.3081e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.load      16 1.0 1.3080e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      16 1.0 8.7677e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.make_so      16 1.0 8.5879e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
ParLoopRednBegin    2412 1.0 8.4448e-03 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      2412 1.0 7.1588e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 9.1087e-04 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 4.8468e+00 1.0 6.87e+07 1.1 8.5e+04 4.5e+04 1.2e+01  0  0  0  0  0   1  0  0  0  0 11260
firedrake.interpolation.interpolate      11 1.0 4.4649e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      11 1.0 5.9820e+00 1.0 7.12e+07 1.1 9.5e+04 4.0e+04 3.4e+01  0  0  0  0  0   1  0  0  0  0  9447
firedrake.formmanipulation.split_form      12 1.0 4.7796e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      12 1.0 2.3593e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      11 1.0 1.6723e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       6 1.2 1.0335e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     614 1.0 4.1786e-01 2.5 0.00e+00 0.0 2.9e+06 1.0e+05 2.0e+00  0  0  3  3  0   0  0 10  7  0    -0
Parloop_Cells_wrap_expression_kernel      22 1.0 5.4171e+00 1.0 7.12e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0 10432
firedrake.halo.Halo.global_to_local_end     614 1.0 1.4121e+01 165.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.assign     314 1.0 1.7254e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     313 1.0 1.6383e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.6139e-04 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate     154 1.0 1.6363e-03 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 6.2864e-05 3.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.4753e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.9581e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.2182e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 7.3349e+00 1.0 0.00e+00 0.0 2.8e+04 4.3e+05 2.3e+01  0  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 6.9204e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.7964e-04 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.1897e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.1896e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
CreateSparsity         2 1.0 4.1141e+00 1.1 0.00e+00 0.0 2.4e+04 2.6e+05 1.8e+01  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         2 1.0 5.7546e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      75 1.0 1.8625e+03 1.0 1.63e+12 1.1 9.6e+07 1.0e+05 1.6e+04 96 100 99 100 98 Multiple stages 688157
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 3.7952e-01 1298.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 1.7782e-05 3.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 3.7947e-01 1540.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 3.7943e-01 1735.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     600 1.0 9.2406e+00 1.6 6.94e+10 1.1 0.0e+00 0.0e+00 0.0e+00  0  4  0  0  0   1  7  0  0  0 5959877
Parloop_Cells_wrap_form0_exterior_facet_top_integral     600 1.0 1.0168e+00 1.0 9.02e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  7040
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral     600 1.0 1.2389e+00 1.1 6.49e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 27831
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     600 1.0 5.6462e+00 1.2 6.66e+10 1.1 0.0e+00 0.0e+00 0.0e+00  0  4  0  0  0   1  6  0  0  0 9368042
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     600 1.0 1.1842e+01 1.3 1.36e+11 1.3 0.0e+00 0.0e+00 0.0e+00  1  8  0  0  0   1 12  0  0  0 8601296
firedrake.halo.Halo.local_to_global_begin     300 1.0 1.0517e-01 8.3 0.00e+00 0.0 1.4e+06 1.1e+05 0.0e+00  0  0  1  2  0   0  0  5  3  0    -0
firedrake.halo.Halo.local_to_global_end     300 1.0 3.6574e+00 80.0 2.92e+07 2.7 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  5185
Parloop_Cells_wrap_form00_cell_integral     450 1.0 3.2403e+01 1.5 9.71e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   3  9  0  0  0 2378622
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     450 1.0 2.0324e+00 1.8 4.96e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 12956
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     450 1.0 3.5692e+01 1.2 1.28e+11 1.1 0.0e+00 0.0e+00 0.0e+00  2  8  0  0  0   4 12  0  0  0 2856903
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     450 1.0 7.9589e+01 1.3 2.01e+11 1.3 0.0e+00 0.0e+00 0.0e+00  4 12  0  0  0   7 18  0  0  0 1899295
firedrake.dmhooks.get_function_space       1 1.0 1.2732e-03 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 5.1988e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0      225 1.0 1.8093e+02 1.0 5.84e+08 62.9 0.0e+00 0.0e+00 2.0e+00  9  0  0  0  0  20  0  0  0  0   144
MGSetup Level 1      225 1.0 2.5376e+02 1.0 2.16e+11 1.1 1.1e+07 1.1e+05 4.7e+03 13 13 11 12 29  28 21 35 24 37 673895
firedrake.constant.Constant.assign      75 1.0 3.2241e-03 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided        225 1.0 1.3201e-01 2.9 0.00e+00 0.0 1.2e+06 4.0e+00 2.2e+02  0  0  1  0  1   0  0  2  0  6    -0
SFSetGraph           225 1.0 1.4055e-02 4.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              225 1.0 1.6425e-01 2.3 0.00e+00 0.0 2.5e+06 2.0e+02 2.2e+02  0  0  3  0  1   0  0  4  0  6    -0
SFPack             17108 1.0 3.8862e+00 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           17108 1.0 1.5093e-02 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             7332 1.0 8.6778e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecSet              9775 1.0 2.0691e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAYPX            14664 1.0 2.0425e+01 2.3 7.95e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  1  0  0  0 309115
VecAXPBYCZ          4888 1.0 9.9578e+00 1.7 9.94e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  2  0  0  0 792540
VecScatterBegin    17108 1.0 4.3922e+00 2.9 0.00e+00 0.0 6.0e+07 8.3e+04 0.0e+00  0  0 62 51  0   0  0 91 100  0    -0
VecScatterEnd      17108 1.0 6.4368e+01 23.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
MatMult             9776 1.0 4.1709e+02 1.2 2.82e+11 1.1 4.6e+07 1.1e+05 0.0e+00 20 17 48 51  0  38 48 70 100  0 536171
MatMultAdd          2444 1.0 1.2564e+01 1.2 5.97e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 376892
MatMultTranspose    2444 1.0 1.0208e+01 2.7 5.97e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 463885
MatSolve           12220 1.0 6.2597e+02 1.2 2.75e+11 1.1 2.0e+07 6.1e+02 1.1e+03 30 17 20  0  7  57 47 30  0 32 346053
MatResidual         2444 1.0 1.1564e+02 1.3 7.15e+10 1.1 1.2e+07 1.1e+05 0.0e+00  5  4 12 13  0  10 12 18 25  0 490281
PCSetUpOnBlocks     4888 1.0 6.0901e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply            12220 1.0 6.2617e+02 1.2 2.75e+11 1.1 2.0e+07 6.1e+02 1.1e+03 30 17 20  0  7  57 47 30  0 32 345944
PCApplyOnBlocks     9776 1.0 4.3107e+02 1.3 2.74e+11 1.1 0.0e+00 0.0e+00 0.0e+00 19 17  0  0  0  37 47  0  0  0 501582
KSPSolve            7332 1.0 9.3000e+02 1.1 5.03e+11 1.1 5.5e+07 6.8e+04 3.6e+03 46 31 56 39 22  88 86 82 75 100 427700
MGSmooth Level 0    2444 1.0 2.2670e+02 1.2 1.22e+10 118.3 2.0e+07 6.1e+02 3.6e+03 11  0 20  0 22  20  0 30  0 100  1773
MGSmooth Level 1    4888 1.0 7.3568e+02 1.2 5.02e+11 1.1 3.5e+07 1.1e+05 0.0e+00 36 31 36 39  0  68 86 53 75  0 540128
MGResid Level 1     2444 1.0 1.1565e+02 1.3 7.15e+10 1.1 1.2e+07 1.1e+05 0.0e+00  5  4 12 13  0  10 12 18 25  0 490246
MGInterp Level 1    4888 1.0 2.1838e+01 1.4 1.19e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 433672
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   160            160
              Viewer     3              3
           Index Set  2671           2671
   IS L to G Mapping     7              7
             Section    90             90
   Star Forest Graph    82            307
              Vector  1009           1009
              Matrix    24             24
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

           Index Set   450            450
   Star Forest Graph   225              0
              Vector   225            225
========================================================================================================================
Average time to get PetscTime(): 2.59e-08
Average time for MPI_Barrier(): 6.5406e-06
Average time for zero size MPI_Send(): 2.14878e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murr_strong/vlumping_inexact/s8.profile # (source: code)
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

