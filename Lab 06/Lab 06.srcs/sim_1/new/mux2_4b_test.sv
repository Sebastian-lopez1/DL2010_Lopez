`timescale 1ns / 1ps

module mux2_4b_test( );

reg [3:0] in0, in1;
reg sel; 
wire [3:0] out;

mux2_4b Test1(
.in0(in0), .in1(in1), .sel(sel),
.out(out)
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
