`timescale 1ns / 1ps
// ELC 2137 - Lab6 - 02/20/2020
// Sebastian Lopez and Sean Dickenscheidt 

module BCD6 (
input [5:0] B, 
output reg [7:0] Output6
);

wire w1, w2, w3, w4, w5, w6;

assign Output6[7] = 0; 
assign Output6[0] = B[0];

add3 Bobby(
.in({1'b0, B[5:3]}), 
.out({Output6[6], w1, w2, w3}) 
);
add3 Billy(
.in({w1, w2, w3, B[2]}), 
.out({Output6[5], w4, w5, w6})
);
add3 Barron(
.in({w4, w5, w6, B[1]}),
.out({Output6[4], Output6[3], Output6[2], Output6[1]})
);

endmodule //BCD 6

