`timescale 1ns / 1ps
// ELC 2137 - Lab6 - 02/20/2020
// Sebastian Lopez and Megan Gordon

module mux2_test( );

reg [15:0] in0, in1; 
reg sel;
wire [15:0] mux2_out;

mux2 #(.N(16)) test1(
.in0(in0), .in1(in1), .sel(sel),
.mux2_out(mux2_out)
); 

initial 
begin

    sel = 1;
    in0 = 0;
    in1 = 1;
    #10;  
    sel = 1; 
    in0 = 1; 
    in1 = 0; 
    #10; 
    sel = 0;
    in0 = 0;
    in1 = 1;
    #10;  
    sel = 0; 
    in0 = 1; 
    in1 = 0; 
    #10; 
    $finish;

end  

endmodule//mux2_4b_test
