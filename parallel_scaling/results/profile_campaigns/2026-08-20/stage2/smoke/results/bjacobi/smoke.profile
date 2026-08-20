****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026-profile-stage2-20260820T053301Z/source/morrow/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0719.gadi.nci.org.au with 104 processes, by sg8812 on Thu Aug 20 15:50:22 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           8.173e+01     1.000   8.172e+01
Objects:              0.000e+00     0.000   0.000e+00
Flops:                1.205e+10     1.124   1.147e+10  1.193e+12
Flops/sec:            1.474e+08     1.124   1.404e+08  1.460e+10
MPI Msg Count:        3.887e+03     6.310   1.521e+03  1.582e+05
MPI Msg Len (bytes):  9.295e+07     2.545   4.294e+04  6.793e+09
MPI Reductions:       5.990e+02     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 8.1725e+01 100.0%  1.1932e+12 100.0%  1.582e+05 100.0%  4.294e+04      100.0%  5.800e+02  96.8%

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

BuildTwoSided         55 1.0 7.2976e-01 7.4 0.00e+00 0.0 1.3e+04 4.0e+00 5.5e+01  0  0  9  0  9   0  0  9  0  9    -0
BuildTwoSidedF        18 1.0 7.2028e-01 7.5 0.00e+00 0.0 3.2e+03 6.6e+05 1.8e+01  0  0  2 31  3   0  0  2 31  3    -0
SFSetGraph            40 1.0 2.7171e-03 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               37 1.0 2.1087e-02 1.6 0.00e+00 0.0 2.4e+04 1.5e+03 3.7e+01  0  0 15  1  6   0  0 15  1  6    -0
SFBcastBegin         129 1.0 2.1301e-02 3.3 0.00e+00 0.0 5.2e+04 1.2e+04 0.0e+00  0  0 33  9  0   0  0 33  9  0    -0
SFBcastEnd           129 1.0 3.5199e-01 27.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFReduceBegin         17 1.0 1.9077e-03 4.9 0.00e+00 0.0 7.9e+03 2.3e+04 0.0e+00  0  0  5  3  0   0  0  5  3  0    -0
SFReduceEnd           17 1.0 3.3991e-02 11.2 3.02e+05 2.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   650
SFFetchOpBegin         2 1.0 1.9653e-05 4.9 0.00e+00 0.0 8.1e+02 1.1e+02 0.0e+00  0  0  1  0  0   0  0  1  0  0    -0
SFFetchOpEnd           2 1.0 3.1298e-04 12.2 0.00e+00 0.0 8.1e+02 1.1e+02 0.0e+00  0  0  1  0  0   0  0  1  0  0    -0
SFCreateEmbed          2 1.0 9.2383e-04 1.5 0.00e+00 0.0 6.4e+02 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         21 1.0 8.6911e-03 1.3 0.00e+00 0.0 2.1e+04 2.8e+02 2.4e+01  0  0 13  0  4   0  0 13  0  4    -0
SFSectionSF           21 1.0 3.8469e-03 3.1 0.00e+00 0.0 9.9e+03 1.6e+02 2.1e+01  0  0  6  0  4   0  0  6  0  4    -0
SFPack               278 1.0 2.2025e-02 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack             280 1.0 3.9108e-03 17.8 3.02e+05 2.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  5647
VecDot                 4 1.0 5.4263e-03 4.4 1.61e+06 1.1 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  1   0  0  0  0  1 29545
VecMDot              123 1.0 1.4901e+00 4.3 7.09e+08 1.1 0.0e+00 0.0e+00 1.2e+02  1  6  0  0 21   1  6  0  0 21 47287
VecNorm              140 1.0 3.0521e-01 1.5 5.64e+07 1.1 0.0e+00 0.0e+00 1.4e+02  0  0  0  0 23   0  0  0  0 24 18385
VecScale             130 1.0 1.0805e-02 1.1 2.62e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 241119
VecCopy               33 1.0 1.6057e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet                11 1.0 3.7953e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY               10 1.0 8.3997e-03 1.3 4.03e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 47717
VecWAXPY               4 1.0 3.4054e-03 1.1 8.06e+05 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 23540
VecMAXPY             130 1.0 7.6501e-01 1.1 7.58e+08 1.1 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   1  6  0  0  0 98550
VecScatterBegin      130 1.0 2.1844e-02 2.3 0.00e+00 0.0 7.0e+04 5.5e+04 0.0e+00  0  0 44 56  0   0  0 44 56  0    -0
VecScatterEnd        130 1.0 2.1700e-01 27.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecReduceArith         8 1.0 2.3361e-03 1.6 3.23e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 137256
VecReduceComm          4 1.0 2.2525e-03 53.5 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  1   0  0  0  0  1    -0
VecNormalize         130 1.0 1.5009e-01 3.1 7.86e+07 1.1 0.0e+00 0.0e+00 1.3e+02  0  1  0  0 22   0  1  0  0 22 52073
MatMult              130 1.0 2.4614e+00 1.1 1.85e+09 1.1 7.0e+04 5.5e+04 0.0e+00  3 15 44 56  0   3 15 44 56  0 74744
MatSolve             130 1.0 2.8714e+00 1.6 1.79e+09 1.1 0.0e+00 0.0e+00 0.0e+00  3 15  0  0  0   3 15  0  0  0 62073
MatLUFactorNum         4 1.0 3.1075e-01 1.3 5.02e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  4  0  0  0   0  4  0  0  0 158588
MatILUFactorSym        1 1.0 6.6405e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin      18 1.0 7.3015e-01 4.4 0.00e+00 0.0 3.2e+03 6.6e+05 1.8e+01  0  0  2 31  3   0  0  2 31  3    -0
MatAssemblyEnd        18 1.0 3.9975e-01 1.4 2.03e+06 0.0 1.1e+03 1.4e+04 6.0e+00  0  0  1  0  1   0  0  1  0  1   221
MatGetRowIJ            1 1.0 6.1800e-06 39.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         1 1.0 1.8595e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries         4 1.0 6.2117e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp                4 1.0 3.0389e-03 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUpOnBlocks        4 1.0 3.7526e-01 1.3 5.02e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  4  0  0  0   0  4  0  0  0 131326
PCApply              130 1.0 2.8732e+00 1.6 1.79e+09 1.1 0.0e+00 0.0e+00 0.0e+00  3 15  0  0  0   3 15  0  0  0 62035
PCApplyOnBlocks      130 1.0 2.8726e+00 1.6 1.79e+09 1.1 0.0e+00 0.0e+00 0.0e+00  3 15  0  0  0   3 15  0  0  0 62046
KSPSetUp               4 1.0 6.7542e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve               4 1.0 6.4856e+00 1.0 5.14e+09 1.1 6.8e+04 5.5e+04 2.5e+02  8 43 43 55 42   8 43 43 55 44 78731
KSPGMRESOrthog       123 1.0 2.1713e+00 2.1 1.42e+09 1.1 0.0e+00 0.0e+00 1.2e+02  2 12  0  0 21   2 12  0  0 21 64901
DMPlexCreateGmsh       1 1.0 5.5018e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  1   0  0  0  0  1    -0
DMPlexCrFromFile       1 1.0 1.7825e+00 32.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  1  0  0  0  2   1  0  0  0  2    -0
Mesh Partition         2 1.0 7.7894e-02 1.0 0.00e+00 0.0 6.7e+03 2.9e+02 2.5e+01  0  0  4  0  4   0  0  4  0  4    -0
Mesh Migration         2 1.0 2.1870e-02 1.1 0.00e+00 0.0 2.4e+04 3.7e+02 1.1e+02  0  0 15  0 18   0  0 15  0 19    -0
DMPlexPartSelf         1 1.0 7.5631e-03 3848.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 1.1470e-02 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  1   0  0  0  0  1    -0
DMPlexPartLblSF        2 1.0 5.0342e-03 1.1 0.00e+00 0.0 1.3e+03 2.8e+02 2.0e+00  0  0  1  0  0   0  0  1  0  0    -0
DMPlexPartStrtSF       2 1.0 2.3334e-03 1.4 0.00e+00 0.0 6.4e+02 1.1e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 5.5588e-03 1.3 0.00e+00 0.0 7.5e+02 2.1e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp           1 1.0 2.7113e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistribute       1 1.0 1.0030e-01 1.0 0.00e+00 0.0 4.4e+03 2.2e+03 6.3e+01  0  0  3  0 11   0  0  3  0 11    -0
DMPlexDistCones        2 1.0 2.7882e-03 1.0 0.00e+00 0.0 3.8e+03 7.1e+02 4.0e+00  0  0  2  0  1   0  0  2  0  1    -0
DMPlexDistLabels       2 1.0 1.2392e-02 1.0 0.00e+00 0.0 1.3e+04 3.9e+02 7.6e+01  0  0  8  0 13   0  0  8  0 13    -0
DMPlexDistOvrlp        1 1.0 4.8279e-03 1.1 0.00e+00 0.0 2.7e+04 9.9e+01 8.0e+01  0  0 17  0 13   0  0 17  0 14    -0
DMPlexDistField        3 1.0 3.3963e-03 1.2 0.00e+00 0.0 5.8e+03 1.4e+02 8.0e+00  0  0  4  0  1   0  0  4  0  1    -0
DMPlexStratify         4 1.0 2.3393e-02 18.1 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  1   0  0  0  0  1    -0
DMPlexSymmetrize       4 1.0 2.3848e-03 87.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve              2 1.0 2.8200e+01 1.0 1.20e+10 1.1 8.3e+04 7.1e+04 2.9e+02 35 100 52 86 48  35 100 52 86 49 42193
SNESSetUp              1 1.0 3.8549e-05 3.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval       6 1.0 1.0414e+01 1.0 2.65e+09 1.1 8.6e+03 5.5e+04 0.0e+00 13 22  5  7  0  13 22  5  7  0 24955
SNESJacobianEval       4 1.0 1.0744e+01 1.0 3.71e+09 1.1 4.3e+03 3.6e+05 1.6e+01 13 30  3 23  3  13 30  3 23  3 33829
SNESLineSearch         4 1.0 2.3066e-01 1.0 1.84e+09 1.1 6.4e+03 5.5e+04 1.6e+01  0 15  4  5  3   0 15  4  5  3 779468
firedrake              1 1.0 7.9606e+01 1.0 1.20e+10 1.1 1.6e+05 4.3e+04 5.7e+02 97 100 100 100 96  97 100 100 100 99 14989
firedrake.__init__       1 1.0 7.0221e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  8  0  0  0  0   8  0  0  0  0    -0
CreateMesh             1 1.0 1.9244e+00 9.8 0.00e+00 0.0 5.6e+04 2.7e+02 2.0e+02  1  0 36  0 33   1  0 36  0 34    -0
firedrake.mesh._from_gmsh       1 1.0 1.7833e+00 32.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  1  0  0  0  2   1  0  0  0  2    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 8.7549e-04 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 1.5830e-06 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 2.8696e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  1   0  0  0  0  1    -0
Mesh: reorder          1 1.0 5.6676e-04 4.7 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       7 1.0 2.1674e-02 1.0 0.00e+00 0.0 1.1e+03 1.4e+02 0.0e+00  0  0  1  0  0   0  0  1  0  0    -0
firedrake.functionspace.make_scalar_element       9 1.0 9.9794e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       7 1.0 2.0432e-02 1.0 0.00e+00 0.0 1.1e+03 1.4e+02 0.0e+00  0  0  1  0  0   0  0  1  0  0    -0
firedrake.functionspacedata.get_shared_data       6 1.0 1.9440e-02 1.0 0.00e+00 0.0 1.1e+03 1.4e+02 0.0e+00  0  0  1  0  0   0  0  1  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       6 1.0 1.9389e-02 1.0 0.00e+00 0.0 1.1e+03 1.4e+02 0.0e+00  0  0  1  0  0   0  0  1  0  0    -0
FunctionSpaceData: CreateElement      12 1.0 1.2104e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 2.3534e-03 1.1 0.00e+00 0.0 1.1e+03 1.4e+02 0.0e+00  0  0  1  0  0   0  0  1  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 3.1220e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 9.0884e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      55 1.0 1.6135e-02 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 1.6906e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  2  0  0  0  1   2  0  0  0  1    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 1.6713e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       2 1.0 3.8082e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       2 1.0 5.4320e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 1.6860e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  2  0  0  0  1   2  0  0  0  1    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     192 1.0 3.5156e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute        57 1.0 2.5098e+01 1.0 6.39e+09 1.1 1.7e+04 3.7e+04 1.5e+01 30 53 11  9  3  30 53 11  9  3 24966
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 1.6555e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)     114 1.0 2.3696e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 29  0  0  0  0  29  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      15 1.0 1.0613e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 13  0  0  0  0  13  0  0  0  0    -0
GlobalKernel: generate loopy      15 0.0 1.2051e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      15 0.0 8.9305e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      15 1.0 1.3153e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 16  0  0  0  0  16  0  0  0  0    -0
pyop2.compilation.load      15 1.0 1.3152e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 16  0  0  0  0  16  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      15 1.0 8.4030e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 10  0  0  0  0  10  0  0  0  0    -0
pyop2.compilation.make_so      15 1.0 8.2172e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 10  0  0  0  0  10  0  0  0  0    -0
ParLoopRednBegin      57 1.0 4.2323e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd        57 1.0 1.5314e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 6.0791e-04 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 4.7753e+00 1.0 3.41e+07 1.1 9.7e+03 2.3e+04 1.2e+01  6  0  6  3  2   6  0  6  3  2   709
firedrake.interpolation.interpolate      10 1.0 3.5690e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      10 1.0 4.7717e+00 1.0 3.41e+07 1.1 9.7e+03 2.3e+04 1.2e+01  6  0  6  3  2   6  0  6  3  2   710
firedrake.formmanipulation.split_form      12 1.0 3.6092e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      12 1.0 2.3107e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      10 1.0 1.3919e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       5 1.0 9.2990e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin      26 1.0 2.9097e-02 1.7 0.00e+00 0.0 1.7e+04 3.7e+04 2.0e+00  0  0 11  9  0   0  0 11  9  0    -0
Parloop_Cells_wrap_expression_kernel      20 1.0 4.5391e+00 1.0 3.41e+07 1.1 0.0e+00 0.0e+00 0.0e+00  6  0  0  0  0   6  0  0  0  0   746
firedrake.halo.Halo.global_to_local_end      26 1.0 9.6330e-02 63.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.assign      22 1.0 7.2569e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  2   0  0  0  0  2    -0
firedrake.assign.Assigner.assign      21 1.0 5.8003e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  1   0  0  0  0  1    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.2194e-04 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate       8 1.0 8.3381e-05 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 6.0948e-05 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.3041e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.8344e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.0635e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 5.0678e+00 1.0 0.00e+00 0.0 3.2e+03 2.2e+05 2.3e+01  6  0  2 11  4   6  0  2 11  4    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 5.9771e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 1.6850e-04 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.0854e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  6  0  0  0  0   6  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.0854e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  6  0  0  0  0   6  0  0  0  0    -0
CreateSparsity         1 1.0 1.8476e+00 1.2 0.00e+00 0.0 1.6e+03 2.2e+05 8.0e+00  2  0  1  5  1   2  0  1  5  1    -0
MatZeroInitial         1 1.0 2.5470e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve       2 1.0 2.8206e+01 1.0 1.20e+10 1.1 8.3e+04 7.1e+04 2.9e+02 35 100 52 86 49  35 100 52 86 51 42184
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 2.6356e-01 844.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 7.7280e-06 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 2.6350e-01 1014.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 2.6347e-01 1149.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral      12 1.0 1.9529e+00 1.1 6.88e+08 1.1 0.0e+00 0.0e+00 0.0e+00  2  6  0  0  0   2  6  0  0  0 35003
Parloop_Cells_wrap_form0_exterior_facet_top_integral      12 1.0 9.8725e-01 1.0 1.79e+05 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    18
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral      12 1.0 1.1986e+00 1.0 6.49e+06 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0   101
Parloop_Cells_wrap_form0_interior_facet_horiz_integral      12 1.0 1.8242e+00 1.0 6.58e+08 1.1 0.0e+00 0.0e+00 0.0e+00  2  5  0  0  0   2  5  0  0  0 35869
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral      12 1.0 2.5624e+00 1.0 1.33e+09 1.2 0.0e+00 0.0e+00 0.0e+00  3 11  0  0  0   3 11  0  0  0 49143
firedrake.halo.Halo.local_to_global_begin       6 1.0 1.6344e-03 5.5 0.00e+00 0.0 3.2e+03 5.5e+04 0.0e+00  0  0  2  3  0   0  0  2  3  0    -0
firedrake.halo.Halo.local_to_global_end       6 1.0 3.3969e-02 27.2 3.02e+05 2.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   650
Parloop_Cells_wrap_form00_cell_integral       8 1.0 2.4161e+00 1.0 8.55e+08 1.1 0.0e+00 0.0e+00 0.0e+00  3  7  0  0  0   3  7  0  0  0 35197
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral       8 1.0 1.1392e+00 1.0 4.41e+06 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    72
Parloop_Cells_wrap_form00_interior_facet_horiz_integral       8 1.0 2.8140e+00 1.0 1.13e+09 1.1 0.0e+00 0.0e+00 0.0e+00  3  9  0  0  0   3  9  0  0  0 39846
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral       8 1.0 4.1581e+00 1.1 1.75e+09 1.2 0.0e+00 0.0e+00 0.0e+00  5 14  0  0  0   5 14  0  0  0 39950
firedrake.constant.Constant.assign       2 1.0 9.1798e-05 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container    10             10
              Viewer     3              3
           Index Set   483            483
   IS L to G Mapping     6              6
             Section    86             86
   Star Forest Graph    75             75
              Vector    77             77
              Matrix     8              8
      Preconditioner     2              2
       Krylov Solver     2              2
     DMKSP interface     1              1
                SNES     1              1
              DMSNES     1              1
      SNESLineSearch     1              1
    Distributed Mesh    14             14
            DM Label    51             51
    GraphPartitioner     4              4
     Discrete System    22             22
           Weak Form    22             22
========================================================================================================================
Average time to get PetscTime(): 2.67e-08
Average time for MPI_Barrier(): 5.0062e-06
Average time for zero size MPI_Send(): 2.10068e-06
#PETSc Option Table entries:
-log_view :/scratch/xd2/sg8812/morrow2026-profile-stage2-20260820T053301Z/smoke/results/bjacobi/smoke.profile # (source: code)
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

