`timescale 1ns / 1ps
// ELC 2137 - Lab6 - 02/20/2020
// Sebastian Lopez and Sean Dickenscheidt 

module BCD6 (
input [5:0] B, 
output [3:0] tens, ones
);

wire w1, w2, w3, w4, w5, w6;

assign tens[3] = 0; 
assign ones[0] = B[0];

add3 Bobby(
.in({1'b0, B[5:3]}), 
.out({tens[2], w1, w2, w3}) 
);
add3 Billy(
.in({w1, w2, w3, B[2]}), 
.out({tens[1], w4, w5, w6})
);
add3 Barron(
.in({w4, w5, w6, B[1]}),
.out({tens[0], ones[3], ones[2], ones[1]})
);

endmodule //BCD 6

