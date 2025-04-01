`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2025 02:19:53 PM
// Design Name: 
// Module Name: my_CNN_final_tb
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



module my_CNN_final_tb;
 logic signed [8:0] image_in [0:783];
 logic clk,rst;
 logic  [3:0] predict;

 integer i;
 
 
  my_CNN_final sai(image_in,clk,rst,predict );
initial begin
         clk = 0;
         rst = 1;
         #5
         rst = 0;
         forever #0.5 clk = ~clk;
       end
 
 initial begin
 $readmemb("flattened_image4.txt", image_in);
 end
 
 
 always @(*) begin
 
foreach (image_in[i])
             $display ("image_in[%0d] = %0d", i, image_in[i]);
 end
 
 

 
endmodule

