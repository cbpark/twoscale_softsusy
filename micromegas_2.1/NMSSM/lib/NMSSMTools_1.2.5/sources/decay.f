	SUBROUTINE DECAY(PAR)

*   Subroutine to calculate the Higgs bosons BRs
*
*	CU,CD,CV,CJ,CG(i)	Reduced couplings of h1,h2,h3 (i=1,2,3) or
*				a1,a2 (i=4,5) to up type fermions, down type
*				fermions, gauge bosons, gluons and photons
*				Note: CV(4) = CV(5)=0
*
*	WIDTH(i) Total decay width of h1,h2,h3,a1,a2 (i=1..5)
*		with the following branching ratios:
*	BRJJ(i)  h1,h2,h3,a1,a2	-> gluon gluon
*	BRMM(i)		"	-> mu mu
*	BRLL(i)		"	-> tau tau
*	BRSS(i)		"	-> ss
*	BRCC(i)		"	-> cc
*	BRBB(i)		"	-> bb
*	BRTT(i)		"	-> tt
*	BRWW(i)		"	-> WW (BRWW(4)=BRWW(5)=0)
*	BRZZ(i)		"	-> ZZ (BRZZ(4)=BRZZ(5)=0)
*	BRGG(i)		"	-> gamma gamma
*	BRZG(i)		"	-> Z gamma
*	BRHIGGS(i) (i=1..5) 	-> other Higgses, including:
*		BRHAA(i,j)	hi -> a1a1, a1a2, a2a2 (i=1..3, j=1..3)
*		BRHCHC(i)	hi -> h+h- (i=1..3)
*		BRHAZ(i,j)	hi -> Zaj  (i=1..3)
*		BRHCW(i)	h1,h2,h3 -> h+W- (i=1..3), a1,a2 -> h+W- (i=4,5)
*		BRHHH(i)	H2 -> H1H1, h3-> H1H1, H1H2, H2H2 (i=1..4)
*		BRAHA(i)	a2 -> a1hi (i=1..3)
*		BRAHZ(i,j)	ai -> Zhj  (i=1,2, j=1..3)
*	BRSUSY(i)  (i=1..5)	-> susy particles, including:
*		BRNEU(i,j,k)	-> neutralinos j,k (i=1..5, j,k=1..5)
*		BRCHA(i,j)	-> charginos 11, 12, 22 (i=1..5, j=1..3)
*		BRHSQ(i,j)	hi -> uLuL, uRuR, dLdL, dRdR, t1t1, t2t2,
*				   t1t2, b1b1, b2b2, b1b2 (i=1..3, j=1..10)
*		BRASQ(i,j)	ai -> t1t1, t2t2, t1t2, b1b1, b2b2, b1b2
*				      (i=1,2, j=1..6)
*		BRHSL(i,j)	hi -> lLlL, lRlR, nLnL, l1l1, l2l2, l1l2,
*				   ntnt (i=1..3, j=1..7)
*		BRASL(i,j)	ai -> l1l1, l2l2, l1l2 (i=1,2, j=1..3)
*
*	HCWIDTH		Total decay width of the charged Higgs
*			with the following branching ratios:
*	HCBRM	     h+	-> mu nu_mu
*	HCBRL		-> tau nu_tau
*	HCBRSU		-> s u
*	HCBRBU		-> b u
*	HCBRSC		-> s c
*	HCBRBC		-> b c
*	HCBRBT		-> b t
*	HCBRWHT		-> neutral Higgs W+, including:
*	     HCBRWH(i)	-> H1W+, H2W+, h3W+, a1W+, a2W+ (i=1..5)
*	HCBRSUSY	-> susy particles,including
*	     HCBRNC(i,j)-> neutralino i chargino j (i=1..5, j=1,2)
*	     HCBRSQ(i)	-> uLdL, t1b1, t1b2, t2b1, t2b2 (i=1..5)
*	     HCBRSL(i)	-> lLnL, t1nt, t2nt (i=1..3)
*
*       GHHH(i,j,k)     coupling hi,hj,hk incl. top/bottom loop corrs.
*                       (i,j,k = 1..3)
*       GHAA(i,j,k)     coupling hi,aj,ak incl. top/bottom loop corrs.
*                       (i=1..3, j,k = 1,2)
*       GHCC(i)         coupling hi,h+,h- incl. top/bottom loop corrs.
*                       (i=1..3)
*       GHNEUNEU(i,j,k) coupling hi,neutralino j,neutralino k (i=1..3, j,k=1..5)
*       GANEUNEU(i,j,k) coupling ai,neutralino j,neutralino k (i=1,2, j,k=1..5)
*       GHCHACHA(i,j,k) coupling hi, chargino j, chargino k (i=1..3, j,k=1,2)
*       GACHACHA(i,j,k) coupling ai, chargino j, chargino k (i=1,2, j,k=1,2)
*       GHCNEUCHAL(i,j) coupling h+, neutralino i, chargino_L j (i=1..5, j=1,2)
*       GHCNEUCHAR(i,j) coupling h+, neutralino i, chargino_R j (i=1..5, j=1,2)
*       HRULUL(i,hf)    coupling hi,~u_L,~u_L (i=1..3, hf=Yukawa coupling
*                                corresponding to the family of the squark ~u_L)
*       HRDLDL(i,hf)    coupling hi,~d_L,~d_L (i=1..3, hf=Yukawa coupling
*                                corresponding to the family of the squark ~d_L)
*       HRURUR(i,hf)    coupling hi,~u_R,~u_R (i=1..3, hf=Yukawa coupling
*                                corresponding to the family of the squark ~u_R)
*       HRDRDR(i,hf)    coupling hi,~d_R,~d_R (i=1..3, hf=Yukawa coupling
*                                corresponding to the family of the squark ~d_R)
*       HRULUR(i)       coupling hi,~u_L,~u_R (i=1..3, 3rd family only)
*       HRDLDR(i)       coupling hi,~d_L,~d_R (i=1..3, 3rd family only)
*       HRLLLL(i,hf)    coupling hi,~e_L,~e_L (i=1..3, hf=Yukawa coupling
*                               corresponding to the family of the slepton ~e_L)
*       HRLRLR(i,hf)    coupling hi,~e_R,~e_R (i=1..3, hf=Yukawa coupling
*                               corresponding to the family of the slepton ~e_R)
*       HRLLLR(i)       coupling hi,~e_L,~e_R (i=1..3, 3rd family only)
*       HRNLNL(i)       coupling hi,~nu_L,~nu_L (i=1..3)
*       HIULUR(i)       coupling ai,~u_L,~u_R (i=1,2, 3rd family only)
*       HIDLDR(i)       coupling ai,~d_L,~d_R (i=1,2, 3rd family only)
*       HILLLR(i)       coupling ai,~e_L,~e_R (i=1,2, 3rd family only)

	IMPLICIT NONE

	INTEGER A,B,D,I,J,K,N0,NF,NFEXT,NFGG

	DOUBLE PRECISION MH,MA,PAR(*),SMASS(3),S(3,3)
	DOUBLE PRECISION PMASS(2),P2(2,2),P(2,3),CMASS,C(2)
	DOUBLE PRECISION CU(5),CD(5),CV(3),CJ(5),CG(5),CI(3)
	DOUBLE PRECISION PI,HIGTOP,ASG,ASH,AS3,AS4,ASMT
	DOUBLE PRECISION EPS,FQCD,SQCD,XFAC,X,Y,RATCOUP,RAT
	DOUBLE PRECISION HJJ,HMM,HLL,HSS,HCC,HBB,HTT,HWW,HZZ,HGG,HZG
	DOUBLE PRECISION HS1,HS2,HC1,HC2,HB1,HB2,HT1,HT2,DCC,DBB
	DOUBLE PRECISION DLU,DLD,XM1,XM2,CWW,CZZ,XX(4),YY(4)
	DOUBLE PRECISION HHH(4),HAA(3),HHA(3),HHCHC
	DOUBLE PRECISION HAZ(2),HHCW,HHZ(3),HTOT,HNEU(5,5),HCHA(3)
	DOUBLE PRECISION HSQ(10),HSL(7),ASQ(6),ASL(3),STOT
	DOUBLE PRECISION BRJJ(5),BRMM(5),BRLL(5),BRSS(5),BRCC(5)
	DOUBLE PRECISION BRBB(5),BRTT(5),BRWW(3),BRZZ(3),BRGG(5)
	DOUBLE PRECISION BRZG(5),BRHHH(4),BRHAA(3,3),BRHCHC(3)
	DOUBLE PRECISION BRHAZ(3,2),BRAHA(3),BRAHZ(2,3),BRHCW(5)
	DOUBLE PRECISION BRHIGGS(5),BRNEU(5,5,5),BRCHA(5,3)
	DOUBLE PRECISION BRHSQ(3,10),BRHSL(3,7),BRASQ(2,6),BRASL(2,3)
	DOUBLE PRECISION BRSUSY(5),WIDTH(5),GHHH,GHAA,GHCC,RH,CH
	DOUBLE PRECISION GHNEUNEU,GANEUNEU,GHCHACHA,GACHACHA
	DOUBLE PRECISION GHCNEUCHAL,GHCNEUCHAR
	DOUBLE PRECISION MGL,MCHA(2),U(2,2),V(2,2),MNEU(5),N(5,5)
	DOUBLE PRECISION TANBETA,SINBETA,COSBETA
	DOUBLE PRECISION XLAMBDA,MC0,MB0,MT0,RMS,RMC,RMB,RMT
	DOUBLE PRECISION SQR2,LAMBDA,KAPPA,ALAMBDA,AKAPPA,H1,H2,ss
	DOUBLE PRECISION HCBRM,HCBRL,HCBRSU,HCBRBU,HCBRSC,HCBRBC
	DOUBLE PRECISION HCBRBT,HCBRWH(5),HCBRWHT,HCBRNC(5,2)
	DOUBLE PRECISION HCBRSQ(5),HCBRSL(3),HCBRSUSY,HCWIDTH
	DOUBLE PRECISION HMN,HLN,HSU,HSU1,HSU2,HSC,HSC1,HSC2
	DOUBLE PRECISION HBC,HBC1,HBC2,HBU,HBU1,HBU2,HBT,HBT1,HBT2
	DOUBLE PRECISION HCWH(5),HCNC(5,2),HCSQ(5),HCSL(3)
	DOUBLE PRECISION VUS,VCB,VUB,C2TW,T2TW,ALEM0
	DOUBLE PRECISION HVV,HV,HFF,QCD0,HQCDM,HQCD,QCDH,TQCDH,HGGQCD
	DOUBLE PRECISION AFF,AQCDM,AQCD,QCDA,TQCDA,AGGQCD,SGGQCD
	DOUBLE PRECISION QCDC,QCDCM,CQCD,CQCDM,QCDCI,QCDCMI
	DOUBLE PRECISION BETA,LAMB,SP,ALPHAS,RUNM,QQINT,FINT
	DOUBLE PRECISION T,Z,XI,BIJ,CFF,PIHHH,PIHAA,PIHCC
	DOUBLE PRECISION ALSMZ,ALEMMZ,GF,g1,g2,S2TW
	DOUBLE PRECISION MS,MC,MB,MBP,MT,MTAU,MMUON,MZ,MW
	DOUBLE PRECISION QSTSB,RMTTOP,RADT,RADB,RADTB,FT,FB,ACOUP	
	DOUBLE PRECISION MUR,MUL,MDR,MDL,MLR,MLL,MNL
	DOUBLE PRECISION MST1,MST2,MSB1,MSB2,MSL1,MSL2,MSNT
	DOUBLE PRECISION CST,CSB,CSL,MSMU1,MSMU2,MSMUNT,CSMU,SST,SSB,SSL
	DOUBLE PRECISION HF,HLQ,AU,AD,ATAU,LQ
	DOUBLE PRECISION HRULUL,HRDLDL,HRURUR,HRDRDR,HRULUR
	DOUBLE PRECISION HRDLDR,HRLLLL,HRLRLR,HRLLLR,HRNLNL
	DOUBLE PRECISION HIULUR,HIDLDR,HILLLR,HPULDL,HPULDR
	DOUBLE PRECISION HPURDL,HPURDR,HPLLNL,HPLRNL
	DOUBLE PRECISION DELMB,RUNMB
	DOUBLE PRECISION ZHU,ZHD,ZS,H1Q,H2Q,TANBQ
	DOUBLE PRECISION HUQ,HDQ,MTQ,MBQ
	DOUBLE PRECISION LLQ,KQ,ALQ,AKQ,MUEFFQ,NUQ

	DOUBLE COMPLEX CTT,CTB,CTC,CTL,CTW,CTHC,CTCH1,CTCH2
	DOUBLE COMPLEX CXT,CXB,CXC,CXL,CXW,CXHC,CXCH1,CXCH2
	DOUBLE COMPLEX CTUL,CTUR,CTDL,CTDR,CTST1,CTST2,CTSB1,CTSB2
	DOUBLE COMPLEX CXUL,CXUR,CXDL,CXDR,CXST1,CXST2,CXSB1,CXSB2
	DOUBLE COMPLEX CTLL,CTLR,CTSL1,CTSL2,CXLL,CXLR,CXSL1,CXSL2
	DOUBLE COMPLEX CLT,CLB,CLC,CLW,CLH,CXTZ,CXBZ,CXWZ,CXHZ,CXCZ
	DOUBLE COMPLEX CI1,CI2,CGZ,CF,CA,CB
		
	COMMON/GAUGE/ALSMZ,ALEMMZ,GF,g1,g2,S2TW
	COMMON/SMSPEC/MS,MC,MB,MBP,MT,MTAU,MMUON,MZ,MW
	COMMON/CKM/VUS,VCB,VUB
	COMMON/ALS/XLAMBDA,MC0,MB0,MT0,N0
	COMMON/BRN/BRJJ,BRMM,BRLL,BRSS,BRCC,BRBB,BRTT,BRWW,BRZZ,
     C		BRGG,BRZG,BRHHH,BRHAA,BRHCHC,BRHAZ,BRAHA,BRAHZ,
     C		BRHCW,BRHIGGS,BRNEU,BRCHA,BRHSQ,BRHSL,BRASQ,BRASL,
     C		BRSUSY,WIDTH
	COMMON/BRC/HCBRM,HCBRL,HCBRSU,HCBRBU,HCBRSC,HCBRBC,
     C		HCBRBT,HCBRWH,HCBRWHT,HCBRNC,HCBRSQ,HCBRSL,
     C		HCBRSUSY,HCWIDTH
	COMMON/REDCOUP/CU,CD,CV,CJ,CG
	COMMON/HIGGSPEC/SMASS,S,PMASS,P2,CMASS
	COMMON/SUSYSPEC/MGL,MCHA,U,V,MNEU,N
	COMMON/SFSPEC/MUR,MUL,MDR,MDL,MLR,MLL,MNL,
     C		MST1,MST2,MSB1,MSB2,MSL1,MSL2,MSNT,
     C		CST,CSB,CSL,MSMU1,MSMU2,MSMUNT,CSMU
	COMMON/DELMB/DELMB
	COMMON/STSBSCALE/QSTSB
	COMMON/QHIGGS/ZHU,ZHD,ZS,H1Q,H2Q,TANBQ
	COMMON/QQUARK/HUQ,HDQ,MTQ,MBQ
	COMMON/QNMPAR/LLQ,KQ,ALQ,AKQ,MUEFFQ,NUQ

	QQINT(RAT,X,Y)= RAT**2*X+(1.D0-RAT**2)*Y
	BETA(X)= DSQRT(1.D0-4.D0*X)
	LAMB(X,Y)= DSQRT((1.D0-X-Y)**2-4.D0*X*Y)
	CF(CA)= -CDLOG(-(1.D0+CDSQRT(1.D0-CA))
     .	 / (1.D0-CDSQRT(1.D0-CA)))**2/4.D0
	CGZ(CA)= CDSQRT(1.D0-CA)/2.D0*CDLOG(-(1.D0+CDSQRT(1.D0-CA))
     .	 / (1.D0-CDSQRT(1.D0-CA)))
	CI1(CA,CB)= CA*CB/2.D0/(CA-CB)
     .	 + CA**2*CB**2/2/(CA-CB)**2*(CF(CA)-CF(CB))
     .	 + CA**2*CB/(CA-CB)**2*(CGZ(CA)-CGZ(CB))
	CI2(CA,CB)= -CA*CB/2.D0/(CA-CB)*(CF(CA)-CF(CB))
	HV(X)= 3.D0*(1.D0-8.D0*X+20.D0*X**2)/DSQRT((4.D0*X-1.D0))
     .	 * DACOS((3.D0*X-1.D0)/2.D0/DSQRT(X**3))
     .	 - (1.D0-X)*(47.D0/2.D0*X-13.D0/2.D0+1.D0/X)
     .	 - 3.D0/2.D0*(1.D0-6.D0*X+4.D0*X**2)*DLOG(X)
	HVV(X,Y)= GF/(4.D0*PI*SQR2)*X**3/2.D0*BETA(Y)
     .	 * (1.D0-4.D0*Y+12.D0*Y**2)
	HFF(X,Y)= GF/(4.D0*PI*SQR2)*X**3*Y*(BETA(Y))**3
	AFF(X,Y)= GF/(4.D0*PI*SQR2)*X**3*Y*(BETA(Y))
	CFF(Z,T,X,Y)= GF/(4.D0*PI*SQR2)*Z**3*LAMB(X,Y)
     .	 * ((1.D0-X-Y)*(X*T**2+Y/T**2)-4.D0*X*Y)
	QCD0(X)= (1.D0+X**2)*(4.D0*SP((1.D0-X)/(1.D0+X))+2.D0
     .	 * SP((X-1.D0)/(X+1.D0))
     .	 - 3.D0*DLOG((1.D0+X)/(1.D0-X))*DLOG(2.D0/(1.D0+X))
     .	 - 2.D0*DLOG((1.D0+X)/(1.D0-X))*DLOG(X))
     .	 - 3.D0*X*DLOG(4.D0/(1.D0-X**2))-4.D0*X*DLOG(X)
	HQCDM(X)= QCD0(X)/X+(3.D0+34.D0*X**2-13.D0*X**4)/16.D0/X**3
     .	 * DLOG((1.D0+X)/(1.D0-X))+3.D0/8.D0/X**2*(7.D0*X**2-1.D0)
	HQCD(X)= 5.67D0*ASH/PI
     .	 + (29.14D0+RATCOUP*(1.57D0-2.D0*DLOG(HIGTOP)/3.D0
     .	 + DLOG(X)**2/9.D0))*(ASH/PI)**2
     .	 + (164.14D0-25.77D0*5.D0+0.259D0*5.D0**2)*(ASH/PI)**3
	QCDH(X)= 1.D0+HQCD(X)
	TQCDH(X)= 1.D0+4.D0/3.D0*HQCDM(BETA(X))*ASH/PI
	AQCDM(X)= QCD0(X)/X+(19.D0+2.D0*X**2+3.D0*X**4)/16.D0/X
     .	 * DLOG((1.D0+X)/(1.D0-X))+3.D0/8.D0*(7.D0-X**2)
	AQCD(X)= 5.67D0*ASH/PI
     .	 + (29.14D0+RATCOUP*(3.83D0-DLOG(HIGTOP)
     .	 + DLOG(X)**2/6.D0))*(ASH/PI)**2
     .	 + (164.14D0-25.77D0*5.D0+0.259D0*5.D0**2)*(ASH/PI)**3
	QCDA(X)= 1.D0+AQCD(X)
	TQCDA(X)= 1.D0+4.D0/3.D0*AQCDM(BETA(X))*ASH/PI
	HGGQCD(ASG,NF)= 1.D0+ASG/PI*(95.D0/4.D0-NF*7.D0/6.D0)
	AGGQCD(ASG,NF)= 1.D0+ASG/PI*(97.D0/4.D0-NF*7.D0/6.D0)
	SGGQCD(ASG)= ASG/PI*17.D0/6.D0
	XI(X,Y)= 2.D0*X/(1.D0-X-Y+LAMB(X,Y))
	BIJ(X,Y)= (1.D0-X-Y)/LAMB(X,Y)
     .	 * (4.D0*SP(XI(X,Y)*XI(Y,X))
     .	 - 2.D0*SP(-XI(X,Y))-2.D0*SP(-XI(Y,X))
     .	 + 2.D0*DLOG(XI(X,Y)*XI(Y,X))*DLOG(1.D0-XI(X,Y)*XI(Y,X))
     .	 - DLOG(XI(X,Y))*DLOG(1.D0+XI(X,Y))
     .	 - DLOG(XI(Y,X))*DLOG(1.D0+XI(Y,X)))
     .	 - 4.D0*(DLOG(1.D0-XI(X,Y)*XI(Y,X))
     .	 + XI(X,Y)*XI(Y,X)/(1.D0-XI(X,Y)*XI(Y,X))*DLOG(XI(X,Y)*XI(Y,X)))
     .	 + (LAMB(X,Y)+X-Y)/LAMB(X,Y)*(DLOG(1.D0+XI(X,Y))
     .	 - XI(X,Y)/(1.D0+XI(X,Y))*DLOG(XI(X,Y)))
     .	 + (LAMB(X,Y)-X+Y)/LAMB(X,Y)*(DLOG(1.D0+XI(Y,X))
     .	 - XI(Y,X)/(1.D0+XI(Y,X))*DLOG(XI(Y,X)))
	QCDC(X,Y)= 1.D0+4.D0/3.D0*ASH/PI*(9.D0/4.D0+(3.D0-2.D0*X+2.D0*Y)
     .	 / 4.D0*DLOG(X/Y)+((1.5D0-X-Y)*LAMB(X,Y)**2+5.D0*X*Y)/2.D0
     .	 / LAMB(X,Y)/(1.D0-X-Y)*DLOG(XI(X,Y)*XI(Y,X))+BIJ(X,Y))
     .	 + ASH/PI*(2.D0*(4.D0/3.D0-DLOG(X))
     .	 - (X*2.D0*(4.D0/3.D0-DLOG(X))+Y*2.D0*(4.D0/3.D0-DLOG(Y)))
     .	 / (1.D0-X-Y)-(X*2.D0*(4.D0/3.D0-DLOG(X))*(1.D0-X+Y)
     .	 + Y*2.D0*(4.D0/3.D0-DLOG(Y))*(1.D0+X-Y))/LAMB(X,Y)**2)
	QCDCI(X,Y)= 1.D0+4.D0/3.D0*ASH/PI*(3.D0+(Y-X)/2.D0*DLOG(X/Y)
     .	 + (2.D0*(1.D0-X-Y)+LAMB(X,Y)**2)/2.D0/LAMB(X,Y)
     .	 * DLOG(XI(X,Y)*XI(Y,X))+BIJ(X,Y))
     .	 + ASH/PI*(2.D0*(4.D0/3.D0-DLOG(X))+2.D0*(4.D0/3.D0-DLOG(Y))
     .	 - (X*2.D0*(4.D0/3.D0-DLOG(X))*(1.D0-X+Y)
     .	 + Y*2.D0*(4.D0/3.D0-DLOG(Y))*(1.D0+X-Y))/LAMB(X,Y)**2)
	QCDCM(X,Y)= 1.D0+4.D0/3.D0*ASH/PI*(9.D0/4.D0
     .	 + (3.D0-2.D0*X+2.D0*Y)/4.D0*DLOG(X/Y)+((1.5D0-X-Y)
     .	 * LAMB(X,Y)**2+5.D0*X*Y)/2.D0/LAMB(X,Y)/(1.D0-X-Y)
     .	 * DLOG(4.D0*X*Y/(1.D0-X-Y+LAMB(X,Y))**2)
     .	 + BIJ(X,Y))
	QCDCMI(X,Y)= 1.D0+4.D0/3.D0*ASH/PI*(3.D0+(Y-X)/2.D0*DLOG(X/Y)
     .	 + (2.D0*(1.D0-X-Y)*LAMB(X,Y)**2)/2.D0/LAMB(X,Y)
     .	 * DLOG(4.D0*X*Y/(1.D0-X-Y+LAMB(X,Y))**2)
     .	 + BIJ(X,Y))
	CQCD(Z,T,X,Y)= GF/(4.D0*PI*SQR2)*Z**3*LAMB(X,Y)
     .	 * ((1.D0-X-Y)*(X*T**2*QCDC(Y,X)
     .	 + Y/T**2*QCDC(X,Y))
     .	 - 4.D0*X*Y*QCDCI(X,Y))
	CQCDM(Z,T,X,Y)= GF/(4.D0*PI*SQR2)*Z**3*LAMB(X,Y)
     .	 * ((1.D0-X-Y)*(X*T**2*QCDCM(Y,X)
     .	 + Y/T**2*QCDCM(X,Y))
     .	 - 4.D0*X*Y*QCDCMI(X,Y))
	PIHHH(A,B,D,I,J,K)= S(A,I)*S(B,J)*S(D,K)+S(A,I)*S(D,J)*S(B,K)
     .	 + S(B,I)*S(A,J)*S(D,K)+S(B,I)*S(D,J)*S(A,K)
     .	 + S(D,I)*S(A,J)*S(B,K)+S(D,I)*S(B,J)*S(A,K)
	PIHAA(A,B,D,I,J,K)= S(A,I)*(P(B,J)*P(D,K)+P(B,K)*P(D,J))
	PIHCC(A,I,J,K)= 2.D0*S(A,I)*C(J)*C(K)
	RADT(X)= 3.D0*SQR2*LQ*X**4/(16.D0*PI**2*H1**3)
 	RADB(X)= 3.D0*SQR2*LQ*X**4/(16.D0*PI**2*H2**3)
	RADTB(X,Y)= 3.D0*SQR2*LQ*X**2*Y**2/(16.D0*PI**2*H1**2*H2**2)
	GHHH(A,B,D)= (g1+g2)/(4.D0*SQR2)
     .	 * (H1*(PIHHH(A,B,D,1,1,1)-PIHHH(A,B,D,1,2,2))
     .	 + H2*(PIHHH(A,B,D,2,2,2)-PIHHH(A,B,D,2,1,1)))
     .	 - LAMBDA*ALAMBDA/SQR2*PIHHH(A,B,D,1,2,3)
     .	 + KAPPA*AKAPPA/(3.D0*SQR2)*PIHHH(A,B,D,3,3,3)
     .	 + LAMBDA**2/SQR2*(H1*(PIHHH(A,B,D,1,2,2)
     .	 + PIHHH(A,B,D,1,3,3))+H2*(PIHHH(A,B,D,2,1,1)
     .	 + PIHHH(A,B,D,2,3,3))+ss*(PIHHH(A,B,D,3,1,1)
     .	 + PIHHH(A,B,D,3,2,2)))
     .	 + KAPPA**2*SQR2*ss*PIHHH(A,B,D,3,3,3)
     .	 - LAMBDA*KAPPA/SQR2*(H1*PIHHH(A,B,D,3,2,3)
     .	 + H2*PIHHH(A,B,D,3,1,3)+2.D0*ss*PIHHH(A,B,D,1,2,3))
     .	 + RADT(RMT)*PIHHH(A,B,D,1,1,1)
     .	 + RADB(RMB)*PIHHH(A,B,D,2,2,2)
	GHAA(A,B,D)= (g1+g2)/(4.D0*SQR2)
     .	 * (H1*(PIHAA(A,B,D,1,1,1)-PIHAA(A,B,D,1,2,2))
     .	 + H2*(PIHAA(A,B,D,2,2,2)-PIHAA(A,B,D,2,1,1)))
     .	 + LAMBDA*ALAMBDA/SQR2*(PIHAA(A,B,D,1,2,3)
     .	 + PIHAA(A,B,D,2,1,3)+PIHAA(A,B,D,3,1,2))
     .	 - KAPPA*AKAPPA/SQR2*PIHAA(A,B,D,3,3,3)
     .	 + LAMBDA**2/SQR2*(H1*(PIHAA(A,B,D,1,2,2)
     .	 + PIHAA(A,B,D,1,3,3))+H2*(PIHAA(A,B,D,2,1,1)
     .	 + PIHAA(A,B,D,2,3,3))+ss*(PIHAA(A,B,D,3,1,1)
     .	 + PIHAA(A,B,D,3,2,2)))
     .	 + KAPPA**2*SQR2*ss*PIHAA(A,B,D,3,3,3)
     .	 + LAMBDA*KAPPA/SQR2*(H1*(PIHAA(A,B,D,2,3,3)
     .	 - 2.D0*PIHAA(A,B,D,3,2,3))+H2*(PIHAA(A,B,D,1,3,3)
     .	 - 2.D0*PIHAA(A,B,D,3,1,3))+2.D0*ss*(PIHAA(A,B,D,3,1,2)
     .	 - PIHAA(A,B,D,1,2,3)-PIHAA(A,B,D,2,1,3)))
     .	 + RADT(RMT)*PIHAA(A,B,D,1,1,1)
     .	 + RADB(RMB)*PIHAA(A,B,D,2,2,2)
	GHCC(A)= LAMBDA**2/SQR2*(ss*(PIHCC(A,3,1,1)
     .	 + PIHCC(A,3,2,2))-H1*PIHCC(A,2,1,2)
     .	 - H2*PIHCC(A,1,1,2))
     .	 + LAMBDA*KAPPA*SQR2*ss*PIHCC(A,3,1,2)
     .	 + LAMBDA*ALAMBDA/SQR2*PIHCC(A,3,1,2)
     .	 + g1/(4.D0*SQR2)*(H1*(PIHCC(A,1,1,1)
     .	 - PIHCC(A,1,2,2))+H2*(PIHCC(A,2,2,2)
     .	 - PIHCC(A,2,1,1)))
     .	 + g2/(4.D0*SQR2)*(H1*(PIHCC(A,1,1,1)
     .	 + PIHCC(A,1,2,2)+2.D0*PIHCC(A,2,1,2))
     .	 + H2*(PIHCC(A,2,1,1)+PIHCC(A,2,2,2)
     .	 + 2.D0*PIHCC(A,1,1,2)))
     .	 + RADT(RMT)*PIHCC(A,1,1,1)
     .	 + RADB(RMB)*PIHCC(A,2,2,2)
     .	 + RADTB(RMT,RMB)*(H1*PIHCC(A,1,2,2)+H2*PIHCC(A,1,1,2)
     .	 + H2*PIHCC(A,2,1,1)+H1*PIHCC(A,2,1,2))     
	GHNEUNEU(A,B,D)= LAMBDA/SQR2
     .	 * (S(A,1)*(N(B,4)*N(D,5)+N(B,5)*N(D,4))
     .	 + S(A,2)*(N(B,3)*N(D,5)+N(B,5)*N(D,3))
     .	 + S(A,3)*(N(B,3)*N(D,4)+N(B,4)*N(D,3)))
     .	 - SQR2*KAPPA*S(A,3)*N(B,5)*N(D,5)
     .	 + DSQRT(g1)/2.D0*(-S(A,1)*(N(B,1)*N(D,3)+N(B,3)*N(D,1))
     .	 + S(A,2)*(N(B,1)*N(D,4)+N(B,4)*N(D,1)))
     .	 + DSQRT(g2)/2.D0*(S(A,1)*(N(B,2)*N(D,3)+N(B,3)*N(D,2))
     .	 - S(A,2)*(N(B,2)*N(D,4)+N(B,4)*N(D,2)))
	GANEUNEU(A,B,D)= LAMBDA/SQR2
     .	 * (P(A,1)*(N(B,4)*N(D,5)+N(B,5)*N(D,4))
     .	 + P(A,2)*(N(B,3)*N(D,5)+N(B,5)*N(D,3))
     .	 + P(A,3)*(N(B,3)*N(D,4)+N(B,4)*N(D,3)))
     .	 - SQR2*KAPPA*P(A,3)*N(B,5)*N(D,5)
     .	 - DSQRT(g1)/2.D0*(-P(A,1)*(N(B,1)*N(D,3)+N(B,3)*N(D,1))
     .	 + P(A,2)*(N(B,1)*N(D,4)+N(B,4)*N(D,1)))
     .	 - DSQRT(g2)/2.D0*(P(A,1)*(N(B,2)*N(D,3)+N(B,3)*N(D,2))
     .	 - P(A,2)*(N(B,2)*N(D,4)+N(B,4)*N(D,2)))
	GHCHACHA(A,B,D)= LAMBDA/SQR2*S(A,3)*U(B,2)*V(D,2)
     .	 + DSQRT(g2)/SQR2*(S(A,1)*U(B,1)*V(D,2)+S(A,2)*U(B,2)*V(D,1))
	GACHACHA(A,B,D)= LAMBDA/SQR2*P(A,3)*U(B,2)*V(D,2)
     .	 - DSQRT(g2)/SQR2*(P(A,1)*U(B,1)*V(D,2)+P(A,2)*U(B,2)*V(D,1))
	GHCNEUCHAL(A,B)= LAMBDA*COSBETA*N(A,5)*U(B,2)
     .	 - SINBETA/SQR2*(DSQRT(g1)*N(A,1)+DSQRT(g2)*N(A,2))*U(B,2)
     .	 + SINBETA*DSQRT(g2)*N(A,4)*U(B,1)
	GHCNEUCHAR(A,B)= LAMBDA*SINBETA*N(A,5)*V(B,2)
     .	 + COSBETA/SQR2*(DSQRT(g1)*N(A,1)+DSQRT(g2)*N(A,2))*V(B,2)
     .	 + COSBETA*DSQRT(g2)*N(A,3)*V(B,1)
	HRULUL(A,HF)= SQR2*(HF**2*H1Q*S(A,1)
     .	 + (g1/12.D0-g2/4.D0)*(H1Q*S(A,1)-H2Q*S(A,2)))
	HRDLDL(A,HF)= SQR2*(HF**2*H2Q*S(A,2)
     .	 + (g1/12.D0+g2/4.D0)*(H1Q*S(A,1)-H2Q*S(A,2)))
	HRURUR(A,HF)= SQR2*(HF**2*H1Q*S(A,1)
     .	 - g1/3.D0*(H1Q*S(A,1)-H2Q*S(A,2)))
	HRDRDR(A,HF)= SQR2*(HF**2*H2Q*S(A,2)
     .	 + g1/6.D0*(H1Q*S(A,1)-H2Q*S(A,2)))
	HRULUR(A)= HUQ/SQR2*(AU*S(A,1)-MUEFFQ*S(A,2)
     .	 - LAMBDA*H2Q*S(A,3))
	HRDLDR(A)= HDQ/SQR2*(-MUEFFQ*S(A,1)+AD*S(A,2)
     .	 - LAMBDA*H1Q*S(A,3))
	HRLLLL(A,HF)= SQR2*(HF**2*H2Q*S(A,2)
     .	+ (-g1/4.D0+g2/4.D0)*(H1Q*S(A,1)-H2Q*S(A,2)))
	HRLRLR(A,HF)= SQR2*(HF**2*H2Q*S(A,2)
     .	 + g1/2.D0*(H1Q*S(A,1)-H2Q*S(A,2)))
	HRLLLR(A)= HLQ/SQR2*(-MUEFFQ*S(A,1)+ATAU*S(A,2)
     .	 - LAMBDA*H1Q*S(A,3))
	HRNLNL(A)= SQR2*(-g1/4.D0-g2/4.D0)*(H1Q*S(A,1)-H2Q*S(A,2))
	HIULUR(A)= HUQ/SQR2*(AU*P(A,1)+MUEFFQ*P(A,2)
     .	 + LAMBDA*H2Q*P(A,3))
	HIDLDR(A)= HDQ/SQR2*(MUEFFQ*P(A,1)+AD*P(A,2)
     .	 + LAMBDA*H1Q*P(A,3))
	HILLLR(A)= HLQ/SQR2*(MUEFFQ*P(A,1)+ATAU*P(A,2)
     .	 + LAMBDA*H1Q*P(A,3))

	EPS= 1.D-8
	PI= 4.D0*DATAN(1.D0)
	SQR2= DSQRT(2.D0)

*   Number of light flavours included in the gluonic decays
*   Higgs -> gg* -> gqq (see hdecay): NFGG = 3
	NFGG= 3

*   Alpha_EM(0)
	ALEM0= 1.D0/137.04D0

*   Weak angle theta_W (S2TW = sin(theta_W)):
	C2TW= 1.D0-S2TW
	T2TW= S2TW/C2TW

	TANBETA= PAR(3)
	COSBETA= 1.D0/DSQRT(1.D0+TANBETA**2)
	SINBETA= TANBETA*COSBETA

*   Higgs vevs H1 = <h_u>, H2 = <h_d>
	H1= SINBETA/DSQRT(2.D0*SQR2*GF)
	H2= H1/TANBETA
	
	LAMBDA= LLQ
	KAPPA= KQ
	ss= MUEFFQ/LAMBDA
	ALAMBDA= ALQ
	AKAPPA= AKQ
	AU= PAR(12)
	AD= PAR(13)
	ATAU= PAR(14)

*   Rotation angles in the stop/sbottom/stau sectors:
	SST= DSQRT(1.D0-CST**2)
	SSB= DSQRT(1.D0-CSB**2)
	SSL= DSQRT(1.D0-CSL**2)

*   CP odd mixing angles
	DO I=1,2
	 P(I,1)= P2(I,1)*COSBETA
	 P(I,2)= P2(I,1)*SINBETA
	 P(I,3)= P2(I,2)
	ENDDO
	C(1)= COSBETA
	C(2)= SINBETA

*   Alpha_s at the top pole mass scales, used for the running
*   Yukawa coupling ht and running quark masses RMT below
*   NOTE: MT = top pole mass
	ASMT= ALPHAS(MT,2)
	
*   Tau Yukawa coupling for Higgs-stau coupling
	HLQ=MTAU/H2Q
 
*   Log for rad. corrs to Higgs self couplings
*   (QSTSB was initialized in the subroutine RUNPAR):
	LQ=DLOG(QSTSB/MT**2)

*   MT = Top pole mass; RMTTOP = running mass at Mtop (MS_bar):
	RMTTOP= MT/(1.D0+4.D0*ASMT/(3.D0*PI)+11.D0*(ASMT/PI)**2)

* Loop over CP-even Higgs bosons
 
	DO I=1,3

	 MH= SMASS(I)
	 HIGTOP= (MH/MT)**2
	 MT0= 3.D8
	 ASH= ALPHAS(MH,2)
	 MC0= 1.D8
	 MB0= 2.D8
	 AS3= ALPHAS(MH,2)
	 MC0= MC
	 AS4= ALPHAS(MH,2)
	 MB0= MBP
	 MT0= MT

*  Running quark masses at MH

	 RMS= RUNM(MH,3)

	 RMC= RUNM(MH,4)

         RMB= RUNMB(MH)

	 IF(MH.GE.MT)THEN
	  RMT= RMTTOP
     C	   *(1.D0+7.D0/(4.D0*PI)*ASMT*DLOG(MH**2/MT**2))
     C	   **(-4.D0/7.D0)
	 ELSE
 	  RMT= RMTTOP
     C	   *(1.D0+23.D0/(12.D0*PI)*ASMT*DLOG(MH**2/MT**2))
     C	   **(-12.D0/23.D0)
	 ENDIF

*  Couplings relative to the standard model

	 CV(I)= S(I,1)*SINBETA+S(I,2)*COSBETA
	 CU(I)= S(I,1)/SINBETA
	 CD(I)= S(I,2)/COSBETA
	 IF(CD(I).EQ.0.D0) CD(I)= EPS

*  Effective coupling to 2 gluons/2 photons

	 CTT= 4.D0*(MT/MH)**2*DCMPLX(1.D0,-EPS)
	 CTB= 4.D0*(MBP/MH)**2*DCMPLX(1.D0,-EPS)
	 CTC= 4.D0*(MC/MH)**2*DCMPLX(1.D0,-EPS)
	 CTL= 4.D0*(MTAU/MH)**2*DCMPLX(1.D0,-EPS)
	 CTW= 4.D0*(MW/MH)**2*DCMPLX(1.D0,-EPS)
	 CTHC= 4.D0*(CMASS/MH)**2*DCMPLX(1.D0,-EPS)
	 CTCH1= 4.D0*(MCHA(1)/MH)**2*DCMPLX(1.D0,-EPS)
	 CTCH2= 4.D0*(MCHA(2)/MH)**2*DCMPLX(1.D0,-EPS)
	 CTUL= 4.D0*(MUL/MH)**2*DCMPLX(1.D0,-EPS)
	 CTUR= 4.D0*(MUR/MH)**2*DCMPLX(1.D0,-EPS)
	 CTDL= 4.D0*(MDL/MH)**2*DCMPLX(1.D0,-EPS)
	 CTDR= 4.D0*(MDR/MH)**2*DCMPLX(1.D0,-EPS)
	 CTST1= 4.D0*(MST1/MH)**2*DCMPLX(1.D0,-EPS)
	 CTST2= 4.D0*(MST2/MH)**2*DCMPLX(1.D0,-EPS)
	 CTSB1= 4.D0*(MSB1/MH)**2*DCMPLX(1.D0,-EPS)
	 CTSB2= 4.D0*(MSB2/MH)**2*DCMPLX(1.D0,-EPS)
	 CTLL= 4.D0*(MLL/MH)**2*DCMPLX(1.D0,-EPS)
	 CTLR= 4.D0*(MLR/MH)**2*DCMPLX(1.D0,-EPS)
	 CTSL1= 4.D0*(MSL1/MH)**2*DCMPLX(1.D0,-EPS)
	 CTSL2= 4.D0*(MSL2/MH)**2*DCMPLX(1.D0,-EPS)
	 CXT= 2.D0*CTT*(1.D0+(1.D0-CTT)*CF(CTT))
	 CXB= 2.D0*CTB*(1.D0+(1.D0-CTB)*CF(CTB))
	 CXC= 2.D0*CTC*(1.D0+(1.D0-CTC)*CF(CTC))
	 CXL= 2.D0*CTL*(1.D0+(1.D0-CTL)*CF(CTL))
	 CXW= -(2.D0+3.D0*CTW+3.D0*CTW*(2.D0-CTW)*CF(CTW))
	 CXHC= CTHC*(CTHC*CF(CTHC)-1.D0)
	 CXCH1= 2.D0*CTCH1*(1.D0+(1.D0-CTCH1)*CF(CTCH1))
	 CXCH2= 2.D0*CTCH2*(1.D0+(1.D0-CTCH2)*CF(CTCH2))
	 CXUL= CTUL*(CTUL*CF(CTUL)-1.D0)/(DSQRT(SQR2*GF)*MUL**2)
     C	      *HRULUL(I,0.D0)
	 CXUR= CTUR*(CTUR*CF(CTUR)-1.D0)/(DSQRT(SQR2*GF)*MUR**2)
     C	      *HRURUR(I,0.D0)
	 CXDL= CTDL*(CTDL*CF(CTDL)-1.D0)/(DSQRT(SQR2*GF)*MDL**2)
     C	      *HRDLDL(I,0.D0)
	 CXDR= CTDR*(CTDR*CF(CTDR)-1.D0)/(DSQRT(SQR2*GF)*MDR**2)
     C	      *HRDRDR(I,0.D0)
	 CXST1= CTST1*(CTST1*CF(CTST1)-1.D0)
     C	       /(2.D0*DSQRT(SQR2*GF)*MST1**2)
     C	       *(CST**2*HRULUL(I,HUQ)+SST**2*HRURUR(I,HUQ)
     C	       +2.D0*CST*SST*HRULUR(I))
	 CXST2= CTST2*(CTST2*CF(CTST2)-1.D0)
     C	       /(2.D0*DSQRT(SQR2*GF)*MST2**2)
     C	       *(SST**2*HRULUL(I,HUQ)+CST**2*HRURUR(I,HUQ)
     C	       -2.D0*CST*SST*HRULUR(I))
	 CXSB1= CTSB1*(CTSB1*CF(CTSB1)-1.D0)
     C	       /(2.D0*DSQRT(SQR2*GF)*MSB1**2)
     C	       *(CSB**2*HRDLDL(I,HDQ)+SSB**2*HRDRDR(I,HDQ)
     C	       +2.D0*CSB*SSB*HRDLDR(I))
	 CXSB2= CTSB2*(CTSB2*CF(CTSB2)-1.D0)
     C	       /(2.D0*DSQRT(SQR2*GF)*MSB2**2)
     C	       *(SSB**2*HRDLDL(I,HDQ)+CSB**2*HRDRDR(I,HDQ)
     C	       -2.D0*CSB*SSB*HRDLDR(I))
	 CXLL= CTLL*(CTLL*CF(CTLL)-1.D0)/(DSQRT(SQR2*GF)*MLL**2)
     C	      *HRLLLL(I,0.D0)
	 CXLR= CTLR*(CTLR*CF(CTLR)-1.D0)/(DSQRT(SQR2*GF)*MLR**2)
     C	      *HRLRLR(I,0.D0)
	 CXSL1= CTSL1*(CTSL1*CF(CTSL1)-1.D0)
     C	       /(2.D0*DSQRT(SQR2*GF)*MSL1**2)
     C	       *(CSL**2*HRLLLL(I,HLQ)+SSL**2*HRLRLR(I,HLQ)
     C	       +2.D0*CSL*SSL*HRLLLR(I))
	 CXSL2= CTSL2*(CTSL2*CF(CTSL2)-1.D0)
     C	       /(2.D0*DSQRT(SQR2*GF)*MSL2**2)
     C	       *(SSL**2*HRLLLL(I,HLQ)+CSL**2*HRLRLR(I,HLQ)
     C	       -2.D0*CSL*SSL*HRLLLR(I))

*   Here CJ and CG are the actual couplings. Later we divide
*   them by the SM couplings in order to obtain reduced couplings

	 CJ(I)= CDABS(CU(I)*(CXT+CXC)+CD(I)*CXB
     C	       +CXUL+CXUR+CXDL+CXDR+CXST1+CXST2+CXSB1+CXSB2)

	 CI(I)= DREAL(DCONJG(CU(I)*(CXT+CXC)+CD(I)*CXB
     C	       +CXUL+CXUR+CXDL+CXDR+CXST1+CXST2+CXSB1+CXSB2)
     C	      *(CXUL+CXUR+CXDL+CXDR+CXST1+CXST2+CXSB1+CXSB2))

	 CG(I)= CDABS(4.D0/3.D0*CU(I)*(CXT+CXC) + CD(I)*(CXB/3.D0+CXL)
     C	  + CV(I)*CXW + GHCC(I)/(2.D0*CMASS**2*DSQRT(2.D0*SQR2*GF))*CXHC
     C	  + GHCHACHA(I,1,1)/(DSQRT(SQR2*GF)*MCHA(1))*CXCH1
     C	  + GHCHACHA(I,2,2)/(DSQRT(SQR2*GF)*MCHA(2))*CXCH2
     C	  + 4.D0/3.D0*(CXUL+CXUR+CXST1+CXST2)
     C	  + 1.D0/3.D0*(CXDL+CXDR+CXSB1+CXSB2)
     C	  + CXLL+CXLR+CXSL1+CXSL2)

*  Partial widths

*   h -> gg

	 NFEXT= 3
	 ASG= AS3
	 FQCD= HGGQCD(ASG,NFEXT)
	 SQCD= SGGQCD(ASG)
	 XFAC= CJ(I)**2*FQCD+CI(I)*SQCD
	 HJJ= HVV(MH,0.D0)*(ASG/PI)**2*XFAC/8.D0

*   h -> gg* -> gcc to be added to h -> cc

	 NFEXT= 4
	 ASG= AS4
	 FQCD= HGGQCD(ASG,NFEXT)
	 SQCD= SGGQCD(ASG)
	 XFAC= CJ(I)**2*FQCD+CI(I)*SQCD
	 DCC= HVV(MH,0.D0)*(ASG/PI)**2*XFAC/8.D0-HJJ

*   h -> gg* -> gbb to be added to h -> bb

	 NFEXT= 5
	 ASG= ASH
	 FQCD= HGGQCD(ASG,NFEXT)
	 SQCD= SGGQCD(ASG)
	 XFAC= CJ(I)**2*FQCD+CI(I)*SQCD
	 DBB= HVV(MH,0.D0)*(ASG/PI)**2*XFAC/8.D0-HJJ-DCC

	 IF(NFGG.EQ.5)THEN
	  HJJ= HJJ+DBB+DCC
	  DBB= 0.D0
	  DCC= 0.D0
	 ELSEIF(NFGG.EQ.4)THEN
	  HJJ= HJJ+DCC
	  DCC= 0.D0
	 ENDIF

*    Below CJ becomes the REDUCED coupling
*    to 2 gluons as compared to the SM coupling

	 NFEXT= 3
	 ASG= AS3
	 FQCD= HGGQCD(ASG,NFEXT)
	 SQCD= SGGQCD(ASG)
	 CJ(I)= DSQRT(CJ(I)**2+CI(I)*SQCD/FQCD)/CDABS(CXT+CXC+CXB)

*   h -> mumu

	 IF(MH.LE.2.D0*MMUON)THEN
	  HMM= 0.D0
	 ELSE
	  HMM= CD(I)**2*HFF(MH,(MMUON/MH)**2)
	 ENDIF

*   h -> tautau

	 IF(MH.LE.2.D0*MTAU)THEN
	  HLL= 0.D0
	 ELSE
	  HLL= CD(I)**2*HFF(MH,(MTAU/MH)**2)
	 ENDIF

*   h -> ss

	 RATCOUP= CU(I)/CD(I)
	 IF(MH.LE.2.D0*MS)THEN
	  HSS= 0.D0
	 ELSE
	  HS1= 3.D0*HFF(MH,(MS/MH)**2)*CD(I)**2
     .	     * TQCDH((MS/MH)**2)
	  HS2= 3.D0*HFF(MH,(RMS/MH)**2)*CD(I)**2
     .	     * QCDH((RMS/MH)**2)
	  IF(HS2.LT.0.D0) HS2=0.D0
	  RAT= 2.D0*MS/MH
	  HSS= QQINT(RAT,HS1,HS2)
	 ENDIF

*   h -> cc

	 RATCOUP= 1.D0
	 IF(MH.LE.2.D0*MC)THEN
	  HCC= 0.D0
	 ELSE
	  HC1= 3.D0*HFF(MH,(MC/MH)**2)*CU(I)**2
     .	     * TQCDH((MC/MH)**2)
	  HC2= 3.D0*HFF(MH,(RMC/MH)**2)*CU(I)**2
     .	     * QCDH((RMC/MH)**2)
     .	     + DCC
	  IF(HC2.LT.0.D0) HC2=0.D0
	  RAT= 2.D0*MC/MH
	  HCC= QQINT(RAT,HC1,HC2)
	 ENDIF

*   h -> bb

	 RATCOUP= CU(I)/CD(I)
	 IF(MH.LE.2.D0*MBP)THEN
	  HBB= 0.D0
	 ELSE
	  HB1= 3.D0*HFF(MH,(MBP/MH)**2)*CD(I)**2
     .	     * TQCDH((MBP/MH)**2)
	  HB2= 3.D0*HFF(MH,(RMB/MH)**2)*CD(I)**2
     .	     * QCDH((RMB/MH)**2)
     .	     + DBB
	  IF(HB2.LT.0.D0) HB2=0.D0
	  RAT= 2.D0*MBP/MH
	  HBB= QQINT(RAT,HB1,HB2)
	 ENDIF

*   Finite large tan(beta) SUSY correction:

	 HBB=HBB*((1.D0+RATCOUP*DELMB)/(1.D0+DELMB))**2

*   h -> tt

	 RATCOUP= 0.D0
	 IF (MH.LE.2.D0*MT)THEN
	  HTT= 0.D0
	 ELSE
	  HT1= 3.D0*HFF(MH,(MT/MH)**2)*CU(I)**2
     .	     * TQCDH((MT/MH)**2)
	  IF (MH.LE.2.D0*RMT)THEN
	   HT2= 0.D0
	  ELSE
	   HT2= 3.D0*HFF(MH,(RMT/MH)**2)*CU(I)**2
     .	      * QCDH((RMT/MH)**2)
	  ENDIF
	  IF(HT2.LT.0.D0) HT2=0.D0
	  RAT= 2.D0*MT/MH
	  HTT= QQINT(RAT,HT1,HT2)
	 ENDIF

*   h -> WW

	 DLD= 2.D0
	 DLU= 2.D0
	 XM1= 2.D0*MW-DLD
	 XM2= 2.D0*MW+DLU
	 IF(MH.LE.MW)THEN
	  HWW= 0.D0
	 ELSEIF(MH.LE.XM1)THEN
	  CWW= 3.D0*GF**2*MW**4/16.D0/PI**3
	  HWW= CV(I)**2*HV((MW/MH)**2)*CWW*MH
	 ELSEIF(MH.LT.XM2)THEN
	  CWW= 3.D0*GF**2*MW**4/16.D0/PI**3
	  XX(1)= XM1-1.D0
	  XX(2)= XM1
	  XX(3)= XM2
	  XX(4)= XM2+1.D0
	  YY(1)= HV((MW/XX(1))**2)*CWW*XX(1)
	  YY(2)= HV((MW/XX(2))**2)*CWW*XX(2)
	  YY(3)= HVV(XX(3),(MW/XX(3))**2)
	  YY(4)= HVV(XX(4),(MW/XX(4))**2)
	  HWW= CV(I)**2*FINT(MH,XX,YY)
	 ELSE
	  HWW= CV(I)**2*HVV(MH,(MW/MH)**2)
	 ENDIF

*   h -> ZZ

	 DLD= 2.D0
	 DLU= 2.D0
	 XM1= 2.D0*MZ-DLD
	 XM2= 2.D0*MZ+DLU
	 IF(MH.LE.MZ)THEN
	  HZZ= 0.D0
	 ELSEIF(MH.LE.XM1)THEN
	  CZZ= 3.D0*GF**2*MZ**4/192.D0/PI**3
     .	     * (7.D0-40.D0/3.D0*S2TW+160.D0/9.D0*S2TW**2)
	  HZZ= CV(I)**2*HV((MZ/MH)**2)*CZZ*MH
	 ELSEIF(MH.LT.XM2)THEN
	  CZZ= 3.D0*GF**2*MZ**4/192.D0/PI**3
     .	     * (7.D0-40.D0/3.D0*S2TW+160.D0/9.D0*S2TW**2)
	  XX(1)= XM1-1.D0
	  XX(2)= XM1
	  XX(3)= XM2
	  XX(4)= XM2+1.D0
	  YY(1)= HV((MZ/XX(1))**2)*CZZ*XX(1)
	  YY(2)= HV((MZ/XX(2))**2)*CZZ*XX(2)
	  YY(3)= HVV(XX(3),(MZ/XX(3))**2)/2.D0
	  YY(4)= HVV(XX(4),(MZ/XX(4))**2)/2.D0
	  HZZ= CV(I)**2*FINT(MH,XX,YY)
	 ELSE
	  HZZ= CV(I)**2*HVV(MH,(MZ/MH)**2)/2.D0
	 ENDIF
 
*   h -> gamma gamma

	 XFAC= CG(I)**2
	 HGG= HVV(MH,0.D0)*(ALEM0/PI)**2/16.D0*XFAC

*    Below CG becomes the REDUCDED coupling
*    to 2 photons as compared to the SM coupling

	 CG(I)= CG(I)/CDABS(4.D0/3.D0*(CXT+CXC)+(CXB/3.D0+CXL)+CXW)
	 
*  h -> Z gamma

	IF(MH.LE.MZ)THEN
	 HZG= 0.D0
	ELSE
	 FT= -2.D0*(1.D0-8.D0/3.D0*S2TW)/DSQRT(S2TW*C2TW)*CU(I)
	 FB= (-1.D0+4.D0/3.D0*S2TW)/DSQRT(S2TW*C2TW)*CD(I)
	 CLT= 4.D0*(MT/MZ)**2*DCMPLX(1.D0,-EPS)
	 CLB= 4.D0*(MBP/MZ)**2*DCMPLX(1.D0,-EPS)
	 CLC= 4.D0*(MC/MZ)**2*DCMPLX(1.D0,-EPS)
	 CLW= 4.D0*(MW/MZ)**2*DCMPLX(1.D0,-EPS)
	 CLH= 4.D0*(CMASS/MZ)**2*DCMPLX(1.D0,-EPS)
	 CXTZ= FT*(CI1(CTT,CLT) - CI2(CTT,CLT))
	 CXBZ= FB*(CI1(CTB,CLB) - CI2(CTB,CLB))
	 CXCZ= FT*(CI1(CTC,CLC) - CI2(CTC,CLC))
	 CXWZ= -1.D0/DSQRT(T2TW)*(4.D0*(3.D0-T2TW)*CI2(CTW,CLW)
     .	     + ((1.D0+2.D0/CTW)*T2TW
     .	     - (5.D0+2.D0/CTW))*CI1(CTW,CLW))*CV(I)
	 CXHZ= (1.D0-2.D0*S2TW)/(DSQRT(S2TW*C2TW)*2.D0*CMASS**2)
     .	     * CI1(CTHC,CLH)*GHCC(I)/(DSQRT(2.D0*SQR2*GF))
	 XFAC= CDABS(CXTZ+CXBZ+CXCZ+CXWZ+CXHZ)**2
	 ACOUP= SQR2*GF*MZ**2*S2TW*C2TW/PI**2
	 HZG= GF/(4.D0*PI*SQR2)*MH**3*(ALEM0/PI)*ACOUP/16.D0
     .	    * XFAC*(1.D0-(MZ/MH)**2)**3
	ENDIF

*   h -> hh

	 HTOT= 0.D0

	 IF(I.EQ.2)THEN
	  IF(MH.LE.2.D0*SMASS(1))THEN
	   HHH(1)= 0.D0
	  ELSE
	   RH= GHHH(2,1,1)
	   CH= BETA((SMASS(1)/MH)**2)
	   HHH(1)= CH*RH**2/(32.D0*PI*MH)
	   HTOT= HTOT+HHH(1)
	  ENDIF
	 ENDIF

	 IF(I.EQ.3)THEN
	  IF(MH.LE.2.D0*SMASS(1))THEN
	   HHH(2)= 0.D0
	  ELSE
	   RH= GHHH(3,1,1)
	   CH= BETA((SMASS(1)/MH)**2)
	   HHH(2)= CH*RH**2/(32.D0*PI*MH)
	   HTOT= HTOT+HHH(2)
	  ENDIF

	  IF(MH.LE.SMASS(1)+SMASS(2))THEN
	   HHH(3)= 0.D0
	  ELSE
	   RH= GHHH(3,1,2)
	   CH= LAMB((SMASS(1)/MH)**2,(SMASS(2)/MH)**2)
	   HHH(3)= CH*RH**2/(16.D0*PI*MH)
	   HTOT= HTOT+HHH(3)
	  ENDIF

	  IF(MH.LE.2.D0*SMASS(2))THEN
	   HHH(4)= 0.D0
	  ELSE
	   RH= GHHH(3,2,2)
	   CH= BETA((SMASS(2)/MH)**2)
	   HHH(4)= CH*RH**2/(32.D0*PI*MH)
	   HTOT= HTOT+HHH(4)
	  ENDIF
	 ENDIF

*   h -> aa

	 IF(MH.LE.2.D0*PMASS(1))THEN
	  HAA(1)= 0.D0
	 ELSE
	  RH= GHAA(I,1,1)
	  CH= BETA((PMASS(1)/MH)**2)
	  HAA(1)= CH*RH**2/(32.D0*PI*MH)
	  HTOT= HTOT+HAA(1)
	 ENDIF

	 IF(MH.LE.PMASS(1)+PMASS(2))THEN
	  HAA(2)= 0.D0
	 ELSE
	  RH= GHAA(I,1,2)
	  CH= LAMB((PMASS(1)/MH)**2,(PMASS(2)/MH)**2)
	  HAA(2)= CH*RH**2/(16.D0*PI*MH)
	  HTOT= HTOT+HAA(2)
	 ENDIF

	 IF(MH.LE.2.D0*PMASS(2))THEN
	  HAA(3)= 0.D0
	 ELSE
	  RH= GHAA(I,2,2)
	  CH= BETA((PMASS(2)/MH)**2)
	  HAA(3)= CH*RH**2/(32.D0*PI*MH)
	  HTOT= HTOT+HAA(3)
	 ENDIF

*   h -> h+h-

	 IF(MH.LE.2.D0*CMASS)THEN
	  HHCHC= 0.D0
	 ELSE
	  RH= GHCC(I)
	  CH= BETA((CMASS/MH)**2)
	  HHCHC= CH*RH**2/(16.D0*PI*MH)
	  HTOT= HTOT+HHCHC
	 ENDIF

*   h -> aZ

	 DO J=1,2
	  IF(MH.LE.PMASS(J)+MZ)THEN
	   HAZ(J)= 0.D0
	  ELSE
	   RH= (S(I,1)*COSBETA-S(I,2)*SINBETA)
     C	     * (P(J,1)*COSBETA+P(J,2)*SINBETA)
	   CH= LAMB((PMASS(J)/MH)**2,(MZ/MH)**2)
     C	     * LAMB((MH/MZ)**2,(PMASS(J)/MZ)**2)**2
	   HAZ(J)= GF/8.D0/SQR2/PI*MZ**4/MH*CH*RH**2
	   HTOT= HTOT+HAZ(J)
	  ENDIF
	 ENDDO

*   h -> h+W-

	 IF(MH.LE.CMASS+MW)THEN
	  HHCW= 0.D0
	 ELSE
	  RH= S(I,1)*COSBETA-S(I,2)*SINBETA
	  CH= LAMB((CMASS/MH)**2,(MW/MH)**2)
     C	    * LAMB((MH/MW)**2,(CMASS/MW)**2)**2
	  HHCW= GF/4.D0/SQR2/PI*MW**4/MH*CH*RH**2
	  HTOT= HTOT+HHCW
	 ENDIF

*   h -> neutralinos/charginos

	 STOT= 0.D0

	 DO J=1,5
	 DO K=J,5
	  IF(MH.LE.DABS(MNEU(J))+DABS(MNEU(K)))THEN
	   HNEU(J,K)= 0.D0
	  ELSE
	   HNEU(J,K)= 1.D0/(16.D0*PI)*(MH**2-(MNEU(J)+MNEU(K))**2)/MH
     C	        * LAMB((MNEU(J)/MH)**2,(MNEU(K)/MH)**2)
     C	        * GHNEUNEU(I,J,K)**2
	   IF(J.NE.K)HNEU(J,K)= 2.D0*HNEU(J,K)
	   STOT= STOT+HNEU(J,K)
	  ENDIF
	  HNEU(K,J)= HNEU(J,K)
	 ENDDO
	 ENDDO

	 IF(MH.LE.2.D0*DABS(MCHA(1)))THEN
	  HCHA(1)= 0.D0
	 ELSE
	  HCHA(1)= 1.D0/(8.D0*PI)*MH
     C	        * LAMB((MCHA(1)/MH)**2,(MCHA(1)/MH)**2)**3
     C	        * GHCHACHA(I,1,1)**2
	  STOT= STOT+HCHA(1)
	 ENDIF

	 IF(MH.LE.DABS(MCHA(1))+DABS(MCHA(2)))THEN
	  HCHA(2)= 0.D0
	 ELSE
	  HCHA(2)= 1.D0/(16.D0*PI)*MH
     C	        * LAMB((MCHA(1)/MH)**2,(MCHA(2)/MH)**2)
     C	        * ((GHCHACHA(I,1,2)**2+GHCHACHA(I,2,1)**2)
     C	        * (1.D0-(MCHA(1)/MH)**2-(MCHA(2)/MH)**2)
     C	        - 4.D0*GHCHACHA(I,1,2)*GHCHACHA(I,2,1)
     C	        * MCHA(1)*MCHA(2)/MH**2)
	  STOT= STOT+2.D0*HCHA(2)
	 ENDIF

	 IF(MH.LE.2.D0*DABS(MCHA(2)))THEN
	  HCHA(3)= 0.D0
	 ELSE
	  HCHA(3)= 1.D0/(8.D0*PI)*MH
     C	        * LAMB((MCHA(2)/MH)**2,(MCHA(2)/MH)**2)**3
     C	        * GHCHACHA(I,2,2)**2
	  STOT= STOT+HCHA(3)
	 ENDIF

*   h -> squarks
*   UL, UR, DL, DR are the first two families

	 IF(MH.LE.2.D0*MUL)THEN
	  HSQ(1)= 0.D0
	 ELSE
	  RH= HRULUL(I,0.D0)
	  CH= BETA((MUL/MH)**2)
	  HSQ(1)= 3.D0*CH*RH**2/(16.D0*PI*MH)
	  STOT= STOT+2.D0*HSQ(1)
	 ENDIF

	 IF(MH.LE.2.D0*MUR)THEN
	  HSQ(2)= 0.D0
	 ELSE
	  RH= HRURUR(I,0.D0)
	  CH= BETA((MUR/MH)**2)
	  HSQ(2)= 3.D0*CH*RH**2/(16.D0*PI*MH)
	  STOT= STOT+2.D0*HSQ(2)
	 ENDIF

	 IF(MH.LE.2.D0*MDL)THEN
	  HSQ(3)= 0.D0
	 ELSE
	  RH= HRDLDL(I,0.D0)
	  CH= BETA((MDL/MH)**2)
	  HSQ(3)= 3.D0*CH*RH**2/(16.D0*PI*MH)
	  STOT= STOT+2.D0*HSQ(3)
	 ENDIF

	 IF(MH.LE.2.D0*MDR)THEN
	  HSQ(4)= 0.D0
	 ELSE
	  RH= HRDRDR(I,0.D0)
	  CH= BETA((MDR/MH)**2)
	  HSQ(4)= 3.D0*CH*RH**2/(16.D0*PI*MH)
	  STOT= STOT+2.D0*HSQ(4)
	 ENDIF

	 IF(MH.LE.2.D0*MST1)THEN
	  HSQ(5)= 0.D0
	 ELSE
	  RH= CST**2*HRULUL(I,HUQ)+SST**2*HRURUR(I,HUQ)
     C	     +2.D0*CST*SST*HRULUR(I)
	  CH= BETA((MST1/MH)**2)
	  HSQ(5)= 3.D0*CH*RH**2/(16.D0*PI*MH)
	  STOT= STOT+HSQ(5)
	 ENDIF

	 IF(MH.LE.2.D0*MST2)THEN
	  HSQ(6)= 0.D0
	 ELSE
	  RH= SST**2*HRULUL(I,HUQ)+CST**2*HRURUR(I,HUQ)
     C	     -2.D0*CST*SST*HRULUR(I)
	  CH= BETA((MST2/MH)**2)
	  HSQ(6)= 3.D0*CH*RH**2/(16.D0*PI*MH)
	  STOT= STOT+HSQ(6)
	 ENDIF

	 IF(MH.LE.MST1+MST2)THEN
	  HSQ(7)= 0.D0
	 ELSE
	  RH= CST*SST*(HRURUR(I,HUQ)-HRULUL(I,HUQ))
     C	     +(CST**2-SST**2)*HRULUR(I)
	  CH= LAMB((MST1/MH)**2,(MST2/MH)**2)
	  HSQ(7)= 3.D0*CH*RH**2/(16.D0*PI*MH)
	  STOT= STOT+2.D0*HSQ(7)
	 ENDIF

	 IF(MH.LE.2.D0*MSB1)THEN
	  HSQ(8)= 0.D0
	 ELSE
	  RH= CSB**2*HRDLDL(I,HDQ)+SSB**2*HRDRDR(I,HDQ)
     C	     +2.D0*CSB*SSB*HRDLDR(I)
	  CH= BETA((MSB1/MH)**2)
	  HSQ(8)= 3.D0*CH*RH**2/(16.D0*PI*MH)
	  STOT= STOT+HSQ(8)
	 ENDIF

	 IF(MH.LE.2.D0*MSB2)THEN
	  HSQ(9)= 0.D0
	 ELSE
	  RH= SSB**2*HRDLDL(I,HDQ)+CSB**2*HRDRDR(I,HDQ)
     C	     -2.D0*CSB*SSB*HRDLDR(I)
	  CH= BETA((MSB2/MH)**2)
	  HSQ(9)= 3.D0*CH*RH**2/(16.D0*PI*MH)
	  STOT= STOT+HSQ(9)
	 ENDIF

	 IF(MH.LE.MSB1+MSB2)THEN
	  HSQ(10)= 0.D0
	 ELSE
	  RH= CSB*SSB*(HRDRDR(I,HDQ)-HRDLDL(I,HDQ))
     C	     +(CSB**2-SSB**2)*HRDLDR(I)
	  CH= LAMB((MSB1/MH)**2,(MSB2/MH)**2)
	  HSQ(10)= 3.D0*CH*RH**2/(16.D0*PI*MH)
	  STOT= STOT+2.D0*HSQ(10)
	 ENDIF

*   h -> sleptons
*   LL, LR, NL are the first two families

	 IF(MH.LE.2.D0*MLL)THEN
	  HSL(1)= 0.D0
	 ELSE
	  RH= HRLLLL(I,0.D0)
	  CH= BETA((MLL/MH)**2)
	  HSL(1)= CH*RH**2/(16.D0*PI*MH)
	  STOT= STOT+2.D0*HSL(1)
	 ENDIF

	 IF(MH.LE.2.D0*MLR)THEN
	  HSL(2)= 0.D0
	 ELSE
	  RH= HRLRLR(I,0.D0)
	  CH= BETA((MLR/MH)**2)
	  HSL(2)= CH*RH**2/(16.D0*PI*MH)
	  STOT= STOT+2.D0*HSL(2)
	 ENDIF

	 IF(MH.LE.2.D0*MNL)THEN
	  HSL(3)= 0.D0
	 ELSE
	  RH= HRNLNL(I)
	  CH= BETA((MNL/MH)**2)
	  HSL(3)= CH*RH**2/(16.D0*PI*MH)
	  STOT= STOT+2.D0*HSL(3)
	 ENDIF

	 IF(MH.LE.2.D0*MSL1)THEN
	  HSL(4)= 0.D0
	 ELSE
	  RH= CSL**2*HRLLLL(I,HLQ)+SSL**2*HRLRLR(I,HLQ)
     C	     +2.D0*CSL*SSL*HRLLLR(I)
	  CH= BETA((MSL1/MH)**2)
	  HSL(4)= CH*RH**2/(16.D0*PI*MH)
	  STOT= STOT+HSL(4)
	 ENDIF

	 IF(MH.LE.2.D0*MSL2)THEN
	  HSL(5)= 0.D0
	 ELSE
	  RH= SSL**2*HRLLLL(I,HLQ)+CSL**2*HRLRLR(I,HLQ)
     C	     -2.D0*CSL*SSL*HRLLLR(I)
	  CH= BETA((MSL2/MH)**2)
	  HSL(5)= CH*RH**2/(16.D0*PI*MH)
	  STOT= STOT+HSL(5)
	 ENDIF

	 IF(MH.LE.MSL1+MSL2)THEN
	  HSL(6)= 0.D0
	 ELSE
	  RH= CSL*SSL*(HRLRLR(I,HLQ)-HRLLLL(I,HLQ))
     C	     +(CSL**2-SSL**2)*HRLLLR(I)
	  CH= LAMB((MSL1/MH)**2,(MSL2/MH)**2)
	  HSL(6)= CH*RH**2/(16.D0*PI*MH)
	  STOT= STOT+2.D0*HSL(6)
	 ENDIF

	 IF(MH.LE.2.D0*MSNT)THEN
	  HSL(7)= 0.D0
	 ELSE
	  RH= HRNLNL(I)
	  CH= BETA((MSNT/MH)**2)
	  HSL(7)= CH*RH**2/(16.D0*PI*MH)
	  STOT= STOT+HSL(7)
	 ENDIF

*  Branching ratios

	 WIDTH(I)= HJJ+HMM+HLL+HSS+HCC+HBB+HTT+HWW+HZZ+HGG+HZG+HTOT+STOT
	 BRJJ(I)= HJJ/WIDTH(I)
	 BRMM(I)= HMM/WIDTH(I)
	 BRLL(I)= HLL/WIDTH(I)
	 BRSS(I)= HSS/WIDTH(I)
	 BRCC(I)= HCC/WIDTH(I)
	 BRBB(I)= HBB/WIDTH(I)
	 BRTT(I)= HTT/WIDTH(I)
	 BRWW(I)= HWW/WIDTH(I)
	 BRZZ(I)= HZZ/WIDTH(I)
	 BRGG(I)= HGG/WIDTH(I)
	 BRZG(I)= HZG/WIDTH(I)
	 BRHIGGS(I)= HTOT/WIDTH(I)
	 BRSUSY(I)= STOT/WIDTH(I)
	 DO J=1,3
	  BRHAA(I,J)=HAA(J)/WIDTH(I)
	 ENDDO
	 BRHCHC(I)= HHCHC/WIDTH(I)
	 DO J=1,2
	  BRHAZ(I,J)=HAZ(J)/WIDTH(I)
	 ENDDO
	 BRHCW(I)= HHCW/WIDTH(I)
	 DO J=1,5
	 DO K=1,5
	  BRNEU(I,J,K)=HNEU(J,K)/WIDTH(I)
	 ENDDO
	 ENDDO
	 DO J=1,3
	  BRCHA(I,J)=HCHA(J)/WIDTH(I)
	 ENDDO
	 DO J=1,10
	  BRHSQ(I,J)=HSQ(J)/WIDTH(I)
	 ENDDO
	 DO J=1,7
	  BRHSL(I,J)=HSL(J)/WIDTH(I)
	 ENDDO

	ENDDO

	BRHHH(1)=HHH(1)/WIDTH(2)
	BRHHH(2)=HHH(2)/WIDTH(3)
	BRHHH(3)=HHH(3)/WIDTH(3)
	BRHHH(4)=HHH(4)/WIDTH(3)


* Loop over CP-odd Higgs bosons

	DO I=1,2

	 MA= PMASS(I)
	 HIGTOP= (MA/MT)**2
	 MT0= 3.D8
	 ASH= ALPHAS(MA,2)
	 MC0= 1.D8
	 MB0= 2.D8
	 AS3= ALPHAS(MA,2)
	 MC0= MC
	 AS4= ALPHAS(MA,2)
	 MB0= MBP
	 MT0= MT

*  Running quark masses at MA

	 RMS= RUNM(MA,3)

	 RMC= RUNM(MA,4)

         RMB= RUNMB(MA)

	 IF(MA.GE.MT)THEN
	  RMT= RMTTOP
     C	   *(1.D0+7.D0/(4.D0*PI)*ASMT*DLOG(MA**2/MT**2))
     C	   **(-4.D0/7.D0)
	 ELSE
 	  RMT= RMTTOP
     C	   *(1.D0+23.D0/(12.D0*PI)*ASMT*DLOG(MA**2/MT**2))
     C	   **(-12.D0/23.D0)
	 ENDIF
	 
*  Relative couplings compared with equivalent SM

	 CU(I+3)= P(I,1)/SINBETA
	 CD(I+3)= P(I,2)/COSBETA
	 IF(CD(I+3).EQ.0.D0) CD(I+3)= EPS

*  Effective coupling to 2 gluons/2 photons

	 CTT= 4.D0*(MT/MA)**2*DCMPLX(1.D0,-EPS)
	 CTB= 4.D0*(MBP/MA)**2*DCMPLX(1.D0,-EPS)
	 CTC= 4.D0*(MC/MA)**2*DCMPLX(1.D0,-EPS)
	 CTL= 4.D0*(MTAU/MA)**2*DCMPLX(1.D0,-EPS)
	 CTCH1= 4.D0*(MCHA(1)/MA)**2*DCMPLX(1.D0,-EPS)
	 CTCH2= 4.D0*(MCHA(2)/MA)**2*DCMPLX(1.D0,-EPS)
	 CXT= CTT*CF(CTT)
	 CXB= CTB*CF(CTB)
	 CXC= CTC*CF(CTC)
	 CXL= CTL*CF(CTL)
	 CXCH1= CTCH1*CF(CTCH1)
	 CXCH2= CTCH2*CF(CTCH2)

*   Here CJ and CG are the actual couplings. Later we divide
*   them by the SM couplings in order to obtain the reduced couplings

	 CJ(I+3)= CDABS(CU(I+3)*(CXT+CXC) + CD(I+3)*CXB)

	 CG(I+3)= CDABS(4.D0/3.D0*CU(I+3)*(CXT+CXC)
     C	  + CD(I+3)*(CXB/3.D0+CXL)
     C	  + GACHACHA(I,1,1)/(DSQRT(SQR2*GF)*MCHA(1))*CXCH1
     C	  + GACHACHA(I,2,2)/(DSQRT(SQR2*GF)*MCHA(2))*CXCH2)

*  Partial widths

*   a -> gg

	 NFEXT= 3
	 ASG= AS3
	 FQCD= AGGQCD(ASG,NFEXT)
	 XFAC= CJ(I+3)**2*FQCD
	 HJJ= GF/(16.D0*PI*SQR2)*MA**3*(ASG/PI)**2*XFAC

*   a -> gg* -> gcc to be added to a -> cc

	 NFEXT= 4
	 ASG= AS4
	 FQCD= AGGQCD(ASG,NFEXT)
	 XFAC= CJ(I+3)**2*FQCD
	 DCC= GF/(16.D0*PI*SQR2)*MA**3*(ASG/PI)**2*XFAC-HJJ

*   a -> gg* -> gbb to be added to a -> bb

	 NFEXT= 5
	 ASG= ASH
	 FQCD= AGGQCD(ASG,NFEXT)
	 XFAC= CJ(I+3)**2*FQCD
	 DBB= GF/(16.D0*PI*SQR2)*MA**3*(ASG/PI)**2*XFAC-HJJ-DCC

	 IF(NFGG.EQ.5)THEN
	  HJJ= HJJ+DBB+DCC
	  DBB= 0.D0
	  DCC= 0.D0
	 ELSEIF(NFGG.EQ.4)THEN
	  HJJ= HJJ+DCC
	  DCC= 0.D0
	 ENDIF

*    Below CJ becomes the REDUCED coupling
*    to 2 gluons as compared to the SM coupling

	 CJ(I+3)= CJ(I+3)/CDABS(CXT+CXC+CXB)

*   a -> mumu

	 IF(MA.LE.2*MMUON)THEN
	 HMM= 0.D0
	 ELSE
	  HMM= CD(I+3)**2*AFF(MA,(MMUON/MA)**2)
	 ENDIF

*   a -> tautau

	 IF(MA.LE.2*MTAU)THEN
	  HLL= 0.D0
	 ELSE
	  HLL= CD(I+3)**2*AFF(MA,(MTAU/MA)**2)
	 ENDIF

*   a -> ss

	 RATCOUP= CU(I+3)/CD(I+3)
	 IF(MA.LE.2.D0*MS)THEN
	  HSS= 0.D0
	 ELSE
	  HS1= 3.D0*AFF(MA,(MS/MA)**2)*CD(I+3)**2
     .	     * TQCDA((MS/MA)**2)
	  HS2= 3.D0*AFF(MA,(RMS/MA)**2)*CD(I+3)**2
     .	     * QCDA((RMS/MA)**2)
	  IF(HS2.LT.0.D0) HS2=0.D0
	  RAT= 2.D0*MS/MA
	  HSS= QQINT(RAT,HS1,HS2)
	 ENDIF

*   a -> cc

	 RATCOUP= 1.D0
	 IF(MA.LE.2*MC)THEN
	  HCC= 0.D0
	 ELSE
	  HC1= 3.D0*AFF(MA,(MC/MA)**2)*CU(I+3)**2
     .	     * TQCDA((MC/MA)**2)
	  HC2= 3.D0*AFF(MA,(RMC/MA)**2)*CU(I+3)**2
     .	     * QCDA((RMC/MA)**2)
     .	     + DCC
	  IF(HC2.LT.0.D0) HC2=0.D0
	  RAT= 2.D0*MC/MA
	  HCC= QQINT(RAT,HC1,HC2)
	 ENDIF

*   a -> bb

	 RATCOUP= CU(I+3)/CD(I+3)
	 IF(MA.LE.2*MBP)THEN
	  HBB= 0.D0
	 ELSE
	  HB1= 3.D0*AFF(MA,(MBP/MA)**2)*CD(I+3)**2
     .	     * TQCDA((MBP/MA)**2)
	  HB2= 3.D0*AFF(MA,(RMB/MA)**2)*CD(I+3)**2
     .	     * QCDA((RMB/MA)**2)
     .	     + DBB
	  IF(HB2.LT.0.D0) HB2=0.D0
	  RAT= 2.D0*MBP/MA
	  HBB= QQINT(RAT,HB1,HB2)
	 ENDIF

*   Finite large tan(beta) SUSY correction:

	 HBB=HBB/(1.D0+DELMB)**2

*   a -> tt
 
	 RATCOUP= 0.D0
	 IF (MA.LE.2.D0*MT)THEN
	  HTT= 0.D0
	 ELSE
	  HT1= 3.D0*AFF(MA,(MT/MA)**2)*CU(I+3)**2
     .	     * TQCDA((MT/MA)**2)
	  IF(MA.LE.2.D0*RMT)THEN
	   HT2= 0.D0
	  ELSE
	   HT2= 3.D0*AFF(MA,(RMT/MA)**2)*CU(I+3)**2
     .	      * QCDA((RMT/MA)**2)
	  ENDIF
	  IF(HT2.LT.0.D0) HT2=0.D0
	  RAT= 2.D0*MT/MA
	  HTT= QQINT(RAT,HT1,HT2)
	 ENDIF
 
*   a -> gamma gamma

	 XFAC= CG(I+3)**2
	 HGG= GF/(32.D0*PI*SQR2)*MA**3*(ALEM0/PI)**2*XFAC

*    Below CG becomes the REDUCDED coupling
*    to 2 photons as compared to the SM coupling

	 CG(I+3)= CG(I+3)/CDABS(4.D0/3.D0*(CXT+CXC)+(CXB/3.D0+CXL))
	 
*   a -> Z gamma

	IF(MA.LE.MZ)THEN
	 HZG= 0.D0
	ELSE
	 FT= -2.D0*(1.D0-8.D0/3.D0*S2TW)/DSQRT(S2TW*C2TW)*CU(I+3)
	 FB= (-1.D0+4.D0/3.D0*S2TW)/DSQRT(S2TW*C2TW)*CD(I+3)
	 CLT= 4.D0*(MT/MZ)**2*DCMPLX(1.D0,-EPS)
	 CLB= 4.D0*(MBP/MZ)**2*DCMPLX(1.D0,-EPS)
	 CLC= 4.D0*(MC/MZ)**2*DCMPLX(1.D0,-EPS)
	 CXT= FT*(-CI2(CTT,CLT))
	 CXB= FB*(-CI2(CTB,CLB))
	 CXC= FT*(-CI2(CTC,CLC))
	 XFAC= CDABS(CXT+CXB+CXC)**2
	 ACOUP= SQR2*GF*MZ**2*S2TW*C2TW/PI**2
	 HZG= GF/(4.D0*PI*SQR2)*MA**3*(ALEM0/PI)*ACOUP/16.D0
     .	    * XFAC*(1.D0-(MZ/MA)**2)**3
	ENDIF

*   a -> ha

	 HTOT= 0.D0

	 IF(I.EQ.2)THEN
	  DO J=1,3
	   IF(MA.LE.SMASS(J)+PMASS(1))THEN
	    HHA(J)= 0.D0
	   ELSE
	    RH= GHAA(J,1,I)
	    CH= LAMB((SMASS(J)/MA)**2,(PMASS(1)/MA)**2)
	    HHA(J)= CH*RH**2/(16.D0*PI*MA)
	    HTOT= HTOT+HHA(J)
	   ENDIF
	  ENDDO
	 ENDIF

*   a -> hZ

	 DO J=1,3
	  IF(MA.LE.SMASS(J)+MZ)THEN
	   HHZ(J)= 0.D0
	  ELSE
	   RH= (S(J,1)*COSBETA-S(J,2)*SINBETA)*P2(I,1)
	   CH= LAMB((SMASS(J)/MA)**2,(MZ/MA)**2)
     C	     * LAMB((MA/MZ)**2,(SMASS(J)/MZ)**2)**2
	   HHZ(J)= GF/8.D0/SQR2/PI*MZ**4/MA*CH*RH**2
	   HTOT= HTOT+HHZ(J)
	  ENDIF
	 ENDDO

*   a -> h+W-

	 IF(MA.LE.CMASS+MW)THEN
	  HHCW= 0.D0
	 ELSE
	  RH= P2(I,1)
	  CH= LAMB((CMASS/MA)**2,(MW/MA)**2)
     C	    * LAMB((MA/MW)**2,(CMASS/MW)**2)**2
	  HHCW= GF/4.D0/SQR2/PI*MW**4/MA*CH*RH**2
	  HTOT= HTOT+HHCW
	 ENDIF

*   a -> neutralinos/charginos

	 STOT= 0.D0

	 DO J=1,5
	 DO K=J,5
	  IF(MA.LE.DABS(MNEU(J))+DABS(MNEU(K)))THEN
	   HNEU(J,K)= 0.D0
	  ELSE
	   HNEU(J,K)= 1.D0/(16.D0*PI)*(MA**2-(MNEU(J)-MNEU(K))**2)/MA
     C	        * LAMB((MNEU(J)/MA)**2,(MNEU(K)/MA)**2)
     C	        * GANEUNEU(I,J,K)**2
	   IF(J.NE.K)HNEU(J,K)= 2.D0*HNEU(J,K)
	   STOT= STOT+HNEU(J,K)
	  ENDIF
	  HNEU(K,J)= HNEU(J,K)
	 ENDDO
	 ENDDO

	 IF(MA.LE.2.D0*DABS(MCHA(1)))THEN
	  HCHA(1)= 0.D0
	 ELSE
	  HCHA(1)= 1.D0/(8.D0*PI)*MA
     C	       * LAMB((MCHA(1)/MA)**2,(MCHA(1)/MA)**2)
     C	       * GACHACHA(I,1,1)**2
	  STOT= STOT+HCHA(1)
	 ENDIF

	 IF(MA.LE.DABS(MCHA(1))+DABS(MCHA(2)))THEN
	  HCHA(2)= 0.D0
	 ELSE
	  HCHA(2)= 1.D0/(16.D0*PI)*MA
     C	       * LAMB((MCHA(1)/MA)**2,(MCHA(2)/MA)**2)
     C	       * ((GACHACHA(I,1,2)**2+GACHACHA(I,2,1)**2)
     C	       * (1.D0-(MCHA(1)/MA)**2-(MCHA(2)/MA)**2)
     C	       + 4.D0*GACHACHA(I,1,2)*GACHACHA(I,2,1)
     C	       * MCHA(1)*MCHA(2)/MA**2)
	  STOT= STOT+2.D0*HCHA(2)
	 ENDIF

	 IF(MA.LE.2.D0*DABS(MCHA(2)))THEN
	  HCHA(3)= 0.D0
	 ELSE
	  HCHA(3)= 1.D0/(8.D0*PI)*MA
     C	       * LAMB((MCHA(2)/MA)**2,(MCHA(2)/MA)**2)
     C	       * GACHACHA(I,2,2)**2
	  STOT= STOT+HCHA(3)
	 ENDIF

*   a -> squarks

	 IF(MA.LE.2.D0*MST1)THEN
	  ASQ(1)= 0.D0
	 ELSE
	  RH= 2.D0*CST*SST*HIULUR(I)
	  CH= BETA((MST1/MA)**2)
	  ASQ(1)= 3.D0*CH*RH**2/(16.D0*PI*MA)
	  STOT= STOT+ASQ(1)
	 ENDIF

	 IF(MA.LE.2.D0*MST2)THEN
	  ASQ(2)= 0.D0
	 ELSE
	  RH= -2.D0*CST*SST*HIULUR(I)
	  CH= BETA((MST2/MA)**2)
	  ASQ(2)= 3.D0*CH*RH**2/(16.D0*PI*MA)
	  STOT= STOT+ASQ(2)
	 ENDIF

	 IF(MA.LE.MST1+MST2)THEN
	  ASQ(3)= 0.D0
	 ELSE
	  RH= (CST**2-SST**2)*HIULUR(I)
	  CH= LAMB((MST1/MA)**2,(MST2/MA)**2)
	  ASQ(3)= 3.D0*CH*RH**2/(16.D0*PI*MA)
	  STOT= STOT+2.D0*ASQ(3)
	 ENDIF

	 IF(MA.LE.2.D0*MSB1)THEN
	  ASQ(4)= 0.D0
	 ELSE
	  RH= 2.D0*CSB*SSB*HIDLDR(I)
	  CH= BETA((MSB1/MA)**2)
	  ASQ(4)= 3.D0*CH*RH**2/(16.D0*PI*MA)
	  STOT= STOT+ASQ(4)
	 ENDIF

	 IF(MA.LE.2.D0*MSB2)THEN
	  ASQ(5)= 0.D0
	 ELSE
	  RH= -2.D0*CSB*SSB*HIDLDR(I)
	  CH= BETA((MSB2/MA)**2)
	  ASQ(5)= 3.D0*CH*RH**2/(16.D0*PI*MA)
	  STOT= STOT+ASQ(5)
	 ENDIF

	 IF(MA.LE.MSB1+MSB2)THEN
	  ASQ(6)= 0.D0
	 ELSE
	  RH= (CSB**2-SSB**2)*HIDLDR(I)
	  CH= LAMB((MSB1/MA)**2,(MSB2/MA)**2)
	  ASQ(6)= 3.D0*CH*RH**2/(16.D0*PI*MA)
	  STOT= STOT+2.D0*ASQ(6)
	 ENDIF

*   a -> sleptons

	 IF(MA.LE.2.D0*MSL1)THEN
	  ASL(1)= 0.D0
	 ELSE
	  RH= 2.D0*CSL*SSL*HILLLR(I)
	  CH= BETA((MSL1/MA)**2)
	  ASL(1)= CH*RH**2/(16.D0*PI*MA)
	  STOT= STOT+ASL(1)
	 ENDIF

	 IF(MA.LE.2.D0*MSL2)THEN
	  ASL(2)= 0.D0
	 ELSE
	  RH= -2.D0*CSL*SSL*HILLLR(I)
	  CH= BETA((MSL2/MA)**2)
	  ASL(2)= CH*RH**2/(16.D0*PI*MA)
	  STOT= STOT+ASL(2)
	 ENDIF

	 IF(MA.LE.MSL1+MSL2)THEN
	  ASL(3)= 0.D0
	 ELSE
	  RH= (CSL**2-SSL**2)*HILLLR(I)
	  CH= LAMB((MSL1/MA)**2,(MSL2/MA)**2)
	  ASL(3)= CH*RH**2/(16.D0*PI*MA)
	  STOT= STOT+2.D0*ASL(3)
	 ENDIF

*  Branching ratios

	 WIDTH(I+3)= HJJ+HMM+HLL+HSS+HCC+HBB+HTT+HGG+HZG+HTOT+STOT
	 BRJJ(I+3)= HJJ/WIDTH(I+3)
	 BRMM(I+3)= HMM/WIDTH(I+3)
	 BRLL(I+3)= HLL/WIDTH(I+3)
	 BRSS(I+3)= HSS/WIDTH(I+3)
	 BRCC(I+3)= HCC/WIDTH(I+3)
	 BRBB(I+3)= HBB/WIDTH(I+3)
	 BRTT(I+3)= HTT/WIDTH(I+3)
	 BRGG(I+3)= HGG/WIDTH(I+3)
	 BRZG(I+3)= HZG/WIDTH(I+3)
	 BRHIGGS(I+3)= HTOT/WIDTH(I+3)
	 BRSUSY(I+3)= STOT/WIDTH(I+3)
	 DO J=1,3
	  BRAHZ(I,J)= HHZ(J)/WIDTH(I+3)
	 ENDDO
	 BRHCW(I+3)= HHCW/WIDTH(I+3)
	 DO J=1,5
	 DO K=1,5
	  BRNEU(I+3,J,K)=HNEU(J,K)/WIDTH(I+3)
	 ENDDO
	 ENDDO
	 DO J=1,3
	  BRCHA(I+3,J)=HCHA(J)/WIDTH(I+3)
	 ENDDO
	 DO J=1,6
	  BRASQ(I,J)=ASQ(J)/WIDTH(I+3)
	 ENDDO
	 DO J=1,3
	  BRASL(I,J)=ASL(J)/WIDTH(I+3)
	 ENDDO

	ENDDO

	DO J=1,3
	 BRAHA(J)= HHA(J)/WIDTH(5)
	ENDDO


* Charged Higgs boson

	ASH= ALPHAS(CMASS,2)

*  Running quark masses

	RMS= RUNM(CMASS,3)
	RMC= RUNM(CMASS,4)

*   Running bottom/top masses at CMASS:

	 IF(CMASS.GE.MT)THEN
	  RMT= RMTTOP
     C	   *(1.D0+7.D0/(4.D0*PI)*ASMT*DLOG(CMASS**2/MT**2))
     C	   **(-4.D0/7.D0)
	 ELSE
 	  RMT= RMTTOP
     C	   *(1.D0+23.D0/(12.D0*PI)*ASMT*DLOG(CMASS**2/MT**2))
     C	   **(-12.D0/23.D0)
     
	 ENDIF
     
         RMB=RUNMB(CMASS)

*  Partial widths

*   h+ -> munu

	IF(CMASS.LE.MMUON)THEN
	 HMN= 0.D0
	ELSE
	 HMN= CFF(CMASS,TANBETA,(MMUON/CMASS)**2,0.D0)
	ENDIF

*   h+ -> taunu

	IF(CMASS.LE.MTAU)THEN
	 HLN= 0.D0
	ELSE
	 HLN= CFF(CMASS,TANBETA,(MTAU/CMASS)**2,0.D0)
	ENDIF

*   h+ -> su

	IF(CMASS.LE.MS+EPS)THEN
	 HSU= 0.D0
	ELSE
	 HSU1= 3.D0*VUS**2*CQCDM(CMASS,TANBETA,(MS/CMASS)**2,EPS)
	 HSU2= 3.D0*VUS**2*CQCD(CMASS,TANBETA,(RMS/CMASS)**2,EPS)
	 IF(HSU2.LT.0.D0) HSU2= 0.D0
	 RAT= MS/CMASS
	 HSU= QQINT(RAT,HSU1,HSU2)
	ENDIF

*   h+ -> cs

	IF(CMASS.LE.MS+MC)THEN
	 HSC= 0.D0
	ELSE
	 HSC1= 3.D0*CQCDM(CMASS,TANBETA,(MS/CMASS)**2,(MC/CMASS)**2)
	 HSC2= 3.D0*CQCD(CMASS,TANBETA,(RMS/CMASS)**2,(RMC/CMASS)**2)
	 IF(HSC2.LT.0.D0) HSC2= 0.D0
	 RAT= (MS+MC)/CMASS
	 HSC= QQINT(RAT,HSC1,HSC2)
	ENDIF

*   h+ -> cb

	IF(CMASS.LE.MBP+MC)THEN
	 HBC= 0.D0
	ELSE
	 HBC1= 3.D0*VCB**2
     C	  *CQCDM(CMASS,TANBETA,(MBP/CMASS)**2,(MC/CMASS)**2)
	 HBC2= 3.D0*VCB**2
     C	  *CQCD(CMASS,TANBETA,(RMB/CMASS)**2,(RMC/CMASS)**2)
	 IF(HBC2.LT.0.D0) HBC2= 0.D0
	 RAT= (MBP+MC)/CMASS
	 HBC= QQINT(RAT,HBC1,HBC2)
	ENDIF

*   Finite large tan(beta) SUSY correction:
	
	HBC=HBC/(1.D0+DELMB)**2


*   h+ -> bu

	IF(CMASS.LE.MBP+EPS)THEN
	 HBU= 0.D0
	ELSE
	 HBU1= 3.D0*VUB**2*CQCDM(CMASS,TANBETA,(MBP/CMASS)**2,EPS)
	 HBU2= 3.D0*VUB**2*CQCD(CMASS,TANBETA,(RMB/CMASS)**2,EPS)
	 IF(HBU2.LT.0.D0) HBU2= 0.D0
	 RAT= MBP/CMASS
	 HBU= QQINT(RAT,HBU1,HBU2)
	ENDIF

*   Finite large tan(beta) SUSY correction:

	HBU=HBU/(1.D0+DELMB)**2


*   h+ -> tb :

	IF(CMASS.LE.MT+MBP)THEN
	 HBT= 0.D0
	ELSE
	 HBT1= 3.D0*CQCDM(CMASS,TANBETA,(MBP/CMASS)**2,(MT/CMASS)**2)
	 IF(CMASS.LE.RMT+RMB)THEN
	  HBT2= 0.D0
	 ELSE
	  HBT2= 3.D0*CQCD(CMASS,TANBETA,(RMB/CMASS)**2,(RMT/CMASS)**2)
	 ENDIF
	 IF(HBT2.LT.0.D0) HBT2= 0.D0
	 RAT= (MBP+MT)/CMASS
	 HBT= QQINT(RAT,HBT1,HBT2)
	ENDIF

*   Finite large tan(beta) SUSY correction:

	HBT=HBT/(1.D0+DELMB)**2

*   h+ -> hW

	HTOT= 0.D0

	DO I=1,3
	 IF(CMASS.LE.MW+SMASS(I))THEN
	  HCWH(I)= 0.D0
	 ELSE
	  RH= S(I,1)*COSBETA-S(I,2)*SINBETA
	  CH= LAMB((SMASS(I)/CMASS)**2,(MW/CMASS)**2)
     C	   *LAMB((CMASS/MW)**2,(SMASS(I)/MW)**2)**2
	  HCWH(I)= GF/8.D0/SQR2/PI*MW**4/CMASS*CH*RH**2
	 HTOT= HTOT+HCWH(I)
	 ENDIF
	ENDDO

*   h+ -> aW

	DO I=1,2
	 IF(CMASS.LE.MW+PMASS(I))THEN
	  HCWH(I+3)= 0.D0
	 ELSE
	  RH= P2(I,1)
	  CH= LAMB((PMASS(I)/CMASS)**2,(MW/CMASS)**2)
     C	    * LAMB((CMASS/MW)**2,(PMASS(I)/MW)**2)**2
	  HCWH(I+3)= GF/8.D0/SQR2/PI*MW**4/CMASS*CH*RH**2
	  HTOT= HTOT+HCWH(I+3)
	 ENDIF
	ENDDO

*   h+ -> charginos+neutralinos

	STOT= 0.D0

	DO I=1,5
	DO J=1,2
	 IF (CMASS.LE.DABS(MNEU(I))+DABS(MCHA(J)))THEN
	  HCNC(I,J)= 0.D0
	 ELSE
	  HCNC(I,J)= 1.D0/(16.D0*PI)*CMASS
     C	       * LAMB((MNEU(I)/CMASS)**2,(MCHA(J)/CMASS)**2)
     C	       * ((GHCNEUCHAL(I,J)**2+GHCNEUCHAR(I,J)**2)
     C	       * (1.D0-(MNEU(I)/CMASS)**2-(MCHA(J)/CMASS)**2)
     C	       - 4.D0*GHCNEUCHAL(I,J)*GHCNEUCHAR(I,J)
     C	       * MNEU(I)*MCHA(J)/CMASS**2)

	  STOT= STOT+HCNC(I,J)
	 ENDIF
	ENDDO
	ENDDO

*   h+ -> squarks

	 HPULDL=H1Q*H2Q/DSQRT(H1Q**2+H2Q**2)*g2

	 IF(CMASS.LE.MUL+MDL)THEN
	  HCSQ(1)= 0.D0
	 ELSE
	  RH= HPULDL
	  CH= LAMB((MUL/CMASS)**2,(MDL/CMASS)**2)
	  HCSQ(1)= 3.D0*CH*RH**2/(16.D0*PI*CMASS)
	  STOT= STOT+2.D0*HCSQ(1)
	 ENDIF

	 HPULDL=H1Q*H2Q/DSQRT(H1Q**2+H2Q**2)*(g2-HUQ**2-HDQ**2)
	 HPULDR=-HDQ*(COSBETA*LAMBDA*ss+SINBETA*AD)
	 HPURDL=-HUQ*(COSBETA*AU+SINBETA*LAMBDA*ss)
	 HPURDR=-HUQ*HDQ*DSQRT(H1Q**2+H2Q**2)

	 IF(CMASS.LE.MST1+MSB1)THEN
	  HCSQ(2)= 0.D0
	 ELSE
	  RH= CST*CSB*HPULDL+SST*SSB*HPURDR
     C	     +CST*SSB*HPULDR+SST*CSB*HPURDL
	  CH= LAMB((MST1/CMASS)**2,(MSB1/CMASS)**2)
	  HCSQ(2)= 3.D0*CH*RH**2/(16.D0*PI*CMASS)
	  STOT= STOT+HCSQ(2)
	 ENDIF

	 IF(CMASS.LE.MST1+MSB2)THEN
	  HCSQ(3)= 0.D0
	 ELSE
	  RH=-CST*SSB*HPULDL+SST*CSB*HPURDR
     C	     +CST*CSB*HPULDR-SST*SSB*HPURDL
	  CH= LAMB((MST1/CMASS)**2,(MSB2/CMASS)**2)
	  HCSQ(3)= 3.D0*CH*RH**2/(16.D0*PI*CMASS)
	  STOT= STOT+HCSQ(3)
	 ENDIF

	 IF(CMASS.LE.MST2+MSB1)THEN
	  HCSQ(4)= 0.D0
	 ELSE
	  RH=-SST*CSB*HPULDL+CST*SSB*HPURDR
     C	     -SST*SSB*HPULDR+CST*CSB*HPURDL
	  CH= LAMB((MST2/CMASS)**2,(MSB1/CMASS)**2)
	  HCSQ(4)= 3.D0*CH*RH**2/(16.D0*PI*CMASS)
	  STOT= STOT+HCSQ(4)
	 ENDIF

	 IF(CMASS.LE.MST2+MSB2)THEN
	  HCSQ(5)= 0.D0
	 ELSE
	  RH= SST*SSB*HPULDL+CST*CSB*HPURDR
     C	     -SST*CSB*HPULDR-CST*SSB*HPURDL
	  CH= LAMB((MST2/CMASS)**2,(MSB2/CMASS)**2)
	  HCSQ(5)= 3.D0*CH*RH**2/(16.D0*PI*CMASS)
	  STOT= STOT+HCSQ(5)
	 ENDIF

*   h+ -> sleptons

	 HPLLNL=H1Q*H2Q/DSQRT(H1Q**2+H2Q**2)*g2

	 IF(CMASS.LE.MLL+MNL)THEN
	  HCSL(1)= 0.D0
	 ELSE
	  RH= HPLLNL
	  CH= LAMB((MLL/CMASS)**2,(MNL/CMASS)**2)
	  HCSL(1)= CH*RH**2/(16.D0*PI*CMASS)
	  STOT= STOT+2.D0*HCSL(1)
	 ENDIF

	 HPLLNL=H1Q*H2Q/DSQRT(H1Q**2+H2Q**2)*(g2-HLQ**2)
	 HPLRNL=-HLQ*(COSBETA*LAMBDA*ss+SINBETA*ATAU)

	 IF(CMASS.LE.MSL1+MSNT)THEN
	  HCSL(2)= 0.D0
	 ELSE
	  RH= CSL*HPLLNL+SSL*HPLRNL
	  CH= LAMB((MSL1/CMASS)**2,(MSNT/CMASS)**2)
	  HCSL(2)= CH*RH**2/(16.D0*PI*CMASS)
	  STOT= STOT+HCSL(2)
	 ENDIF

	 IF(CMASS.LE.MSL2+MSNT)THEN
	  HCSL(3)= 0.D0
	 ELSE
	  RH=-SSL*HPLLNL+CSL*HPLRNL
	  CH= LAMB((MSL2/CMASS)**2,(MSNT/CMASS)**2)
	  HCSL(3)= CH*RH**2/(16.D0*PI*CMASS)
	  STOT= STOT+HCSL(3)
	 ENDIF

*  Branching ratios

	HCWIDTH= HLN+HMN+HSU+HBU+HSC+HBC+HBT+HTOT+STOT
      
	HCBRM= HMN/HCWIDTH
	HCBRL= HLN/HCWIDTH
	HCBRSU= HSU/HCWIDTH
	HCBRBU= HBU/HCWIDTH
	HCBRSC= HSC/HCWIDTH
	HCBRBC= HBC/HCWIDTH
	HCBRBT= HBT/HCWIDTH
	HCBRWHT= HTOT/HCWIDTH
	HCBRSUSY= STOT/HCWIDTH
	DO I=1,5
	 HCBRWH(I)= HCWH(I)/HCWIDTH
	ENDDO
	DO I=1,5
	 DO J=1,2
	  HCBRNC(I,J)= HCNC(I,J)/HCWIDTH
	 ENDDO
	ENDDO
	DO I=1,5
	 HCBRSQ(I)= HCSQ(I)/HCWIDTH
	ENDDO
	DO I=1,3
	 HCBRSL(I)= HCSL(I)/HCWIDTH
	ENDDO

	END


