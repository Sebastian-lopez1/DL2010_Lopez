`timescale 1ns / 1ps
// Sebastian Lopez, Megan Gordon , Jane Ross ELC 2137, 2020-02-19

module fulladder_test();
reg a1_in, b1_in, cin, c1 ;
wire c2, cout, s2;

halfadder ha1(
    .a1(a1_in), .b1(b1_in), 
    .c1(c1), .s1(s1)); 
  halfadder ha2(
    .a1(s1), .b1(cin), 
    .c1(c2), .s1(s2));

    assign cout = c2 ^ c1;

    
initial
 begin
        //Test case #1
        a1_in = 0;
        b1_in = 0;
        cin = 0;
        #10;
        
        
        //Test Case #2
        a1_in = 1;
        b1_in = 0;
        cin = 0;
        #10
        
        //Test Case #3
        a1_in = 1;
        b1_in = 1;
        cin = 0;
        #10
        
        //Test case #4
        a1_in = 0;
        b1_in = 0;
        cin = 1;
        #10
        
        //Test case #5
        a1_in = 1;
        b1_in = 0;
        cin = 1;
        #10

        //Test case #6
        a1_in = 1;
        b1_in = 1;
        cin = 1;
        #10
        
        $finish;
       end


endmodule//fulladder_test
