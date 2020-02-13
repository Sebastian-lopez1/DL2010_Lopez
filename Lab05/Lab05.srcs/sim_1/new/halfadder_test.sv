`timescale 1ns / 1ps
// Sebastian Lopez, Megan Gordon , Jane Ross 


module halfadder_test ();

    reg a1_in, b1_in; 
    wire c1_out, s1_out;
                 
halfadder ha0(
    .a1(a1_in), .b1(b1_in), 
    .c1(c1_out), .s1(s1_out));
    initial
    begin
        a1_in = 0;
        b1_in = 0;
        #10;
        
        //Test Case #2
        a1_in = 0;
        b1_in = 1;
        #10
        $finish;
       end
endmodule //halfadder_test  
