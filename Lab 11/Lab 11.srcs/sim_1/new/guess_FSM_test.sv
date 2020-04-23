`timescale 1ns / 1ps
// Sebastian Lopez ELC 2137 , 2020 -04 -02

module guess_FSM_test();

reg clk, reset, b; 
wire y, win, lose;
integer i; 

guess_FSM #(.N(4)) guess(.clk(clk), .reset(reset), .b(b), 
                   .y(y), .win(win), .lose(lose));
                   
always begin 
    #5 clk = ~clk; 
end 

initial begin 
    clk = 0; reset = 0; b = 4'b0000; #5; 
    reset = 1; #10; 
    reset = 0; #5; 
    
    b = 4'b0001; #10; 
    b = 4'b0000; #5; 
    reset = 0; #5; 
    
    b = 4'b0001; #12; 
    b = 4'b0010; #10; 
    
    
$finish;
end 

endmodule
