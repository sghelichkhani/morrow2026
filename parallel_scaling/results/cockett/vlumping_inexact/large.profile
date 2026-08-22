****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/cockett_3d.py on a default named gadi-cpu-spr-0629.gadi.nci.org.au with 832 processes, by sg8812 on Fri Aug 21 23:19:29 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           1.276e+03     1.000   1.276e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                8.577e+11     1.169   7.995e+11  6.652e+14
Flops/sec:            6.719e+08     1.169   6.263e+08  5.211e+11
MPI Msg Count:        2.353e+05     5.278   1.190e+05  9.899e+07
MPI Msg Len (bytes):  1.570e+10     2.991   9.698e+04  9.600e+12
MPI Reductions:       1.299e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 4.5084e+02  35.3%  2.7555e+14  41.4%  2.270e+07  22.9%  1.274e+05       30.1%  9.459e+03  72.8%
 1:        MG Apply: 8.2565e+02  64.7%  3.8961e+14  58.6%  7.629e+07  77.1%  8.793e+04       69.9%  3.508e+03  27.0%

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

BuildTwoSided        501 1.0 2.1113e+01 5.1 0.00e+00 0.0 3.3e+05 4.0e+00 5.0e+02  1  0  0  0  4   3  0  1  0  5    -0
BuildTwoSidedF       461 1.0 2.1021e+01 5.5 0.00e+00 0.0 4.4e+05 5.1e+05 4.6e+02  1  0  0  2  4   2  0  2  8  5    -0
SFSetGraph            43 1.0 6.0412e-03 4.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               40 1.0 4.7926e-01 7.7 0.00e+00 0.0 2.2e+05 2.9e+03 4.0e+01  0  0  0  0  0   0  0  1  0  0    -0
SFBcastBegin         340 1.0 1.6607e-01 2.9 0.00e+00 0.0 1.5e+06 9.2e+04 0.0e+00  0  0  1  1  0   0  0  6  5  0    -0
SFBcastEnd           340 1.0 1.0394e+01 104.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        134 1.0 3.2832e-02 16.8 0.00e+00 0.0 6.2e+05 1.1e+05 0.0e+00  0  0  1  1  0   0  0  3  2  0    -0
SFReduceEnd          134 1.0 3.3982e+00 135.4 1.36e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2443
SFFetchOpBegin         2 1.0 2.2260e-05 11.0 0.00e+00 0.0 7.2e+03 9.8e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 9.5983e-04 63.6 0.00e+00 0.0 7.2e+03 9.8e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 3.1867e-03 4.2 0.00e+00 0.0 5.7e+03 7.2e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         22 1.0 2.4006e-02 1.4 0.00e+00 0.0 1.9e+05 1.6e+02 2.5e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           22 1.0 1.0852e-02 6.8 0.00e+00 0.0 8.2e+04 9.4e+01 2.2e+01  0  0  0  0  0   0  0  0  0  0    -0
SFPack              4601 1.0 1.5055e+00 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            4603 1.0 7.5746e-02 12.3 1.36e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 109597
VecDot                91 1.0 3.5358e-01 11.7 3.27e+07 1.1 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  1   0  0  0  0  1 74002
VecMDot             3963 1.0 5.1749e+01 3.5 1.71e+10 1.1 0.0e+00 0.0e+00 4.0e+03  2  2  0  0 31   6  5  0  0 42 264700
VecNorm             4428 1.0 9.3230e+00 3.0 1.59e+09 1.1 0.0e+00 0.0e+00 4.4e+03  0  0  0  0 34   1  0  0  0 47 136568
VecScale            4216 1.0 1.8288e-01 1.2 7.58e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 3314365
VecCopy              727 1.0 4.4535e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               435 1.0 1.4800e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              253 1.0 1.1254e-01 1.4 9.09e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 646399
VecWAXPY             162 1.0 1.2853e-01 1.6 2.91e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 181209
VecMAXPY            4216 1.0 1.8497e+01 1.2 1.85e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   4  5  0  0  0 802153
VecScatterBegin     4125 1.0 1.5461e+00 3.0 0.00e+00 0.0 2.0e+07 1.2e+05 0.0e+00  0  0 20 24  0   0  0 86 78  0    -0
VecScatterEnd       4125 1.0 2.0506e+01 42.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecReduceArith       182 1.0 3.3752e-02 1.8 6.54e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 1550468
VecReduceComm         91 1.0 6.6996e-02 4.2 0.00e+00 0.0 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  1   0  0  0  0  1    -0
VecNormalize        1001 1.0 3.3197e+00 3.0 5.40e+08 1.1 0.0e+00 0.0e+00 1.0e+03  0  0  0  0  8   0  0  0  0 11 130053
MatMult             4125 1.0 1.1603e+02 1.2 8.22e+10 1.1 2.0e+07 1.2e+05 0.0e+00  8 10 20 24  0  24 24 86 78  0 565452
MatSolve            1001 1.0 2.3678e+01 1.2 1.86e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  2  0  0  0   5  5  0  0  0 623595
MatLUFactorSym         1 1.0 2.1957e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum       182 1.0 4.9622e+01 1.1 1.95e+10 1.2 0.0e+00 0.0e+00 0.0e+00  4  2  0  0  0  11  5  0  0  0 303942
MatILUFactorSym        1 1.0 1.1510e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin     648 1.0 2.1231e+01 5.5 0.00e+00 0.0 4.4e+05 5.1e+05 4.6e+02  1  0  0  2  4   3  0  2  8  5    -0
MatAssemblyEnd       648 1.0 3.4494e+00 6.3 3.77e+07 0.0 1.9e+04 1.5e+04 1.7e+01  0  0  0  0  0   0  0  0  0  0  3760
MatGetRowIJ            1 1.0 6.8150e-06 60.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         1 1.0 2.6516e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       182 1.0 3.2018e+00 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
MatTranspose           2 1.0 9.3180e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 1.1902e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        182 1.0 1.3589e+00 1.2 2.62e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  1  0  0  0 1535588
MatPtAPSymbolic        1 1.0 1.9417e-01 1.0 0.00e+00 0.0 1.4e+04 2.5e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric        91 1.0 7.9717e+00 1.0 9.94e+09 1.1 4.4e+05 4.5e+05 9.6e+01  1  1  0  2  1   2  3  2  7  1 994649
MatGetLocalMat        91 1.0 4.1846e-01 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol         91 1.0 4.4807e-01 2.3 0.00e+00 0.0 4.4e+05 4.6e+05 0.0e+00  0  0  0  2  0   0  0  2  7  0    -0
PCSetUp               91 1.0 1.1322e+02 1.0 7.06e+10 1.1 4.8e+06 1.5e+05 2.1e+03  9  8  5  7 16  25 20 21 24 23 493299
PCApply             3053 1.0 8.3935e+02 1.0 5.01e+11 1.2 7.6e+07 8.8e+04 3.5e+03 65 59 77 70 27 Multiple stages 464185
PCApplyOnBlocks     1001 1.0 2.3691e+01 1.2 1.86e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  2  0  0  0   5  5  0  0  0 623250
KSPSetUp              91 1.0 1.5213e-02 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve              91 1.0 9.5032e+02 1.0 5.97e+11 1.2 9.1e+07 9.2e+04 9.8e+03 74 70 92 88 75 Multiple stages 490513
KSPGMRESOrthog      3963 1.0 6.7300e+01 2.2 3.42e+10 1.1 0.0e+00 0.0e+00 4.0e+03  3  4  0  0 31  10 10  0  0 42 407075
Mesh Partition         2 1.0 5.4072e-01 1.0 0.00e+00 0.0 5.9e+04 1.6e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         2 1.0 7.5708e-02 1.0 0.00e+00 0.0 2.0e+05 2.1e+02 1.1e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 2.5655e-02 5014.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 6.2904e-02 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 6.0915e-03 1.3 0.00e+00 0.0 1.1e+04 1.5e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 2.6718e-03 1.9 0.00e+00 0.0 5.7e+03 5.8e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 1.1791e-02 1.2 0.00e+00 0.0 6.5e+03 9.8e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 6.0770e-01 1.0 0.00e+00 0.0 3.2e+04 1.1e+03 6.3e+01  0  0  0  0  0   0  0  0  0  1    -0
DMPlexDistCones        2 1.0 8.9087e-03 1.1 0.00e+00 0.0 3.4e+04 3.6e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 5.0622e-02 1.0 0.00e+00 0.0 9.3e+04 2.3e+02 7.6e+01  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistOvrlp        1 1.0 2.8315e-02 1.1 0.00e+00 0.0 2.3e+05 9.1e+01 8.0e+01  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistField        3 1.0 1.0476e-02 1.2 0.00e+00 0.0 5.2e+04 1.0e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         1 1.0 1.6674e-04 1.3 0.00e+00 0.0 2.4e+04 5.9e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         3 1.0 1.5229e-02 5.5 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       3 1.0 5.3082e-03 363.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexGenerate         1 1.0 1.8831e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             30 1.0 1.2145e+03 1.0 8.58e+11 1.2 9.8e+07 9.7e+04 1.3e+04 95 100 99 100 98 Multiple stages 547695
SNESSetUp              1 1.0 3.6327e-05 6.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     121 1.0 4.5678e+01 1.1 7.85e+10 1.3 1.3e+06 1.1e+05 1.0e+00  3  9  1  2  0  10 21  6  5  0 1272506
SNESJacobianEval      91 1.0 1.0164e+02 1.0 1.13e+11 1.3 8.6e+05 3.0e+05 3.6e+02  8 13  1  3  3  23 30  4  9  4 820961
SNESLineSearch        91 1.0 2.4070e+01 1.0 6.10e+10 1.3 1.3e+06 1.2e+05 3.6e+02  2  7  1  2  3   5 16  6  5  4 1882275
firedrake              1 1.0 1.2623e+03 1.0 8.58e+11 1.2 9.9e+07 9.7e+04 1.3e+04 99 100 100 100 100 Multiple stages 526931
firedrake.__init__       1 1.0 3.1513e+01 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   5  0  0  0  0    -0
firedrake.utility_meshes.RectangleMesh       1 1.0 1.6768e+01 22.4 0.00e+00 0.0 5.0e+05 1.6e+02 1.9e+02  1  0  1  0  1   2  0  2  0  2    -0
CreateMesh             1 1.0 7.2990e-01 1.0 0.00e+00 0.0 5.0e+05 1.6e+02 1.9e+02  0  0  1  0  1   0  0  2  0  2    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 1.6604e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 2.1700e-06 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 3.5958e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 5.9844e-04 5.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       6 1.0 3.4518e-02 1.1 0.00e+00 0.0 3.4e+04 7.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element       7 1.0 7.8928e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       6 1.0 3.3312e-02 1.1 0.00e+00 0.0 3.4e+04 7.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       5 1.0 3.2394e-02 1.1 0.00e+00 0.0 3.4e+04 7.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       5 1.0 3.2346e-02 1.1 0.00e+00 0.0 3.4e+04 7.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      10 1.0 1.3474e-02 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 1.5642e-02 1.7 0.00e+00 0.0 3.4e+04 7.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 3.4487e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 1.1217e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      17 1.0 6.6843e-02 19.4 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 4.0130e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 9.6346e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       1 1.0 3.9370e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       3 1.0 8.1607e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 4.0088e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     248 1.0 4.8686e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      1063 1.0 1.3998e+02 1.2 1.91e+11 1.3 1.2e+06 1.1e+05 6.0e+00 10 21  1  1  0  29 51  5  5  0 1011208
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 3.9755e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    2126 1.0 3.7834e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   8  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      13 1.0 2.2950e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   5  0  0  0  0    -0
GlobalKernel: generate loopy      13 0.0 2.7111e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      13 0.0 1.9122e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      13 1.0 1.4882e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
pyop2.compilation.load      13 1.0 1.4881e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      13 1.0 1.0166e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.make_so      13 1.0 1.0052e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
ParLoopRednBegin    1063 1.0 3.1376e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      1063 1.0 2.6759e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 4.7140e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate       1 1.0 1.1668e+00 1.1 2.70e+06 1.1 1.9e+04 2.1e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0  1848
firedrake.interpolation.interpolate       2 1.0 6.6439e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble       2 1.0 2.1803e+00 1.0 4.22e+06 1.1 2.9e+04 1.4e+04 2.4e+01  0  0  0  0  0   0  0  0  0  0  1550
firedrake.formmanipulation.split_form       3 1.0 2.7885e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split       3 1.0 4.8772e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)       2 1.0 5.9851e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       2 1.0 3.9933e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     243 1.0 6.8965e-01 6.9 0.00e+00 0.0 1.2e+06 1.1e+05 2.0e+00  0  0  1  1  0   0  0  5  5  0    -0
Parloop_Cells_wrap_expression_kernel       4 1.0 2.0109e+00 1.0 4.22e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1680
firedrake.halo.Halo.global_to_local_end     243 1.0 1.0118e+01 277.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.function.Function.assign      95 1.0 3.2220e-01 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      94 1.0 2.9589e-01 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.6683e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      34 1.0 8.9741e-04 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 3.9297e-05 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 8.6729e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 5.1269e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 8.0684e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 9.7399e+00 1.0 0.00e+00 0.0 2.9e+04 6.4e+05 2.3e+01  1  0  0  0  0   2  0  0  1  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 2.2110e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 3.0118e-04 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 1.1550e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 1.1550e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
CreateSparsity         2 1.0 2.9927e+00 1.4 0.00e+00 0.0 2.4e+04 3.7e+05 1.8e+01  0  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         2 1.0 4.5688e-01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      30 1.0 1.2145e+03 1.0 8.58e+11 1.2 9.8e+07 9.7e+04 1.3e+04 95 100 99 100 98 Multiple stages 547666
firedrake.mesh.AbstractMeshTopology.measure_set      10 1.0 1.1797e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       8 1.0 1.7973e-05 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       8 1.0 6.1969e-05 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     242 1.0 8.5765e+00 1.2 1.68e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   2  5  0  0  0 1566391
Parloop_Cells_wrap_form0_exterior_facet_bottom_integral     242 1.0 2.1668e+00 1.0 2.89e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 10666
Parloop_Cells_wrap_form0_exterior_facet_top_integral     242 1.0 1.9039e+00 1.0 2.89e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 12139
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     242 1.0 1.0485e+01 1.1 1.73e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   2  5  0  0  0 1317434
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     242 1.0 1.7951e+01 1.4 4.43e+10 1.5 0.0e+00 0.0e+00 0.0e+00  1  5  0  0  0   3 11  0  0  0 1717045
firedrake.halo.Halo.local_to_global_begin     121 1.0 3.5938e-02 8.1 0.00e+00 0.0 5.7e+05 1.2e+05 0.0e+00  0  0  1  1  0   0  0  3  2  0    -0
firedrake.halo.Halo.local_to_global_end     121 1.0 3.3994e+00 128.6 1.36e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2442
Parloop_Cells_wrap_form00_cell_integral     182 1.0 1.7027e+01 1.2 2.30e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   3  7  0  0  0 1080931
Parloop_Cells_wrap_form00_exterior_facet_bottom_integral     182 1.0 2.4995e+00 1.0 2.64e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  8447
Parloop_Cells_wrap_form00_exterior_facet_top_integral     182 1.0 2.2307e+00 1.0 2.64e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  9465
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     182 1.0 3.6368e+01 1.5 2.43e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  3  0  0  0   6  7  0  0  0 533846
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     182 1.0 4.6009e+01 1.5 6.55e+10 1.5 0.0e+00 0.0e+00 0.0e+00  3  7  0  0  0   9 17  0  0  0 990400
firedrake.dmhooks.get_function_space       1 1.0 1.4273e-03 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 5.8249e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0       91 1.0 4.1462e+01 1.0 2.47e+08 83.4 0.0e+00 0.0e+00 2.0e+00  3  0  0  0  0   9  0  0  0  0   183
MGSetup Level 1       91 1.0 6.2606e+01 1.0 6.06e+10 1.1 4.3e+06 1.2e+05 1.9e+03  5  7  4  5 15  14 17 19 17 20 765290

--- Event Stage 1: MG Apply

BuildTwoSided         91 1.0 4.6391e-02 3.0 0.00e+00 0.0 4.8e+05 4.0e+00 9.1e+01  0  0  0  0  1   0  0  1  0  3    -0
SFSetGraph            91 1.0 3.1518e-03 7.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               91 1.0 5.4708e-02 2.5 0.00e+00 0.0 9.6e+05 8.9e+01 9.1e+01  0  0  1  0  1   0  0  1  0  3    -0
SFPack             21371 1.0 4.3342e+00 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           21371 1.0 1.5744e-02 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             9159 1.0 3.0021e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet             12211 1.0 9.9968e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAYPX            18318 1.0 9.7191e+00 1.8 4.39e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   1  1  0  0  0 361291
VecAXPBYCZ          6106 1.0 4.3725e+00 1.4 5.49e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   0  1  0  0  0 1003837
VecScatterBegin    21371 1.0 4.9036e+00 2.9 0.00e+00 0.0 7.4e+07 9.1e+04 0.0e+00  0  0 75 70  0   0  0 97 100  0    -0
VecScatterEnd      21371 1.0 5.3972e+01 37.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
MatMult            12212 1.0 3.4411e+02 1.2 2.43e+11 1.1 5.8e+07 1.2e+05 0.0e+00 25 29 58 70  0  39 50 76 100  0 564467
MatMultAdd          3053 1.0 8.7746e+00 1.2 4.39e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   1  1  0  0  0 400183
MatMultTranspose    3053 1.0 7.1074e+00 3.0 4.39e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  1  0  0  0 494053
MatSolve           15265 1.0 5.0315e+02 1.1 2.39e+11 1.2 1.9e+07 3.2e+02 4.6e+02 37 27 19  0  4  58 46 24  0 13 358652
MatResidual         3053 1.0 8.9894e+01 1.3 6.14e+10 1.1 1.4e+07 1.2e+05 0.0e+00  6  7 15 17  0  10 13 19 25  0 545064
PCSetUpOnBlocks     6106 1.0 5.6447e-02 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply            15265 1.0 5.0339e+02 1.1 2.39e+11 1.2 1.9e+07 3.2e+02 4.6e+02 37 27 19  0  4  58 46 24  0 13 358481
PCApplyOnBlocks    12212 1.0 3.0433e+02 1.2 2.27e+11 1.1 0.0e+00 0.0e+00 0.0e+00 22 27  0  0  0  34 46  0  0  0 591912
KSPSolve            9159 1.0 7.4808e+02 1.0 4.31e+11 1.2 6.2e+07 8.1e+04 3.5e+03 57 50 62 52 27  88 86 81 75 100 445932
MGSmooth Level 0    3053 1.0 2.1646e+02 1.1 1.24e+10 93.8 1.9e+07 3.2e+02 3.5e+03 15  0 19  0 27  24  0 24  0 100  1471
MGSmooth Level 1    6106 1.0 5.5621e+02 1.1 4.19e+11 1.1 4.3e+07 1.2e+05 0.0e+00 42 50 44 52  0  65 86 57 75  0 599195
MGResid Level 1     3053 1.0 8.9904e+01 1.3 6.14e+10 1.1 1.4e+07 1.2e+05 0.0e+00  6  7 15 17  0  10 13 19 25  0 545002
MGInterp Level 1    6106 1.0 1.5349e+01 1.5 8.78e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 457538
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container    69             69
              Viewer     1              1
           Index Set  2673           2673
   IS L to G Mapping     5              5
             Section    76             76
   Star Forest Graph    78            169
              Vector   484            484
              Matrix    24             24
      Preconditioner     6              6
       Krylov Solver     5              5
     DMKSP interface     1              1
                SNES     1              1
              DMSNES     1              1
      SNESLineSearch     1              1
    Distributed Mesh    14             14
            DM Label    50             50
    GraphPartitioner     3              3
     Discrete System    21             21
           Weak Form    21             21

--- Event Stage 1: MG Apply

           Index Set   182            182
   Star Forest Graph    91              0
              Vector    91             91
========================================================================================================================
Average time to get PetscTime(): 2.57e-08
Average time for MPI_Barrier(): 6.7604e-06
Average time for zero size MPI_Send(): 2.24611e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/cockett/vlumping_inexact/large.profile # (source: environment)
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

