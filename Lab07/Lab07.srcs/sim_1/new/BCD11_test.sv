`timescale 1ns / 1ps
// ELC 2137 - Lab6 - 02/20/2020
// Sebastian Lopez and Sean Dickenscheidt 

module BCD11_test ();

reg [10:0] B; 
wire [13:0] Output11;

integer i; 

BCD11 test1( 
.B(B), 
.Output11(Output11)
);

initial 
begin 
    
for (i =0; i <= 11'b11111111111; i = i + 1)
    begin 
    B = i;
    #10;
    end 
    
    $finish;

end 
 
endmodule //BCD11_Test