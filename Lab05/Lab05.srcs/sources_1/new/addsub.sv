`timescale 1ns / 1ps
// Jane Ross, Megan Gordon and Sebastian Lopez  ELC 2137, 2020-02-19

module addsub(
    input [1:0] a1, b1, a2, b2, mode,
    output s2,cout2, s4
    );
  
 wire x1,x2, c2, c3, s3, c4, x3;
  
  xor(x1,b1,mode); 
  xor(x2,b2,mode); 
  xor(x3,c4,c3);
  xor(cout2,x3,mode); 
  
  fulladder fa1( 
    .a1(a1), .x1(x1),
    .s2(s2), .c2(c2));
       
  halfadder ha1(
    .a2(a2), .x2(x2), 
    .s3(s3), .c3(c3)); 
  halfadder ha2(
    .s3(s3), .c2(c2), 
    .s4(s4), .c4(c4));

endmodule//addsub
