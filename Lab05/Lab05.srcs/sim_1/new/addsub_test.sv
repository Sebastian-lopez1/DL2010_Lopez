`timescale 1ns / 1ps
// Jane Ross, Megan Gordon and Sebastian Lopez  ELC 2137, 2020-02-19

module addsub_test();
    
    reg [1:0] a, b;
    reg mode;
    wire [1:0] s2;
    wire cout2;
    addsub DUT(
    .a(a), .b(b), .mode(mode),
    .s2(s2), .cout2(cout2)
    );
    

    
initial
begin

    //Test #1
        a = 2'b01;
        b = 2'b01;
        mode = 1;
        #10
        
    //Test #2
        a = 2'b00;
        b = 2'b01;
        mode = 1;
        #10
        
    //Test #3
        a = 2'b00;
        b = 2'b11;
        mode = 1;
        #10
        
    //Test #4
        a = 2'b10;
        b = 2'b10;
        mode = 1;
        #10
        
    //Test #5
        a = 2'b01;
        b = 2'b10;
        mode = 1;
        #10
        
    //Test #6
        a = 2'b01;
        b = 2'b00;
        mode = 1;
        #10
 
        $finish;
        end
 
 endmodule//addsub_test
