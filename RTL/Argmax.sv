`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/30/2025 10:46:59 AM
// Design Name: 
// Module Name: Argmax
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

module Argmax (
    input logic clk, rst,
    input logic signed [61:0] a,  
    input logic signed [61:0] b,  
    input logic signed [61:0] c,  
    input logic signed [61:0] d,  
    input logic signed [61:0] e,  
    input logic signed [61:0] f,  
    input logic signed [61:0] g,  
    input logic signed [61:0] h,  
    input logic signed [61:0] i,  
    input logic signed [61:0] j,  
    output logic signed [61:0] max,  
    output logic [3:0] index  
);
    logic signed [61:0] max_val;
    logic [3:0] index_temp;
    logic signed [61:0] temp_max;  // Temporary variable for max computation
    logic [3:0] temp_index;        // Temporary variable for index computation

    always @(*) begin
        // Initialize temp variables
        temp_max = a;
        temp_index = 4'b0000;

        // Compare all values in a single combinational step
        if (b > temp_max) begin temp_max = b; temp_index = 4'b0001; end
        if (c > temp_max) begin temp_max = c; temp_index = 4'b0010; end
        if (d > temp_max) begin temp_max = d; temp_index = 4'b0011; end
        if (e > temp_max) begin temp_max = e; temp_index = 4'b0100; end
        if (f > temp_max) begin temp_max = f; temp_index = 4'b0101; end
        if (g > temp_max) begin temp_max = g; temp_index = 4'b0110; end
        if (h > temp_max) begin temp_max = h; temp_index = 4'b0111; end
        if (i > temp_max) begin temp_max = i; temp_index = 4'b1000; end
        if (j > temp_max) begin temp_max = j; temp_index = 4'b1001; end
    end

    always @(posedge clk) begin
        if (rst) begin
            max_val <= 62'b0;
            index_temp <= 4'b0000;
        end else begin
            max_val <= temp_max;
            index_temp <= temp_index;
        end
    end

    assign max = max_val;
    assign index = index_temp;

endmodule
