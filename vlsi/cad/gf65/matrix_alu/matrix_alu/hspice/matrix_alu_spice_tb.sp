$example HSPICE setup file

$transistor model
.include "/proj/cad/library/mosis/GF65_LPe/cmos10lpe_CDS_oa_dl064_11_20160415/models/YI-SM00030/Hspice/models/design.inc"
.include "/home/eng/a/axk220238/vlsi/cad/gf65/matrix_alu/matrix_alu/lvs/matrix_alu.pex.sp"


.option post runlvl=5

$xi GND! OUT VDD! IN1 IN2 NOR
xi VDD! GND! A<4> B<11> C<9> C<10> C<8> B<8> C<11> C<12> B<9>
+ C<13> B<10> C<14> B<15> B<12> C<15> B<14> A<7> OP<0> OP<1> A<6> A<3> A<2> A<0>
+ A<1> C<0> C<2> C<4> C<6> C<7> C<5> B<0> A<5> B<1> B<2> A<14> A<13> A<8> B<13>
+ B<3> B<4> B<7> B<6> A<15> A<11> A<12> B<26> B<25> B<31> B<28> B<27> B<29>
+ B<30> A<31> A<24> A<29> A<28> A<27> A<21> B<18> B<19> B<20> A<18> A<17> A<19>
+ A<16> B<22> A<20> A<22> A<23> A<30> B<16> B<17> B<23> B<21> A<25> A<26> C<49>
+ C<55> C<34> C<32> C<59> C<60> C<54> C<51> C<113> C<114> C<89> C<85> C<84>
+ C<87> C<127> C<121> C<120> C<122> C<124> C<123> C<126> C<61> C<125> C<36>
+ C<35> C<108> C<106> RESETN C<105> C<118> C<119> C<104> C<117> C<115> C<116>
+ C<112> C<102> C<95> C<94> C<92> C<103> C<97> C<96> C<98> C<86> CLK C<99>
+ C<101> C<100> A<9> B<5> C<24> C<29> C<26> C<31> C<27> C<16> C<18> C<21> C<23>
+ C<20> C<39> B<24> C<75> C<64> C<66> C<73> C<37> C<46> C<43> C<63> C<41> C<47>
+ C<62> C<71> C<77> C<83> C<69> C<80> C<67> C<81> C<88> C<1> C<3> A<10> C<57>
+ C<58> C<53> C<52> C<91> C<93> C<90> C<109> C<110> C<111> C<107> C<30> C<25>
+ C<28> C<22> C<19> C<17> C<38> C<65> C<72> C<74> C<44> C<42> C<40> C<48> C<45>
+ C<79> C<78> C<76> C<70> C<82> C<68> C<56> C<33> C<50> matrix_alu

vdd VDD! GND! 1.2v
$vin1 IN1 GND! pwl(0ns 0v 1.95ns 0v 2ns 1.2v 4ns 1.2v 4.05ns 0v 6.05ns 0v 6.1ns 1.2v 8.1ns 1.2v 8.15ns 0v)
$vin2 IN2 GND! pwl(0ns 0v 4ns 0v 4.05ns 1.2v 8.1ns 1.2v 8.15ns 0v)

$ Clock Generation
vclk CLK GND! PULSE(0v 1.2v 0 70ps 70ps 1.125ns 2.25ns)

$ Reset Generation
vreset resetn GND! PWL(0ns 1.2v 0.5ns 1.2v 0.6ns 0v 1.1ns 0v 1.2ns 1.2v)

vA A GND! PWL(0ns 0 100ns 0x01020300)
vB B GND! PWL(0ns 0 100ns 0x05060708)
vop0 OP<0> GND! PWL(0ns 0v 5ns 0v 6ns 1.2v 10ns 1.2v 11ns 0v 15ns 0v 16ns 1.2v 20ns 1.2v)
vop1 OP<1> GND! PWL(0ns 0v 10ns 0v 11ns 1.2v 20ns 1.2v)

$cout C<0> GND! 70f
$cout C<1> GND! 70f
$cout C<2> GND! 70f
$cout C<3> GND! 70f
$cout C<4> GND! 70f
$cout C<5> GND! 70f
$cout C<6> GND! 70f
$cout C<7> GND! 70f
$
$cout C<8> GND! 70f
$cout C<9> GND! 70f
$cout C<10> GND! 70f
$cout C<11> GND! 70f
$cout C<12> GND! 70f
$cout C<13> GND! 70f
$cout C<14> GND! 70f
$cout C<15> GND! 70f
$
$cout C<16> GND! 70f
$cout C<17> GND! 70f
$cout C<18> GND! 70f
$cout C<19> GND! 70f
$cout C<20> GND! 70f
$cout C<21> GND! 70f
$cout C<22> GND! 70f
$cout C<23> GND! 70f
$
$cout C<24> GND! 70f
$cout C<25> GND! 70f
$cout C<26> GND! 70f
$cout C<27> GND! 70f
$cout C<28> GND! 70f
$cout C<29> GND! 70f
$cout C<30> GND! 70f
$cout C<31> GND! 70f
$
$cout C<32> GND! 70f
$cout C<33> GND! 70f
$cout C<34> GND! 70f
$cout C<35> GND! 70f
$cout C<36> GND! 70f
$cout C<37> GND! 70f
$cout C<38> GND! 70f
$cout C<39> GND! 70f
$
$cout C<40> GND! 70f
$cout C<41> GND! 70f
$cout C<42> GND! 70f
$cout C<43> GND! 70f
$cout C<44> GND! 70f
$cout C<45> GND! 70f
$cout C<46> GND! 70f
$cout C<47> GND! 70f
$
$cout C<48> GND! 70f
$cout C<49> GND! 70f
$cout C<50> GND! 70f
$cout C<51> GND! 70f
$cout C<52> GND! 70f
$cout C<53> GND! 70f
$cout C<54> GND! 70f
$cout C<55> GND! 70f
$
$cout C<56> GND! 70f
$cout C<57> GND! 70f
$cout C<58> GND! 70f
$cout C<59> GND! 70f
$cout C<60> GND! 70f
$cout C<61> GND! 70f
$cout C<62> GND! 70f
$cout C<63> GND! 70f
$
$cout C<64> GND! 70f
$cout C<65> GND! 70f
$cout C<66> GND! 70f
$cout C<67> GND! 70f
$cout C<68> GND! 70f
$cout C<69> GND! 70f
$cout C<70> GND! 70f
$cout C<71> GND! 70f
$
$cout C<72> GND! 70f
$cout C<73> GND! 70f
$cout C<74> GND! 70f
$cout C<75> GND! 70f
$cout C<76> GND! 70f
$cout C<77> GND! 70f
$cout C<78> GND! 70f
$cout C<79> GND! 70f
$
$cout C<80> GND! 70f
$cout C<81> GND! 70f
$cout C<82> GND! 70f
$cout C<83> GND! 70f
$cout C<84> GND! 70f
$cout C<85> GND! 70f
$cout C<86> GND! 70f
$cout C<87> GND! 70f
$
$cout C<88> GND! 70f
$cout C<89> GND! 70f
$cout C<90> GND! 70f
$cout C<91> GND! 70f
$cout C<92> GND! 70f
$cout C<93> GND! 70f
$cout C<94> GND! 70f
$cout C<95> GND! 70f
$
$cout C<96> GND! 70f
$cout C<97> GND! 70f
$cout C<98> GND! 70f
$cout C<99> GND! 70f
$cout C<100> GND! 70f
$cout C<101> GND! 70f
$cout C<102> GND! 70f
$cout C<103> GND! 70f
$
$cout C<104> GND! 70f
$cout C<105> GND! 70f
$cout C<106> GND! 70f
$cout C<107> GND! 70f
$cout C<108> GND! 70f
$cout C<109> GND! 70f
$cout C<110> GND! 70f
$cout C<111> GND! 70f
$
$cout C<112> GND! 70f
$cout C<113> GND! 70f
$cout C<114> GND! 70f
$cout C<115> GND! 70f
$cout C<116> GND! 70f
$cout C<117> GND! 70f
$cout C<118> GND! 70f
$cout C<119> GND! 70f
$
$cout C<120> GND! 70f
$cout C<121> GND! 70f
$cout C<122> GND! 70f
$cout C<123> GND! 70f
$cout C<124> GND! 70f
$cout C<125> GND! 70f
$cout C<126> GND! 70f
$cout C<127> GND! 70f

$transient analysis
.tr 100ps 20ns

.end