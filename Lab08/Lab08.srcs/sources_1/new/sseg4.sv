`timescale 1ns / 1ps
// ELC 2137 - Lab6 - 02/20/2020
// Sebastian Lopez and Sean Dickenscheidt
module sseg4 (
    input [15:0] data,
    input hex_dec, 
    input sign, 
    input [1:0] digit_sel2, 
    output [6:0] seg, 
    output [3:0] an,
    output dp
);

wire [15:0] bcd11, m2out;
wire [3:0] m4out, an_dec; 
wire [6:0] sseg_dec;  
wire an_and, and_sel;
   
assign dp = 1;
    
BCD11 One(
.B(data[10:0]),
.Output11(bcd11)
);

mux2 #(.N(16))Two(
.in0(bcd11), .in1(data), .sel(hex_dec), 
.mux2_out(m2out)
); 

mux4 #(.N(4))Three(
.in3(m2out [15:12]), .in2(m2out [11:8]), .in1(m2out [7:4]), .in0 (m2out [3:0]), .sel(digit_sel2 [1:0]),
.mux4_out(m4out [3:0])
); 

sseg_decoder Four(
.num(m4out [3:0]), 
.sseg(sseg_dec [6:0])
); 

an_decoder Five(
.digit_sel(digit_sel2 [1:0]), 
.an_out({an_and, an})
);

and (and_sel, sign, ~an_dec[3]); 

mux2 #(.N(7))Six(
.in0(sseg_dec [6:0]), .in1(7'b0111111), .sel(and_sel), 
.mux2_out(seg)
); 
  
endmodule //sseg4