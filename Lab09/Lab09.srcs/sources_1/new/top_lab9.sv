`timescale 1ns / 1ps
// Sebastian Lopez  ELC 2137, 2020-04-02

module top_lab9 #( parameter N = 8)(

    input btnU, btnD, clk, btnC,
    input [11:0] sw,
    output [15:0] led 
    );
    
    wire [7:0] reg1_out, ALU1_out, reg2_out;
    
    register #(.N(8)) r1( 
    .D(sw [7:0]), .en(btnD), .clk(clk), .rst(btnC),
    .Q(reg1_out));
    
    assign led [7:0] = reg1_out; 
    
    ALU #(.N(8))  a1(
    .in1(reg1_out), .in0(sw[7:0]), .op(sw[11:8]), 
    .out(ALU1_out));
    
    register #(.N(8))  r2(
    .D(ALU1_out), .en(btnU), .clk(clk), .rst(btnC), 
    .Q(reg2_out));
    
    assign led [15:8] = reg2_out; 
    
    
endmodule
