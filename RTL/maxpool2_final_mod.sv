`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2025 03:11:33 PM
// Design Name: 
// Module Name: maxpool2_final_mod
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
module compare2_2x2 ( // 26:0 => when there is a signed bit , but [17:0] signed bit  got deleted in ReLu
  input logic clk, rst,
    input logic signed [32:0]ma,    // First value
    input logic signed[32:0] mb,    // Second value
    input logic signed[32:0]mc,    // Third value
    input logic signed[32:0] md,    // Fourth value
    output logic signed [32:0] mmax   // Output: largest value
);
    logic signed  [32:0] mmax_val;

  always @(posedge clk) begin
        // Start by assuming the first value is the largest
        mmax_val = ma;

        // Compare with the second value
        if (mb > mmax_val)
            mmax_val = mb;

        // Compare with the third value
        if (mc > mmax_val)
            mmax_val = mc;

        // Compare with the fourth value
        if (md > mmax_val)
            mmax_val = md;
    end

    assign mmax = mmax_val;

endmodule


module maxpool2_final_mod(
input logic clk,
input logic rst,
input logic signed [32:0] image_pool2[0:120],// 18:0 => when there is a signed bit , but [17:0] signed bit  got deleted in ReLu
output logic signed [32:0] max2_out[0:24]
    );
    
    
compare2_2x2 comp2_0 (clk,rst,image_pool2[0],image_pool2[1],image_pool2[11],image_pool2[12],max2_out[0]);
    compare2_2x2 comp2_1 (clk,rst,image_pool2[2],image_pool2[3],image_pool2[13],image_pool2[14],max2_out[1]);
    compare2_2x2 comp2_2 (clk,rst,image_pool2[4],image_pool2[5],image_pool2[15],image_pool2[16],max2_out[2]);
    compare2_2x2 comp2_3 (clk,rst,image_pool2[6],image_pool2[7],image_pool2[17],image_pool2[18],max2_out[3]);
    compare2_2x2 comp2_4 (clk,rst,image_pool2[8],image_pool2[9],image_pool2[19],image_pool2[20],max2_out[4]);
    compare2_2x2 comp2_5 (clk,rst,image_pool2[22],image_pool2[23],image_pool2[33],image_pool2[34],max2_out[5]);
    compare2_2x2 comp2_6 (clk,rst,image_pool2[24],image_pool2[25],image_pool2[35],image_pool2[36],max2_out[6]);
    compare2_2x2 comp2_7 (clk,rst,image_pool2[26],image_pool2[27],image_pool2[37],image_pool2[38],max2_out[7]);
    compare2_2x2 comp2_8 (clk,rst,image_pool2[28],image_pool2[29],image_pool2[39],image_pool2[40],max2_out[8]);
    compare2_2x2 comp2_9 (clk,rst,image_pool2[30],image_pool2[31],image_pool2[41],image_pool2[42],max2_out[9]);
    compare2_2x2 comp2_10 (clk,rst,image_pool2[44],image_pool2[45],image_pool2[55],image_pool2[56],max2_out[10]);
    compare2_2x2 comp2_11 (clk,rst,image_pool2[46],image_pool2[47],image_pool2[57],image_pool2[58],max2_out[11]);
    compare2_2x2 comp2_12 (clk,rst,image_pool2[48],image_pool2[49],image_pool2[59],image_pool2[60],max2_out[12]);
    compare2_2x2 comp2_13 (clk,rst,image_pool2[50],image_pool2[51],image_pool2[61],image_pool2[62],max2_out[13]);
    compare2_2x2 comp2_14 (clk,rst,image_pool2[52],image_pool2[53],image_pool2[63],image_pool2[64],max2_out[14]);
    compare2_2x2 comp2_15 (clk,rst,image_pool2[66],image_pool2[67],image_pool2[77],image_pool2[78],max2_out[15]);
    compare2_2x2 comp2_16 (clk,rst,image_pool2[68],image_pool2[69],image_pool2[79],image_pool2[80],max2_out[16]);
    compare2_2x2 comp2_17 (clk,rst,image_pool2[70],image_pool2[71],image_pool2[81],image_pool2[82],max2_out[17]);
    compare2_2x2 comp2_18 (clk,rst,image_pool2[72],image_pool2[73],image_pool2[83],image_pool2[84],max2_out[18]);
    compare2_2x2 comp2_19 (clk,rst,image_pool2[74],image_pool2[75],image_pool2[85],image_pool2[86],max2_out[19]);
    compare2_2x2 comp2_20 (clk,rst,image_pool2[88],image_pool2[89],image_pool2[99],image_pool2[100],max2_out[20]);
    compare2_2x2 comp2_21 (clk,rst,image_pool2[90],image_pool2[91],image_pool2[101],image_pool2[102],max2_out[21]);
    compare2_2x2 comp2_22 (clk,rst,image_pool2[92],image_pool2[93],image_pool2[103],image_pool2[104],max2_out[22]);
    compare2_2x2 comp2_23 (clk,rst,image_pool2[94],image_pool2[95],image_pool2[105],image_pool2[106],max2_out[23]);
    compare2_2x2 comp2_24 (clk,rst,image_pool2[96],image_pool2[97],image_pool2[107],image_pool2[108],max2_out[24]);
    
    
    
    
       
endmodule
