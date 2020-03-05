`timescale 1ns / 1ps
// ELC 2137 - Lab6 - 02/20/2020
// Sebastian Lopez and Sean Dickenscheidt
module mux2 #(parameter N = 2) (
input [N - 1:0] in0, in1,
input sel,
output [N - 1:0] mux2_out
); 

assign mux2_out = sel? in1:in0; 

endmodule  

