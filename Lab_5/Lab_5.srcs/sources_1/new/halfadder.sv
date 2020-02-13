`timescale 1ns / 1ps
// Sebastian Lopez, Megan Gordon, and Jane Ross 

module halfadder(input a1, b1, 
                 output c1, s1); 
    xor x1(s1, a1, b1); 
    and a1(c1, a1, b1,);
    
endmodule // halfadder 
