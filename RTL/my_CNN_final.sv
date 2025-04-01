`timescale 1ns / 1ps
`include "kernels_list.vh"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/10/2025 10:30:22 AM
// Design Name: 
// Module Name: my_CNN_final
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



module my_CNN_final(
input signed [8:0] image[0:783], // signed
input logic clk,rst,
output logic signed [3:0] predict
    );
    
    logic signed [7:0]filter0[0:8];
    logic signed [7:0]filter1[0:8];  
    logic signed [7:0]filter2[0:8];
    logic signed [7:0]filter3[0:8];
    
    logic signed [19:0] conv_out0 [0:675];
    logic signed [19:0] conv_out1 [0:675];
    logic signed [19:0] conv_out2 [0:675];
    logic signed [19:0] conv_out3 [0:675];
    
    
    logic signed [19:0] relu1_out0 [0:675];
    logic signed[19:0] relu1_out1 [0:675];
    logic signed[19:0] relu1_out2 [0:675];
    logic signed[19:0] relu1_out3 [0:675];
    
    logic signed[19:0] max1_out0[0:168];
    logic signed [19:0] max1_out1[0:168];
    logic signed [19:0] max1_out2[0:168];
    logic signed[19:0] max1_out3[0:168];
    
    
    logic signed [30:0] conv2_out0 [0:120];
    logic signed [30:0] conv2_out1 [0:120];
    logic signed [30:0] conv2_out2 [0:120];
    logic signed [30:0] conv2_out3 [0:120];
    logic signed [30:0] conv2_out4 [0:120];
    logic signed [30:0] conv2_out5 [0:120];
    logic signed [30:0] conv2_out6 [0:120];
    logic signed [30:0] conv2_out7 [0:120];
    logic signed [30:0] conv2_out8 [0:120];
    logic signed [30:0] conv2_out9 [0:120];
    logic signed [30:0] conv2_out10 [0:120];
    logic signed [30:0] conv2_out11 [0:120];
    logic signed [30:0] conv2_out12 [0:120];
    logic signed [30:0] conv2_out13 [0:120];
    logic signed [30:0] conv2_out14 [0:120];
    logic signed [30:0] conv2_out15 [0:120];
    logic signed [30:0] conv2_out16 [0:120];
    logic signed [30:0] conv2_out17 [0:120];
    logic signed [30:0] conv2_out18 [0:120];
    logic signed [30:0] conv2_out19 [0:120];
    logic signed [30:0] conv2_out20 [0:120];
    logic signed [30:0] conv2_out21 [0:120];
    logic signed [30:0] conv2_out22 [0:120];
    logic signed [30:0] conv2_out23 [0:120];
    logic signed [30:0] conv2_out24 [0:120];
    logic signed [30:0] conv2_out25 [0:120];
    logic signed [30:0] conv2_out26 [0:120];
    logic signed [30:0] conv2_out27 [0:120];
    logic signed [30:0] conv2_out28 [0:120];
    logic signed [30:0] conv2_out29 [0:120];
    logic signed [30:0] conv2_out30 [0:120];
    logic signed [30:0] conv2_out31 [0:120];
    
    
    
    logic signed [32:0] conv2_post0 [0:120];
    logic signed [32:0] conv2_post1 [0:120];
    logic signed [32:0] conv2_post2 [0:120];
    logic signed [32:0] conv2_post3 [0:120];
    logic signed [32:0] conv2_post4 [0:120];
    logic signed [32:0] conv2_post5 [0:120];
    logic signed [32:0] conv2_post6 [0:120];
    logic signed [32:0] conv2_post7 [0:120];

    
    
    logic signed [32:0] relu2_out0 [0:120];
    logic signed [32:0] relu2_out1 [0:120];
    logic signed [32:0] relu2_out2 [0:120];
    logic signed [32:0] relu2_out3 [0:120];
    logic signed [32:0] relu2_out4 [0:120];
    logic signed [32:0] relu2_out5 [0:120];
    logic signed [32:0] relu2_out6 [0:120];
    logic signed [32:0] relu2_out7 [0:120];

       
     logic signed[32:0]  max2_out0 [0:24];
     logic signed[32:0]  max2_out1 [0:24];
     logic signed[32:0]  max2_out2 [0:24];
     logic signed[32:0]  max2_out3 [0:24];
     logic signed[32:0]  max2_out4 [0:24];
     logic signed[32:0]  max2_out5 [0:24];
     logic signed[32:0]  max2_out6 [0:24];
     logic signed[32:0]  max2_out7 [0:24];  
     
     logic signed [47:0] fc1_results[0:63];
     logic signed [47:0] fc1_results_relu[0:63];
     logic signed [61:0] fc2_results[0:9];
     
     logic signed [61:0] highest_num;

    
    //////////////////////////////////////////////////////////////////////////////////////////
                             //CONVOLUTION1
   ////////////////////////////////////////////////////////////////////////////////////////////
     CNN_conv1_final_mod convolution1_0(clk,rst,image,kernel_1_re[0],conv_out0);
     CNN_conv1_final_mod convolution1_1(clk,rst,image,kernel_1_re[1],conv_out1);
     CNN_conv1_final_mod convolution1_2(clk,rst,image,kernel_1_re[2],conv_out2);
     CNN_conv1_final_mod convolution1_3(clk,rst,image,kernel_1_re[3],conv_out3);
     
     
   ///////////////////////////////////////////////////////////////////////////////////////////
                                //ReLU1   
    ////////////////////////////////////////////////////////////////////////////////////////////     
     CNN_Relu1_final ReLu_mod0(clk,rst,conv_out0,relu1_out0);
     CNN_Relu1_final ReLu_mod1(clk,rst,conv_out1,relu1_out1);
     CNN_Relu1_final ReLu_mod2(clk,rst,conv_out2,relu1_out2);
     CNN_Relu1_final ReLu_mod3(clk,rst,conv_out3,relu1_out3);
     
     
   ///////////////////////////////////////////////////////////////////////////////////////////
                              //MAPPOOLING1   
    ////////////////////////////////////////////////////////////////////////////////////////////

     maxpool1_final_mod max1_0(clk,rst,relu1_out0,max1_out0);
     maxpool1_final_mod max1_1(clk,rst,relu1_out1,max1_out1);
     maxpool1_final_mod max1_2(clk,rst,relu1_out2,max1_out2);
     maxpool1_final_mod max1_3(clk,rst,relu1_out3,max1_out3);
    


    ///////////////////////////////////////////////////////////////////////////////////////////
                             //CONVOLUTION2
   ////////////////////////////////////////////////////////////////////////////////////////////    
   CNN_conv2_final_mod convolution2_0(clk,rst,max1_out0,kernel_2_re[0],conv2_out0);
   CNN_conv2_final_mod convolution2_1(clk,rst,max1_out1,kernel_2_re[1],conv2_out1);
   CNN_conv2_final_mod convolution2_2(clk,rst,max1_out2,kernel_2_re[2],conv2_out2);
   CNN_conv2_final_mod convolution2_3(clk,rst,max1_out3,kernel_2_re[3],conv2_out3);
   
   add_conv2_modules mod_4add_0(clk,rst,conv2_out0,conv2_out1,conv2_out2,conv2_out3,conv2_post0);
   
   
   
   CNN_conv2_final_mod convolution2_4(clk,rst,max1_out0,kernel_2_re[4],conv2_out4);
   CNN_conv2_final_mod convolution2_5(clk,rst,max1_out1,kernel_2_re[5],conv2_out5);
   CNN_conv2_final_mod convolution2_6(clk,rst,max1_out2,kernel_2_re[6],conv2_out6);
   CNN_conv2_final_mod convolution2_7(clk,rst,max1_out3,kernel_2_re[7],conv2_out7);
   
   add_conv2_modules mod_4add_1(clk,rst,conv2_out4,conv2_out5,conv2_out6,conv2_out7,conv2_post1);   
   
   CNN_conv2_final_mod convolution2_8(clk,rst,max1_out0,kernel_2_re[8],conv2_out8);
   CNN_conv2_final_mod convolution2_9(clk,rst,max1_out1,kernel_2_re[9],conv2_out9);
   CNN_conv2_final_mod convolution2_10(clk,rst,max1_out2,kernel_2_re[10],conv2_out10);
   CNN_conv2_final_mod convolution2_11(clk,rst,max1_out3,kernel_2_re[11],conv2_out11);
   
   add_conv2_modules mod_4add_2(clk,rst,conv2_out8,conv2_out9,conv2_out10,conv2_out11,conv2_post2);   
   
   CNN_conv2_final_mod convolution2_12(clk,rst,max1_out0,kernel_2_re[12],conv2_out12);
   CNN_conv2_final_mod convolution2_13(clk,rst,max1_out1,kernel_2_re[13],conv2_out13);
   CNN_conv2_final_mod convolution2_14(clk,rst,max1_out2,kernel_2_re[14],conv2_out14);
   CNN_conv2_final_mod convolution2_15(clk,rst,max1_out3,kernel_2_re[15],conv2_out15);
   
   add_conv2_modules mod_4add_3(clk,rst,conv2_out12,conv2_out13,conv2_out14,conv2_out15,conv2_post3);   

   
   CNN_conv2_final_mod convolution2_16(clk,rst,max1_out0,kernel_2_re[16],conv2_out16);
   CNN_conv2_final_mod convolution2_17(clk,rst,max1_out1,kernel_2_re[17],conv2_out17);
   CNN_conv2_final_mod convolution2_18(clk,rst,max1_out2,kernel_2_re[18],conv2_out18);
   CNN_conv2_final_mod convolution2_19(clk,rst,max1_out3,kernel_2_re[19],conv2_out19);
   
   add_conv2_modules mod_4add_4(clk,rst,conv2_out16,conv2_out17,conv2_out18,conv2_out19,conv2_post4);  
   
   CNN_conv2_final_mod convolution2_20(clk,rst,max1_out0,kernel_2_re[20],conv2_out20);
   CNN_conv2_final_mod convolution2_21(clk,rst,max1_out1,kernel_2_re[21],conv2_out21);
   CNN_conv2_final_mod convolution2_22(clk,rst,max1_out2,kernel_2_re[22],conv2_out22);
   CNN_conv2_final_mod convolution2_23(clk,rst,max1_out3,kernel_2_re[23],conv2_out23);
  
    add_conv2_modules mod_4add_5(clk,rst,conv2_out20,conv2_out21,conv2_out22,conv2_out23,conv2_post5);   
   
   
   CNN_conv2_final_mod convolution2_24(clk,rst,max1_out0,kernel_2_re[24],conv2_out24);
   CNN_conv2_final_mod convolution2_25(clk,rst,max1_out1,kernel_2_re[25],conv2_out25);
   CNN_conv2_final_mod convolution2_26(clk,rst,max1_out2,kernel_2_re[26],conv2_out26);
   CNN_conv2_final_mod convolution2_27(clk,rst,max1_out3,kernel_2_re[27],conv2_out27);
   
    add_conv2_modules mod_4add_6(clk,rst,conv2_out24,conv2_out25,conv2_out26,conv2_out27,conv2_post6); 
   
   CNN_conv2_final_mod convolution2_28(clk,rst,max1_out0,kernel_2_re[28],conv2_out28);
   CNN_conv2_final_mod convolution2_29(clk,rst,max1_out1,kernel_2_re[29],conv2_out29);
   CNN_conv2_final_mod convolution2_30(clk,rst,max1_out2,kernel_2_re[30],conv2_out30);
   CNN_conv2_final_mod convolution2_31(clk,rst,max1_out3,kernel_2_re[31],conv2_out31);   
 
    add_conv2_modules mod_4add_7(clk,rst,conv2_out28,conv2_out29,conv2_out30,conv2_out31,conv2_post7);    
   /*
#include <stdio.h>
      
      int main() {
          // Write C code here
          int i,j;
          int k = 0;
          
          for(j = 0; j<4;j++){
         for (i =0; i<8; i++) {
   printf("CNN_conv2_final_mod convolution2_%d(clk,rst,max1_out%d,kernel_2_re[%d],conv2_out%d);\n",k,j,k,k);
    k = k+1;
         }
          }
          return 0;
      }
   
   */
   
   
      
   ///////////////////////////////////////////////////////////////////////////////////////////
                                //ReLU2   
    ////////////////////////////////////////////////////////////////////////////////////////////     
   
    CNN_Relu2_final ReLu2_mod0(clk,rst,conv2_post0,relu2_out0);
    CNN_Relu2_final ReLu2_mod1(clk,rst,conv2_post1,relu2_out1);   
    CNN_Relu2_final ReLu2_mod2(clk,rst,conv2_post2,relu2_out2);   
    CNN_Relu2_final ReLu2_mod3(clk,rst,conv2_post3,relu2_out3);   
    CNN_Relu2_final ReLu2_mod4(clk,rst,conv2_post4,relu2_out4);   
    CNN_Relu2_final ReLu2_mod5(clk,rst,conv2_post5,relu2_out5);   
    CNN_Relu2_final ReLu2_mod6(clk,rst,conv2_post6,relu2_out6);   
    CNN_Relu2_final ReLu2_mod7(clk,rst,conv2_post7,relu2_out7);   

   
   
   ///////////////////////////////////////////////////////////////////////////////////////////
                              //MAPPOOLING2   
    ////////////////////////////////////////////////////////////////////////////////////////////   
    
    maxpool2_final_mod max2_0(clk,rst,relu2_out0,max2_out0);
    maxpool2_final_mod max2_1(clk,rst,relu2_out1,max2_out1);
    maxpool2_final_mod max2_2(clk,rst,relu2_out2,max2_out2);
    maxpool2_final_mod max2_3(clk,rst,relu2_out3,max2_out3);
    maxpool2_final_mod max2_4(clk,rst,relu2_out4,max2_out4);  
    maxpool2_final_mod max2_5(clk,rst,relu2_out5,max2_out5);
    maxpool2_final_mod max2_6(clk,rst,relu2_out6,max2_out6);
    maxpool2_final_mod max2_7(clk,rst,relu2_out7,max2_out7);   
        
         
    
    
   ///////////////////////////////////////////////////////////////////////////////////////////
                               //FULLYCONNECTED LAYER1 
     ////////////////////////////////////////////////////////////////////////////////////////////       
    integer m,n;
    matrix_mul200x64 mod_fc1 (clk,rst,fc1_weights_re,{max2_out0,max2_out1,max2_out2,max2_out3,max2_out4,max2_out5,max2_out6,max2_out7}, fc1_results);

/*
always_comb begin
        $write("fc1_results: ");
        foreach (fc1_results[m]) begin
            $write("%d, ", fc1_results[m]);  // Prints on the same line
        end
        $display("");  // Move to a new line after printing all values
    end
    */


   ///////////////////////////////////////////////////////////////////////////////////////////
                                //ReLU3   
    ////////////////////////////////////////////////////////////////////////////////////////////  


 CNN_Relu3_final ReLu3_mod0(clk,rst,fc1_results,fc1_results_relu);
   ///////////////////////////////////////////////////////////////////////////////////////////
                               //FULLYCONNECTED LAYER2
     //////////////////////////////////////////////////////////////////////////////////////////// 
     
     
    matrix_mul64x10 mod_fc2 (clk,rst,fc1_results_relu,fc2_weights_re,fc2_results);
 /* 
    always_comb begin
            foreach (fc2_results[n]) begin
                $display("f2 results :%d", fc2_results[n]);
            end
        end
      */  
      
      
      
      
      
      Argmax Argmax_mod0(clk,rst,fc2_results[0],fc2_results[1],fc2_results[2],fc2_results[3],fc2_results[4],fc2_results[5],fc2_results[6],fc2_results[7],fc2_results[8],fc2_results[9], highest_num,predict);
      
      
      
      
      
      
      
      
      
      
      
      
      
endmodule
