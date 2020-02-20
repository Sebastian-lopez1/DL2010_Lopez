`timescale 1ns / 1ps
// Jane Ross, Megan Gordon and Sebastian Lopez  ELC 2137, 2020-02-19

module addsub(
    input [1:0] a, b,
    input mode,
    output [1:0] s2, 
    output cout2
    );
  
 wire x1,x2, c2;
  
  xor(x1,b[0],mode); 
  xor(x2,b[1],mode); 
  
  fulladder fa1( 
    .a1_in(a[0]), .b1_in(x1), .cin(mode),
    .s2(s2[0]), .cout(c2));
    
  fulladder fa2( 
   .a1_in(a[1]), .b1_in(x2), .cin(c2),
   .s2(s2[1]), .cout(cout2));
       
       

endmodule//addsub
