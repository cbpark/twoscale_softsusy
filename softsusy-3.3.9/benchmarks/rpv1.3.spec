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
     1    1.50000000e+02   # m0
     2    6.00000000e+02   # m12
     5    0.00000000e+00   # A0
Block EXTPAR               # scale of SUSY breaking BCs
     0    1.48270249e+16   # MX scale
Block RVLAMLLEIN           # input LLE couplings at MSUSY
  1 2 1   1.00000000e-02   # lambda_{121}
  2 1 1  -1.00000000e-02   # lambda_{211}
# SOFTSUSY-specific non SLHA information:
# MIXING=1 Desired accuracy=1.00000000e-03 Achieved accuracy=3.56725165e-04
Block MASS                      # Mass spectrum
# PDG code     mass             particle
        24     8.05200260e+01   # MW
        25     1.15950422e+02   # CP even neutral scalar
        35     4.21950287e+02   # CP even neutral scalar
        36     4.21950287e+02   # CP odd neutral scalar
        37     2.66770558e+02   # charged scalar
   1000021     1.35743757e+03   # ~g
   1000022     2.49016692e+02   # ~neutralino(1)
   1000023     4.69724629e+02   # ~neutralino(2)
   1000024     4.69791128e+02   # ~chargino(1)
   1000025    -7.53641478e+02   # ~neutralino(3)
   1000035     7.65752202e+02   # ~neutralino(4)
   1000037     7.66003295e+02   # ~chargino(2)
   1000011     2.73878858e+02   # charged scalar
   1000013     2.73890183e+02   # charged scalar
   1000015     4.30187934e+02   # charged scalar
   2000011     4.30628986e+02   # charged scalar
   2000013     4.30631553e+02   # charged scalar
   2000015     8.50027876e+02   # charged scalar
   1000012     4.23122119e+02   # CP even neutral scalar
   1000014     4.23126039e+02   # CP even neutral scalar
   1000016     8.45992478e+02   # CP even neutral scalar
   1000017     4.23122119e+02   # CP odd neutral scalar
   1000018     4.23126039e+02   # CP odd neutral scalar
   1000019     8.45992478e+02   # CP odd neutral scalar
   1000001     1.14378030e+03   # ~d_1
   1000003     1.18489119e+03   # ~d_2
   1000005     1.19388331e+03   # ~d_3
   2000001     1.19388719e+03   # ~d_4
   2000003     1.24721527e+03   # ~d_5
   2000005     1.24723784e+03   # ~d_6
   1000002     9.61161942e+02   # ~u_1
   1000004     1.17171049e+03   # ~u_2
   1000006     1.19828508e+03   # ~u_3
   2000002     1.19829064e+03   # ~u_4
   2000004     1.24485220e+03   # ~u_5
   2000006     1.24485740e+03   # ~u_6
        12     4.01057129e-43   # Mnu1 inverted hierarchy output
        14     1.99793696e-14   # Mnu2 inverted hierarchy output
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
  2 2   -9.96248862e-15   # N_{22}
  2 3    0.00000000e+00   # N_{23}
  2 4   -7.04817414e-24   # N_{24}
  2 5   -1.24619461e-24   # N_{25}
  2 6   -1.80937991e-23   # N_{26}
  2 7    9.99231975e-28   # N_{27}
  3 1    9.96248862e-15   # N_{31}
  3 2    1.00000000e+00   # N_{32}
  3 3    0.00000000e+00   # N_{33}
  3 4   -4.18397068e-10   # N_{34}
  3 5    4.35263890e-10   # N_{35}
  3 6   -2.44701479e-09   # N_{36}
  3 7    3.79533296e-12   # N_{37}
  4 1    1.41986775e-23   # N_{41}
  4 2    5.94191563e-10   # N_{42}
  4 3    0.00000000e+00   # N_{43}
  4 4    9.97021486e-01   # N_{44}
  4 5   -1.26342445e-02   # N_{45}
  4 6    7.00563143e-02   # N_{46}
  4 7   -2.96756724e-02   # N_{47}
  5 1   -1.00993808e-23   # N_{51}
  5 2   -8.39828337e-10   # N_{52}
  5 3    0.00000000e+00   # N_{53}
  5 4    2.81337450e-02   # N_{54}
  5 5    9.77196683e-01   # N_{55}
  5 6   -1.74012711e-01   # N_{56}
  5 7    1.18383745e-01   # N_{57}
  6 1    2.94570507e-23   # N_{61}
  6 2    1.69199599e-09   # N_{62}
  6 3    0.00000000e+00   # N_{63}
  6 4   -2.79186669e-02   # N_{64}
  6 5    4.04934369e-02   # N_{65}
  6 6    7.04527571e-01   # N_{66}
  6 7    7.07970149e-01   # N_{67}
  7 1   -2.77114661e-23   # N_{71}
  7 2   -1.55922445e-09   # N_{72}
  7 3    0.00000000e+00   # N_{73}
  7 4    6.61603905e-02   # N_{74}
  7 5   -2.08056001e-01   # N_{75}
  7 6   -6.84435965e-01   # N_{76}
  7 7    6.95616929e-01   # N_{77}
Block RVUMIX  # lepton-chargino mixing matrix U
  1 1    1.00000000e+00   # U_{11}
  1 2    5.42101086e-20   # U_{12}
  1 3    0.00000000e+00   # U_{13}
  1 4   -8.20644628e-26   # U_{14}
  1 5    9.95756369e-25   # U_{15}
  2 1   -2.22037836e-33   # U_{21}
  2 2   -1.00000000e+00   # U_{22}
  2 3    0.00000000e+00   # U_{23}
  2 4   -2.97904334e-10   # U_{24}
  2 5    4.43322986e-09   # U_{25}
  3 1    0.00000000e+00   # U_{31}
  3 2    0.00000000e+00   # U_{32}
  3 3    1.00000000e+00   # U_{33}
  3 4    0.00000000e+00   # U_{34}
  3 5    0.00000000e+00   # U_{35}
  4 1    3.27412834e-25   # U_{41}
  4 2   -1.39201263e-09   # U_{42}
  4 3    0.00000000e+00   # U_{43}
  4 4    9.68526082e-01   # U_{44}
  4 5   -2.48912091e-01   # U_{45}
  5 1   -9.44217920e-25   # U_{51}
  5 2    4.21954676e-09   # U_{52}
  5 3    0.00000000e+00   # U_{53}
  5 4    2.48912091e-01   # U_{54}
  5 5    9.68526082e-01   # U_{55}
Block RVVMIX  # lepton-chargino mixing matrix V
  1 1    1.00000000e+00   # V_{11}
  1 2   -2.60208521e-17   # V_{12}
  1 3    0.00000000e+00   # V_{13}
  1 4    0.00000000e+00   # V_{14}
  1 5   -1.35075518e-45   # V_{15}
  2 1    2.60208521e-17   # V_{21}
  2 2   -1.00000000e+00   # V_{22}
  2 3    0.00000000e+00   # V_{23}
  2 4   -4.89988687e-13   # V_{24}
  2 5    1.72592581e-12   # V_{25}
  3 1    0.00000000e+00   # V_{31}
  3 2    0.00000000e+00   # V_{32}
  3 3    1.00000000e+00   # V_{33}
  3 4    0.00000000e+00   # V_{34}
  3 5    0.00000000e+00   # V_{35}
  4 1    2.00456220e-29   # V_{41}
  4 2   -7.70367623e-13   # V_{42}
  4 3    0.00000000e+00   # V_{43}
  4 4    9.86056678e-01   # V_{44}
  4 5   -1.66409822e-01   # V_{45}
  5 1   -4.21621524e-29   # V_{51}
  5 2    1.62032174e-12   # V_{52}
  5 3    0.00000000e+00   # V_{53}
  5 4    1.66409822e-01   # V_{54}
  5 5    9.86056678e-01   # V_{55}
Block gauge Q= 1.03488249e+03  # SM gauge couplings
     1     3.63063602e-01   # g'(Q)MSSM DRbar
     2     6.41437674e-01   # g(Q)MSSM DRbar
     3     1.05565108e+00   # g3(Q)MSSM DRbar
Block yu Q= 1.03488249e+03   # diagonal Up Yukawa matrix
  1  1     7.29124917e-06    # YU_{11}(Q)MSSM DRbar
  2  2     3.33992491e-03    # YU_{22}(Q)MSSM DRbar
  3  3     8.51741929e-01    # YU_{33}(Q)MSSM DRbar
Block yd Q= 1.03488249e+03   # diagonal down Yukawa matrix
  1  1     1.40187453e-04    # YD_{11}(Q)MSSM DRbar
  2  2     3.06942948e-03    # YD_{22}(Q)MSSM DRbar
  3  3     1.33719156e-01    # YD_{33}(Q)MSSM DRbar
Block ye Q= 1.03488249e+03   # diagonal lepton Yukawa matrix
  1  1     2.78411949e-05    # YE_{11}(Q)MSSM DRbar
  2  2     5.75667345e-03    # YE_{22}(Q)MSSM DRbar
  3  3     1.00178256e-01    # YE_{33}(Q)MSSM DRbar
Block hmix Q= 1.03488249e+03 # Higgs mixing parameters
     1     7.48262952e+02    # mu(Q)MSSM DRbar
     2     9.65593683e+00    # tan beta(Q)MSSM DRbar
     3     2.44376678e+02    # higgs vev(Q)MSSM DRbar
     4     7.41871416e+05    # mA^2(Q)MSSM DRbar
Block RVLAMLLE Q= 1.03488249e+03 # non-zero R-Parity violating LLE couplings 
  1 2 1    9.99999971e-03   # lambda_{121}
  1 2 2   -4.60732882e-31   # lambda_{122}
  1 3 3   -2.66084246e-30   # lambda_{133}
  2 1 1   -9.99999971e-03   # lambda_{211}
  2 1 2    4.60732882e-31   # lambda_{212}
  2 3 3   -4.94556798e-16   # lambda_{233}
  3 1 3    2.66084246e-30   # lambda_{313}
  3 2 3    4.94556798e-16   # lambda_{323}
Block RVLAMLQD Q= 1.03488249e+03 # non-zero R-Parity violating LQD couplings 
  1 1 1   -3.72545166e-33   # lambda'_{111}
  1 1 2    2.22471245e-37   # lambda'_{112}
  1 1 3   -2.24688888e-34   # lambda'_{113}
  1 2 1    1.01609402e-38   # lambda'_{121}
  1 2 2   -8.15694202e-32   # lambda'_{122}
  1 2 3    1.65418590e-33   # lambda'_{123}
  1 3 1   -2.38212698e-37   # lambda'_{131}
  1 3 2    3.83979132e-35   # lambda'_{132}
  1 3 3   -3.55253570e-30   # lambda'_{133}
  2 1 1   -6.92430085e-19   # lambda'_{211}
  2 1 2    4.13496002e-23   # lambda'_{212}
  2 1 3   -4.17617809e-20   # lambda'_{213}
  2 2 1    1.88856233e-24   # lambda'_{221}
  2 2 2   -1.51608787e-17   # lambda'_{222}
  2 2 3    3.07455121e-19   # lambda'_{223}
  2 3 1   -4.42753832e-23   # lambda'_{231}
  2 3 2    7.13682493e-21   # lambda'_{232}
  2 3 3   -6.60291115e-16   # lambda'_{233}
Block RVLAMUDD Q= 1.03488249e+03 # non-zero R-Parity violating UDD couplings 
Block RVTLLE Q= 1.03488249e+03 # non-zero R-Parity violating LLE soft terms 
  1 2 1    2.40895926e-07   # T_{121}
  1 2 2    3.78795378e-28   # T_{122}
  1 3 3    2.81998856e-27   # T_{133}
  2 1 1   -2.40895926e-07   # T_{211}
  2 1 2   -3.78795378e-28   # T_{212}
  2 3 3    5.24142661e-13   # T_{233}
  3 1 3   -2.81998856e-27   # T_{313}
  3 2 3   -5.24142661e-13   # T_{323}
Block RVTLQD Q= 1.03488249e+03 # non-zero R-Parity violating LQD soft terms 
  1 1 1    8.76025401e-30   # T'_{111}
  1 1 2    1.56997833e-33   # T'_{112}
  1 1 3   -1.58681928e-30   # T'_{113}
  1 2 1    7.17060585e-35   # T'_{121}
  1 2 2    1.91792454e-28   # T'_{122}
  1 2 3    1.16824233e-29   # T'_{123}
  1 3 1   -1.69011590e-33   # T'_{131}
  1 3 2    2.72433028e-31   # T'_{132}
  1 3 3    7.96789354e-27   # T'_{133}
  2 1 1    1.62823067e-15   # T'_{211}
  2 1 2    2.91802555e-19   # T'_{212}
  2 1 3   -2.94932703e-16   # T'_{213}
  2 2 1    1.33275796e-20   # T'_{221}
  2 2 2    3.56476371e-14   # T'_{222}
  2 2 3    2.17134285e-15   # T'_{223}
  2 3 1   -3.14131831e-19   # T'_{231}
  2 3 2    5.06355132e-17   # T'_{232}
  2 3 3    1.48095851e-12   # T'_{233}
Block RVTUDD Q= 1.03488249e+03 # non-zero R-Parity violating UDD soft terms 
Block RVKAPPA Q= 1.03488249e+03 # R-Parity violating kappa 
     1   -1.98724977e-26   # kappa_{1}
     2   -3.69359664e-12   # kappa_{2}
     3    0.00000000e+00   # kappa_{3}
Block RVD Q= 1.03488249e+03 # R-Parity violating D 
     1    1.20159337e-23   # D_{1}
     2    2.23338462e-09   # D_{2}
     3    0.00000000e+00   # D_{3}
Block RVSNVEV Q= 1.03488249e+03 # sneutrino VEVs D 
     1   -1.05447902e-21   # SneutrinoVev_{1}
     2   -1.92967624e-07   # SneutrinoVev_{2}
     3    0.00000000e+00   # SneutrinoVev_{3}
Block RVM2LH1 Q= 1.03488249e+03 # M2LH1 
     1   -2.21386738e-23   # M2LH1_{1}
     2   -4.11488114e-09   # M2LH1_{2}
     3    0.00000000e+00   # M2LH1_{3}
Block UPMNS Q= 9.11876000e+01 # neutrino mixing matrix (inverted  hierarchy)
  1  1     1.00000000e+00   # UPMNS_{11} matrix element
  1  2     9.96274032e-15   # UPMNS_{12} matrix element
  1  3     0.00000000e+00   # UPMNS_{13} matrix element
  2  1    -9.96274032e-15   # UPMNS_{21} matrix element
  2  2     1.00000000e+00   # UPMNS_{22} matrix element
  2  3     0.00000000e+00   # UPMNS_{23} matrix element
  3  1     0.00000000e+00   # UPMNS_{31} matrix element
  3  2     0.00000000e+00   # UPMNS_{32} matrix element
  3  3     1.00000000e+00   # UPMNS_{33} matrix element
Block msq2 Q= 1.03488249e+03 # super CKM squark mass^2 matrix - DRbar
  1  1     1.45008735e+06    # (m^_Q^2)_{11}
  1  2     4.95350295e+01    # (m^_Q^2)_{12}
  1  3    -1.17176351e+03    # (m^_Q^2)_{13}
  2  1     4.95350295e+01    # (m^_Q^2)_{21}
  2  2     1.44972840e+06    # (m^_Q^2)_{22}
  2  3     8.62675602e+03    # (m^_Q^2)_{23}
  3  1    -1.17176351e+03    # (m^_Q^2)_{31}
  3  2     8.62675602e+03    # (m^_Q^2)_{32}
  3  3     1.23571666e+06    # (m^_Q^2)_{33}
Block msl2 Q= 1.03488249e+03 # super MNS slepton mass^2 matrix - DRbar
  1  1     1.78483668e+05    # (m^_L^2)_{11}
  1  2     1.46922455e-23    # (m^_L^2)_{12}
  1  3     0.00000000e+00    # (m^_L^2)_{13}
  2  1     1.46922455e-23    # (m^_L^2)_{21}
  2  2     1.78480382e+05    # (m^_L^2)_{22}
  2  3     0.00000000e+00    # (m^_L^2)_{23}
  3  1     0.00000000e+00    # (m^_L^2)_{31}
  3  2     0.00000000e+00    # (m^_L^2)_{32}
  3  3     1.77499040e+05    # (m^_L^2)_{33}
Block msd2 Q= 1.03488249e+03 # super CKM squark mass^2 matrix - DRbar
  1  1     1.32924542e+06    # (m^_d^2)_{11}
  1  2    -3.46785274e-06    # (m^_d^2)_{12}
  1  3     3.59018575e-03    # (m^_d^2)_{13}
  2  1    -3.46785274e-06    # (m^_d^2)_{21}
  2  2     1.32923811e+06    # (m^_d^2)_{22}
  2  3    -5.78726842e-01    # (m^_d^2)_{23}
  3  1     3.59018575e-03    # (m^_d^2)_{31}
  3  2    -5.78726842e-01    # (m^_d^2)_{32}
  3  3     1.31597597e+06    # (m^_d^2)_{33}
Block msu2 Q= 1.03488249e+03 # super CKM squark mass^2 matrix - DRbar
  1  1     1.34219257e+06    # (m^_u^2)_{11}
  1  2    -1.76723957e-08    # (m^_u^2)_{12}
  1  3    -1.56667263e-05    # (m^_u^2)_{13}
  2  1    -1.76723957e-08    # (m^_u^2)_{21}
  2  2     1.34218503e+06    # (m^_u^2)_{22}
  2  3    -7.62531258e-02    # (m^_u^2)_{23}
  3  1    -1.56667263e-05    # (m^_u^2)_{31}
  3  2    -7.62531258e-02    # (m^_u^2)_{32}
  3  3     9.16056621e+05    # (m^_u^2)_{33}
Block mse2 Q= 1.03488249e+03 # super MNS slepton mass^2 matrix - DRbar
  1  1     7.07066412e+04    # (m^_e^2)_{11}
  1  2     4.77832597e-16    # (m^_e^2)_{12}
  1  3     0.00000000e+00    # (m^_e^2)_{13}
  2  1     4.77832597e-16    # (m^_e^2)_{21}
  2  2     7.07183030e+04    # (m^_e^2)_{22}
  2  3     0.00000000e+00    # (m^_e^2)_{23}
  3  1     0.00000000e+00    # (m^_e^2)_{31}
  3  2     0.00000000e+00    # (m^_e^2)_{32}
  3  3     6.86984007e+04    # (m^_e^2)_{33}
Block tu Q= 1.03488249e+03   # super CKM trilinear matrix - DRbar
  1  1    -9.81768143e-03    # (T^_u)_{11}
  1  2    -2.06627553e-08    # (T^_u)_{12}
  1  3    -9.18832046e-08    # (T^_u)_{13}
  2  1    -9.46506569e-06    # (T^_u)_{21}
  2  2    -4.49725241e+00    # (T^_u)_{22}
  2  3    -4.46807661e-04    # (T^_u)_{23}
  3  1    -1.26616473e-02    # (T^_u)_{31}
  3  2    -1.34386765e-01    # (T^_u)_{32}
  3  3    -8.91806191e+02    # (T^_u)_{33}
Block td Q= 1.03488249e+03   # super CKM trilinear matrix - DRbar
  1  1    -2.29723205e-01    # (T^_d)_{11}
  1  2    -3.36190292e-06    # (T^_d)_{12}
  1  3     7.99451038e-05    # (T^_d)_{13}
  2  1    -7.36091989e-05    # (T^_d)_{21}
  2  2    -5.02930948e+00    # (T^_d)_{22}
  2  3    -1.28868594e-02    # (T^_d)_{23}
  3  1     7.61122145e-02    # (T^_d)_{31}
  3  2    -5.60354233e-01    # (T^_d)_{32}
  3  3    -2.05088720e+02    # (T^_d)_{33}
Block te Q= 1.03488249e+03   # super CKM trilinear matrix - DRbar
  1  1    -9.85356586e-03    # (T^_e)_{11}
  1  2     9.95338280e-22    # (T^_e)_{12}
  1  3     0.00000000e+00    # (T^_e)_{13}
  2  1     4.81404757e-24    # (T^_e)_{21}
  2  2    -2.03732957e+00    # (T^_e)_{22}
  2  3     0.00000000e+00    # (T^_e)_{23}
  3  1     0.00000000e+00    # (T^_e)_{31}
  3  2     0.00000000e+00    # (T^_e)_{32}
  3  3    -3.52638913e+01    # (T^_e)_{33}
Block VCKM Q= 1.03488249e+03 # DRbar CKM mixing matrix
  1  1     9.73840740e-01    # CKM_{11} matrix element
  1  2     2.27197361e-01    # CKM_{12} matrix element
  1  3     3.94619072e-03    # CKM_{13} matrix element
  2  1    -2.27161573e-01    # CKM_{21} matrix element
  2  2     9.72962486e-01    # CKM_{22} matrix element
  2  3     4.17327280e-02    # CKM_{23} matrix element
  3  1     5.64207015e-03    # CKM_{31} matrix element
  3  2    -4.15374536e-02    # CKM_{32} matrix element
  3  3     9.99121017e-01    # CKM_{33} matrix element
Block msoft Q= 1.03488249e+03 # MSSM DRbar SUSY breaking parameters
     1     2.54556891e+02     # M_1(Q)
     2     4.68775346e+02     # M_2(Q)
     3     1.31942874e+03     # M_3(Q)
    21     1.56209177e+05     # mH1^2(Q)
    22    -5.22106039e+05     # mH2^2(Q)
Block USQMIX  # super CKM squark mass^2 matrix
  1  1     1.99831861e-05   # (USQMIX)_{11}
  1  2     2.11598930e-04   # (USQMIX)_{12}
  1  3     3.88153042e-01   # (USQMIX)_{13}
  1  4     1.09811620e-10   # (USQMIX)_{14}
  1  5     5.33259989e-07   # (USQMIX)_{15}
  1  6     9.21594906e-01   # (USQMIX)_{16}
  2  1     1.36275398e-04   # (USQMIX)_{21}
  2  2     1.44228714e-03   # (USQMIX)_{22}
  2  3     9.21593840e-01   # (USQMIX)_{23}
  2  4     3.99515107e-09   # (USQMIX)_{24}
  2  5     1.93723791e-05   # (USQMIX)_{25}
  2  6    -3.88152928e-01   # (USQMIX)_{26}
  3  1     1.29432338e-07   # (USQMIX)_{31}
  3  2     7.18549699e-03   # (USQMIX)_{32}
  3  3    -2.82012130e-05   # (USQMIX)_{33}
  3  4     2.05277346e-08   # (USQMIX)_{34}
  3  5     9.99974184e-01   # (USQMIX)_{35}
  3  6     9.64924423e-06   # (USQMIX)_{36}
  4  1     1.56860536e-05   # (USQMIX)_{41}
  4  2     1.35084368e-10   # (USQMIX)_{42}
  4  3    -5.81605269e-09   # (USQMIX)_{43}
  4  4     1.00000000e+00   # (USQMIX)_{44}
  4  5    -2.05314488e-08   # (USQMIX)_{45}
  4  6     1.99028006e-09   # (USQMIX)_{46}
  5  1     1.47403957e-01   # (USQMIX)_{51}
  5  2     9.89049759e-01   # (USQMIX)_{52}
  5  3    -1.41541181e-03   # (USQMIX)_{53}
  5  4    -2.31247486e-06   # (USQMIX)_{54}
  5  5    -7.10706007e-03   # (USQMIX)_{55}
  5  6     3.65857838e-04   # (USQMIX)_{56}
  6  1     9.89076364e-01   # (USQMIX)_{61}
  6  2    -1.47400196e-01   # (USQMIX)_{62}
  6  3     7.61217301e-05   # (USQMIX)_{63}
  6  4    -1.55146627e-05   # (USQMIX)_{64}
  6  5     1.05904532e-03   # (USQMIX)_{65}
  6  6    -1.96644090e-05   # (USQMIX)_{66}
Block DSQMIX  # super CKM squark mass^2 matrix
  1  1     4.64692149e-03   # (DSQMIX)_{11}
  1  2    -3.42119924e-02   # (DSQMIX)_{12}
  1  3     9.79758153e-01   # (DSQMIX)_{13}
  1  4     8.59543604e-07   # (DSQMIX)_{14}
  1  5    -1.38566255e-04   # (DSQMIX)_{15}
  1  6     1.97184911e-01   # (DSQMIX)_{16}
  2  1    -1.53409445e-03   # (DSQMIX)_{21}
  2  2     1.12952883e-02   # (DSQMIX)_{22}
  2  3    -1.96903608e-01   # (DSQMIX)_{23}
  2  4    -1.73702372e-06   # (DSQMIX)_{24}
  2  5     2.80122639e-04   # (DSQMIX)_{25}
  2  6     9.80356544e-01   # (DSQMIX)_{26}
  3  1     1.51748007e-06   # (DSQMIX)_{31}
  3  2     3.70722527e-03   # (DSQMIX)_{32}
  3  3     3.23882866e-04   # (DSQMIX)_{33}
  3  4     4.07006035e-06   # (DSQMIX)_{34}
  3  5     9.99993041e-01   # (DSQMIX)_{35}
  3  6    -2.63392772e-04   # (DSQMIX)_{36}
  4  1     1.69829245e-04   # (DSQMIX)_{41}
  4  2     5.41777722e-08   # (DSQMIX)_{42}
  4  3    -2.01039753e-06   # (DSQMIX)_{43}
  4  4     9.99999986e-01   # (DSQMIX)_{44}
  4  5    -4.06946556e-06   # (DSQMIX)_{45}
  4  6     1.63433526e-06   # (DSQMIX)_{46}
  5  1    -1.35983063e-01   # (DSQMIX)_{51}
  5  2     9.90036934e-01   # (DSQMIX)_{52}
  5  3     3.60946490e-02   # (DSQMIX)_{53}
  5  4     2.31049807e-05   # (DSQMIX)_{54}
  5  5    -3.68295051e-03   # (DSQMIX)_{55}
  5  6    -4.36898708e-03   # (DSQMIX)_{56}
  6  1     9.90699061e-01   # (DSQMIX)_{61}
  6  2     1.36070138e-01   # (DSQMIX)_{62}
  6  3     5.38335446e-05   # (DSQMIX)_{63}
  6  4    -1.68258988e-04   # (DSQMIX)_{64}
  6  5    -5.05968007e-04   # (DSQMIX)_{65}
  6  6    -6.51196239e-06   # (DSQMIX)_{66}
Block RVLMIX  # charged higgs-slepton mixing matrix 
  1 1    0.00000000e+00   # C_{11}
  1 2    0.00000000e+00   # C_{12}
  1 3    0.00000000e+00   # C_{13}
  1 4    0.00000000e+00   # C_{14}
  1 5    1.21301000e-01   # C_{15}
  1 6    0.00000000e+00   # C_{16}
  1 7    0.00000000e+00   # C_{17}
  1 8    9.92615770e-01   # C_{18}
  2 1    3.24647594e-29   # C_{21}
  2 2   -4.80683302e-28   # C_{22}
  2 3    3.48130726e-05   # C_{23}
  2 4   -5.65554580e-19   # C_{24}
  2 5    0.00000000e+00   # C_{25}
  2 6    9.99999999e-01   # C_{26}
  2 7   -5.25455051e-17   # C_{27}
  2 8    0.00000000e+00   # C_{28}
  3 1   -6.22560970e-13   # C_{31}
  3 2    9.21838894e-12   # C_{32}
  3 3    9.23520727e-22   # C_{33}
  3 4    7.19866153e-03   # C_{34}
  3 5    0.00000000e+00   # C_{35}
  3 6    5.25482149e-17   # C_{36}
  3 7    9.99974089e-01   # C_{37}
  3 8    0.00000000e+00   # C_{38}
  4 1    9.18896988e-27   # C_{41}
  4 2    4.19492099e-27   # C_{42}
  4 3    9.99999999e-01   # C_{43}
  4 4    2.51638903e-19   # C_{44}
  4 5    0.00000000e+00   # C_{45}
  4 6   -3.48130726e-05   # C_{46}
  4 7   -9.05642658e-22   # C_{47}
  4 8    0.00000000e+00   # C_{48}
  5 1    1.68119803e-12   # C_{51}
  5 2    7.42075847e-13   # C_{52}
  5 3   -2.51632382e-19   # C_{53}
  5 4    9.99974089e-01   # C_{54}
  5 5    0.00000000e+00   # C_{55}
  5 6    1.87291380e-19   # C_{56}
  5 7   -7.19866153e-03   # C_{57}
  5 8    0.00000000e+00   # C_{58}
  6 1    0.00000000e+00   # C_{61}
  6 2    0.00000000e+00   # C_{62}
  6 3    0.00000000e+00   # C_{63}
  6 4    0.00000000e+00   # C_{64}
  6 5    9.92615770e-01   # C_{65}
  6 6    0.00000000e+00   # C_{66}
  6 7    0.00000000e+00   # C_{67}
  6 8   -1.21301000e-01   # C_{68}
  7 1    9.94680088e-01   # C_{71}
  7 2    1.03012243e-01   # C_{72}
  7 3   -9.57177327e-27   # C_{73}
  7 4   -1.75102993e-12   # C_{74}
  7 5    0.00000000e+00   # C_{75}
  7 6   -1.29781419e-31   # C_{76}
  7 7   -3.17761084e-13   # C_{77}
  7 8    0.00000000e+00   # C_{78}
Block RVHMIX  # CP-even neutral scalar mixing matrix 
  1 1    1.05215258e-01   # curlyN_{11}
  1 2    9.94449471e-01   # curlyN_{12}
  1 3   -2.05240630e-25   # curlyN_{13}
  1 4   -3.75591057e-11   # curlyN_{14}
  1 5    0.00000000e+00   # curlyN_{15}
  2 1    0.00000000e+00   # curlyN_{21}
  2 2    0.00000000e+00   # curlyN_{22}
  2 3    0.00000000e+00   # curlyN_{23}
  2 4    0.00000000e+00   # curlyN_{24}
  2 5    1.00000000e+00   # curlyN_{25}
  3 1    6.28674462e-12   # curlyN_{31}
  3 2    3.71035888e-11   # curlyN_{32}
  3 3   -2.51700914e-19   # curlyN_{33}
  3 4    1.00000000e+00   # curlyN_{34}
  3 5    0.00000000e+00   # curlyN_{35}
  4 1    3.43545706e-26   # curlyN_{41}
  4 2    2.02760889e-25   # curlyN_{42}
  4 3    1.00000000e+00   # curlyN_{43}
  4 4    2.51700914e-19   # curlyN_{44}
  4 5    0.00000000e+00   # curlyN_{45}
  5 1    9.94449471e-01   # curlyN_{51}
  5 2   -1.05215258e-01   # curlyN_{52}
  5 3   -1.28297544e-26   # curlyN_{53}
  5 4   -2.34798620e-12   # curlyN_{54}
  5 5    0.00000000e+00   # curlyN_{55}
Block RVAMIX  # CP-odd neutral scalar mixing matrix 
  1 1    0.00000000e+00   # curlyN~_{11}
  1 2    0.00000000e+00   # curlyN~_{12}
  1 3    0.00000000e+00   # curlyN~_{13}
  1 4    0.00000000e+00   # curlyN~_{14}
  1 5    1.00000000e+00   # curlyN~_{15}
  2 1   -3.95506109e-12   # curlyN~_{21}
  2 2    3.83029433e-11   # curlyN~_{22}
  2 3   -2.51700914e-19   # curlyN~_{23}
  2 4    1.00000000e+00   # curlyN~_{24}
  2 5    0.00000000e+00   # curlyN~_{25}
  3 1   -2.16139749e-26   # curlyN~_{31}
  3 2    2.09311836e-25   # curlyN~_{32}
  3 3    1.00000000e+00   # curlyN~_{33}
  3 4    2.51700914e-19   # curlyN~_{34}
  3 5    0.00000000e+00   # curlyN~_{35}
  4 1    9.94680092e-01   # curlyN~_{41}
  4 2    1.03012209e-01   # curlyN~_{42}
  4 3   -6.26811758e-29   # curlyN~_{43}
  4 4   -1.16502762e-14   # curlyN~_{44}
  4 5    0.00000000e+00   # curlyN~_{45}