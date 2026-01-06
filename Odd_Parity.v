`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.01.2026 20:37:21
// Design Name: 
// Module Name: Odd_Parity
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Odd_Parity(
    input clk,
    input rst,
    input data_in,
    input data_valid,
    output reg parity_bit
    );
     
    parameter EVEN = 1'b0;
    parameter ODD  = 1'b1;

    reg current_state, next_state;

  
    always @(posedge clk or posedge rst) begin
        if (rst)
            current_state <= EVEN;
        else if (data_valid)
            current_state <= next_state;
    end

    
    always @(*) begin
        case (current_state)
            EVEN: begin
                if (data_in)
                    next_state = ODD;
                else
                    next_state = EVEN;
            end

            ODD: begin
                if (data_in)
                    next_state = EVEN;
                else
                    next_state = ODD;
            end

            default: next_state = EVEN;
        endcase
    end

    
    always @(*) begin
        case (current_state)
            EVEN: parity_bit = 1'b1; 
            ODD:  parity_bit = 1'b0;
            default: parity_bit = 1'b0;
        endcase
    end   

     
endmodule
