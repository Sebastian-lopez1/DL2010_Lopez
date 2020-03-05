`timescale 1ns / 1ps
// ELC 2137 - Lab6 - 02/20/2020
// Sebastian Lopez and Megan Gordon

module an_decoder_test( );

reg [1:0] digit_sel;
wire [3:0] an_out;

an_decoder test1(
.digit_sel(digit_sel), 
.an_out(an_out)
); 

initial 
begin

    digit_sel = 0;
    #10;  
    
    digit_sel = 1; 
    #10;  
    
    digit_sel = 2;
    #10;  
    
    digit_sel = 3;
    #10;  

    $finish;

end  

endmodule//an_decoder_test
