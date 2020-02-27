`timescale 1ns / 1ps
// ELC 2137 - Lab6 - 02/20/2020
// Sebastian Lopez and Megan Gordon

module sseg1(
input [15:0] sw, //switches 
output [3:0] an, // 7-segment digits
output [6:0] seg, // 7-seg segments
output dp // decimal point 
);
 
wire [3:0] out; 

not not1(an[1],sw[15]);
assign an[0] = sw[15];
assign an[3:2] = 3;
assign dp = 1; 

mux2_4b mux1(
.in0(sw[3:0]), .in1(sw[7:4]), .sel(sw[15]), 
.out(out) 
);

sseg_decoder sseg2(
.num(out),
.sseg(seg)
); 

endmodule //seg1
