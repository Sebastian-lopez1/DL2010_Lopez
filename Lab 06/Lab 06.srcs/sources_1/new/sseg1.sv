`timescale 1ns / 1ps

module sseg1(
input [15:0] sw, //switches 
output [3:0] an, // 7-segment digits
output [6:0] seg, // 7-seg segments
output dp // decimal point 
);
reg 
wire [3:0] outm; 
 
mux2_4b seb(
.in1(sw[7:4]), .in0(sw[3:0]), 
.out( 
);

endmodule //seg1
