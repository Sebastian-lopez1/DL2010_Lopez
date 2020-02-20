`timescale 1ns / 1ps
// Sebastian Lopez, Megan Gordon , Jane Ross ELC 2137, 2020-02-19


module halfadder (input a1, b1,
                  output c1, s1);

xor(s1, a1, b1);
and(c1, a1, b1);
 

endmodule //halfadder

