`timescale 1ns / 1ps

module sseg_decoder_test();

reg [3:0] num; 
wire [6:0] sseg; 

integer i; 

sseg_decoder d1(
    .num(num),
    .sseg(sseg)
);  

initial begin 
    for (i = 0; i <=8'hF; i=i+1) begin 
        num = i; 
        #10; 
    end 
    $finish; 
end 
endmodule //sseg_decoder_test