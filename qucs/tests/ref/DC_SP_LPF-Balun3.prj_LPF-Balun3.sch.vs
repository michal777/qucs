Pac #(.Num(1), .Z(100 Ohm), .P(0 dBm), .f(1 GHz), .Temp(26.85)) P1(net_40_110, net_40_170);
L #(.L(1.2uH), .I()) L1(net_480_80, net_540_80);
L #(.L(470nH), .I()) L2(net_620_80, net_680_80);
C #(.C(270pF), .V(), .Symbol(neutral)) C1(net_440_190, net_440_130);
C #(.C(270pF), .V(), .Symbol(neutral)) C2(net_580_190, net_580_130);
L #(.L(470nH), .I()) L3(net_330_80, net_390_80);
GND #() anonymous_gnd_hack_0(net_40_190);
Eqn #(.dBS21(dB(S[2,1])), .dBS11(dB(S[1,1])), .Export(yes)) Eqn1();
Pac #(.Num(2), .Z(100 Ohm), .P(0 dBm), .f(1 GHz), .Temp(26.85)) P2(net_960_100, net_960_160);
GND #() anonymous_gnd_hack_1(net_960_200);
L #(.L(470nH), .I()) L4(net_330_250, net_390_250);
L #(.L(1.2uH), .I()) L5(net_480_250, net_540_250);
L #(.L(470nH), .I()) L6(net_620_250, net_680_250);
sTr #(.T1(0.5), .T2(0.5)) Tr5(net_230_80, net_170_120, net_170_180, net_230_220, net_230_160, net_230_140);
sTr #(.T1(0.5), .T2(0.5)) Tr6(net_790_80, net_850_120, net_850_180, net_790_220, net_790_160, net_790_140);
GND #() anonymous_gnd_hack_2(net_890_220);
GND #() anonymous_gnd_hack_3(net_140_190);
Vdc #(.U(1V)) V1(net_300_150, net_300_210);
GND #() anonymous_gnd_hack_4(net_300_210);
VProbe #() Pr1(net_920_290, net_940_290);
GND #() anonymous_gnd_hack_5(net_940_310);
wire #() noname(net_440_80, net_440_130);
wire #() noname(net_580_80, net_580_130);
wire #() noname(net_440_80, net_480_80);
wire #() noname(net_540_80, net_580_80);
wire #() noname(net_580_80, net_620_80);
wire #() noname(net_440_190, net_440_250);
wire #() noname(net_390_80, net_440_80);
wire #() noname(net_40_170, net_40_190);
wire #() noname(net_40_80, net_40_110);
wire #() noname(net_230_80, net_330_80);
wire #() noname(net_40_80, net_170_80);
wire #() noname(net_850_80, net_960_80);
wire #() noname(net_960_80, net_960_100);
wire #() noname(net_960_160, net_960_200);
wire #() noname(net_230_250, net_330_250);
wire #() noname(net_390_250, net_440_250);
wire #() noname(net_580_190, net_580_250);
wire #() noname(net_440_250, net_480_250);
wire #() noname(net_540_250, net_580_250);
wire #() noname(net_580_250, net_620_250);
wire #() noname(net_230_140, net_250_140);
wire #() noname(net_680_80, net_790_80);
wire #() noname(net_680_250, net_790_250);
wire #() noname(net_230_220, net_230_250);
wire #() noname(net_170_80, net_170_120);
wire #() noname(net_230_160, net_250_160);
wire #() noname(net_250_140, net_250_150);
wire #() noname(net_850_80, net_850_120);
wire #() noname(net_770_140, net_790_140);
wire #() noname(net_770_160, net_790_160);
wire #() noname(net_770_140, net_770_150);
wire #() noname(net_790_220, net_790_250);
wire #() noname(net_850_180, net_890_180);
wire #() noname(net_890_180, net_890_220);
wire #() noname(net_140_180, net_170_180);
wire #() noname(net_140_180, net_140_190);
wire #() noname(net_250_150, net_250_160);
wire #() noname(net_770_150, net_770_160);
wire #() noname(net_750_150, net_770_150);
wire #() noname(net_250_150, net_300_150);
wire #() noname(net_750_150, net_750_300);
wire #() noname(net_750_300, net_920_300);
wire #() noname(net_920_290, net_920_300);
wire #() noname(net_940_290, net_940_310);
place #(.$xposition(40),.$yposition(80)) place_40_80(net_40_80);
place #(.$xposition(40),.$yposition(110)) place_40_110(net_40_110);
place #(.$xposition(40),.$yposition(170)) place_40_170(net_40_170);
place #(.$xposition(40),.$yposition(190)) place_40_190(net_40_190);
place #(.$xposition(140),.$yposition(180)) place_140_180(net_140_180);
place #(.$xposition(140),.$yposition(190)) place_140_190(net_140_190);
place #(.$xposition(170),.$yposition(80)) place_170_80(net_170_80);
place #(.$xposition(170),.$yposition(120)) place_170_120(net_170_120);
place #(.$xposition(170),.$yposition(180)) place_170_180(net_170_180);
place #(.$xposition(230),.$yposition(80)) place_230_80(net_230_80);
place #(.$xposition(230),.$yposition(140)) place_230_140(net_230_140);
place #(.$xposition(230),.$yposition(160)) place_230_160(net_230_160);
place #(.$xposition(230),.$yposition(220)) place_230_220(net_230_220);
place #(.$xposition(230),.$yposition(250)) place_230_250(net_230_250);
place #(.$xposition(250),.$yposition(140)) place_250_140(net_250_140);
place #(.$xposition(250),.$yposition(150)) place_250_150(net_250_150);
place #(.$xposition(250),.$yposition(160)) place_250_160(net_250_160);
place #(.$xposition(300),.$yposition(150)) place_300_150(net_300_150);
place #(.$xposition(300),.$yposition(210)) place_300_210(net_300_210);
place #(.$xposition(330),.$yposition(80)) place_330_80(net_330_80);
place #(.$xposition(330),.$yposition(250)) place_330_250(net_330_250);
place #(.$xposition(390),.$yposition(80)) place_390_80(net_390_80);
place #(.$xposition(390),.$yposition(250)) place_390_250(net_390_250);
place #(.$xposition(440),.$yposition(80)) place_440_80(net_440_80);
place #(.$xposition(440),.$yposition(130)) place_440_130(net_440_130);
place #(.$xposition(440),.$yposition(190)) place_440_190(net_440_190);
place #(.$xposition(440),.$yposition(250)) place_440_250(net_440_250);
place #(.$xposition(480),.$yposition(80)) place_480_80(net_480_80);
place #(.$xposition(480),.$yposition(250)) place_480_250(net_480_250);
place #(.$xposition(540),.$yposition(80)) place_540_80(net_540_80);
place #(.$xposition(540),.$yposition(250)) place_540_250(net_540_250);
place #(.$xposition(580),.$yposition(80)) place_580_80(net_580_80);
place #(.$xposition(580),.$yposition(130)) place_580_130(net_580_130);
place #(.$xposition(580),.$yposition(190)) place_580_190(net_580_190);
place #(.$xposition(580),.$yposition(250)) place_580_250(net_580_250);
place #(.$xposition(620),.$yposition(80)) place_620_80(net_620_80);
place #(.$xposition(620),.$yposition(250)) place_620_250(net_620_250);
place #(.$xposition(680),.$yposition(80)) place_680_80(net_680_80);
place #(.$xposition(680),.$yposition(250)) place_680_250(net_680_250);
place #(.$xposition(750),.$yposition(150)) place_750_150(net_750_150);
place #(.$xposition(750),.$yposition(300)) place_750_300(net_750_300);
place #(.$xposition(770),.$yposition(140)) place_770_140(net_770_140);
place #(.$xposition(770),.$yposition(150)) place_770_150(net_770_150);
place #(.$xposition(770),.$yposition(160)) place_770_160(net_770_160);
place #(.$xposition(790),.$yposition(80)) place_790_80(net_790_80);
place #(.$xposition(790),.$yposition(140)) place_790_140(net_790_140);
place #(.$xposition(790),.$yposition(160)) place_790_160(net_790_160);
place #(.$xposition(790),.$yposition(220)) place_790_220(net_790_220);
place #(.$xposition(790),.$yposition(250)) place_790_250(net_790_250);
place #(.$xposition(850),.$yposition(80)) place_850_80(net_850_80);
place #(.$xposition(850),.$yposition(120)) place_850_120(net_850_120);
place #(.$xposition(850),.$yposition(180)) place_850_180(net_850_180);
place #(.$xposition(890),.$yposition(180)) place_890_180(net_890_180);
place #(.$xposition(890),.$yposition(220)) place_890_220(net_890_220);
place #(.$xposition(920),.$yposition(290)) place_920_290(net_920_290);
place #(.$xposition(920),.$yposition(300)) place_920_300(net_920_300);
place #(.$xposition(940),.$yposition(290)) place_940_290(net_940_290);
place #(.$xposition(940),.$yposition(310)) place_940_310(net_940_310);
place #(.$xposition(960),.$yposition(80)) place_960_80(net_960_80);
place #(.$xposition(960),.$yposition(100)) place_960_100(net_960_100);
place #(.$xposition(960),.$yposition(160)) place_960_160(net_960_160);
place #(.$xposition(960),.$yposition(200)) place_960_200(net_960_200);
