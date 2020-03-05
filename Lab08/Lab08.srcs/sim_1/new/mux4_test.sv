`timescale 1ns / 1ps
module mux4_test();

reg [3:0] in0, in1, in2, in3; 
reg sel;
wire [3:0] mux4_out;

mux4 #(.N(16)) test1(
.in0(in0), .in1(in1), .in2(in2), .in3(in3), .sel(sel),
.mux4_out(mux4_out)
); 

initial 
begin

    sel = 1;
    in0 = 0;
    in1 = 1;
    in2 = 0; 
    in3 = 1;
    #10;  
    sel = 1; 
    in0 = 1; 
    in1 = 0;
    in2 = 1; 
    in3 = 0; 
    #10; 
    sel = 0;
    in0 = 0;
    in1 = 1;
    in2 = 0; 
    in3 = 1; 
    #10;  
    sel = 0; 
    in0 = 1; 
    in1 = 0; 
    in2 = 1;
    in3 = 0; 
    #10; 
    $finish;

end  

endmodule//mux2_4b_test

