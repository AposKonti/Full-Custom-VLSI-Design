* File: /home/eng/a/axk220238/vlsi/cad/gf65/axk220238_axk230133/INV/INV_lvs/INV.pex.sp
* Created: Thu Nov 30 17:54:46 2023
* Program "Calibre xRC"
* Version "v2013.2_18.13"
* 
.include "INV.pex.sp.pex"
.subckt INV  OUT VSS VDD IN1
* 
* IN1	IN1
* VDD	VDD
* VSS	VSS
* OUT	OUT
XD0_noxref N_VSS_D0_noxref_pos N_VDD_D0_noxref_neg DIODENWX  AREA=2.15325e-12
+ PERIM=6.69e-06
XMMN0 N_OUT_MMN0_d N_IN1_MMN0_g N_VSS_MMN0_s N_VSS_D0_noxref_pos NFET
+ L=6.5e-08 W=5.2e-07 AD=8.32e-14 AS=8.32e-14 PD=1.36e-06 PS=1.36e-06
+ NRD=0.192308 NRS=0.192308 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=0
+ SA=1.6e-07 SB=1.6e-07 SD=0 PANW1=0 PANW2=0 PANW3=1.625e-15 PANW4=3.25e-15
+ PANW5=3.25e-15 PANW6=6.5e-15 PANW7=1.3e-14 PANW8=6.175e-15 PANW9=0 PANW10=0
XMMP0 N_OUT_MMP0_d N_IN1_MMP0_g N_VDD_MMP0_s N_VDD_D0_noxref_neg PFET
+ L=6.5e-08 W=9.2e-07 AD=1.472e-13 AS=1.472e-13 PD=2.16e-06 PS=2.16e-06
+ NRD=0.108696 NRS=0.108696 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=1
+ SA=1.6e-07 SB=1.6e-07 SD=0 PANW1=0 PANW2=0 PANW3=3.465e-15 PANW4=8.881e-14
+ PANW5=3.545e-14 PANW6=6.5e-15 PANW7=1.3e-14 PANW8=1.3e-14 PANW9=3.3475e-14
+ PANW10=3.9e-14
*
.include "INV.pex.sp.INV.pxi"
*
.ends
*
*
