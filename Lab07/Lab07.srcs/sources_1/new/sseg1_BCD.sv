`timescale 1ns / 1ps
// ELC 2137 - Lab6 - 02/20/2020
// Sebastian Lopez and Sean Dickenscheidt 

module sseg1_BCD  (
    input [15:0] sw, 
    output [3:0] an, 
    output [6:0] seg, 
    output dp
    ); 
    wire [13:0] sseg1_wire; 
    wire [1:0] thousands; 
    wire [3:0] hundreds, tens, ones; 
    wire [3:0] out1; 
    
    BCD11 sseg1(
    .B(sw[10:0]),
    .Output11(sseg1_wire)
    );
    
    assign thousands = sseg1_wire[13:12]; 
    assign hundreds = sseg1_wire[11:8]; 
    assign tens = sseg1_wire[7:4]; 
    assign ones = sseg1_wire[3:0];
    
    mux2_4b Test1(
    .in0(ones), .in1(tens), .sel(sw[15]),
    .out(out1)
    );  
    
    sseg_decoder Test2(
    .num(out1), 
    .sseg(seg)
    );
    
    assign an[1] = ~sw[15]; 
    assign an[0] = sw[15]; 
    assign an[3:2] = 2'b11; 
    assign dp = 1;   

endmodule //sseg1_BCD

