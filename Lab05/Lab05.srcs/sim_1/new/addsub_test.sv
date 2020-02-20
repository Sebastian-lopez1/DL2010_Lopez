`timescale 1ns / 1ps
// Jane Ross, Megan Gordon and Sebastian Lopez  ELC 2137, 2020-02-19

module addsub_test();
    reg a1_in, b1_in, a2_in, b2_in, mode_in; 
    wire cout1,c2,c3,sha1; 
       
 xor(b2, mode_in, b2_in);
 xor(b1, mode_in, b1_in);
 
fulladder fa1(
    .a1(a1_in), .b1(b1_in),
    .s1(s1_out), .c1(cout1));
halfadder ha1(
    .a2(a2_in), .b2(b2_in),
    .sha1(sha1), .c2(c2));
halfadder ha2(
    .sha1(sha1_in), .c1(c1),
    .s2(s2), .c3(c3));
    
xor(cout2,c3,c2);
xor(cout, cout2, mode_in);

    
initial
begin

    //Test #1
        a1_in = 0;
        a2_in = 0;
        b1_in = 1;
        b2_in = 0;

        #10
        
     //Test #2
        a1_in = 0;
        a2_in = 0;
        b1_in = 0;
        b2_in = 1;

        #10
        
     //Test #3
        a1_in = 0;
        a2_in = 0;
        b1_in = 1;
        b2_in = 1;

        #10
        
     //Test #4
        a1_in = 1;
        a2_in = 0;
        b1_in = 1;
        b2_in = 0;

        #10
        
      //Test #5
        a1_in = 0;
        a2_in = 1;
        b1_in = 1;
        b2_in = 0;

        #10
        
      //Test #6
        a1_in = 0;
        a2_in = 1;
        b1_in = 0;
        b2_in = 0;

        #10
 
 $finish;
 end
 
 endmodule//addsub_test
