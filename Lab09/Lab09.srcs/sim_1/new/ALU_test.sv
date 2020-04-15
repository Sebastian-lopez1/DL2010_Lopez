`timescale 1ns / 1ps
// Sebastian Lopez  ELC 2137, 2020-04-02

module ALU_test();

reg [7:0] in0;
reg [7:0] in1;
reg [3:0] op;
wire [7:0] out;

ALU #(.N(8)) a(.in0(in0) ,.in1(in1),.op(op),
           .out(out)) ;
initial begin 

    op = 0; 
    in0 = 1; 
    in1 = 2;
    #10 
    op = 1; 
    in0 = 3; 
    in1 = 4;
    #10 
    op = 2; 
    in0 = 5; 
    in1 = 6;
    #10 
    op = 3; 
    in0 = 7; 
    in1 = 8;
    #10 
    op = 4; 
    in0 = 9; 
    in1 = 10;
    #10 
    op = 5; 
    in0 = 11; 
    in1 = 12;
    #10
    $finish; 
end
endmodule

