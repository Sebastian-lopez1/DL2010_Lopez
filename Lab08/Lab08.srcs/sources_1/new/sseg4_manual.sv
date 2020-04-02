`timescale 1ns / 1ps
// ELC 2137 - Lab6 - 02/20/2020
// Sebastian Lopez and Sean Dickenscheidt 

module sseg4_manual(
    input [15:0] sw, 
    output [6:0] seg, 
    output dp, 
    output [3:0] an
    );
    
sseg4 Test(
.data({4'b0000, sw[11:0]}), .hex_dec(sw [15]), .sign(sw [14]), .digit_sel2(sw [13:12]), 
.seg(seg), .dp(dp), .an(an)
); 

endmodule //sseg4_manual
