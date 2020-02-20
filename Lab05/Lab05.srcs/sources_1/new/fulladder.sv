`timescale 1ns / 1ps
// Jane Ross, Megan Gordon and Sebastian Lopez ELC 2137, 2020-02-19

module fulladder(
    input a1_in, b1_in, cin,
    output s2,cout, c2
);

 wire s1, c1, c2;
 
 xor(cout, c1, c2);

 halfadder ha1(
    .a1(a1_in), .b1(b1_in), 
    .c1(c1), .s1(s1)); 
  halfadder ha2(
    .a1(s1), .b1(cin), 
    .c1(c2), .s1(s2));
endmodule//fulladder
