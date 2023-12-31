* File: /home/eng/a/axk220238/vlsi/cad/gf65/axk220238_axk230133/DFF/DFF_lvs/DFF.pex.sp
* Created: Thu Nov 30 17:50:59 2023
* Program "Calibre xRC"
* Version "v2013.2_18.13"
* 
.include "DFF.pex.sp.pex"
.subckt DFF  VSS Q VDD CLK D R
* 
* R	R
* D	D
* CLK	CLK
* VDD	VDD
* Q	Q
* VSS	VSS
XD0_noxref N_VSS_D0_noxref_pos N_VDD_D0_noxref_neg DIODENWX  AREA=1.41124e-11
+ PERIM=1.6354e-05
XMMN5 N_NET026_MMN5_d N_NET058_MMN5_g N_VSS_MMN5_s N_VSS_D0_noxref_pos NFET
+ L=6.5e-08 W=5.2e-07 AD=8.32e-14 AS=5.2e-14 PD=1.36e-06 PS=7.2e-07 NRD=0.192308
+ NRS=0.192308 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=0 SA=1.6e-07
+ SB=4.25e-07 SD=0 PANW1=0 PANW2=0 PANW3=1.625e-15 PANW4=3.25e-15 PANW5=3.25e-15
+ PANW6=6.5e-15 PANW7=1.3e-14 PANW8=6.175e-15 PANW9=0 PANW10=0
XMMN4 N_NET058_MMN4_d N_CLK_MMN4_g N_VSS_MMN5_s N_VSS_D0_noxref_pos NFET
+ L=6.5e-08 W=5.2e-07 AD=8.32e-14 AS=5.2e-14 PD=1.36e-06 PS=7.2e-07 NRD=0.192308
+ NRS=0.192308 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=0 SA=4.25e-07
+ SB=1.6e-07 SD=0 PANW1=0 PANW2=0 PANW3=1.625e-15 PANW4=3.25e-15 PANW5=3.25e-15
+ PANW6=6.5e-15 PANW7=1.3e-14 PANW8=6.175e-15 PANW9=0 PANW10=0
XMMN6 N_NET21_MMN6_d N_NET27_MMN6_g N_VSS_MMN6_s N_VSS_D0_noxref_pos NFET
+ L=6.5e-08 W=5.2e-07 AD=8.32e-14 AS=5.2e-14 PD=1.36e-06 PS=7.2e-07 NRD=0.192308
+ NRS=0.192308 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=0 SA=1.6e-07
+ SB=1.485e-06 SD=0 PANW1=0 PANW2=0 PANW3=1.625e-15 PANW4=3.25e-15
+ PANW5=3.25e-15 PANW6=6.5e-15 PANW7=1.3e-14 PANW8=6.175e-15 PANW9=0 PANW10=0
XMMN2 NET081 N_D_MMN2_g N_VSS_MMN6_s N_VSS_D0_noxref_pos NFET L=6.5e-08
+ W=5.2e-07 AD=5.2e-14 AS=5.2e-14 PD=7.2e-07 PS=7.2e-07 NRD=0.192308
+ NRS=0.192308 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=0 SA=4.25e-07
+ SB=1.22e-06 SD=0 PANW1=0 PANW2=0 PANW3=1.625e-15 PANW4=3.25e-15 PANW5=3.25e-15
+ PANW6=6.5e-15 PANW7=1.3e-14 PANW8=6.175e-15 PANW9=0 PANW10=0
XMMN3 N_NET27_MMN3_d N_NET026_MMN3_g NET081 N_VSS_D0_noxref_pos NFET L=6.5e-08
+ W=5.2e-07 AD=5.2e-14 AS=5.2e-14 PD=7.2e-07 PS=7.2e-07 NRD=0.192308
+ NRS=0.192308 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=0 SA=6.9e-07
+ SB=9.55e-07 SD=0 PANW1=0 PANW2=0 PANW3=1.625e-15 PANW4=3.25e-15 PANW5=3.25e-15
+ PANW6=6.5e-15 PANW7=1.3e-14 PANW8=6.175e-15 PANW9=0 PANW10=0
XMMN8 N_NET27_MMN3_d N_NET058_MMN8_g NET078 N_VSS_D0_noxref_pos NFET L=6.5e-08
+ W=5.2e-07 AD=5.2e-14 AS=5.2e-14 PD=7.2e-07 PS=7.2e-07 NRD=0.192308
+ NRS=0.192308 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=0 SA=9.55e-07
+ SB=6.9e-07 SD=0 PANW1=0 PANW2=0 PANW3=1.625e-15 PANW4=3.25e-15 PANW5=3.25e-15
+ PANW6=6.5e-15 PANW7=1.3e-14 PANW8=6.175e-15 PANW9=0 PANW10=0
XMMN7 NET078 N_NET21_MMN7_g NET082 N_VSS_D0_noxref_pos NFET L=6.5e-08 W=5.2e-07
+ AD=5.2e-14 AS=5.2e-14 PD=7.2e-07 PS=7.2e-07 NRD=0.192308 NRS=0.192308 M=1 NF=1
+ CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=0 SA=1.22e-06 SB=4.25e-07 SD=0 PANW1=0
+ PANW2=0 PANW3=1.625e-15 PANW4=3.25e-15 PANW5=3.25e-15 PANW6=6.5e-15
+ PANW7=1.3e-14 PANW8=6.175e-15 PANW9=0 PANW10=0
XMMN9 NET082 N_NET9_MMN9_g N_VSS_MMN9_s N_VSS_D0_noxref_pos NFET L=6.5e-08
+ W=5.2e-07 AD=5.2e-14 AS=8.32e-14 PD=7.2e-07 PS=1.36e-06 NRD=0.192308
+ NRS=0.192308 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=0 SA=1.485e-06
+ SB=1.6e-07 SD=0 PANW1=0 PANW2=0 PANW3=1.625e-15 PANW4=3.25e-15 PANW5=3.25e-15
+ PANW6=6.5e-15 PANW7=1.3e-14 PANW8=6.175e-15 PANW9=0 PANW10=0
XMMN11 N_NET35_MMN11_d N_NET80_MMN11_g N_VSS_MMN11_s N_VSS_D0_noxref_pos NFET
+ L=6.5e-08 W=5.2e-07 AD=8.32e-14 AS=5.2e-14 PD=1.36e-06 PS=7.2e-07 NRD=0.192308
+ NRS=0.192308 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=0 SA=1.6e-07
+ SB=1.485e-06 SD=0 PANW1=0 PANW2=0 PANW3=1.625e-15 PANW4=3.25e-15
+ PANW5=3.25e-15 PANW6=6.5e-15 PANW7=1.3e-14 PANW8=6.175e-15 PANW9=0 PANW10=0
XMMN12 NET079 N_NET21_MMN12_g N_VSS_MMN11_s N_VSS_D0_noxref_pos NFET L=6.5e-08
+ W=5.2e-07 AD=5.2e-14 AS=5.2e-14 PD=7.2e-07 PS=7.2e-07 NRD=0.192308
+ NRS=0.192308 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=0 SA=4.25e-07
+ SB=1.22e-06 SD=0 PANW1=0 PANW2=0 PANW3=1.625e-15 PANW4=3.25e-15 PANW5=3.25e-15
+ PANW6=6.5e-15 PANW7=1.3e-14 PANW8=6.175e-15 PANW9=0 PANW10=0
XMMN13 N_NET80_MMN13_d N_NET058_MMN13_g NET079 N_VSS_D0_noxref_pos NFET
+ L=6.5e-08 W=5.2e-07 AD=5.2e-14 AS=5.2e-14 PD=7.2e-07 PS=7.2e-07 NRD=0.192308
+ NRS=0.192308 M=1 NF=1 CNR_SWITCH=1 PCCRIT=0 PAR=1 PTWELL=0 SA=6.9e-07
+ SB=9.55e-07 SD=0 PANW1=0 PANW2=0 PANW3=1.625e-15 PANW4=3.25e-15 PANW5=3.25e-15
+ PANW6=6.5e-15 PANW7=1.3e-14 PANW8=6.175e-15 PANW9=0 PANW10=0
XMMN15 N_NET80_MMN13_d N_NET026_MMN15_g NET080 N_VSS_D0_noxref_pos NFET
+ L=6.5e-08 W=5.2e-07 AD=5.2e-14 AS=5.2e-14 PD=7.2e-07 PS=7.2e-07 NRD=0.192308
+ NRS=0.192308 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=0 SA=9.55e-07
+ SB=6.9e-07 SD=0 PANW1=0 PANW2=0 PANW3=1.625e-15 PANW4=3.25e-15 PANW5=3.25e-15
+ PANW6=6.5e-15 PANW7=1.3e-14 PANW8=6.175e-15 PANW9=0 PANW10=0
XMMN14 NET080 N_NET35_MMN14_g NET083 N_VSS_D0_noxref_pos NFET L=6.5e-08
+ W=5.2e-07 AD=5.2e-14 AS=5.2e-14 PD=7.2e-07 PS=7.2e-07 NRD=0.192308
+ NRS=0.192308 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=0 SA=1.22e-06
+ SB=4.25e-07 SD=0 PANW1=0 PANW2=0 PANW3=1.625e-15 PANW4=3.25e-15 PANW5=3.25e-15
+ PANW6=6.5e-15 PANW7=1.3e-14 PANW8=6.175e-15 PANW9=0 PANW10=0
XMMN16 NET083 N_NET9_MMN16_g N_VSS_MMN16_s N_VSS_D0_noxref_pos NFET L=6.5e-08
+ W=5.2e-07 AD=5.2e-14 AS=8.32e-14 PD=7.2e-07 PS=1.36e-06 NRD=0.192308
+ NRS=0.192308 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=0 SA=1.485e-06
+ SB=1.6e-07 SD=0 PANW1=0 PANW2=0 PANW3=1.625e-15 PANW4=3.25e-15 PANW5=3.25e-15
+ PANW6=6.5e-15 PANW7=1.3e-14 PANW8=6.175e-15 PANW9=0 PANW10=0
XMMN17 N_Q_MMN17_d N_NET80_MMN17_g N_VSS_MMN17_s N_VSS_D0_noxref_pos NFET
+ L=6.5e-08 W=5.2e-07 AD=8.32e-14 AS=5.2e-14 PD=1.36e-06 PS=7.2e-07 NRD=0.192308
+ NRS=0.192308 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=0 SA=1.6e-07
+ SB=4.25e-07 SD=0 PANW1=0 PANW2=0 PANW3=1.625e-15 PANW4=3.25e-15 PANW5=3.25e-15
+ PANW6=6.5e-15 PANW7=1.3e-14 PANW8=6.175e-15 PANW9=0 PANW10=0
XMMN10 N_NET9_MMN10_d N_R_MMN10_g N_VSS_MMN17_s N_VSS_D0_noxref_pos NFET
+ L=6.5e-08 W=5.2e-07 AD=8.32e-14 AS=5.2e-14 PD=1.36e-06 PS=7.2e-07 NRD=0.192308
+ NRS=0.192308 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=0 SA=4.25e-07
+ SB=1.6e-07 SD=0 PANW1=0 PANW2=0 PANW3=1.625e-15 PANW4=3.25e-15 PANW5=3.25e-15
+ PANW6=6.5e-15 PANW7=1.3e-14 PANW8=6.175e-15 PANW9=0 PANW10=0
XMMP5 N_NET026_MMP5_d N_NET058_MMP5_g N_VDD_MMP5_s N_VDD_D0_noxref_neg PFET
+ L=6.5e-08 W=9.2e-07 AD=1.472e-13 AS=9.2e-14 PD=2.16e-06 PS=1.12e-06
+ NRD=0.108696 NRS=0.108696 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=1
+ SA=1.6e-07 SB=4.25e-07 SD=0 PANW1=0 PANW2=0 PANW3=2.9225e-14 PANW4=3.545e-14
+ PANW5=3.25e-15 PANW6=6.5e-15 PANW7=1.3e-14 PANW8=1.3e-14 PANW9=3.3475e-14
+ PANW10=3.9e-14
XMMP4 N_NET058_MMP4_d N_CLK_MMP4_g N_VDD_MMP5_s N_VDD_D0_noxref_neg PFET
+ L=6.5e-08 W=9.2e-07 AD=1.472e-13 AS=9.2e-14 PD=2.16e-06 PS=1.12e-06
+ NRD=0.108696 NRS=0.108696 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=1
+ SA=4.25e-07 SB=1.6e-07 SD=0 PANW1=0 PANW2=0 PANW3=1.625e-15 PANW4=3.25e-15
+ PANW5=3.25e-15 PANW6=6.5e-15 PANW7=7.28e-14 PANW8=1.3e-14 PANW9=3.3475e-14
+ PANW10=3.9e-14
XMMP6 N_NET21_MMP6_d N_NET27_MMP6_g N_VDD_MMP6_s N_VDD_D0_noxref_neg PFET
+ L=6.5e-08 W=9.2e-07 AD=1.472e-13 AS=9.2e-14 PD=2.16e-06 PS=1.12e-06
+ NRD=0.108696 NRS=0.108696 M=1 NF=1 CNR_SWITCH=1 PCCRIT=0 PAR=1 PTWELL=1
+ SA=1.6e-07 SB=1.485e-06 SD=0 PANW1=0 PANW2=0 PANW3=1.625e-15 PANW4=3.25e-15
+ PANW5=3.25e-15 PANW6=6.5e-15 PANW7=1.3e-14 PANW8=1.3e-14 PANW9=9.3275e-14
+ PANW10=3.9e-14
XMMP2 N_NET94_MMP2_d N_D_MMP2_g N_VDD_MMP6_s N_VDD_D0_noxref_neg PFET
+ L=6.5e-08 W=9.2e-07 AD=9.2e-14 AS=9.2e-14 PD=1.12e-06 PS=1.12e-06 NRD=0.108696
+ NRS=0.108696 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=1 SA=4.25e-07
+ SB=1.22e-06 SD=0 PANW1=0 PANW2=0 PANW3=1.625e-15 PANW4=3.25e-15 PANW5=3.25e-15
+ PANW6=6.5e-15 PANW7=1.3e-14 PANW8=1.3e-14 PANW9=3.3475e-14 PANW10=9.88e-14
XMMP3 N_NET27_MMP3_d N_NET058_MMP3_g N_NET94_MMP2_d N_VDD_D0_noxref_neg PFET
+ L=6.5e-08 W=9.2e-07 AD=9.2e-14 AS=9.2e-14 PD=1.12e-06 PS=1.12e-06 NRD=0.108696
+ NRS=0.108696 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=1 SA=6.9e-07
+ SB=9.55e-07 SD=0 PANW1=0 PANW2=0 PANW3=1.625e-15 PANW4=3.25e-15 PANW5=3.25e-15
+ PANW6=6.5e-15 PANW7=1.3e-14 PANW8=1.3e-14 PANW9=3.3475e-14 PANW10=9.88e-14
XMMP8 N_NET27_MMP3_d N_NET026_MMP8_g N_NET23_MMP8_s N_VDD_D0_noxref_neg PFET
+ L=6.5e-08 W=9.2e-07 AD=9.2e-14 AS=9.2e-14 PD=1.12e-06 PS=1.12e-06 NRD=0.108696
+ NRS=0.108696 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=1 SA=9.55e-07
+ SB=6.9e-07 SD=0 PANW1=0 PANW2=0 PANW3=1.625e-15 PANW4=3.25e-15 PANW5=3.25e-15
+ PANW6=6.5e-15 PANW7=1.3e-14 PANW8=1.3e-14 PANW9=3.3475e-14 PANW10=7.12e-14
XMMP7 N_NET23_MMP8_s N_NET21_MMP7_g N_VDD_MMP7_s N_VDD_D0_noxref_neg PFET
+ L=6.5e-08 W=9.2e-07 AD=9.2e-14 AS=9.2e-14 PD=1.12e-06 PS=1.12e-06 NRD=0.108696
+ NRS=0.108696 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=1 SA=1.22e-06
+ SB=4.25e-07 SD=0 PANW1=0 PANW2=0 PANW3=1.625e-15 PANW4=3.25e-15 PANW5=3.25e-15
+ PANW6=6.5e-15 PANW7=1.3e-14 PANW8=1.3e-14 PANW9=3.3475e-14 PANW10=3.9e-14
XMMP9 N_NET23_MMP9_d N_NET9_MMP9_g N_VDD_MMP7_s N_VDD_D0_noxref_neg PFET
+ L=6.5e-08 W=9.2e-07 AD=1.472e-13 AS=9.2e-14 PD=2.16e-06 PS=1.12e-06
+ NRD=0.108696 NRS=0.108696 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=1
+ SA=1.485e-06 SB=1.6e-07 SD=0 PANW1=0 PANW2=0 PANW3=1.625e-15 PANW4=3.25e-15
+ PANW5=3.25e-15 PANW6=6.5e-15 PANW7=1.3e-14 PANW8=1.3e-14 PANW9=3.3475e-14
+ PANW10=3.9e-14
XMMP12 N_NET35_MMP12_d N_NET80_MMP12_g N_VDD_MMP12_s N_VDD_D0_noxref_neg PFET
+ L=6.5e-08 W=9.2e-07 AD=1.472e-13 AS=9.2e-14 PD=2.16e-06 PS=1.12e-06
+ NRD=0.108696 NRS=0.108696 M=1 NF=1 CNR_SWITCH=1 PCCRIT=0 PAR=1 PTWELL=1
+ SA=1.6e-07 SB=1.485e-06 SD=0 PANW1=0 PANW2=0 PANW3=1.625e-15 PANW4=3.25e-15
+ PANW5=3.25e-15 PANW6=6.5e-15 PANW7=1.3e-14 PANW8=1.3e-14 PANW9=3.3475e-14
+ PANW10=3.9e-14
XMMP13 N_NET89_MMP13_d N_NET21_MMP13_g N_VDD_MMP12_s N_VDD_D0_noxref_neg PFET
+ L=6.5e-08 W=9.2e-07 AD=9.2e-14 AS=9.2e-14 PD=1.12e-06 PS=1.12e-06 NRD=0.108696
+ NRS=0.108696 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=1 SA=4.25e-07
+ SB=1.22e-06 SD=0 PANW1=0 PANW2=0 PANW3=1.625e-15 PANW4=3.25e-15 PANW5=3.25e-15
+ PANW6=6.5e-15 PANW7=1.3e-14 PANW8=1.3e-14 PANW9=3.3475e-14 PANW10=3.9e-14
XMMP14 N_NET80_MMP14_d N_NET026_MMP14_g N_NET89_MMP13_d N_VDD_D0_noxref_neg
+ PFET L=6.5e-08 W=9.2e-07 AD=9.2e-14 AS=9.2e-14 PD=1.12e-06 PS=1.12e-06
+ NRD=0.108696 NRS=0.108696 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=1
+ SA=6.9e-07 SB=9.55e-07 SD=0 PANW1=0 PANW2=0 PANW3=1.625e-15 PANW4=3.25e-15
+ PANW5=3.25e-15 PANW6=6.5e-15 PANW7=1.3e-14 PANW8=1.3e-14 PANW9=3.3475e-14
+ PANW10=3.9e-14
XMMP15 N_NET80_MMP14_d N_NET058_MMP15_g N_NET38_MMP15_s N_VDD_D0_noxref_neg
+ PFET L=6.5e-08 W=9.2e-07 AD=9.2e-14 AS=9.2e-14 PD=1.12e-06 PS=1.12e-06
+ NRD=0.108696 NRS=0.108696 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=1
+ SA=9.55e-07 SB=6.9e-07 SD=0 PANW1=0 PANW2=0 PANW3=1.625e-15 PANW4=3.25e-15
+ PANW5=3.25e-15 PANW6=6.5e-15 PANW7=1.3e-14 PANW8=1.3e-14 PANW9=3.3475e-14
+ PANW10=9.88e-14
XMMP11 N_NET38_MMP15_s N_NET35_MMP11_g N_VDD_MMP11_s N_VDD_D0_noxref_neg PFET
+ L=6.5e-08 W=9.2e-07 AD=9.2e-14 AS=9.2e-14 PD=1.12e-06 PS=1.12e-06 NRD=0.108696
+ NRS=0.108696 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=1 SA=1.22e-06
+ SB=4.25e-07 SD=0 PANW1=0 PANW2=0 PANW3=1.625e-15 PANW4=3.25e-15 PANW5=3.25e-15
+ PANW6=6.5e-15 PANW7=1.3e-14 PANW8=1.3e-14 PANW9=3.3475e-14 PANW10=9.88e-14
XMMP16 N_NET38_MMP16_d N_NET9_MMP16_g N_VDD_MMP11_s N_VDD_D0_noxref_neg PFET
+ L=6.5e-08 W=9.2e-07 AD=1.472e-13 AS=9.2e-14 PD=2.16e-06 PS=1.12e-06
+ NRD=0.108696 NRS=0.108696 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=1
+ SA=1.485e-06 SB=1.6e-07 SD=0 PANW1=0 PANW2=0 PANW3=1.625e-15 PANW4=3.25e-15
+ PANW5=3.25e-15 PANW6=6.5e-15 PANW7=1.3e-14 PANW8=1.3e-14 PANW9=9.3275e-14
+ PANW10=3.9e-14
XMMP17 N_Q_MMP17_d N_NET80_MMP17_g N_VDD_MMP17_s N_VDD_D0_noxref_neg PFET
+ L=6.5e-08 W=9.2e-07 AD=1.472e-13 AS=9.2e-14 PD=2.16e-06 PS=1.12e-06
+ NRD=0.108696 NRS=0.108696 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=1
+ SA=1.6e-07 SB=4.25e-07 SD=0 PANW1=0 PANW2=0 PANW3=1.625e-15 PANW4=3.25e-15
+ PANW5=3.25e-15 PANW6=6.5e-15 PANW7=6.176e-14 PANW8=2.404e-14 PANW9=3.3475e-14
+ PANW10=3.9e-14
XMMP10 N_NET9_MMP10_d N_R_MMP10_g N_VDD_MMP17_s N_VDD_D0_noxref_neg PFET
+ L=6.5e-08 W=9.2e-07 AD=1.472e-13 AS=9.2e-14 PD=2.16e-06 PS=1.12e-06
+ NRD=0.108696 NRS=0.108696 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=1
+ SA=4.25e-07 SB=1.6e-07 SD=0 PANW1=0 PANW2=0 PANW3=1.625e-15 PANW4=3.25e-15
+ PANW5=1.981e-14 PANW6=4.974e-14 PANW7=1.3e-14 PANW8=1.3e-14 PANW9=3.3475e-14
+ PANW10=3.9e-14
c_1293 NET083 0 1.22376e-19
*
.include "DFF.pex.sp.DFF.pxi"
*
.ends
*
*
