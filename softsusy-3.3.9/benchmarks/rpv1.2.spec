# SOFTSUSY3.3.9 SLHA compliant output
# B.C. Allanach, Comput. Phys. Commun. 143 (2002) 305-331, hep-ph/0104145
# B.C. Allanach and M.A. Bernhardt, Comput. Phys. Commun. 181 (2010) 232,
# arXiv:0903.1805
# B.C. Allanach, M. Hanussek and C.H. Kom, arXiv:1109.3735
Block SPINFO          # Program information
     1    SOFTSUSY    # spectrum calculator
     2    3.3.9       # version number
Block MODSEL  # Select model
     1    1   # sugra
     4    1   # R-parity violating
Block SMINPUTS             # Standard Model inputs
     1    1.27934000e+02   # alpha_em^(-1)(MZ) SM MSbar
     2    1.16637000e-05   # G_Fermi
     3    1.17200000e-01   # alpha_s(MZ)MSbar
     4    9.11876000e+01   # MZ(pole)
     5    4.25000000e+00   # mb(mb)
     6    1.73300000e+02   # Mtop(pole)
     7    1.77700000e+00   # Mtau(pole)
    21    4.75000000e-03   # Mdown(2 GeV) MSbar
    22    2.40000000e-03   # Mup(2 GeV) MSbar
    23    1.04000000e-01   # Mstrange(2 GeV) MSbar
    24    1.27000000e+00   # Mcharm(Mcharm) MSbar
    11    5.10998902e-04   # Me(pole)
    13    1.05658357e-01   # Mmu(pole)
Block VCKMIN               # input CKM mixing matrix parameters
     1    2.27200000e-01   # lambda
     2    8.18000000e-01   # A
     3    2.21000000e-01   # rhobar
     4    3.40000000e-01   # etabar (no phases used in SOFTSUSY yet though)
Block MINPAR               # SUSY breaking input parameters
     3    1.00000000e+01   # tanb
     4    1.00000000e+00   # sign(mu)
     1    1.37500000e+02   # m0
     2    5.50000000e+02   # m12
     5    0.00000000e+00   # A0
Block EXTPAR               # scale of SUSY breaking BCs
     0    1.52879051e+16   # MX scale
Block RVLAMLLEIN           # input LLE couplings at MSUSY
  1 2 1   1.00000000e-02   # lambda_{121}
  2 1 1  -1.00000000e-02   # lambda_{211}
# SOFTSUSY-specific non SLHA information:
# MIXING=1 Desired accuracy=1.00000000e-03 Achieved accuracy=2.72598449e-04
Block MASS                      # Mass spectrum
# PDG code     mass             particle
        24     8.05094247e+01   # MW
        25     1.15397722e+02   # CP even neutral scalar
        35     3.86474861e+02   # CP even neutral scalar
        36     3.86474861e+02   # CP odd neutral scalar
        37     2.44656395e+02   # charged scalar
   1000021     1.25249562e+03   # ~g
   1000022     2.27135049e+02   # ~neutralino(1)
   1000023     4.28319144e+02   # ~neutralino(2)
   1000024     4.28364325e+02   # ~chargino(1)
   1000025    -6.97935375e+02   # ~neutralino(3)
   1000035     7.10632344e+02   # ~neutralino(4)
   1000037     7.10917395e+02   # ~chargino(2)
   1000011     2.51762632e+02   # charged scalar
   1000013     2.51771153e+02   # charged scalar
   1000015     3.95689610e+02   # charged scalar
   2000011     3.95715993e+02   # charged scalar
   2000013     3.95719540e+02   # charged scalar
   2000015     7.85515161e+02   # charged scalar
   1000012     3.87559123e+02   # CP even neutral scalar
   1000014     3.87562753e+02   # CP even neutral scalar
   1000016     7.81158317e+02   # CP even neutral scalar
   1000017     3.87559123e+02   # CP odd neutral scalar
   1000018     3.87562753e+02   # CP odd neutral scalar
   1000019     7.81158317e+02   # CP odd neutral scalar
   1000001     1.05575308e+03   # ~d_1
   1000003     1.09482118e+03   # ~d_2
   1000005     1.10302429e+03   # ~d_3
   2000001     1.10302803e+03   # ~d_4
   2000003     1.15179288e+03   # ~d_5
   2000005     1.15181351e+03   # ~d_6
   1000002     8.84190877e+02   # ~u_1
   1000004     1.08710544e+03   # ~u_2
   1000006     1.10687825e+03   # ~u_3
   2000002     1.10688384e+03   # ~u_4
   2000004     1.14921837e+03   # ~u_5
   2000006     1.14922277e+03   # ~u_6
        12     1.82469019e-42   # Mnu1 inverted hierarchy output
        14     2.19187729e-14   # Mnu2 inverted hierarchy output
        16     0.00000000e+00   # Mnu3 inverted hierarchy output
Block RVNMIX  # neutrino-neutralino mixing matrix 
  1 1    0.00000000e+00   # N_{11}
  1 2    0.00000000e+00   # N_{12}
  1 3    1.00000000e+00   # N_{13}
  1 4    0.00000000e+00   # N_{14}
  1 5    0.00000000e+00   # N_{15}
  1 6    0.00000000e+00   # N_{16}
  1 7    0.00000000e+00   # N_{17}
  2 1    1.00000000e+00   # N_{21}
  2 2    4.12754834e-15   # N_{22}
  2 3    0.00000000e+00   # N_{23}
  2 4   -1.86860774e-24   # N_{24}
  2 5   -2.50680784e-24   # N_{25}
  2 6    1.19994401e-23   # N_{26}
  2 7    1.70229215e-27   # N_{27}
  3 1   -4.12754834e-15   # N_{31}
  3 2    1.00000000e+00   # N_{32}
  3 3    0.00000000e+00   # N_{33}
  3 4   -4.60437944e-10   # N_{34}
  3 5    4.78923149e-10   # N_{35}
  3 6   -2.46565732e-09   # N_{36}
  3 7    4.52538878e-12   # N_{37}
  4 1   -1.77503013e-24   # N_{41}
  4 2    6.52455205e-10   # N_{42}
  4 3    0.00000000e+00   # N_{43}
  4 4    9.96525425e-01   # N_{44}
  4 5   -1.47328554e-02   # N_{45}
  4 6    7.56057235e-02   # N_{46}
  4 7   -3.16827298e-02   # N_{47}
  5 1    8.44503226e-24   # N_{51}
  5 2   -9.05444844e-10   # N_{52}
  5 3    0.00000000e+00   # N_{53}
  5 4    3.22740108e-02   # N_{54}
  5 5    9.74656806e-01   # N_{55}
  5 6   -1.83707767e-01   # N_{56}
  5 7    1.23506906e-01   # N_{57}
  6 1   -1.54038226e-23   # N_{61}
  6 2    1.69781372e-09   # N_{62}
  6 3    0.00000000e+00   # N_{63}
  6 4   -3.02543611e-02   # N_{64}
  6 5    4.39781065e-02   # N_{65}
  6 6    7.04076190e-01   # N_{66}
  6 7    7.08115329e-01   # N_{67}
  7 1    1.41476714e-23   # N_{71}
  7 2   -1.54685402e-09   # N_{72}
  7 3    0.00000000e+00   # N_{73}
  7 4    7.05701047e-02   # N_{74}
  7 5   -2.18844649e-01   # N_{75}
  7 6   -6.81771186e-01   # N_{76}
  7 7    6.94488970e-01   # N_{77}
Block RVUMIX  # lepton-chargino mixing matrix U
  1 1   -1.00000000e+00   # U_{11}
  1 2    2.59222641e-18   # U_{12}
  1 3    0.00000000e+00   # U_{13}
  1 4    3.55036694e-23   # U_{14}
  1 5   -4.64448411e-22   # U_{15}
  2 1    2.53801630e-18   # U_{21}
  2 2    1.00000000e+00   # U_{22}
  2 3    0.00000000e+00   # U_{23}
  2 4    3.24178529e-10   # U_{24}
  2 5   -4.29921512e-09   # U_{25}
  3 1    0.00000000e+00   # U_{31}
  3 2    0.00000000e+00   # U_{32}
  3 3    1.00000000e+00   # U_{33}
  3 4    0.00000000e+00   # U_{34}
  3 5    0.00000000e+00   # U_{35}
  4 1   -1.56506071e-22   # U_{41}
  4 2    1.44444200e-09   # U_{42}
  4 3    0.00000000e+00   # U_{43}
  4 4   -9.64732210e-01   # U_{44}
  4 5    2.63233287e-01   # U_{45}
  5 1   -4.38712064e-22   # U_{51}
  5 2    4.06225672e-09   # U_{52}
  5 3    0.00000000e+00   # U_{53}
  5 4    2.63233287e-01   # U_{54}
  5 5    9.64732210e-01   # U_{55}
Block RVVMIX  # lepton-chargino mixing matrix V
  1 1   -1.00000000e+00   # V_{11}
  1 2    4.23112632e-17   # V_{12}
  1 3    0.00000000e+00   # V_{13}
  1 4    3.02889944e-28   # V_{14}
  1 5   -9.74962695e-28   # V_{15}
  2 1    6.42121470e-17   # V_{21}
  2 2    1.00000000e+00   # V_{22}
  2 3    0.00000000e+00   # V_{23}
  2 4    5.77173788e-13   # V_{24}
  2 5   -1.85784602e-12   # V_{25}
  3 1    0.00000000e+00   # V_{31}
  3 2    0.00000000e+00   # V_{32}
  3 3    1.00000000e+00   # V_{33}
  3 4    0.00000000e+00   # V_{34}
  3 5    0.00000000e+00   # V_{35}
  4 1   -4.10628490e-28   # V_{41}
  4 2    8.91567705e-13   # V_{42}
  4 3    0.00000000e+00   # V_{43}
  4 4   -9.84752382e-01   # V_{44}
  4 5    1.73961910e-01   # V_{45}
  5 1   -7.96375526e-28   # V_{51}
  5 2    1.72911204e-12   # V_{52}
  5 3    0.00000000e+00   # V_{53}
  5 4    1.73961910e-01   # V_{54}
  5 5    9.84752382e-01   # V_{55}
Block gauge Q= 9.55779963e+02  # SM gauge couplings
     1     3.62891638e-01   # g'(Q)MSSM DRbar
     2     6.41875148e-01   # g(Q)MSSM DRbar
     3     1.05977262e+00   # g3(Q)MSSM DRbar
Block yu Q= 9.55779963e+02   # diagonal Up Yukawa matrix
  1  1     7.31062074e-06    # YU_{11}(Q)MSSM DRbar
  2  2     3.34879839e-03    # YU_{22}(Q)MSSM DRbar
  3  3     8.54640022e-01    # YU_{33}(Q)MSSM DRbar
Block yd Q= 9.55779963e+02   # diagonal down Yukawa matrix
  1  1     1.40687409e-04    # YD_{11}(Q)MSSM DRbar
  2  2     3.08037441e-03    # YD_{22}(Q)MSSM DRbar
  3  3     1.34276863e-01    # YD_{33}(Q)MSSM DRbar
Block ye Q= 9.55779963e+02   # diagonal lepton Yukawa matrix
  1  1     2.78734169e-05    # YE_{11}(Q)MSSM DRbar
  2  2     5.76333671e-03    # YE_{22}(Q)MSSM DRbar
  3  3     1.00247609e-01    # YE_{33}(Q)MSSM DRbar
Block hmix Q= 9.55779963e+02 # Higgs mixing parameters
     1     6.92550257e+02    # mu(Q)MSSM DRbar
     2     9.66513561e+00    # tan beta(Q)MSSM DRbar
     3     2.44434433e+02    # higgs vev(Q)MSSM DRbar
     4     6.32788158e+05    # mA^2(Q)MSSM DRbar
Block RVLAMLLE Q= 9.55779963e+02 # non-zero R-Parity violating LLE couplings 
  1 2 1    9.99999975e-03   # lambda_{121}
  1 2 2    1.01310254e-30   # lambda_{122}
  1 3 3    5.84726648e-30   # lambda_{133}
  2 1 1   -9.99999975e-03   # lambda_{211}
  2 1 2   -1.01310254e-30   # lambda_{212}
  2 3 3   -4.40498944e-16   # lambda_{233}
  3 1 3   -5.84726648e-30   # lambda_{313}
  3 2 3    4.40498944e-16   # lambda_{323}
Block RVLAMLQD Q= 9.55779963e+02 # non-zero R-Parity violating LQD couplings 
  1 1 1    8.21006003e-33   # lambda'_{111}
  1 1 2   -4.77004147e-37   # lambda'_{112}
  1 1 3    4.82205162e-34   # lambda'_{113}
  1 2 1   -2.17862342e-38   # lambda'_{121}
  1 2 2    1.79760613e-31   # lambda'_{122}
  1 2 3   -3.55005071e-33   # lambda'_{123}
  1 3 1    5.10758364e-37   # lambda'_{131}
  1 3 2   -8.23300119e-35   # lambda'_{132}
  1 3 3    7.83382451e-30   # lambda'_{133}
  2 1 1   -6.18498002e-19   # lambda'_{211}
  2 1 2    3.59347430e-23   # lambda'_{212}
  2 1 3   -3.63265563e-20   # lambda'_{213}
  2 2 1    1.64124931e-24   # lambda'_{221}
  2 2 2   -1.35421153e-17   # lambda'_{222}
  2 2 3    2.67440350e-19   # lambda'_{223}
  2 3 1   -3.84775904e-23   # lambda'_{231}
  2 3 2    6.20226843e-21   # lambda'_{232}
  2 3 3   -5.90154621e-16   # lambda'_{233}
Block RVLAMUDD Q= 9.55779963e+02 # non-zero R-Parity violating UDD couplings 
Block RVTLLE Q= 9.55779963e+02 # non-zero R-Parity violating LLE soft terms 
  1 2 1    1.96115468e-07   # T_{121}
  1 2 2   -7.66589488e-28   # T_{122}
  1 3 3   -5.70340194e-27   # T_{133}
  2 1 1   -1.96115468e-07   # T_{211}
  2 1 2    7.66589488e-28   # T_{212}
  2 3 3    4.29666090e-13   # T_{233}
  3 1 3    5.70340194e-27   # T_{313}
  3 2 3   -4.29666090e-13   # T_{323}
Block RVTLQD Q= 9.55779963e+02 # non-zero R-Parity violating LQD soft terms 
  1 1 1   -1.78417772e-29   # T'_{111}
  1 1 2   -3.24265563e-33   # T'_{112}
  1 1 3    3.28065551e-30   # T'_{113}
  1 2 1   -1.48102716e-34   # T'_{121}
  1 2 2   -3.90618290e-28   # T'_{122}
  1 2 3   -2.41527228e-29   # T'_{123}
  1 3 1    3.49064266e-33   # T'_{131}
  1 3 2   -5.62663391e-31   # T'_{132}
  1 3 3   -1.62348101e-26   # T'_{133}
  2 1 1    1.34410221e-15   # T'_{211}
  2 1 2    2.44281922e-19   # T'_{212}
  2 1 3   -2.47144617e-16   # T'_{213}
  2 2 1    1.11571564e-20   # T'_{221}
  2 2 2    2.94270520e-14   # T'_{222}
  2 2 3    1.81951912e-15   # T'_{223}
  2 3 1   -2.62963768e-19   # T'_{231}
  2 3 2    4.23876346e-17   # T'_{232}
  2 3 3    1.22304246e-12   # T'_{233}
Block RVTUDD Q= 9.55779963e+02 # non-zero R-Parity violating UDD soft terms 
Block RVKAPPA Q= 9.55779963e+02 # R-Parity violating kappa 
     1    4.03910536e-26   # kappa_{1}
     2   -3.04282633e-12   # kappa_{2}
     3    0.00000000e+00   # kappa_{3}
Block RVD Q= 9.55779963e+02 # R-Parity violating D 
     1   -2.24790047e-23   # D_{1}
     2    1.69347188e-09   # D_{2}
     3    0.00000000e+00   # D_{3}
Block RVSNVEV Q= 9.55779963e+02 # sneutrino VEVs D 
     1    2.30947471e-21   # SneutrinoVev_{1}
     2   -1.94972633e-07   # SneutrinoVev_{2}
     3    0.00000000e+00   # SneutrinoVev_{3}
Block RVM2LH1 Q= 9.55779963e+02 # M2LH1 
     1    4.09466055e-23   # M2LH1_{1}
     2   -3.08474044e-09   # M2LH1_{2}
     3    0.00000000e+00   # M2LH1_{3}
Block UPMNS Q= 9.11876000e+01 # neutrino mixing matrix (inverted  hierarchy)
  1  1     1.00000000e+00   # UPMNS_{11} matrix element
  1  2    -4.13019227e-15   # UPMNS_{12} matrix element
  1  3     0.00000000e+00   # UPMNS_{13} matrix element
  2  1     4.13019227e-15   # UPMNS_{21} matrix element
  2  2     1.00000000e+00   # UPMNS_{22} matrix element
  2  3     0.00000000e+00   # UPMNS_{23} matrix element
  3  1     0.00000000e+00   # UPMNS_{31} matrix element
  3  2     0.00000000e+00   # UPMNS_{32} matrix element
  3  3     1.00000000e+00   # UPMNS_{33} matrix element
Block msq2 Q= 9.55779963e+02 # super CKM squark mass^2 matrix - DRbar
  1  1     1.23574798e+06    # (m^_Q^2)_{11}
  1  2     4.23671305e+01    # (m^_Q^2)_{12}
  1  3    -1.00189527e+03    # (m^_Q^2)_{13}
  2  1     4.23671305e+01    # (m^_Q^2)_{21}
  2  2     1.23544096e+06    # (m^_Q^2)_{22}
  2  3     7.37615086e+03    # (m^_Q^2)_{23}
  3  1    -1.00189527e+03    # (m^_Q^2)_{31}
  3  2     7.37615086e+03    # (m^_Q^2)_{32}
  3  3     1.05248676e+06    # (m^_Q^2)_{33}
Block msl2 Q= 9.55779963e+02 # super MNS slepton mass^2 matrix - DRbar
  1  1     1.50459390e+05    # (m^_L^2)_{11}
  1  2    -2.84597948e-24    # (m^_L^2)_{12}
  1  3     0.00000000e+00    # (m^_L^2)_{13}
  2  1    -2.84597948e-24    # (m^_L^2)_{21}
  2  2     1.50456604e+05    # (m^_L^2)_{22}
  2  3     0.00000000e+00    # (m^_L^2)_{23}
  3  1     0.00000000e+00    # (m^_L^2)_{31}
  3  2     0.00000000e+00    # (m^_L^2)_{32}
  3  3     1.49625483e+05    # (m^_L^2)_{33}
Block msd2 Q= 9.55779963e+02 # super CKM squark mass^2 matrix - DRbar
  1  1     1.13396903e+06    # (m^_d^2)_{11}
  1  2    -2.99977961e-06    # (m^_d^2)_{12}
  1  3     3.10662811e-03    # (m^_d^2)_{13}
  2  1    -2.99977961e-06    # (m^_d^2)_{21}
  2  2     1.13396276e+06    # (m^_d^2)_{22}
  2  3    -5.00778487e-01    # (m^_d^2)_{23}
  3  1     3.10662811e-03    # (m^_d^2)_{31}
  3  2    -5.00778487e-01    # (m^_d^2)_{32}
  3  3     1.12258122e+06    # (m^_d^2)_{33}
Block msu2 Q= 9.55779963e+02 # super CKM squark mass^2 matrix - DRbar
  1  1     1.14483471e+06    # (m^_u^2)_{11}
  1  2    -1.52512043e-08    # (m^_u^2)_{12}
  1  3    -1.36403046e-05    # (m^_u^2)_{13}
  2  1    -1.52512043e-08    # (m^_u^2)_{21}
  2  2     1.14482827e+06    # (m^_u^2)_{22}
  2  3    -6.63889739e-02    # (m^_u^2)_{23}
  3  1    -1.36403046e-05    # (m^_u^2)_{31}
  3  2    -6.63889739e-02    # (m^_u^2)_{32}
  3  3     7.80568204e+05    # (m^_u^2)_{33}
Block mse2 Q= 9.55779963e+02 # super MNS slepton mass^2 matrix - DRbar
  1  1     5.94670078e+04    # (m^_e^2)_{11}
  1  2    -9.96602757e-16    # (m^_e^2)_{12}
  1  3     0.00000000e+00    # (m^_e^2)_{13}
  2  1    -9.96602757e-16    # (m^_e^2)_{21}
  2  2     5.94768489e+04    # (m^_e^2)_{22}
  2  3     0.00000000e+00    # (m^_e^2)_{23}
  3  1     0.00000000e+00    # (m^_e^2)_{31}
  3  2     0.00000000e+00    # (m^_e^2)_{32}
  3  3     5.77661897e+04    # (m^_e^2)_{33}
Block tu Q= 9.55779963e+02   # super CKM trilinear matrix - DRbar
  1  1    -9.10504492e-03    # (T^_u)_{11}
  1  2    -1.93851505e-08    # (T^_u)_{12}
  1  3    -8.62329263e-08    # (T^_u)_{13}
  2  1    -8.87982961e-06    # (T^_u)_{21}
  2  2    -4.17081051e+00    # (T^_u)_{22}
  2  3    -4.19329604e-04    # (T^_u)_{23}
  3  1    -1.18995982e-02    # (T^_u)_{31}
  3  2    -1.26297972e-01    # (T^_u)_{32}
  3  3    -8.26465589e+02    # (T^_u)_{33}
Block td Q= 9.55779963e+02   # super CKM trilinear matrix - DRbar
  1  1    -2.13478012e-01    # (T^_d)_{11}
  1  2    -3.13923196e-06    # (T^_d)_{12}
  1  3     7.46299395e-05    # (T^_d)_{13}
  2  1    -6.87337551e-05    # (T^_d)_{21}
  2  2    -4.67365010e+00    # (T^_d)_{22}
  2  3    -1.20300652e-02    # (T^_d)_{23}
  3  1     7.10930840e-02    # (T^_d)_{31}
  3  2    -5.23402247e-01    # (T^_d)_{32}
  3  3    -1.90646234e+02    # (T^_d)_{33}
Block te Q= 9.55779963e+02   # super CKM trilinear matrix - DRbar
  1  1    -9.07928544e-03    # (T^_e)_{11}
  1  2    -2.28860203e-21    # (T^_e)_{12}
  1  3     0.00000000e+00    # (T^_e)_{13}
  2  1    -1.08930577e-23    # (T^_e)_{21}
  2  2    -1.87723893e+00    # (T^_e)_{22}
  2  3     0.00000000e+00    # (T^_e)_{23}
  3  1     0.00000000e+00    # (T^_e)_{31}
  3  2     0.00000000e+00    # (T^_e)_{32}
  3  3    -3.24769960e+01    # (T^_e)_{33}
Block VCKM Q= 9.55779963e+02 # DRbar CKM mixing matrix
  1  1     9.73840729e-01    # CKM_{11} matrix element
  1  2     2.27197384e-01    # CKM_{12} matrix element
  1  3     3.94746568e-03    # CKM_{13} matrix element
  2  1    -2.27161573e-01    # CKM_{21} matrix element
  2  2     9.72961909e-01    # CKM_{22} matrix element
  2  3     4.17461893e-02    # CKM_{23} matrix element
  3  1     5.64389126e-03    # CKM_{31} matrix element
  3  2    -4.15508520e-02    # CKM_{32} matrix element
  3  3     9.99120450e-01    # CKM_{33} matrix element
Block msoft Q= 9.55779963e+02 # MSSM DRbar SUSY breaking parameters
     1     2.32441186e+02     # M_1(Q)
     2     4.28956977e+02     # M_2(Q)
     3     1.21682747e+03     # M_3(Q)
    21     1.31346851e+05     # mH1^2(Q)
    22    -4.48802047e+05     # mH2^2(Q)
Block USQMIX  # super CKM squark mass^2 matrix
  1  1     2.10610553e-05   # (USQMIX)_{11}
  1  2     2.23014679e-04   # (USQMIX)_{12}
  1  3     4.08097278e-01   # (USQMIX)_{13}
  1  4     1.20363094e-10   # (USQMIX)_{14}
  1  5     5.84460545e-07   # (USQMIX)_{15}
  1  6     9.12938422e-01   # (USQMIX)_{16}
  2  1     1.46707176e-04   # (USQMIX)_{21}
  2  2     1.55272125e-03   # (USQMIX)_{22}
  2  3     9.12937191e-01   # (USQMIX)_{23}
  2  4     5.78050914e-09   # (USQMIX)_{24}
  2  5     2.80306854e-05   # (USQMIX)_{25}
  2  6    -4.08097111e-01   # (USQMIX)_{26}
  3  1     1.44513825e-07   # (USQMIX)_{31}
  3  2     7.93868282e-03   # (USQMIX)_{32}
  3  3    -3.78039641e-05   # (USQMIX)_{33}
  3  4     2.26870253e-08   # (USQMIX)_{34}
  3  5     9.99968487e-01   # (USQMIX)_{35}
  3  6     1.43194837e-05   # (USQMIX)_{36}
  4  1     1.73305682e-05   # (USQMIX)_{41}
  4  2     1.35407215e-10   # (USQMIX)_{42}
  4  3    -7.79611506e-09   # (USQMIX)_{43}
  4  4     1.00000000e+00   # (USQMIX)_{44}
  4  5    -2.26916569e-08   # (USQMIX)_{45}
  4  6     2.95331337e-09   # (USQMIX)_{46}
  5  1     1.62526438e-01   # (USQMIX)_{51}
  5  2     9.86671844e-01   # (USQMIX)_{52}
  5  3    -1.51140872e-03   # (USQMIX)_{53}
  5  4    -2.81699991e-06   # (USQMIX)_{54}
  5  5    -7.83320846e-03   # (USQMIX)_{55}
  5  6     4.30851708e-04   # (USQMIX)_{56}
  6  1     9.86704178e-01   # (USQMIX)_{61}
  6  2    -1.62521349e-01   # (USQMIX)_{62}
  6  3     1.04503949e-04   # (USQMIX)_{63}
  6  4    -1.71000918e-05   # (USQMIX)_{64}
  6  5     1.29010788e-03   # (USQMIX)_{65}
  6  6    -2.97773821e-05   # (USQMIX)_{66}
Block DSQMIX  # super CKM squark mass^2 matrix
  1  1     4.62262474e-03   # (DSQMIX)_{11}
  1  2    -3.40331459e-02   # (DSQMIX)_{12}
  1  3     9.77216979e-01   # (DSQMIX)_{13}
  1  4     9.11630880e-07   # (DSQMIX)_{14}
  1  5    -1.46963125e-04   # (DSQMIX)_{15}
  1  6     2.09445290e-01   # (DSQMIX)_{16}
  2  1    -1.65024042e-03   # (DSQMIX)_{21}
  2  2     1.21506393e-02   # (DSQMIX)_{22}
  2  3    -2.09141058e-01   # (DSQMIX)_{23}
  2  4    -2.03294933e-06   # (DSQMIX)_{24}
  2  5     3.27852241e-04   # (DSQMIX)_{25}
  2  6     9.77808544e-01   # (DSQMIX)_{26}
  3  1     1.71177896e-06   # (DSQMIX)_{31}
  3  2     4.07706621e-03   # (DSQMIX)_{32}
  3  3     3.58649291e-04   # (DSQMIX)_{33}
  3  4     4.71281127e-06   # (DSQMIX)_{34}
  3  5     9.99991577e-01   # (DSQMIX)_{35}
  3  6    -3.09239795e-04   # (DSQMIX)_{36}
  4  1     1.86786990e-04   # (DSQMIX)_{41}
  4  2     5.89153322e-08   # (DSQMIX)_{42}
  4  3    -2.22640863e-06   # (DSQMIX)_{43}
  4  4     9.99999983e-01   # (DSQMIX)_{44}
  4  5    -4.71201889e-06   # (DSQMIX)_{45}
  4  6     1.91897308e-06   # (DSQMIX)_{46}
  5  1    -1.36865247e-01   # (DSQMIX)_{51}
  5  2     9.89909904e-01   # (DSQMIX)_{52}
  5  3     3.61504716e-02   # (DSQMIX)_{53}
  5  4     2.55769367e-05   # (DSQMIX)_{54}
  5  5    -4.05017740e-03   # (DSQMIX)_{55}
  5  6    -4.79850886e-03   # (DSQMIX)_{56}
  6  1     9.90577497e-01   # (DSQMIX)_{61}
  6  2     1.36952062e-01   # (DSQMIX)_{62}
  6  3     8.61140442e-05   # (DSQMIX)_{63}
  6  4    -1.85037487e-04   # (DSQMIX)_{64}
  6  5    -5.60096537e-04   # (DSQMIX)_{65}
  6  6    -1.14243723e-05   # (DSQMIX)_{66}
Block RVLMIX  # charged higgs-slepton mixing matrix 
  1 1    0.00000000e+00   # C_{11}
  1 2    0.00000000e+00   # C_{12}
  1 3    0.00000000e+00   # C_{13}
  1 4    0.00000000e+00   # C_{14}
  1 5    1.32438241e-01   # C_{15}
  1 6    0.00000000e+00   # C_{16}
  1 7    0.00000000e+00   # C_{17}
  1 8    9.91191259e-01   # C_{18}
  2 1   -1.29336335e-28   # C_{21}
  2 2    1.88847466e-27   # C_{22}
  2 3    3.81959542e-05   # C_{23}
  2 4    1.88823622e-18   # C_{24}
  2 5    0.00000000e+00   # C_{25}
  2 6    9.99999999e-01   # C_{26}
  2 7    1.74881230e-16   # C_{27}
  2 8    0.00000000e+00   # C_{28}
  3 1   -7.11341411e-13   # C_{31}
  3 2    1.03869668e-11   # C_{32}
  3 3    1.17488487e-20   # C_{33}
  3 4    7.89805146e-03   # C_{34}
  3 5    0.00000000e+00   # C_{35}
  3 6   -1.74890689e-16   # C_{36}
  3 7    9.99968810e-01   # C_{37}
  3 8    0.00000000e+00   # C_{38}
  4 1   -2.34823435e-26   # C_{41}
  4 2   -1.08923041e-26   # C_{42}
  4 3    9.99999999e-01   # C_{43}
  4 4   -2.64382887e-18   # C_{44}
  4 5    0.00000000e+00   # C_{45}
  4 6   -3.81959542e-05   # C_{46}
  4 7    2.45220752e-21   # C_{47}
  4 8    0.00000000e+00   # C_{48}
  5 1    1.98174287e-12   # C_{51}
  5 2    8.88094055e-13   # C_{52}
  5 3    2.64374641e-18   # C_{53}
  5 4    9.99968810e-01   # C_{54}
  5 5    0.00000000e+00   # C_{55}
  5 6   -5.07057350e-19   # C_{56}
  5 7   -7.89805146e-03   # C_{57}
  5 8    0.00000000e+00   # C_{58}
  6 1    0.00000000e+00   # C_{61}
  6 2    0.00000000e+00   # C_{62}
  6 3    0.00000000e+00   # C_{63}
  6 4    0.00000000e+00   # C_{64}
  6 5    9.91191259e-01   # C_{65}
  6 6    0.00000000e+00   # C_{66}
  6 7    0.00000000e+00   # C_{67}
  6 8   -1.32438241e-01   # C_{68}
  7 1    9.94690129e-01   # C_{71}
  7 2    1.02915244e-01   # C_{72}
  7 3    2.44731796e-26   # C_{73}
  7 4   -2.06540861e-12   # C_{74}
  7 5    0.00000000e+00   # C_{75}
  7 6   -2.38461501e-30   # C_{76}
  7 7   -3.45111006e-13   # C_{77}
  7 8    0.00000000e+00   # C_{78}
Block RVHMIX  # CP-even neutral scalar mixing matrix 
  1 1    1.05503554e-01   # curlyN_{11}
  1 2    9.94418926e-01   # curlyN_{12}
  1 3    5.40953017e-25   # curlyN_{13}
  1 4   -4.56717034e-11   # curlyN_{14}
  1 5    0.00000000e+00   # curlyN_{15}
  2 1    0.00000000e+00   # curlyN_{21}
  2 2    0.00000000e+00   # curlyN_{22}
  2 3    0.00000000e+00   # curlyN_{23}
  2 4    0.00000000e+00   # curlyN_{24}
  2 5    1.00000000e+00   # curlyN_{25}
  3 1    7.57248351e-12   # curlyN_{31}
  3 2    4.51246233e-11   # curlyN_{32}
  3 3    2.64393319e-18   # curlyN_{33}
  3 4    1.00000000e+00   # curlyN_{34}
  3 5    0.00000000e+00   # curlyN_{35}
  4 1   -8.97281739e-26   # curlyN_{41}
  4 2   -5.34590720e-25   # curlyN_{42}
  4 3    1.00000000e+00   # curlyN_{43}
  4 4   -2.64393319e-18   # curlyN_{44}
  4 5    0.00000000e+00   # curlyN_{45}
  5 1    9.94418926e-01   # curlyN_{51}
  5 2   -1.05503554e-01   # curlyN_{52}
  5 3    3.28188512e-26   # curlyN_{53}
  5 4   -2.76941278e-12   # curlyN_{54}
  5 5    0.00000000e+00   # curlyN_{55}
Block RVAMIX  # CP-odd neutral scalar mixing matrix 
  1 1    0.00000000e+00   # curlyN~_{11}
  1 2    0.00000000e+00   # curlyN~_{12}
  1 3    0.00000000e+00   # curlyN~_{13}
  1 4    0.00000000e+00   # curlyN~_{14}
  1 5    1.00000000e+00   # curlyN~_{15}
  2 1   -4.80978476e-12   # curlyN~_{21}
  2 2    4.65869313e-11   # curlyN~_{22}
  2 3    2.64393319e-18   # curlyN~_{23}
  2 4    1.00000000e+00   # curlyN~_{24}
  2 5    0.00000000e+00   # curlyN~_{25}
  3 1    5.69718386e-26   # curlyN~_{31}
  3 2   -5.51964307e-25   # curlyN~_{32}
  3 3    1.00000000e+00   # curlyN~_{33}
  3 4   -2.64393319e-18   # curlyN~_{34}
  3 5    0.00000000e+00   # curlyN~_{35}
  4 1    9.94690132e-01   # curlyN~_{41}
  4 2    1.02915213e-01   # curlyN~_{42}
  4 3    1.36171552e-28   # curlyN~_{43}
  4 4   -1.02585259e-14   # curlyN~_{44}
  4 5    0.00000000e+00   # curlyN~_{45}