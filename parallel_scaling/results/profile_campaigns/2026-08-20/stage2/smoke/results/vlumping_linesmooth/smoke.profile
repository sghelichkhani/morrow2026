****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026-profile-stage2-20260820T053301Z/source/morrow/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0137.gadi.nci.org.au with 104 processes, by sg8812 on Thu Aug 20 15:50:22 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           8.272e+01     1.000   8.272e+01
Objects:              0.000e+00     0.000   0.000e+00
Flops:                1.334e+10     1.132   1.265e+10  1.316e+12
Flops/sec:            1.612e+08     1.132   1.529e+08  1.591e+10
MPI Msg Count:        4.583e+03     5.161   2.116e+03  2.201e+05
MPI Msg Len (bytes):  1.238e+08     2.539   4.114e+04  9.052e+09
MPI Reductions:       8.930e+02     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 8.0202e+01  97.0%  1.1776e+12  89.5%  1.507e+05  68.5%  4.821e+04       80.3%  8.140e+02  91.2%
 1:        MG Apply: 2.5133e+00   3.0%  1.3811e+11  10.5%  6.936e+04  31.5%  2.577e+04       19.7%  6.000e+01   6.7%

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

BuildTwoSided        300 1.1 7.5302e-01 6.7 0.00e+00 0.0 1.5e+04 4.0e+00 7.6e+01  0  0  7  0  9   0  0 10  0  9    -0
BuildTwoSidedF        36 1.0 7.4634e-01 5.1 0.00e+00 0.0 4.3e+03 6.6e+05 3.6e+01  0  0  2 31  4   1  0  3 39  4    -0
SFSetGraph           267 1.1 7.0883e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              264 1.1 2.4964e-02 1.3 0.00e+00 0.0 2.5e+04 1.4e+03 4.0e+01  0  0 11  0  4   0  0 16  0  5    -0
SFBcastBegin         135 1.0 2.6016e-02 3.7 0.00e+00 0.0 5.5e+04 1.4e+04 0.0e+00  0  0 25  8  0   0  0 37 10  0    -0
SFBcastEnd           135 1.0 3.8639e-01 26.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFReduceBegin         19 1.0 7.2142e-03 19.2 0.00e+00 0.0 9.0e+03 2.6e+04 0.0e+00  0  0  4  3  0   0  0  6  3  0    -0
SFReduceEnd           19 1.0 2.8882e-02 8.4 4.03e+05 2.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1020
SFFetchOpBegin         2 1.0 2.2344e-05 6.2 0.00e+00 0.0 8.1e+02 1.1e+02 0.0e+00  0  0  0  0  0   0  0  1  0  0    -0
SFFetchOpEnd           2 1.0 2.6365e-04 17.9 0.00e+00 0.0 8.1e+02 1.1e+02 0.0e+00  0  0  0  0  0   0  0  1  0  0    -0
SFCreateEmbed          2 1.0 9.1846e-04 1.7 0.00e+00 0.0 6.4e+02 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         21 1.0 9.0760e-03 1.3 0.00e+00 0.0 2.1e+04 2.8e+02 2.4e+01  0  0  9  0  3   0  0 14  0  3    -0
SFSectionSF           21 1.0 3.6212e-03 2.8 0.00e+00 0.0 9.9e+03 1.6e+02 2.1e+01  0  0  4  0  2   0  0  7  0  3    -0
SFPack             29952 1.1 2.1990e-02 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           29954 1.1 6.7853e-03 4.9 4.03e+05 2.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  4340
VecDot                 6 1.0 7.9564e-03 5.1 2.42e+06 1.1 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  1   0  0  0  0  1 30225
VecMDot               90 1.0 5.3178e-01 4.8 1.77e+08 1.1 0.0e+00 0.0e+00 9.0e+01  0  1  0  0 10   0  1  0  0 11 33163
VecNorm              116 1.0 3.2216e-01 1.5 4.68e+07 1.1 0.0e+00 0.0e+00 1.2e+02  0  0  0  0 13   0  0  0  0 14 14432
VecScale             102 1.0 9.3178e-03 1.2 2.06e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 219376
VecCopy               48 1.0 2.6144e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               156 1.0 5.8724e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY               12 1.0 7.9790e-03 1.3 4.84e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 60279
VecWAXPY               6 1.0 4.9976e-03 1.1 1.21e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 24060
VecMAXPY             102 1.0 2.1887e-01 1.1 2.14e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  2  0  0  0   0  2  0  0  0 97058
VecScatterBegin    29796 1.1 1.6631e-01 1.3 0.00e+00 0.0 5.1e+04 5.5e+04 0.0e+00  0  0 23 31  0   0  0 34 39  0    -0
VecScatterEnd      29796 1.1 2.3242e-01 17.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecReduceArith        12 1.0 3.4609e-03 1.8 4.84e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 138969
VecReduceComm          6 1.0 3.6991e-03 5.7 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  1   0  0  0  0  1    -0
VecNormalize          66 1.0 1.1772e-01 3.6 3.99e+07 1.1 0.0e+00 0.0e+00 6.6e+01  0  0  0  0  7   0  0  0  0  8 33706
MatMult               96 1.0 1.9134e+00 1.1 1.36e+09 1.1 5.1e+04 5.5e+04 0.0e+00  2 10 23 31  0   2 12 34 39  0 71005
MatSolve           14784 1.1 8.2844e-01 1.6 4.64e+08 1.1 0.0e+00 0.0e+00 0.0e+00  1  4  0  0  0   1  4  0  0  0 55624
MatLUFactorSym       225 1.1 2.8607e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum      1350 1.1 8.6629e-01 1.0 1.92e+08 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   1  2  0  0  0 22075
MatAssemblyBegin    1397 1.1 7.4761e-01 3.2 0.00e+00 0.0 4.3e+03 6.6e+05 3.6e+01  1  0  2 31  4   1  0  3 39  4    -0
MatAssemblyEnd      1397 1.1 4.7066e-01 1.6 3.05e+06 0.0 2.1e+03 6.9e+03 1.7e+01  0  0  1  0  2   0  0  1  0  2   282
MatGetRowIJ          224 1.1 3.9574e-05 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats       6 1.0 4.3580e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.2e+02  1  0  0  0 25   1  0  0  0 28    -0
MatGetOrdering       224 1.1 2.5428e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries        12 1.0 9.7069e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatTranspose           2 1.0 5.8071e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 5.7823e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum         12 1.0 5.4945e-02 1.1 8.66e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   0  1  0  0  0 156926
MatPtAPSymbolic        1 1.0 8.9391e-02 1.0 0.00e+00 0.0 1.6e+03 9.2e+04 7.0e+00  0  0  1  2  1   0  0  1  2  1    -0
MatPtAPNumeric         6 1.0 3.1468e-01 1.0 3.46e+08 1.1 3.8e+03 1.2e+05 1.1e+01  0  3  2  5  1   0  3  2  6  1 109512
MatGetLocalMat         6 1.0 2.5506e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol          6 1.0 2.3263e-02 1.8 0.00e+00 0.0 4.3e+03 1.4e+05 0.0e+00  0  0  2  7  0   0  0  3  8  0    -0
PCSetUp                6 1.0 5.7380e+00 1.0 2.19e+09 1.1 3.9e+04 6.1e+04 4.0e+02  7 17 18 26 45   7 18 26 32 50 37951
PCApply               30 1.0 2.5893e+00 1.1 1.39e+09 1.1 6.9e+04 2.6e+04 6.0e+01  3 10 32 20  7   3 12 46 25  7 53339
PCApplyOnBlocks    14784 1.1 1.0528e+00 1.5 6.55e+08 1.1 0.0e+00 0.0e+00 0.0e+00  1  5  0  0  0   1  6  0  0  0 61880
KSPSetUp               6 1.0 1.0715e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve               6 1.0 3.2567e+00 1.0 1.94e+09 1.1 8.5e+04 3.1e+04 1.3e+02  4 15 39 30 14   4 16 57 37 15 59260
KSPGMRESOrthog        90 1.0 7.0794e-01 2.5 3.55e+08 1.1 0.0e+00 0.0e+00 9.0e+01  1  3  0  0 10   1  3  0  0 11 49822
DMPlexCreateGmsh       1 1.0 5.4096e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  1   0  0  0  0  1    -0
DMPlexCrFromFile       1 1.0 7.5112e-01 13.6 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  1   0  0  0  0  1    -0
Mesh Partition         2 1.0 7.5696e-02 1.0 0.00e+00 0.0 6.7e+03 2.9e+02 2.5e+01  0  0  3  0  3   0  0  4  0  3    -0
Mesh Migration         2 1.0 2.2168e-02 1.1 0.00e+00 0.0 2.4e+04 3.7e+02 1.1e+02  0  0 11  0 12   0  0 16  0 14    -0
DMPlexPartSelf         1 1.0 7.5151e-03 3450.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 1.1386e-02 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  1   0  0  0  0  1    -0
DMPlexPartLblSF        2 1.0 4.6669e-03 1.1 0.00e+00 0.0 1.3e+03 2.8e+02 2.0e+00  0  0  1  0  0   0  0  1  0  0    -0
DMPlexPartStrtSF       2 1.0 2.0515e-03 1.5 0.00e+00 0.0 6.4e+02 1.1e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 5.8166e-03 1.4 0.00e+00 0.0 7.5e+02 2.1e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp           1 1.0 2.6431e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistribute       1 1.0 9.8336e-02 1.0 0.00e+00 0.0 4.4e+03 2.2e+03 6.3e+01  0  0  2  0  7   0  0  3  0  8    -0
DMPlexDistCones        2 1.0 2.7513e-03 1.0 0.00e+00 0.0 3.8e+03 7.1e+02 4.0e+00  0  0  2  0  0   0  0  3  0  0    -0
DMPlexDistLabels       2 1.0 1.2796e-02 1.0 0.00e+00 0.0 1.3e+04 3.9e+02 7.6e+01  0  0  6  0  9   0  0  8  0  9    -0
DMPlexDistOvrlp        1 1.0 4.7686e-03 1.1 0.00e+00 0.0 2.7e+04 9.9e+01 8.0e+01  0  0 12  0  9   0  0 18  0 10    -0
DMPlexDistField        3 1.0 3.2593e-03 1.2 0.00e+00 0.0 5.8e+03 1.4e+02 8.0e+00  0  0  3  0  1   0  0  4  0  1    -0
DMPlexStratify         4 1.0 2.2583e-02 17.8 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       4 1.0 1.9755e-03 70.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve              2 1.0 3.0711e+01 1.0 1.33e+10 1.1 1.4e+05 5.6e+04 5.8e+02 37 100 66 89 65 Multiple stages 42732
SNESSetUp              1 1.0 5.6584e-05 7.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval       8 1.0 1.0215e+01 1.0 3.54e+09 1.1 1.1e+04 5.5e+04 0.0e+00 12 26  5  7  0  13 29  7  8  0 33921
SNESJacobianEval       6 1.0 1.1175e+01 1.0 5.56e+09 1.1 6.4e+03 3.6e+05 2.4e+01 14 41  3 25  3  14 46  4 32  3 48784
SNESLineSearch         6 1.0 3.4190e-01 1.0 2.75e+09 1.1 9.6e+03 5.5e+04 2.4e+01  0 20  4  6  3   0 23  6  7  3 788795
firedrake              1 1.0 8.0520e+01 1.0 1.33e+10 1.1 2.2e+05 4.1e+04 8.7e+02 97 100 100 100 97 Multiple stages 16340
firedrake.__init__       1 1.0 6.6993e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  8  0  0  0  0   8  0  0  0  0    -0
CreateMesh             1 1.0 8.9154e-01 4.6 0.00e+00 0.0 5.6e+04 2.7e+02 2.0e+02  1  0 26  0 22   1  0 37  0 24    -0
firedrake.mesh._from_gmsh       1 1.0 7.5177e-01 13.6 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  1   0  0  0  0  1    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 8.7268e-04 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 1.5420e-06 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 3.0645e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 6.1418e-04 4.5 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      10 1.0 2.7240e-02 1.1 0.00e+00 0.0 1.1e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  1  0  0    -0
firedrake.functionspace.make_scalar_element      12 1.0 1.6244e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      10 1.0 2.4639e-02 1.1 0.00e+00 0.0 1.1e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  1  0  0    -0
firedrake.functionspacedata.get_shared_data       9 1.0 2.3021e-02 1.1 0.00e+00 0.0 1.1e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  1  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       9 1.0 2.2933e-02 1.1 0.00e+00 0.0 1.1e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  1  0  0    -0
FunctionSpaceData: CreateElement      18 1.0 1.2446e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 2.2821e-03 1.1 0.00e+00 0.0 1.1e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  1  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 2.9958e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       8 1.0 1.2582e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      55 1.0 1.6399e-02 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 1.7318e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  2  0  0  0  0   2  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 1.7257e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       2 1.0 3.8340e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       3 1.0 7.7371e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 1.7275e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  2  0  0  0  0   2  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     196 1.0 3.6325e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute        76 1.0 2.6239e+01 1.0 9.13e+09 1.1 1.9e+04 3.9e+04 1.5e+01 31 68  9  8  2  32 76 13 10  2 34111
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 1.6927e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)     152 1.0 2.4191e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 29  0  0  0  0  30  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      16 1.0 1.0370e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 12  0  0  0  0  13  0  0  0  0    -0
GlobalKernel: generate loopy      16 0.0 1.2272e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      16 0.0 8.7078e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      16 1.0 1.3848e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 17  0  0  0  0  17  0  0  0  0    -0
pyop2.compilation.load      16 1.0 1.3847e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 17  0  0  0  0  17  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      16 1.0 8.7785e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 11  0  0  0  0  11  0  0  0  0    -0
pyop2.compilation.make_so      16 1.0 8.6502e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 10  0  0  0  0  11  0  0  0  0    -0
ParLoopRednBegin      76 1.0 5.2575e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd        76 1.0 1.9178e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 6.0286e-04 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 4.7433e+00 1.0 3.41e+07 1.1 9.7e+03 2.3e+04 1.2e+01  6  0  4  2  1   6  0  6  3  1   714
firedrake.interpolation.interpolate      11 1.0 3.8603e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      11 1.0 5.8115e+00 1.0 3.53e+07 1.1 1.1e+04 2.1e+04 3.4e+01  7  0  5  2  4   7  0  7  3  4   603
firedrake.formmanipulation.split_form      12 1.0 3.9881e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      12 1.0 1.7052e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      11 1.0 1.5360e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       6 1.0 9.9032e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin      30 1.0 2.7522e-02 1.5 0.00e+00 0.0 1.9e+04 3.9e+04 2.0e+00  0  0  9  8  0   0  0 13 10  0    -0
Parloop_Cells_wrap_expression_kernel      22 1.0 5.5097e+00 1.0 3.53e+07 1.1 0.0e+00 0.0e+00 0.0e+00  7  0  0  0  0   7  0  0  0  0   637
firedrake.halo.Halo.global_to_local_end      30 1.0 1.6810e-01 92.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.assign      22 1.0 7.2923e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  1   0  0  0  0  1    -0
firedrake.assign.Assigner.assign      21 1.0 6.0752e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  1   0  0  0  0  1    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.1669e-04 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate       8 1.0 9.4123e-05 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 5.7240e-05 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.2150e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.8075e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 2.9810e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 4.9107e+00 1.0 0.00e+00 0.0 3.2e+03 2.2e+05 2.3e+01  6  0  1  8  3   6  0  2 10  3    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 5.6252e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.1084e-04 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 4.9841e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  6  0  0  0  0   6  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 4.9841e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  6  0  0  0  0   6  0  0  0  0    -0
CreateSparsity         2 1.0 1.8292e+00 1.2 0.00e+00 0.0 2.7e+03 1.3e+05 1.8e+01  2  0  1  4  2   2  0  2  5  2    -0
MatZeroInitial         2 1.0 2.5465e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve       2 1.0 3.0716e+01 1.0 1.33e+10 1.1 1.4e+05 5.6e+04 5.9e+02 37 100 66 89 66 Multiple stages 42725
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 2.5018e-01 864.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 8.4600e-06 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 2.5013e-01 1043.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 2.5009e-01 1191.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral      16 1.0 1.9059e+00 1.1 9.17e+08 1.1 0.0e+00 0.0e+00 0.0e+00  2  7  0  0  0   2  8  0  0  0 47821
Parloop_Cells_wrap_form0_exterior_facet_top_integral      16 1.0 9.5393e-01 1.0 2.38e+05 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    25
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral      16 1.0 1.1553e+00 1.0 8.66e+06 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0   140
Parloop_Cells_wrap_form0_interior_facet_horiz_integral      16 1.0 1.7757e+00 1.0 8.78e+08 1.1 0.0e+00 0.0e+00 0.0e+00  2  7  0  0  0   2  7  0  0  0 49132
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral      16 1.0 2.5511e+00 1.0 1.77e+09 1.2 0.0e+00 0.0e+00 0.0e+00  3 13  0  0  0   3 14  0  0  0 65816
firedrake.halo.Halo.local_to_global_begin       8 1.0 7.2165e-03 19.6 0.00e+00 0.0 4.3e+03 5.5e+04 0.0e+00  0  0  2  3  0   0  0  3  3  0    -0
firedrake.halo.Halo.local_to_global_end       8 1.0 2.8687e-02 14.4 4.03e+05 2.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1027
Parloop_Cells_wrap_form00_cell_integral      12 1.0 2.5050e+00 1.0 1.28e+09 1.1 0.0e+00 0.0e+00 0.0e+00  3 10  0  0  0   3 11  0  0  0 50921
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral      12 1.0 1.1078e+00 1.0 6.61e+06 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0   112
Parloop_Cells_wrap_form00_interior_facet_horiz_integral      12 1.0 2.8504e+00 1.0 1.69e+09 1.1 0.0e+00 0.0e+00 0.0e+00  3 13  0  0  0   3 14  0  0  0 59006
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral      12 1.0 4.3593e+00 1.1 2.63e+09 1.2 0.0e+00 0.0e+00 0.0e+00  5 19  0  0  0   5 21  0  0  0 57160
firedrake.dmhooks.get_function_space       2 1.0 2.3655e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 8.4838e-05 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0        6 1.0 9.6536e-01 1.0 1.89e+06 8.2 0.0e+00 0.0e+00 2.0e+00  1  0  0  0  0   1  0  0  0  0    57
MGSetup Level 1        6 1.0 3.2872e+00 1.0 1.84e+09 1.1 3.2e+04 5.5e+04 3.6e+02  4 14 15 20 40   4 16 21 24 44 55709
firedrake.constant.Constant.assign       2 1.0 9.4938e-05 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided          6 1.0 7.2651e-04 6.0 0.00e+00 0.0 3.7e+03 4.0e+00 6.0e+00  0  0  2  0  1   0  0  5  0 10    -0
SFSetGraph             6 1.0 2.3735e-04 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp                6 1.0 9.2465e-04 2.7 0.00e+00 0.0 7.4e+03 2.2e+02 6.0e+00  0  0  3  0  1   0  0 11  0 10    -0
SFPack             27150 1.1 1.2686e-02 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           27150 1.1 1.4651e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy               90 1.0 2.6558e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecSet               239 1.0 5.9041e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   2  0  0  0  0    -0
VecAYPX              120 1.0 5.8542e-02 1.7 3.63e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   2  3  0  0  0 61619
VecScatterBegin    27150 1.1 1.4744e-01 1.3 0.00e+00 0.0 5.1e+04 3.5e+04 0.0e+00  0  0 23 20  0   5  0 73 100  0    -0
VecScatterEnd      27150 1.1 2.0160e-01 17.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   2  0  0  0  0    -0
MatMult               60 1.0 1.2679e+00 1.2 8.53e+08 1.1 3.2e+04 5.5e+04 0.0e+00  1  6 15 20  0  45 61 46 99  0 66973
MatMultAdd            30 1.0 7.8170e-02 1.3 3.63e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   3  3  0  0  0 46147
MatMultTranspose      30 1.0 6.3898e-02 1.5 3.63e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   2  3  0  0  0 56453
MatSolve           13470 1.1 1.0638e+00 1.6 4.26e+08 1.1 3.7e+04 5.6e+02 3.0e+01  1  3 17  0  3  38 31 54  1 50 39836
MatResidual           30 1.0 7.2409e-01 1.4 4.33e+08 1.1 1.6e+04 5.5e+04 0.0e+00  1  3  7 10  0  23 31 23 49  0 59465
PCApply               90 1.0 1.2960e+00 1.4 4.26e+08 1.1 3.7e+04 5.6e+02 3.0e+01  1  3 17  0  3  47 31 54  1 50 32697
PCApplyOnBlocks    13440 1.1 9.0260e-01 1.9 4.21e+08 1.1 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0  31 30  0  0  0 46413
KSPSolve              90 1.0 1.9051e+00 1.3 8.81e+08 1.1 5.3e+04 1.7e+04 6.0e+01  2  7 24 10  7  71 64 77 51 100 46106
MGSmooth Level 0      30 1.0 2.2351e-01 1.3 1.83e+07 8.0 3.7e+04 5.6e+02 6.0e+01  0  0 17  0  7   8  0 54  1 100  2164
MGSmooth Level 1      60 1.0 1.7312e+00 1.3 8.78e+08 1.1 1.6e+04 5.5e+04 0.0e+00  2  7  7 10  0  64 63 23 49  0 50460
MGResid Level 1       30 1.0 7.2420e-01 1.4 4.33e+08 1.1 1.6e+04 5.5e+04 0.0e+00  1  3  7 10  0  23 31 23 49  0 59456
MGInterp Level 1      60 1.0 1.3475e-01 1.3 7.26e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   5  5  0  0  0 53541
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container    14             14
              Viewer     3              3
           Index Set  2375           2375
   IS L to G Mapping   217            217
             Section    90             90
   Star Forest Graph   294            300
              Vector   764            764
              Matrix  1084           1084
      Preconditioner   216            216
       Krylov Solver   214            214
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

           Index Set    12             12
   Star Forest Graph     6              0
              Vector     6              6
========================================================================================================================
Average time to get PetscTime(): 2.58e-08
Average time for MPI_Barrier(): 4.1542e-06
Average time for zero size MPI_Send(): 1.95494e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026-profile-stage2-20260820T053301Z/smoke/results/vlumping_linesmooth/smoke.profile # (source: code)
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

