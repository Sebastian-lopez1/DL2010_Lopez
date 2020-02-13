`timescale 1ns / 1ps
// Jane Ross, Megan Gordon and Sebastian Lopez

module fulladder(
    input a1_in,
    input b1_in,

    input cin,
    output s2,
    output c2,
    output cout
);
    
    wire c1, c2, s1;
// halfadder ha1(
 //   .a1(a1_in), .b1(b1_in), 
 //   .c1(c1), .s1(s1)); 
 // halfadder ha2(
 //   .a1(s1), .b1(cin), 
 //   .c1(c2), .s1(s2)); 
 
 halfadder ha1(
    .a1(a1_in), .b1(b1_in), 
    .c1(c1), .s1(s1)); 
  halfadder ha2(
    .a1(s1), .b1(cin), 
    .c1(c2), .s1(s2));
    
assign cout = c1 ^ c2;

endmodule
