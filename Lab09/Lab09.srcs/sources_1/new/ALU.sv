`timescale 1ns / 1ps
// Sebastian Lopez  ELC 2137, 2020-04-02

module ALU #( parameter N = 8)(

    input [N - 1:0] in0 ,
    input [N - 1:0] in1 ,
    input [3:0] op,
    output reg [N -1:0] out
    ) ;
    
    parameter ADD = 0;
    parameter SUB = 1;
    parameter AND = 2;
    parameter OR = 3;
    parameter XOR  =4;
    
    always @ *
    begin
        case (op)
            ADD : out = in0 + in1 ;
            SUB: out = in0 - in1; 
            AND: out = in0 & in1; 
            OR: out = in0 | in1;
            XOR: out = in0 ^ in1; 
            
            default : out = in0 ;
        endcase
    end
endmodule
