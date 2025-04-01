`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2025 10:21:22 AM
// Design Name: 
// Module Name: CNN_Relu_final
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

module CNN_Relu1_final(
    input logic clk,
    input logic rst,
    input logic signed [19:0] relu_in [0:675], // 8-bit data + 1 signed bit 
    output logic signed [19:0] relu_out [0:675]
);

    always_ff @(posedge clk) begin
        if (rst) begin
            // Reset all outputs to zero
            for (int i = 0; i < 676; i++) begin
                relu_out[i] <= 20'b0;
            end
        end else begin
            for (int i = 0; i < 676; i++) begin
                if (relu_in[i][19]) begin  // Check MSB for negative values
                    relu_out[i] <= 20'b0;
                end else begin
                    relu_out[i] <= relu_in[i];
                end
            end
        end
    end

endmodule
