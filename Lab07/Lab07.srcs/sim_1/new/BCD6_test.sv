`timescale 1ns / 1ps
// ELC 2137 - Lab6 - 02/20/2020
// Sebastian Lopez and Sean Dickenscheidt 

module BCD6_test ();

reg [5:0] B; 
wire [7:0] Output6;

integer i; 

BCD6 test1( 
.B(B), 
.Output6(Output6)
);

initial 
begin 
    
for (i =0; i <= 6'b111111; i = i + 1)
    begin 
    B = i;
    #10;
    end 
    
    $finish;

end 
 
endmodule //BCD6_Test
