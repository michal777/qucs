// VS::printSubckt main
module main();
Vdc #(.$xposition(80), .$yposition(160), .$vflip(1), .$hflip(1), .$tx(18), .$ty(18), .U(Vgs)) V2(net_80_130, net_80_190);
GND #(.$xposition(80), .$yposition(190), .$vflip(1), .$hflip(1), .$tx(0), .$ty(0)) anonymous_gnd_hack_0(net_80_190);
//DC1
Eqn #(.$xposition(70), .$yposition(390), .$vflip(1), .$hflip(1), .$tx(-32), .$ty(-32), .Id(-V1.I), .Export(yes)) Eqn1();
GND #(.$xposition(380), .$yposition(160), .$vflip(1), .$hflip(1), .$tx(0), .$ty(0)) anonymous_gnd_hack_1(net_380_160);
Vdc #(.$xposition(380), .$yposition(120), .$vflip(1), .$hflip(1), .$tx(18), .$ty(18), .U(Vds)) V1(net_380_90, net_380_150);
GND #(.$xposition(210), .$yposition(160), .$vflip(1), .$hflip(1), .$tx(0), .$ty(0)) anonymous_gnd_hack_2(net_210_160);
IProbe #(.$xposition(320), .$yposition(60), .$vflip(-1), .$hflip(1), .$tx(-26), .$ty(-26)) Pr1(net_350_60, net_290_60);
Sub #(.$xposition(210), .$yposition(120), .$vflip(1), .$hflip(1), .$ty(1), .$tx(0), .File(1m)) Curtice1(net_210_160, net_180_120, net_210_80);
wire #(.$xposition(380), .$yposition(150), .$vflip(1), .$hflip(1)) noname(net_380_150, net_380_160);
wire #(.$xposition(380), .$yposition(60), .$vflip(1), .$hflip(1)) noname(net_380_60, net_380_90);
wire #(.$xposition(210), .$yposition(60), .$vflip(1), .$hflip(1)) noname(net_210_60, net_290_60);
wire #(.$xposition(80), .$yposition(120), .$vflip(1), .$hflip(1)) noname(net_80_120, net_80_130);
wire #(.$xposition(80), .$yposition(120), .$vflip(1), .$hflip(1)) noname(net_80_120, net_180_120);
wire #(.$xposition(210), .$yposition(60), .$vflip(1), .$hflip(1)) noname(net_210_60, net_210_80);
wire #(.$xposition(350), .$yposition(60), .$vflip(1), .$hflip(1)) noname(net_350_60, net_380_60);
place #(.$xposition(80), .$yposition(130), .$vflip(1), .$hflip(1)) net_80_130(net_80_130);
place #(.$xposition(80), .$yposition(190), .$vflip(1), .$hflip(1)) net_80_190(net_80_190);
place #(.$xposition(380), .$yposition(160), .$vflip(1), .$hflip(1)) net_380_160(net_380_160);
place #(.$xposition(380), .$yposition(90), .$vflip(1), .$hflip(1)) net_380_90(net_380_90);
place #(.$xposition(380), .$yposition(150), .$vflip(1), .$hflip(1)) net_380_150(net_380_150);
place #(.$xposition(210), .$yposition(160), .$vflip(1), .$hflip(1)) net_210_160(net_210_160);
place #(.$xposition(350), .$yposition(60), .$vflip(1), .$hflip(1)) net_350_60(net_350_60);
place #(.$xposition(290), .$yposition(60), .$vflip(1), .$hflip(1)) net_290_60(net_290_60);
place #(.$xposition(180), .$yposition(120), .$vflip(1), .$hflip(1)) net_180_120(net_180_120);
place #(.$xposition(210), .$yposition(80), .$vflip(1), .$hflip(1)) net_210_80(net_210_80);
place #(.$xposition(380), .$yposition(60), .$vflip(1), .$hflip(1)) net_380_60(net_380_60);
place #(.$xposition(210), .$yposition(60), .$vflip(1), .$hflip(1)) net_210_60(net_210_60);
place #(.$xposition(80), .$yposition(120), .$vflip(1), .$hflip(1)) net_80_120(net_80_120);
endmodule // main

