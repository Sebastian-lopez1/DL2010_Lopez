`timescale 1ns / 1ps
// ELC 2137 - Lab6 - 02/20/2020
// Sebastian Lopez and Sean Dickenscheidt
module mux4 #(parameter N = 2) (
input [N - 1:0] in0, in1, in2, in3, 
input [1:0] sel, 
output reg [N - 1:0] mux4_out
);

always @*
    case (sel) 
        0: mux4_out <= in0; 
        1: mux4_out <= in1; 
        2: mux4_out <= in2; 
        default: mux4_out <= in3;     
    endcase 
endmodule //mux4
