`timescale 1ns / 1ps
// Sebastian Lopez ELC 2137 , 2020 -04 -02

module calc_lab10(
    input btnC, btnD, btnU, clock, reset, dp, an, 
    input [15:0] sw, 
    output [15:0] led, 
    output [6:0] seg
    );
    
top_lab9 calc_unit(.sw(sw[11:0]), .btnC(btnC), .btnD(btnD), .btnU(btnU), .clk(clock), .led(led));

sseg4_TDM disp_unit(.data({led[15:0], 8'b00000000}), .hex_dec(sw[15]), 
.sign(sw[14]), .reset(btnC), .clock(clock), .seg(seg), .dp(dp), .an(an)); 

endmodule
