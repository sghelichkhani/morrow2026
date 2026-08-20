****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026-profile-stage2-20260820T053301Z/source/morrow/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0134.gadi.nci.org.au with 104 processes, by sg8812 on Thu Aug 20 15:50:36 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           9.627e+01     1.000   9.627e+01
Objects:              0.000e+00     0.000   0.000e+00
Flops:                1.251e+10     1.129   1.188e+10  1.236e+12
Flops/sec:            1.299e+08     1.129   1.234e+08  1.284e+10
MPI Msg Count:        4.297e+03     5.202   1.842e+03  1.916e+05
MPI Msg Len (bytes):  1.060e+08     2.539   4.044e+04  7.748e+09
MPI Reductions:       5.820e+02     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 9.3715e+01  97.4%  1.0593e+12  85.7%  1.341e+05  70.0%  4.452e+04       77.0%  5.230e+02  89.9%
 1:        MG Apply: 2.5504e+00   2.6%  1.7644e+11  14.3%  5.752e+04  30.0%  3.093e+04       23.0%  4.000e+01   6.9%

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

BuildTwoSided         70 1.0 9.4971e-01 4.9 0.00e+00 0.0 1.4e+04 4.0e+00 7.0e+01  0  0  7  0 12   0  0 11  0 13    -0
BuildTwoSidedF        31 1.0 9.4095e-01 4.3 0.00e+00 0.0 3.8e+03 6.6e+05 3.1e+01  0  0  2 32  5   0  0  3 41  6    -0
SFSetGraph            42 1.0 2.6500e-03 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               39 1.0 1.9322e-02 1.7 0.00e+00 0.0 2.5e+04 1.4e+03 3.9e+01  0  0 13  0  7   0  0 19  1  7    -0
SFBcastBegin         133 1.0 2.6009e-02 4.5 0.00e+00 0.0 5.4e+04 1.3e+04 0.0e+00  0  0 28  9  0   0  0 40 12  0    -0
SFBcastEnd           133 1.0 4.4289e-01 34.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFReduceBegin         18 1.0 5.0788e-03 14.0 0.00e+00 0.0 8.4e+03 2.5e+04 0.0e+00  0  0  4  3  0   0  0  6  3  0    -0
SFReduceEnd           18 1.0 2.4096e-02 12.7 3.53e+05 2.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1069
SFFetchOpBegin         2 1.0 1.7682e-05 4.6 0.00e+00 0.0 8.1e+02 1.1e+02 0.0e+00  0  0  0  0  0   0  0  1  0  0    -0
SFFetchOpEnd           2 1.0 2.5951e-04 10.4 0.00e+00 0.0 8.1e+02 1.1e+02 0.0e+00  0  0  0  0  0   0  0  1  0  0    -0
SFCreateEmbed          2 1.0 8.9124e-04 1.5 0.00e+00 0.0 6.4e+02 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         21 1.0 9.5540e-03 1.3 0.00e+00 0.0 2.1e+04 2.8e+02 2.4e+01  0  0 11  0  4   0  0 15  0  5    -0
SFSectionSF           21 1.0 3.8619e-03 3.3 0.00e+00 0.0 9.9e+03 1.6e+02 2.1e+01  0  0  5  0  4   0  0  7  0  4    -0
SFPack               223 1.0 1.5203e-02 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack             225 1.0 4.0244e-03 20.3 3.53e+05 2.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  6403
VecDot                 5 1.0 6.3396e-03 4.7 2.02e+06 1.1 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  1   0  0  0  0  1 31611
VecMDot               65 1.0 4.9795e-01 4.6 1.25e+08 1.1 0.0e+00 0.0e+00 6.5e+01  0  1  0  0 11   0  1  0  0 12 24872
VecNorm               87 1.0 3.1026e-01 1.5 3.51e+07 1.1 0.0e+00 0.0e+00 8.7e+01  0  0  0  0 15   0  0  0  0 17 11239
VecScale              75 1.0 7.6081e-03 1.3 1.51e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 197557
VecCopy               41 1.0 2.1421e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet                20 1.0 7.2350e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY               10 1.0 6.7464e-03 1.3 4.03e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 59411
VecWAXPY               5 1.0 4.1926e-03 1.1 1.01e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 23900
VecMAXPY              75 1.0 1.6177e-01 1.1 1.51e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   0  1  0  0  0 92666
VecScatterBegin       70 1.0 1.2934e-02 2.7 0.00e+00 0.0 3.8e+04 5.5e+04 0.0e+00  0  0 20 27  0   0  0 28 35  0    -0
VecScatterEnd         70 1.0 1.8504e-01 38.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecReduceArith        10 1.0 2.6756e-03 1.5 4.03e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 149801
VecReduceComm          5 1.0 2.6742e-03 5.1 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  1   0  0  0  0  1    -0
VecNormalize          55 1.0 1.2783e-01 5.5 3.33e+07 1.1 0.0e+00 0.0e+00 5.5e+01  0  0  0  0  9   0  0  0  0 11 25867
MatMult               70 1.0 1.3533e+00 1.1 9.95e+08 1.1 3.8e+04 5.5e+04 0.0e+00  1  8 20 27  0   1  9 28 35  0 73205
MatSolve              55 1.0 1.0939e+00 1.5 7.59e+08 1.1 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   1  7  0  0  0 68936
MatLUFactorSym         1 1.0 2.6244e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum        10 1.0 1.0328e+00 1.1 6.28e+08 1.1 0.0e+00 0.0e+00 0.0e+00  1  5  0  0  0   1  6  0  0  0 59690
MatILUFactorSym        1 1.0 5.9927e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin      46 1.0 9.6150e-01 3.0 0.00e+00 0.0 3.8e+03 6.6e+05 3.1e+01  1  0  2 32  5   1  0  3 41  6    -0
MatAssemblyEnd        46 1.0 4.5559e-01 1.5 2.54e+06 0.0 2.1e+03 6.9e+03 1.7e+01  0  0  1  0  3   0  0  2  0  3   242
MatGetRowIJ            1 1.0 1.8640e-06 14.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         1 1.0 1.9299e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries        10 1.0 7.9974e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatTranspose           2 1.0 5.8850e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 5.8802e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum         10 1.0 4.5169e-02 1.2 7.21e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   0  1  0  0  0 159075
MatPtAPSymbolic        1 1.0 8.6936e-02 1.0 0.00e+00 0.0 1.6e+03 9.2e+04 7.0e+00  0  0  1  2  1   0  0  1  2  1    -0
MatPtAPNumeric         5 1.0 2.6553e-01 1.0 2.88e+08 1.1 3.2e+03 1.1e+05 1.0e+01  0  2  2  5  2   0  3  2  6  2 108152
MatGetLocalMat         5 1.0 2.2286e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol          5 1.0 2.2414e-02 2.1 0.00e+00 0.0 3.8e+03 1.3e+05 0.0e+00  0  0  2  6  0   0  0  3  8  0    -0
PCSetUp                5 1.0 4.9449e+00 1.0 2.66e+09 1.1 3.3e+04 6.0e+04 1.5e+02  5 21 17 25 26   5 25 24 33 29 53430
PCApply               15 1.0 2.5872e+00 1.1 1.77e+09 1.1 5.8e+04 3.1e+04 4.0e+01  3 14 30 23  7   3 17 43 30  8 68196
PCApplyOnBlocks       55 1.0 1.0944e+00 1.5 7.59e+08 1.1 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   1  7  0  0  0 68901
KSPSetUp               5 1.0 7.5290e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve               5 1.0 2.9093e+00 1.0 2.03e+09 1.1 6.6e+04 3.4e+04 7.5e+01  3 16 34 29 13   3 19 49 37 14 69569
KSPGMRESOrthog        65 1.0 6.2326e-01 2.6 2.49e+08 1.1 0.0e+00 0.0e+00 6.5e+01  0  2  0  0 11   0  2  0  0 12 39742
DMPlexCreateGmsh       1 1.0 5.2265e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  1   0  0  0  0  2    -0
DMPlexCrFromFile       1 1.0 2.4415e-01 4.4 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  2   0  0  0  0  2    -0
Mesh Partition         2 1.0 7.4505e-02 1.0 0.00e+00 0.0 6.7e+03 2.9e+02 2.5e+01  0  0  4  0  4   0  0  5  0  5    -0
Mesh Migration         2 1.0 2.2624e-02 1.0 0.00e+00 0.0 2.4e+04 3.7e+02 1.1e+02  0  0 13  0 19   0  0 18  0 21    -0
DMPlexPartSelf         1 1.0 7.5733e-03 3444.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 1.1338e-02 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  1   0  0  0  0  1    -0
DMPlexPartLblSF        2 1.0 3.1776e-03 1.1 0.00e+00 0.0 1.3e+03 2.8e+02 2.0e+00  0  0  1  0  0   0  0  1  0  0    -0
DMPlexPartStrtSF       2 1.0 1.6542e-03 1.7 0.00e+00 0.0 6.4e+02 1.1e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 5.3016e-03 1.4 0.00e+00 0.0 7.5e+02 2.1e+03 0.0e+00  0  0  0  0  0   0  0  1  0  0    -0
DMPlexInterp           1 1.0 2.6280e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistribute       1 1.0 9.7412e-02 1.0 0.00e+00 0.0 4.4e+03 2.2e+03 6.3e+01  0  0  2  0 11   0  0  3  0 12    -0
DMPlexDistCones        2 1.0 2.8042e-03 1.0 0.00e+00 0.0 3.8e+03 7.1e+02 4.0e+00  0  0  2  0  1   0  0  3  0  1    -0
DMPlexDistLabels       2 1.0 1.3319e-02 1.0 0.00e+00 0.0 1.3e+04 3.9e+02 7.6e+01  0  0  7  0 13   0  0  9  0 15    -0
DMPlexDistOvrlp        1 1.0 4.7485e-03 1.0 0.00e+00 0.0 2.7e+04 9.9e+01 8.0e+01  0  0 14  0 14   0  0 20  0 15    -0
DMPlexDistField        3 1.0 3.2448e-03 1.2 0.00e+00 0.0 5.8e+03 1.4e+02 8.0e+00  0  0  3  0  1   0  0  4  0  2    -0
DMPlexStratify         4 1.0 2.2586e-02 17.5 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  1   0  0  0  0  1    -0
DMPlexSymmetrize       4 1.0 1.9660e-03 71.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve              2 1.0 2.9498e+01 1.0 1.25e+10 1.1 1.2e+05 5.9e+04 2.7e+02 31 100 61 88 46 Multiple stages 41778
SNESSetUp              1 1.0 3.9311e-05 5.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval       7 1.0 1.0258e+01 1.0 3.10e+09 1.1 9.6e+03 5.5e+04 0.0e+00 11 25  5  7  0  11 29  7  9  0 29558
SNESJacobianEval       5 1.0 1.1084e+01 1.0 4.63e+09 1.1 5.4e+03 3.6e+05 2.0e+01 12 37  3 25  3  12 43  4 32  4 40988
SNESLineSearch         5 1.0 2.8830e-01 1.0 2.29e+09 1.1 8.0e+03 5.5e+04 2.0e+01  0 18  4  6  3   0 21  6  7  4 779554
firedrake              1 1.0 9.4109e+01 1.0 1.25e+10 1.1 1.9e+05 4.0e+04 5.6e+02 98 100 100 100 96 Multiple stages 13131
firedrake.__init__       1 1.0 6.8674e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  7  0  0  0  0   7  0  0  0  0    -0
CreateMesh             1 1.0 3.8380e-01 2.0 0.00e+00 0.0 5.6e+04 2.7e+02 2.0e+02  0  0 29  0 34   0  0 42  0 37    -0
firedrake.mesh._from_gmsh       1 1.0 2.4487e-01 4.4 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  2   0  0  0  0  2    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 9.3083e-04 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 1.4590e-06 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 3.3077e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  1   0  0  0  0  1    -0
Mesh: reorder          1 1.0 6.0564e-04 4.5 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       9 1.0 2.5699e-02 1.1 0.00e+00 0.0 1.1e+03 1.4e+02 0.0e+00  0  0  1  0  0   0  0  1  0  0    -0
firedrake.functionspace.make_scalar_element      11 1.0 1.1451e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       9 1.0 2.4022e-02 1.1 0.00e+00 0.0 1.1e+03 1.4e+02 0.0e+00  0  0  1  0  0   0  0  1  0  0    -0
firedrake.functionspacedata.get_shared_data       8 1.0 2.2871e-02 1.1 0.00e+00 0.0 1.1e+03 1.4e+02 0.0e+00  0  0  1  0  0   0  0  1  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       8 1.0 2.2806e-02 1.1 0.00e+00 0.0 1.1e+03 1.4e+02 0.0e+00  0  0  1  0  0   0  0  1  0  0    -0
FunctionSpaceData: CreateElement      16 1.0 1.2376e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 2.4113e-03 1.1 0.00e+00 0.0 1.1e+03 1.4e+02 0.0e+00  0  0  1  0  0   0  0  1  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 2.9684e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 8.8083e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      55 1.0 1.6161e-02 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 1.6848e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  2  0  0  0  1   2  0  0  0  1    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 1.3142e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       2 1.0 3.8081e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       3 1.0 7.5310e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 1.6804e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  2  0  0  0  1   2  0  0  0  1    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     196 1.0 3.6715e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute        67 1.0 2.6062e+01 1.0 7.76e+09 1.1 1.8e+04 3.8e+04 1.5e+01 27 62 10  9  3  28 72 14 12  3 29194
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 1.6497e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)     134 1.0 2.4326e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 25  0  0  0  0  26  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      16 1.0 1.0435e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 11  0  0  0  0  11  0  0  0  0    -0
GlobalKernel: generate loopy      16 0.0 1.3810e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      16 0.0 8.5904e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      16 1.0 1.3918e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 14  0  0  0  0  15  0  0  0  0    -0
pyop2.compilation.load      16 1.0 1.3917e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 14  0  0  0  0  15  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      16 1.0 8.9167e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  9  0  0  0  0   9  0  0  0  0    -0
pyop2.compilation.make_so      16 1.0 8.7779e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  9  0  0  0  0   9  0  0  0  0    -0
ParLoopRednBegin      67 1.0 4.7229e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd        67 1.0 1.9379e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 6.5866e-04 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 4.7820e+00 1.0 3.41e+07 1.1 9.7e+03 2.3e+04 1.2e+01  5  0  5  3  2   5  0  7  4  2   708
firedrake.interpolation.interpolate      11 1.0 3.6107e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      11 1.0 5.7102e+00 1.0 3.53e+07 1.1 1.1e+04 2.1e+04 3.4e+01  6  0  6  3  6   6  0  8  4  7   614
firedrake.formmanipulation.split_form      12 1.0 3.7804e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      12 1.0 1.6972e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      11 1.0 1.5058e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       6 1.0 1.0161e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin      28 1.0 2.8104e-02 1.6 0.00e+00 0.0 1.8e+04 3.8e+04 2.0e+00  0  0 10  9  0   0  0 14 12  0    -0
Parloop_Cells_wrap_expression_kernel      22 1.0 5.4114e+00 1.0 3.53e+07 1.1 0.0e+00 0.0e+00 0.0e+00  6  0  0  0  0   6  0  0  0  0   648
firedrake.halo.Halo.global_to_local_end      28 1.0 1.4390e-01 86.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.assign      22 1.0 7.0672e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  2   0  0  0  0  2    -0
firedrake.assign.Assigner.assign      21 1.0 6.1776e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  1   0  0  0  0  1    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.6860e-04 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate       8 1.0 6.5294e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 4.4205e-05 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.5262e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.9290e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.2801e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 4.9700e+00 1.0 0.00e+00 0.0 3.2e+03 2.2e+05 2.3e+01  5  0  2  9  4   5  0  2 12  4    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 6.4491e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.0392e-04 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.0037e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  5  0  0  0  0   5  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.0037e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  5  0  0  0  0   5  0  0  0  0    -0
CreateSparsity         2 1.0 1.9327e+00 1.2 0.00e+00 0.0 2.7e+03 1.3e+05 1.8e+01  2  0  1  5  3   2  0  2  6  3    -0
MatZeroInitial         2 1.0 2.5629e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve       2 1.0 2.9503e+01 1.0 1.25e+10 1.1 1.2e+05 5.9e+04 2.8e+02 31 100 61 88 47 Multiple stages 41771
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 2.5344e-01 815.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 8.2810e-06 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 2.5339e-01 983.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 2.5336e-01 1111.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral      14 1.0 1.8139e+00 1.2 8.02e+08 1.1 0.0e+00 0.0e+00 0.0e+00  2  6  0  0  0   2  8  0  0  0 43966
Parloop_Cells_wrap_form0_exterior_facet_top_integral      14 1.0 1.0952e+00 1.0 2.09e+05 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    19
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral      14 1.0 1.1712e+00 1.0 7.58e+06 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0   121
Parloop_Cells_wrap_form0_interior_facet_horiz_integral      14 1.0 1.6407e+00 1.0 7.68e+08 1.1 0.0e+00 0.0e+00 0.0e+00  2  6  0  0  0   2  7  0  0  0 46529
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral      14 1.0 2.6456e+00 1.0 1.55e+09 1.2 0.0e+00 0.0e+00 0.0e+00  3 12  0  0  0   3 14  0  0  0 55532
firedrake.halo.Halo.local_to_global_begin       7 1.0 4.9782e-03 13.1 0.00e+00 0.0 3.8e+03 5.5e+04 0.0e+00  0  0  2  3  0   0  0  3  3  0    -0
firedrake.halo.Halo.local_to_global_end       7 1.0 2.3945e-02 14.4 3.53e+05 2.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1076
Parloop_Cells_wrap_form00_cell_integral      10 1.0 2.4264e+00 1.0 1.07e+09 1.1 0.0e+00 0.0e+00 0.0e+00  2  9  0  0  0   3 10  0  0  0 43809
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral      10 1.0 1.1007e+00 1.0 5.51e+06 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    94
Parloop_Cells_wrap_form00_interior_facet_horiz_integral      10 1.0 2.8315e+00 1.0 1.41e+09 1.1 0.0e+00 0.0e+00 0.0e+00  3 11  0  0  0   3 13  0  0  0 49501
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral      10 1.0 4.3531e+00 1.1 2.19e+09 1.2 0.0e+00 0.0e+00 0.0e+00  4 17  0  0  0   5 20  0  0  0 47702
firedrake.dmhooks.get_function_space       1 1.0 1.0284e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 5.3323e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0        5 1.0 9.2369e-01 1.0 1.55e+06 8.9 0.0e+00 0.0e+00 2.0e+00  1  0  0  0  0   1  0  0  0  0    50
MGSetup Level 1        5 1.0 2.7290e+00 1.0 2.37e+09 1.1 2.7e+04 5.5e+04 1.0e+02  3 19 14 19 18   3 22 20 25 20 86232
firedrake.constant.Constant.assign       2 1.0 9.6826e-05 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided          5 1.0 5.0485e-04 5.3 0.00e+00 0.0 3.2e+03 4.0e+00 5.0e+00  0  0  2  0  1   0  0  5  0 12    -0
SFSetGraph             5 1.0 1.9697e-04 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp                5 1.0 6.6205e-04 2.4 0.00e+00 0.0 6.3e+03 2.1e+02 5.0e+00  0  0  3  0  1   0  0 11  0 12    -0
SFPack               105 1.0 9.7864e-03 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack             105 1.0 7.3784e-05 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy               45 1.0 1.7869e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecSet                59 1.0 5.7685e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAYPX               90 1.0 4.4963e-02 1.6 2.42e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 53485
VecAXPBYCZ            30 1.0 2.1521e-02 1.5 3.02e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  2  0  0  0 139682
VecScatterBegin      105 1.0 1.2509e-02 2.3 0.00e+00 0.0 4.2e+04 4.3e+04 0.0e+00  0  0 22 23  0   0  0 72 100  0    -0
VecScatterEnd        105 1.0 3.3969e-01 82.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   3  0  0  0  0    -0
MatMult               60 1.0 1.3537e+00 1.3 8.53e+08 1.1 3.2e+04 5.5e+04 0.0e+00  1  7 17 23  0  45 48 56 99  0 62725
MatMultAdd            15 1.0 3.9859e-02 1.4 1.81e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 45251
MatMultTranspose      15 1.0 2.8613e-02 1.9 1.81e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 63035
MatSolve              75 1.0 1.3730e+00 1.4 8.31e+08 1.1 2.5e+04 4.7e+02 2.5e+01  1  7 13  0  4  50 47 44  1 62 60090
MatResidual           15 1.0 3.6573e-01 1.4 2.16e+08 1.1 8.0e+03 5.5e+04 0.0e+00  0  2  4  6  0  12 12 14 25  0 58866
PCSetUpOnBlocks       30 1.0 2.8592e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply               75 1.0 1.3743e+00 1.4 8.31e+08 1.1 2.5e+04 4.7e+02 2.5e+01  1  7 13  0  4  50 47 44  1 62 60036
PCApplyOnBlocks       60 1.0 1.2521e+00 1.5 8.28e+08 1.1 0.0e+00 0.0e+00 0.0e+00  1  7  0  0  0  45 47  0  0  0 65697
KSPSolve              45 1.0 2.2486e+00 1.1 1.52e+09 1.1 4.9e+04 2.7e+04 4.0e+01  2 12 26 17  7  86 86 86 75 100 67285
MGSmooth Level 0      15 1.0 1.4758e-01 1.4 8.68e+06 16.3 2.5e+04 4.7e+02 4.0e+01  0  0 13  0  7   5  0 44  1 100  1644
MGSmooth Level 1      30 1.0 2.1386e+00 1.1 1.52e+09 1.1 2.4e+04 5.5e+04 0.0e+00  2 12 13 17  0  81 86 42 74  0 70635
MGResid Level 1       15 1.0 3.6578e-01 1.4 2.16e+08 1.1 8.0e+03 5.5e+04 0.0e+00  0  2  4  6  0  12 12 14 25  0 58857
MGInterp Level 1      30 1.0 6.4935e-02 1.3 3.63e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   2  2  0  0  0 55552
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container    14             14
              Viewer     3              3
           Index Set   487            487
   IS L to G Mapping     7              7
             Section    90             90
   Star Forest Graph    82             87
              Vector   109            109
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

           Index Set    10             10
   Star Forest Graph     5              0
              Vector     5              5
========================================================================================================================
Average time to get PetscTime(): 2.6e-08
Average time for MPI_Barrier(): 4.179e-06
Average time for zero size MPI_Send(): 2.03931e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026-profile-stage2-20260820T053301Z/smoke/results/vlumping_inexact/smoke.profile # (source: code)
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

