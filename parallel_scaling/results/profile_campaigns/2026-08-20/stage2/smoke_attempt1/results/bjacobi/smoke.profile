****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026-profile-stage2-20260820T053301Z/source/morrow/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0136.gadi.nci.org.au with 104 processes, by sg8812 on Thu Aug 20 15:42:34 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           7.293e+01     1.000   7.293e+01
Objects:              0.000e+00     0.000   0.000e+00
Flops:                1.779e+10     1.271   1.617e+10  1.682e+12
Flops/sec:            2.439e+08     1.271   2.218e+08  2.306e+10
MPI Msg Count:        3.507e+04     3.496   2.534e+04  2.635e+06
MPI Msg Len (bytes):  1.705e+08     2.250   5.282e+03  1.392e+10
MPI Reductions:       7.570e+03     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 7.2929e+01 100.0%  1.6819e+12 100.0%  2.635e+06 100.0%  5.282e+03      100.0%  7.551e+03  99.7%

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

BuildTwoSided        651 1.0 5.9917e-01 2.4 0.00e+00 0.0 5.3e+04 4.0e+00 6.5e+02  1  0  2  0  9   1  0  2  0  9    -0
BuildTwoSidedF       614 1.0 6.0038e-01 2.4 0.00e+00 0.0 8.2e+04 4.8e+04 6.1e+02  1  0  3 28  8   1  0  3 28  8    -0
SFSetGraph            40 1.0 2.2556e-04 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               37 1.0 6.0868e-03 1.6 0.00e+00 0.0 2.4e+04 1.3e+02 3.7e+01  0  0  1  0  0   0  0  1  0  0    -0
SFBcastBegin        1241 1.0 2.0724e-02 2.6 0.00e+00 0.0 6.4e+05 3.8e+03 0.0e+00  0  0 24 17  0   0  0 24 17  0    -0
SFBcastEnd          1241 1.0 3.8946e-01 43.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFReduceBegin        976 1.0 1.2546e-02 3.4 0.00e+00 0.0 5.1e+05 4.0e+03 0.0e+00  0  0 19 15  0   0  0 19 15  0    -0
SFReduceEnd          976 1.0 1.9640e-01 31.7 3.13e+06 2.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1298
SFFetchOpBegin         2 1.0 8.6980e-06 4.4 0.00e+00 0.0 8.2e+02 4.1e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 2.4484e-04 38.1 0.00e+00 0.0 8.2e+02 4.1e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 7.2451e-04 1.5 0.00e+00 0.0 6.6e+02 2.6e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         21 1.0 3.7619e-03 1.3 0.00e+00 0.0 2.1e+04 6.3e+01 2.4e+01  0  0  1  0  0   0  0  1  0  0    -0
SFSectionSF           21 1.0 1.8766e-03 2.7 0.00e+00 0.0 9.9e+03 3.5e+01 2.1e+01  0  0  0  0  0   0  0  0  0  0    -0
SFPack              4835 1.0 1.8724e-02 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            4837 1.0 6.0983e-03 4.8 3.14e+06 2.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 42030
VecDot               153 1.0 1.5174e-02 4.6 1.54e+06 1.1 0.0e+00 0.0e+00 1.5e+02  0  0  0  0  2   0  0  0  0  2 10330
VecMDot             2456 1.0 4.2332e-01 4.2 2.20e+08 1.1 0.0e+00 0.0e+00 2.5e+03  0  1  0  0 32   0  1  0  0 33 52869
VecNorm             3729 1.0 5.3068e-01 1.7 3.76e+07 1.1 0.0e+00 0.0e+00 3.7e+03  1  0  0  0 49   1  0  0  0 49  7199
VecScale            2611 1.0 6.2964e-03 1.2 1.32e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 212432
VecCopy             2540 1.0 7.4181e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               318 1.0 3.6066e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              157 1.0 5.0230e-03 1.2 1.58e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 32024
VecWAXPY             959 1.0 4.7599e-03 1.7 8.90e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 189955
VecMAXPY            2611 1.0 2.1312e-02 1.5 2.45e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   0  1  0  0  0 1168287
VecScatterBegin     2616 1.0 5.6862e-02 2.9 0.00e+00 0.0 1.4e+06 4.0e+03 0.0e+00  0  0 52 40  0   0  0 52 40  0    -0
VecScatterEnd       2616 1.0 1.1852e-01 11.9 1.62e+04 2.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    11
VecReduceArith       306 1.0 1.7561e-03 1.9 3.08e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 178509
VecReduceComm        153 1.0 4.3058e-02 31.5 0.00e+00 0.0 0.0e+00 0.0e+00 1.5e+02  0  0  0  0  2   0  0  0  0  2    -0
VecNormalize        2611 1.0 8.7393e-02 1.8 3.95e+07 1.1 0.0e+00 0.0e+00 2.6e+03  0  0  0  0 34   0  0  0  0 35 45913
MatMult             2611 1.0 7.6932e-01 1.3 9.24e+08 1.1 1.4e+06 4.0e+03 0.0e+00  1  6 52 40  0   1  6 52 40  0 120981
MatMultTranspose       5 1.0 3.1046e-03 1.4 1.81e+06 1.1 2.6e+03 4.0e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0 58660
MatSolve            2611 1.0 6.9844e-01 1.7 8.45e+08 1.1 0.0e+00 0.0e+00 0.0e+00  1  5  0  0  0   1  5  0  0  0 121341
MatLUFactorNum       153 1.0 1.9716e-01 1.2 4.46e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  3  0  0  0   0  3  0  0  0 214103
MatILUFactorSym        1 1.0 7.0732e-04 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin     614 1.0 6.3911e-01 1.9 0.00e+00 0.0 8.2e+04 4.8e+04 6.1e+02  1  0  3 28  8   1  0  3 28  8    -0
MatAssemblyEnd       614 1.0 2.3513e-01 13.8 5.95e+06 0.0 1.1e+03 1.0e+03 6.0e+00  0  0  0  0  0   0  0  0  0  0  1036
MatGetRowIJ            1 1.0 3.7570e-06 31.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         1 1.0 7.5364e-05 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       153 1.0 3.3427e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatView              171 1.1 5.9598e-02 5.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.6e+02  0  0  0  0  2   0  0  0  0  2    -0
PCSetUp              153 1.0 2.9573e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUpOnBlocks      153 1.0 1.9951e-01 1.2 4.46e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  3  0  0  0   0  3  0  0  0 211574
PCApply             2611 1.0 7.0736e-01 1.7 8.45e+08 1.1 0.0e+00 0.0e+00 0.0e+00  1  5  0  0  0   1  5  0  0  0 119811
PCApplyOnBlocks     2611 1.0 7.0469e-01 1.7 8.45e+08 1.1 0.0e+00 0.0e+00 0.0e+00  1  5  0  0  0   1  5  0  0  0 120265
KSPSetUp             153 1.0 1.4836e-04 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             153 1.0 1.6338e+00 1.0 2.22e+09 1.1 1.3e+06 4.0e+03 5.1e+03  2 13 49 37 67   2 13 49 37 67 136998
KSPGMRESOrthog      2456 1.0 4.4336e-01 3.7 4.40e+08 1.1 0.0e+00 0.0e+00 2.5e+03  0  3  0  0 32   0  3  0  0 33 100963
DMPlexCreateGmsh       1 1.0 1.3863e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 2.7320e-01 18.5 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Partition         2 1.0 4.9961e-02 1.0 0.00e+00 0.0 6.7e+03 6.1e+01 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         2 1.0 9.1064e-03 1.1 0.00e+00 0.0 2.5e+04 7.1e+01 1.1e+02  0  0  1  0  1   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 1.5316e-03 747.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 6.0959e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 2.9743e-03 1.1 0.00e+00 0.0 1.3e+03 5.4e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 1.0930e-03 1.6 0.00e+00 0.0 6.6e+02 2.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 1.0421e-03 2.0 0.00e+00 0.0 7.6e+02 3.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp           1 1.0 6.0921e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 5.6743e-02 1.0 0.00e+00 0.0 4.4e+03 3.2e+02 6.3e+01  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistCones        2 1.0 1.1736e-03 1.0 0.00e+00 0.0 3.9e+03 1.3e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 3.9943e-03 1.0 0.00e+00 0.0 1.3e+04 7.3e+01 7.6e+01  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistOvrlp        1 1.0 3.4111e-03 1.1 0.00e+00 0.0 2.8e+04 3.7e+01 8.0e+01  0  0  1  0  1   0  0  1  0  1    -0
DMPlexDistField        3 1.0 1.8884e-03 1.2 0.00e+00 0.0 5.9e+03 3.5e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         4 1.0 4.9503e-03 16.8 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       4 1.0 4.0247e-04 71.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve              6 1.0 2.4394e+01 1.0 1.78e+10 1.3 2.6e+06 5.4e+03 7.3e+03 33 100 97 99 96  33 100 97 99 96 68946
SNESSetUp              1 1.0 1.6939e-05 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     965 1.0 1.1577e+01 1.0 1.13e+10 1.3 1.0e+06 4.0e+03 0.0e+00 16 63 39 29  0  16 63 39 29  0 91286
SNESJacobianEval     153 1.0 1.0627e+01 1.0 3.74e+09 1.3 1.6e+05 2.6e+04 6.1e+02 15 21  6 30  8  15 21  6 30  8 33010
SNESLineSearch       153 1.0 1.6523e+00 1.0 1.13e+10 1.3 1.1e+06 4.0e+03 1.4e+03  2 63 41 31 19   2 63 41 31 19 640452
firedrake              1 1.0 7.0716e+01 1.0 1.78e+10 1.3 2.6e+06 5.3e+03 7.5e+03 97 100 100 100 100  97 100 100 100 100 23784
firedrake.__init__       1 1.0 6.9844e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  9  0  0  0  0   9  0  0  0  0    -0
CreateMesh             1 1.0 3.8017e-01 3.1 0.00e+00 0.0 5.7e+04 6.2e+01 2.0e+02  0  0  2  0  3   0  0  2  0  3    -0
firedrake.mesh._from_gmsh       1 1.0 2.7405e-01 18.5 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 9.5426e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 1.5490e-06 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 1.9732e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 5.1210e-04 5.8 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       7 1.0 3.8743e-02 1.0 0.00e+00 0.0 1.1e+03 5.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element       9 1.0 9.0591e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       7 1.0 3.7775e-02 1.0 0.00e+00 0.0 1.1e+03 5.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       6 1.0 3.6895e-02 1.0 0.00e+00 0.0 1.1e+03 5.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       6 1.0 3.6844e-02 1.0 0.00e+00 0.0 1.1e+03 5.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      12 1.0 2.9975e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 2.5101e-03 1.1 0.00e+00 0.0 1.1e+03 5.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 4.6572e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 7.9134e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      55 1.0 3.0554e-02 7.5 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 1.7264e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  2  0  0  0  0   2  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 1.3964e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       2 1.0 4.0970e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       2 1.0 6.3599e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 1.7223e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  2  0  0  0  0   2  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     214 1.0 1.9989e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      5448 1.0 2.5563e+01 1.0 1.51e+10 1.3 6.0e+05 4.0e+03 1.5e+01 35 84 23 17  0  35 84 23 17  0 55048
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 1.6888e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)   10896 1.0 2.3468e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 32  0  0  0  0  32  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      15 1.0 1.0284e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 14  0  0  0  0  14  0  0  0  0    -0
GlobalKernel: generate loopy      15 0.0 1.3473e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      15 0.0 8.3261e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      15 1.0 1.3040e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 18  0  0  0  0  18  0  0  0  0    -0
pyop2.compilation.load      15 1.0 1.3039e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 18  0  0  0  0  18  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      15 1.0 8.2865e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 11  0  0  0  0  11  0  0  0  0    -0
pyop2.compilation.make_so      15 1.0 8.1852e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 11  0  0  0  0  11  0  0  0  0    -0
ParLoopRednBegin    5448 1.0 3.7470e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      5448 1.0 5.1496e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 5.8208e-04 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 4.5540e+00 1.0 8.52e+05 1.1 9.6e+03 1.7e+03 1.2e+01  6  0  0  0  0   6  0  0  0  0    19
firedrake.interpolation.interpolate      10 1.0 3.3065e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      10 1.0 4.5506e+00 1.0 8.52e+05 1.1 9.6e+03 1.7e+03 1.2e+01  6  0  0  0  0   6  0  0  0  0    19
firedrake.formmanipulation.split_form      12 1.0 3.6883e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      12 1.0 1.6458e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      10 1.0 1.4158e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       5 1.0 9.5025e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin    1138 1.0 2.8452e-02 1.8 0.00e+00 0.0 6.0e+05 4.0e+03 2.0e+00  0  0 23 17  0   0  0 23 17  0    -0
Parloop_Cells_wrap_expression_kernel      20 1.0 4.3776e+00 1.0 8.52e+05 1.1 0.0e+00 0.0e+00 0.0e+00  6  0  0  0  0   6  0  0  0  0    20
firedrake.halo.Halo.global_to_local_end    1138 1.0 3.5303e-01 42.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.assign      37 1.0 4.5223e-02 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      36 1.0 3.4509e-02 4.4 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 9.9094e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate       4 1.0 2.6535e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 2.2518e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.3624e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.9476e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.1199e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 2.9353e+00 1.0 0.00e+00 0.0 3.2e+03 1.6e+04 2.3e+01  4  0  0  0  0   4  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 5.7272e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 1.2262e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 4.9090e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  6  0  0  0  0   6  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 4.9090e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  6  0  0  0  0   6  0  0  0  0    -0
CreateSparsity         1 1.0 9.9625e-02 4.1 0.00e+00 0.0 1.6e+03 1.6e+04 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         1 1.0 5.4186e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve       6 1.0 2.4404e+01 1.0 1.78e+10 1.3 2.6e+06 5.4e+03 7.3e+03 33 100 97 99 96  33 100 97 99 96 68917
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 2.9048e-01 1054.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 7.4110e-06 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 2.9043e-01 1250.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 2.9040e-01 1434.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral    1930 1.0 2.0560e+00 1.2 2.76e+09 1.1 0.0e+00 0.0e+00 0.0e+00  2 17  0  0  0   2 17  0  0  0 136689
Parloop_Cells_wrap_form0_exterior_facet_top_integral    1930 1.0 9.8496e-01 1.0 3.59e+06 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0   371
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral    1930 1.0 1.3354e+00 1.0 7.60e+07 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0  1038
Parloop_Cells_wrap_form0_interior_facet_horiz_integral    1930 1.0 1.9043e+00 1.1 2.58e+09 1.1 0.0e+00 0.0e+00 0.0e+00  2 16  0  0  0   2 16  0  0  0 137476
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral    1930 1.0 3.0956e+00 1.1 5.98e+09 1.6 0.0e+00 0.0e+00 0.0e+00  4 30  0  0  0   4 30  0  0  0 165399
firedrake.halo.Halo.local_to_global_begin     965 1.0 1.7366e-02 2.0 0.00e+00 0.0 5.1e+05 4.0e+03 0.0e+00  0  0 19 15  0   0  0 19 15  0    -0
firedrake.halo.Halo.local_to_global_end     965 1.0 1.9946e-01 22.4 3.13e+06 2.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1278
Parloop_Cells_wrap_form00_cell_integral     306 1.0 2.3302e+00 1.0 8.18e+08 1.1 0.0e+00 0.0e+00 0.0e+00  3  5  0  0  0   3  5  0  0  0 35683
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     306 1.0 1.0903e+00 1.0 1.23e+07 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0   205
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     306 1.0 2.5685e+00 1.0 1.05e+09 1.1 0.0e+00 0.0e+00 0.0e+00  3  6  0  0  0   3  6  0  0  0 41539
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     306 1.0 4.0677e+00 1.1 1.87e+09 1.6 0.0e+00 0.0e+00 0.0e+00  5 10  0  0  0   5 10  0  0  0 39452
firedrake.constant.Constant.assign       5 1.0 1.6477e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container    18             18
              Viewer     9              9
           Index Set   491            491
   IS L to G Mapping     6              6
             Section    86             86
   Star Forest Graph    75             75
              Vector    82             82
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
Average time to get PetscTime(): 2.56e-08
Average time for MPI_Barrier(): 4.8556e-06
Average time for zero size MPI_Send(): 1.96783e-06
#PETSc Option Table entries:
-log_view :/scratch/xd2/sg8812/morrow2026-profile-stage2-20260820T053301Z/smoke/results/bjacobi/smoke.profile # (source: code)
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

