* File: /home/eng/a/axk220238/vlsi/cad/gf65/axk220238_axk230133/XNOR/XNOR_lvs/XNOR.pex.sp
* Created: Thu Nov 30 18:15:54 2023
* Program "Calibre xRC"
* Version "v2013.2_18.13"
* 
.include "XNOR.pex.sp.pex"
.subckt XNOR  VSS OUT VDD IN2 IN1
* 
* IN1	IN1
* IN2	IN2
* VDD	VDD
* OUT	OUT
* VSS	VSS
XD0_noxref N_VSS_D0_noxref_pos N_VDD_D0_noxref_neg DIODENWX  AREA=5.2371e-12
+ PERIM=9.182e-06
XMMN5 N_NET012_MMN5_d N_IN2_MMN5_g NET027 N_VSS_D0_noxref_pos NFET L=6.5e-08
+ W=5.2e-07 AD=8.32e-14 AS=5.2e-14 PD=1.36e-06 PS=7.2e-07 NRD=0.192308
+ NRS=0.192308 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=0 SA=1.6e-07
+ SB=1.22e-06 SD=0 PANW1=0 PANW2=0 PANW3=1.625e-15 PANW4=3.25e-15 PANW5=3.25e-15
+ PANW6=6.5e-15 PANW7=1.3e-14 PANW8=6.175e-15 PANW9=0 PANW10=0
XMMN0 NET027 N_IN1_MMN0_g N_VSS_MMN0_s N_VSS_D0_noxref_pos NFET L=6.5e-08
+ W=5.2e-07 AD=5.2e-14 AS=5.2e-14 PD=7.2e-07 PS=7.2e-07 NRD=0.192308
+ NRS=0.192308 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=0 SA=4.25e-07
+ SB=9.55e-07 SD=0 PANW1=0 PANW2=0 PANW3=1.625e-15 PANW4=3.25e-15 PANW5=3.25e-15
+ PANW6=6.5e-15 PANW7=1.3e-14 PANW8=6.175e-15 PANW9=0 PANW10=0
XMMN8 N_NET016_MMN8_d N_NET012_MMN8_g N_VSS_MMN0_s N_VSS_D0_noxref_pos NFET
+ L=6.5e-08 W=5.2e-07 AD=5.2e-14 AS=5.2e-14 PD=7.2e-07 PS=7.2e-07 NRD=0.192308
+ NRS=0.192308 M=1 NF=1 CNR_SWITCH=2 PCCRIT=0 PAR=1 PTWELL=0 SA=6.9e-07
+ SB=6.9e-07 SD=0 PANW1=0 PANW2=0 PANW3=1.625e-15 PANW4=3.25e-15 PANW5=3.25e-15
+ PANW6=6.5e-15 PANW7=1.3e-14 PANW8=6.175e-15 PANW9=0 PANW10=0
XMMN7 N_OUT_MMN7_d N_IN2_MMN7_g N_NET016_MMN8_d N_VSS_D0_noxref_pos NFET
+ L=6.5e-08 W=5.2e-07 AD=5.2e-14 AS=5.2e-14 PD=7.2e-07 PS=7.2e-07 NRD=0.192308
+ NRS=0.192308 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=0 SA=9.55e-07
+ SB=4.25e-07 SD=0 PANW1=0 PANW2=0 PANW3=1.625e-15 PANW4=3.25e-15 PANW5=3.25e-15
+ PANW6=6.5e-15 PANW7=1.3e-14 PANW8=6.175e-15 PANW9=0 PANW10=0
XMMN6 N_OUT_MMN7_d N_IN1_MMN6_g N_NET016_MMN6_s N_VSS_D0_noxref_pos NFET
+ L=6.5e-08 W=5.2e-07 AD=5.2e-14 AS=8.32e-14 PD=7.2e-07 PS=1.36e-06 NRD=0.192308
+ NRS=0.192308 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=0 SA=1.22e-06
+ SB=1.6e-07 SD=0 PANW1=0 PANW2=0 PANW3=1.625e-15 PANW4=3.25e-15 PANW5=3.25e-15
+ PANW6=6.5e-15 PANW7=1.3e-14 PANW8=6.175e-15 PANW9=0 PANW10=0
XMMP5 N_NET012_MMP5_d N_IN2_MMP5_g N_VDD_MMP5_s N_VDD_D0_noxref_neg PFET
+ L=6.5e-08 W=9.2e-07 AD=9.2e-14 AS=1.472e-13 PD=1.12e-06 PS=2.16e-06
+ NRD=0.108696 NRS=0.108696 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=1
+ SA=1.6e-07 SB=1.22e-06 SD=0 PANW1=0 PANW2=0 PANW3=1.625e-15 PANW4=3.25e-15
+ PANW5=6.93e-15 PANW6=6.262e-14 PANW7=1.3e-14 PANW8=1.3e-14 PANW9=3.3475e-14
+ PANW10=9.88e-14
XMMP0 N_NET012_MMP5_d N_IN1_MMP0_g N_VDD_MMP0_s N_VDD_D0_noxref_neg PFET
+ L=6.5e-08 W=9.2e-07 AD=9.2e-14 AS=9.2e-14 PD=1.12e-06 PS=1.12e-06 NRD=0.108696
+ NRS=0.108696 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=1 SA=4.25e-07
+ SB=9.55e-07 SD=0 PANW1=0 PANW2=0 PANW3=1.625e-15 PANW4=3.25e-15 PANW5=3.25e-15
+ PANW6=6.5e-15 PANW7=4.888e-14 PANW8=3.692e-14 PANW9=9.3275e-14 PANW10=3.9e-14
XMMP6 N_OUT_MMP6_d N_NET012_MMP6_g N_VDD_MMP0_s N_VDD_D0_noxref_neg PFET
+ L=6.5e-08 W=9.2e-07 AD=9.2e-14 AS=9.2e-14 PD=1.12e-06 PS=1.12e-06 NRD=0.108696
+ NRS=0.108696 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=1 SA=6.9e-07
+ SB=6.9e-07 SD=0 PANW1=0 PANW2=0 PANW3=1.625e-15 PANW4=3.25e-15 PANW5=3.25e-15
+ PANW6=6.5e-15 PANW7=1.3e-14 PANW8=1.3e-14 PANW9=1.53075e-13 PANW10=3.9e-14
XMMP8 N_OUT_MMP6_d N_IN2_MMP8_g N_NET026_MMP8_s N_VDD_D0_noxref_neg PFET
+ L=6.5e-08 W=9.2e-07 AD=9.2e-14 AS=9.2e-14 PD=1.12e-06 PS=1.12e-06 NRD=0.108696
+ NRS=0.108696 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=1 SA=9.55e-07
+ SB=4.25e-07 SD=0 PANW1=0 PANW2=0 PANW3=1.625e-15 PANW4=3.25e-15 PANW5=3.25e-15
+ PANW6=6.5e-15 PANW7=4.98e-14 PANW8=3.6e-14 PANW9=9.3275e-14 PANW10=3.9e-14
XMMP7 N_NET026_MMP8_s N_IN1_MMP7_g N_VDD_MMP7_s N_VDD_D0_noxref_neg PFET
+ L=6.5e-08 W=9.2e-07 AD=9.2e-14 AS=1.472e-13 PD=1.12e-06 PS=2.16e-06
+ NRD=0.108696 NRS=0.108696 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=1
+ SA=1.22e-06 SB=1.6e-07 SD=0 PANW1=0 PANW2=0 PANW3=1.625e-15 PANW4=3.25e-15
+ PANW5=7.85e-15 PANW6=6.17e-14 PANW7=1.3e-14 PANW8=1.3e-14 PANW9=3.3475e-14
+ PANW10=9.88e-14
*
.include "XNOR.pex.sp.XNOR.pxi"
*
.ends
*
*