`timescale 1ns / 1ps
// Sebastian Lopez ELC 2137 , 2020 -04 -02

module guess_FSM #(parameter N=21)(
    input clk, reset,
    input  [3:0] b,
    output reg [3:0] y,
    output reg win,
    output reg lose);
    
    localparam [3:0]
      s0    = 4'b0000,
      s1    = 4'b0001,
      s2    = 4'b0010,
      s3    = 4'b0011,
      swin  = 4'b0100,
      slose = 4'b0101;
      
    reg [1:0] state, state_next;
    
    always_ff @(posedge clk or posedge reset)
      if (reset) begin
         state   <= s0;
      end
      else begin
         state   <= state_next;
      end
      
      always_comb begin
      state_next   = state;
      
          case(state)
            s0: begin
                y[0] = 1;
                if (~b)
                    state_next = s1;
                else if (b[3] | b[2] | b[1])
                    state_next = slose; 
                else if (b[3] & b[2] & b[1] & b[0])
                    state_next = swin;  
            end
            
            s1: begin
                y[1] = 1; 
                if (~b)
                    state_next = s2; 
                else if (b[3] | b[2] | b[0])
                    state_next = slose; 
                else if (b[3] & b[2] & b[1] & b[0])
                    state_next = swin; 
            end    
            
            s2: begin
                y[2] = 1; 
                if (~b)
                    state_next = s3; 
                else if (b[3] | b[1] | b[0])
                    state_next = slose; 
                else if (b[3] & b[2] & b[1] & b[0])
                    state_next = swin; 
            end    
            
            s3: begin 
                y[3] = 1; 
                if (~b)
                    state_next = s0; 
                else if (b[2] | b[1] | b[0])
                    state_next = slose; 
                else if (b[3] & b[2] & b[1] & b[0])
                    state_next = ~swin; 
            end  
            
            slose: begin 
                lose = 1; 
                if (~b)
                    state_next = s0; 
            end 
            
            swin: begin 
                win = 1; 
                if (~b)
                    state_next = s0;
            end            
        endcase         
    end
          
endmodule
