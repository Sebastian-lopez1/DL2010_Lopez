`timescale 1ns / 1ps
// Sebastian Lopez ELC 2137 , 2020 -04 -02

module sseg4_TDM_test();

    reg [15:0] data; 
    reg hex_dec, sign, reset, clock;  
    wire [6:0] seg; 
    wire dp; 
    wire [3:0] an;
    
    sseg4_TDM (.data(data), .hex_dec(hex_dec), .sign(sign), .reset(reset), .clock(clock), 
               .seg(seg), .dp(dp), .an(an)); 

    
endmodule
