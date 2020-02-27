`timescale 1ns / 1ps
// ELC 2137 - Lab6 - 02/20/2020
// Sebastian Lopez and Sean Dickenscheidt 

module add3_test ();

reg [3:0] in;
wire [3:0] out;

integer i; 

add3 Bobby(
.in(in), 
.out(out)
);

initial 
begin 
    
for (i =0; i <= 4'b1111; i = i + 1)
    begin 
    in = i;
    #10;
    end 
    
    $finish;

end 
endmodule //add3_test

