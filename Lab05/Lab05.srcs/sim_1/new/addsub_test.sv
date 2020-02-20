`timescale 1ns / 1ps
// Jane Ross, Megan Gordon and Sebastian Lopez  ELC 2137, 2020-02-19

module addsub_test();
    
    reg a1, b1, a2, b2, mode;
    wire x1,x2, c2, c3, s3, c4, x3, s2,cout2, s4;
    
  fulladder fa1( 
    .a1(a1), .x1(x1),
    .s2(s2), .c2(c2));
       
  halfadder ha1(
    .a2(a2), .x2(x2), 
    .s3(s3), .c3(c3)); 
  halfadder ha2(
    .s3(s3), .c2(c2), 
    .s4(s4), .c4(c4));
    
    assign x1 = mode ^ b1; 
    assign x2 = mode ^ b2; 
    assign x3 = c4 ^ c3; 
    assign cout2 = x3 ^ mode; 
    

    
initial
begin

    //Test #1
        a1 = 0;
        a2 = 0;
        b1 = 1;
        b2 = 0;
        mode = 1;
        #10
        
     //Test #2
        a1 = 0;
        a2 = 0;
        b1 = 0;
        b2 = 1;
        mode = 1;
        #10
        
     //Test #3
        a1 = 0;
        a2 = 0;
        b1 = 1;
        b2 = 1;
        mode = 1;
        #10
        
     //Test #4
        a1 = 1;
        a2 = 0;
        b1 = 1;
        b2 = 0;
        mode = 1;
        #10
        
      //Test #5
        a1 = 0;
        a2 = 1;
        b1 = 1;
        b2 = 0;
        mode = 1;
        #10
        
      //Test #6
        a1 = 0;
        a2 = 1;
        b1 = 0;
        b2 = 0;
        mode = 1;
        #10
 
        $finish;
        end
 
 endmodule//addsub_test
