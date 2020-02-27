`timescale 1ns / 1ps
// ELC 2137 - Lab6 - 02/20/2020
// Sebastian Lopez and Megan Gordon

module sseg1_test();

reg [15:0] sw; //switches 
wire [3:0] an; // 7-segment digits
wire [6:0] seg; // 7-seg segments
wire dp; // decimal point 

sseg1 Test2(
.sw(sw), 
.an(an), .dp(dp), .seg(seg)
);

initial begin 

    sw = 16'h0000; 
    #10;
    
// Test Case 1
sw[7:0] = 16'h0; 
sw[15] = 1'b0; 
#10; 
sw[15] = 1'b1; 
#10;  

// Test Case 2
sw[7:0] = 16'h1; 
sw[15] = 1'b0; 
#10; 
sw[15] = 1'b1; 
#10;

// Test Case 3
sw[7:0] = 16'h2; 
sw[15] = 1'b0; 
#10; 
sw[15] = 1'b1; 
#10;

// Test Case 4
sw[7:0] = 16'h3; 
sw[15] = 1'b0; 
#10; 
sw[15] = 1'b1; 
#10;

// Test Case 5
sw[7:0] = 16'h4; 
sw[15] = 1'b0; 
#10; 
sw[15] = 1'b1; 
#10;

// Test Case 6
sw[7:0] = 16'h5; 
sw[15] = 1'b0; 
#10; 
sw[15] = 1'b1; 
#10;

// Test Case 7
sw[7:0] = 16'h6; 
sw[15] = 1'b0; 
#10; 
sw[15] = 1'b1; 
#10;

// Test Case 8
sw[7:0] = 16'h7; 
sw[15] = 1'b0; 
#10; 
sw[15] = 1'b1; 
#10;

end 
endmodule
