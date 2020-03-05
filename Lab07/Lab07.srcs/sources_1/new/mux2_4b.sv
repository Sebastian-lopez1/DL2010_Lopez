`timescale 1ns / 1ps
// ELC 2137 - Lab6 - 02/20/2020
// Sebastian Lopez and Sean Dickenscheidt

module mux2_4b(
    input [3:0] in0, in1, 
    input sel, 
    output [3:0] out
    ); 
    
    assign out = sel? in0:in1; 
    
endmodule //mux2_4b

