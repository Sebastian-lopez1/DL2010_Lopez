`timescale 1ns / 1ps
// ELC 2137 - Lab6 - 02/20/2020
// Sebastian Lopez and Sean Dickenscheidt 

module add3 (
input [3:0] in, 
output reg [3:0] out
);

always @* 
    begin
        if (in >= 5)
            out = in + 3; 
        else
            out = in;
    end  

endmodule //add3

