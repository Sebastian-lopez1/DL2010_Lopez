`timescale 1ns / 1ps
// ELC 2137 - Lab6 - 02/20/2020
// Sebastian Lopez and Sean Dickenscheidt
module an_decoder (
input [1:0] digit_sel,
output reg [3:0] an_out
);

always @*
    case (digit_sel) 
        0: an_out <= 4'b1110; 
        1: an_out <= 4'b1101; 
        2: an_out <= 4'b1011; 
        default: an_out <= 4'b0111;     
    endcase 
endmodule //mux4
