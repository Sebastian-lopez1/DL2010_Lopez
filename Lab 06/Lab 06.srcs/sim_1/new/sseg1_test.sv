`timescale 1ns / 1ps

module sseg1_test();

reg [15:0] sw; //switches 
wire [3:0] an; // 7-segment digits
wire [6:0] seg; // 7-seg segments
wire dp; // decimal point 

initial begin 

    sw = 16'h0000; 
    #10;
    
// Test Case 1
sw[6:0] = ; 
sw[15] = 1'b0; 
#10; 
sw[15] = 1'b1; 
#10; 

// Test Case 2
sw[6:0] = 5; 
sw[15] = 1'b0; 
#10; 
sw[15] = 1'b1; 
#10; 

end 
endmodule
