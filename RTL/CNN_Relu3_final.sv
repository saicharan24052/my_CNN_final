`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/30/2025 10:39:11 AM
// Design Name: 
// Module Name: CNN_Relu3_final
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



module CNN_Relu3_final(
    input logic clk,
    input logic rst,
    input logic signed  [47:0] relu_in[0:63], 
    output logic signed [47:0] relu_out[0:63]
);

    always_ff @(posedge clk) begin
        if (rst) begin
            // Reset all outputs to zero
            for (int i = 0; i < 64; i++) begin
                relu_out[i] <= 48'b0;
            end
        end else begin
            for (int i = 0; i < 64; i++) begin
                if (relu_in[i][47]) begin  // Check MSB for negative values
                    relu_out[i] <=48'b0;
                end else begin
                    relu_out[i] <= relu_in[i];
                end
            end
        end
    end

endmodule
