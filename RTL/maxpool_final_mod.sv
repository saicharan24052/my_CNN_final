`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2025 09:42:41 AM
// Design Name: 
// Module Name: maxpool_final_mod
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


module compare_2x2 ( // 19:0 => when there is a signed bit , but [17:0] signed bit  got deleted in ReLu
  input logic clk, rst,
    input logic signed [19:0]a,    // First value
    input logic signed[19:0] b,    // Second value
    input logic signed[19:0]c,    // Third value
    input logic signed[19:0] d,    // Fourth value
    output logic signed [19:0] max   // Output: largest value
);
    logic signed  [19:0] max_val;

  always @(posedge clk) begin
        // Start by assuming the first value is the largest
        max_val = a;

        // Compare with the second value
        if (b > max_val)
            max_val = b;

        // Compare with the third value
        if (c > max_val)
            max_val = c;

        // Compare with the fourth value
        if (d > max_val)
            max_val = d;
    end

    assign max = max_val;

endmodule


module maxpool1_final_mod(
input logic clk,
input logic rst,
input logic signed [19:0] image_pool1[0:675],// 18:0 => when there is a signed bit , but [17:0] signed bit  got deleted in ReLu
output logic signed [19:0] max1_out[0:168]
    );

   compare_2x2 comp1_0 (clk,rst,image_pool1[0],image_pool1[1],image_pool1[26],image_pool1[27],max1_out[0]);
    compare_2x2 comp1_1 (clk,rst,image_pool1[2],image_pool1[3],image_pool1[28],image_pool1[29],max1_out[1]);
    compare_2x2 comp1_2 (clk,rst,image_pool1[4],image_pool1[5],image_pool1[30],image_pool1[31],max1_out[2]);
    compare_2x2 comp1_3 (clk,rst,image_pool1[6],image_pool1[7],image_pool1[32],image_pool1[33],max1_out[3]);
    compare_2x2 comp1_4 (clk,rst,image_pool1[8],image_pool1[9],image_pool1[34],image_pool1[35],max1_out[4]);
    compare_2x2 comp1_5 (clk,rst,image_pool1[10],image_pool1[11],image_pool1[36],image_pool1[37],max1_out[5]);
    compare_2x2 comp1_6 (clk,rst,image_pool1[12],image_pool1[13],image_pool1[38],image_pool1[39],max1_out[6]);
    compare_2x2 comp1_7 (clk,rst,image_pool1[14],image_pool1[15],image_pool1[40],image_pool1[41],max1_out[7]);
    compare_2x2 comp1_8 (clk,rst,image_pool1[16],image_pool1[17],image_pool1[42],image_pool1[43],max1_out[8]);
    compare_2x2 comp1_9 (clk,rst,image_pool1[18],image_pool1[19],image_pool1[44],image_pool1[45],max1_out[9]);
    compare_2x2 comp1_10 (clk,rst,image_pool1[20],image_pool1[21],image_pool1[46],image_pool1[47],max1_out[10]);
    compare_2x2 comp1_11 (clk,rst,image_pool1[22],image_pool1[23],image_pool1[48],image_pool1[49],max1_out[11]);
    compare_2x2 comp1_12 (clk,rst,image_pool1[24],image_pool1[25],image_pool1[50],image_pool1[51],max1_out[12]);
    compare_2x2 comp1_13 (clk,rst,image_pool1[52],image_pool1[53],image_pool1[78],image_pool1[79],max1_out[13]);
    compare_2x2 comp1_14 (clk,rst,image_pool1[54],image_pool1[55],image_pool1[80],image_pool1[81],max1_out[14]);
    compare_2x2 comp1_15 (clk,rst,image_pool1[56],image_pool1[57],image_pool1[82],image_pool1[83],max1_out[15]);
    compare_2x2 comp1_16 (clk,rst,image_pool1[58],image_pool1[59],image_pool1[84],image_pool1[85],max1_out[16]);
    compare_2x2 comp1_17 (clk,rst,image_pool1[60],image_pool1[61],image_pool1[86],image_pool1[87],max1_out[17]);
    compare_2x2 comp1_18 (clk,rst,image_pool1[62],image_pool1[63],image_pool1[88],image_pool1[89],max1_out[18]);
    compare_2x2 comp1_19 (clk,rst,image_pool1[64],image_pool1[65],image_pool1[90],image_pool1[91],max1_out[19]);
    compare_2x2 comp1_20 (clk,rst,image_pool1[66],image_pool1[67],image_pool1[92],image_pool1[93],max1_out[20]);
    compare_2x2 comp1_21 (clk,rst,image_pool1[68],image_pool1[69],image_pool1[94],image_pool1[95],max1_out[21]);
    compare_2x2 comp1_22 (clk,rst,image_pool1[70],image_pool1[71],image_pool1[96],image_pool1[97],max1_out[22]);
    compare_2x2 comp1_23 (clk,rst,image_pool1[72],image_pool1[73],image_pool1[98],image_pool1[99],max1_out[23]);
    compare_2x2 comp1_24 (clk,rst,image_pool1[74],image_pool1[75],image_pool1[100],image_pool1[101],max1_out[24]);
    compare_2x2 comp1_25 (clk,rst,image_pool1[76],image_pool1[77],image_pool1[102],image_pool1[103],max1_out[25]);
    compare_2x2 comp1_26 (clk,rst,image_pool1[104],image_pool1[105],image_pool1[130],image_pool1[131],max1_out[26]);
    compare_2x2 comp1_27 (clk,rst,image_pool1[106],image_pool1[107],image_pool1[132],image_pool1[133],max1_out[27]);
    compare_2x2 comp1_28 (clk,rst,image_pool1[108],image_pool1[109],image_pool1[134],image_pool1[135],max1_out[28]);
    compare_2x2 comp1_29 (clk,rst,image_pool1[110],image_pool1[111],image_pool1[136],image_pool1[137],max1_out[29]);
    compare_2x2 comp1_30 (clk,rst,image_pool1[112],image_pool1[113],image_pool1[138],image_pool1[139],max1_out[30]);
    compare_2x2 comp1_31 (clk,rst,image_pool1[114],image_pool1[115],image_pool1[140],image_pool1[141],max1_out[31]);
    compare_2x2 comp1_32 (clk,rst,image_pool1[116],image_pool1[117],image_pool1[142],image_pool1[143],max1_out[32]);
    compare_2x2 comp1_33 (clk,rst,image_pool1[118],image_pool1[119],image_pool1[144],image_pool1[145],max1_out[33]);
    compare_2x2 comp1_34 (clk,rst,image_pool1[120],image_pool1[121],image_pool1[146],image_pool1[147],max1_out[34]);
    compare_2x2 comp1_35 (clk,rst,image_pool1[122],image_pool1[123],image_pool1[148],image_pool1[149],max1_out[35]);
    compare_2x2 comp1_36 (clk,rst,image_pool1[124],image_pool1[125],image_pool1[150],image_pool1[151],max1_out[36]);
    compare_2x2 comp1_37 (clk,rst,image_pool1[126],image_pool1[127],image_pool1[152],image_pool1[153],max1_out[37]);
    compare_2x2 comp1_38 (clk,rst,image_pool1[128],image_pool1[129],image_pool1[154],image_pool1[155],max1_out[38]);
    compare_2x2 comp1_39 (clk,rst,image_pool1[156],image_pool1[157],image_pool1[182],image_pool1[183],max1_out[39]);
    compare_2x2 comp1_40 (clk,rst,image_pool1[158],image_pool1[159],image_pool1[184],image_pool1[185],max1_out[40]);
    compare_2x2 comp1_41 (clk,rst,image_pool1[160],image_pool1[161],image_pool1[186],image_pool1[187],max1_out[41]);
    compare_2x2 comp1_42 (clk,rst,image_pool1[162],image_pool1[163],image_pool1[188],image_pool1[189],max1_out[42]);
    compare_2x2 comp1_43 (clk,rst,image_pool1[164],image_pool1[165],image_pool1[190],image_pool1[191],max1_out[43]);
    compare_2x2 comp1_44 (clk,rst,image_pool1[166],image_pool1[167],image_pool1[192],image_pool1[193],max1_out[44]);
    compare_2x2 comp1_45 (clk,rst,image_pool1[168],image_pool1[169],image_pool1[194],image_pool1[195],max1_out[45]);
    compare_2x2 comp1_46 (clk,rst,image_pool1[170],image_pool1[171],image_pool1[196],image_pool1[197],max1_out[46]);
    compare_2x2 comp1_47 (clk,rst,image_pool1[172],image_pool1[173],image_pool1[198],image_pool1[199],max1_out[47]);
    compare_2x2 comp1_48 (clk,rst,image_pool1[174],image_pool1[175],image_pool1[200],image_pool1[201],max1_out[48]);
    compare_2x2 comp1_49 (clk,rst,image_pool1[176],image_pool1[177],image_pool1[202],image_pool1[203],max1_out[49]);
    compare_2x2 comp1_50 (clk,rst,image_pool1[178],image_pool1[179],image_pool1[204],image_pool1[205],max1_out[50]);
    compare_2x2 comp1_51 (clk,rst,image_pool1[180],image_pool1[181],image_pool1[206],image_pool1[207],max1_out[51]);
    compare_2x2 comp1_52 (clk,rst,image_pool1[208],image_pool1[209],image_pool1[234],image_pool1[235],max1_out[52]);
    compare_2x2 comp1_53 (clk,rst,image_pool1[210],image_pool1[211],image_pool1[236],image_pool1[237],max1_out[53]);
    compare_2x2 comp1_54 (clk,rst,image_pool1[212],image_pool1[213],image_pool1[238],image_pool1[239],max1_out[54]);
    compare_2x2 comp1_55 (clk,rst,image_pool1[214],image_pool1[215],image_pool1[240],image_pool1[241],max1_out[55]);
    compare_2x2 comp1_56 (clk,rst,image_pool1[216],image_pool1[217],image_pool1[242],image_pool1[243],max1_out[56]);
    compare_2x2 comp1_57 (clk,rst,image_pool1[218],image_pool1[219],image_pool1[244],image_pool1[245],max1_out[57]);
    compare_2x2 comp1_58 (clk,rst,image_pool1[220],image_pool1[221],image_pool1[246],image_pool1[247],max1_out[58]);
    compare_2x2 comp1_59 (clk,rst,image_pool1[222],image_pool1[223],image_pool1[248],image_pool1[249],max1_out[59]);
    compare_2x2 comp1_60 (clk,rst,image_pool1[224],image_pool1[225],image_pool1[250],image_pool1[251],max1_out[60]);
    compare_2x2 comp1_61 (clk,rst,image_pool1[226],image_pool1[227],image_pool1[252],image_pool1[253],max1_out[61]);
    compare_2x2 comp1_62 (clk,rst,image_pool1[228],image_pool1[229],image_pool1[254],image_pool1[255],max1_out[62]);
    compare_2x2 comp1_63 (clk,rst,image_pool1[230],image_pool1[231],image_pool1[256],image_pool1[257],max1_out[63]);
    compare_2x2 comp1_64 (clk,rst,image_pool1[232],image_pool1[233],image_pool1[258],image_pool1[259],max1_out[64]);
    compare_2x2 comp1_65 (clk,rst,image_pool1[260],image_pool1[261],image_pool1[286],image_pool1[287],max1_out[65]);
    compare_2x2 comp1_66 (clk,rst,image_pool1[262],image_pool1[263],image_pool1[288],image_pool1[289],max1_out[66]);
    compare_2x2 comp1_67 (clk,rst,image_pool1[264],image_pool1[265],image_pool1[290],image_pool1[291],max1_out[67]);
    compare_2x2 comp1_68 (clk,rst,image_pool1[266],image_pool1[267],image_pool1[292],image_pool1[293],max1_out[68]);
    compare_2x2 comp1_69 (clk,rst,image_pool1[268],image_pool1[269],image_pool1[294],image_pool1[295],max1_out[69]);
    compare_2x2 comp1_70 (clk,rst,image_pool1[270],image_pool1[271],image_pool1[296],image_pool1[297],max1_out[70]);
    compare_2x2 comp1_71 (clk,rst,image_pool1[272],image_pool1[273],image_pool1[298],image_pool1[299],max1_out[71]);
    compare_2x2 comp1_72 (clk,rst,image_pool1[274],image_pool1[275],image_pool1[300],image_pool1[301],max1_out[72]);
    compare_2x2 comp1_73 (clk,rst,image_pool1[276],image_pool1[277],image_pool1[302],image_pool1[303],max1_out[73]);
    compare_2x2 comp1_74 (clk,rst,image_pool1[278],image_pool1[279],image_pool1[304],image_pool1[305],max1_out[74]);
    compare_2x2 comp1_75 (clk,rst,image_pool1[280],image_pool1[281],image_pool1[306],image_pool1[307],max1_out[75]);
    compare_2x2 comp1_76 (clk,rst,image_pool1[282],image_pool1[283],image_pool1[308],image_pool1[309],max1_out[76]);
    compare_2x2 comp1_77 (clk,rst,image_pool1[284],image_pool1[285],image_pool1[310],image_pool1[311],max1_out[77]);
    compare_2x2 comp1_78 (clk,rst,image_pool1[312],image_pool1[313],image_pool1[338],image_pool1[339],max1_out[78]);
    compare_2x2 comp1_79 (clk,rst,image_pool1[314],image_pool1[315],image_pool1[340],image_pool1[341],max1_out[79]);
    compare_2x2 comp1_80 (clk,rst,image_pool1[316],image_pool1[317],image_pool1[342],image_pool1[343],max1_out[80]);
    compare_2x2 comp1_81 (clk,rst,image_pool1[318],image_pool1[319],image_pool1[344],image_pool1[345],max1_out[81]);
    compare_2x2 comp1_82 (clk,rst,image_pool1[320],image_pool1[321],image_pool1[346],image_pool1[347],max1_out[82]);
    compare_2x2 comp1_83 (clk,rst,image_pool1[322],image_pool1[323],image_pool1[348],image_pool1[349],max1_out[83]);
    compare_2x2 comp1_84 (clk,rst,image_pool1[324],image_pool1[325],image_pool1[350],image_pool1[351],max1_out[84]);
    compare_2x2 comp1_85 (clk,rst,image_pool1[326],image_pool1[327],image_pool1[352],image_pool1[353],max1_out[85]);
    compare_2x2 comp1_86 (clk,rst,image_pool1[328],image_pool1[329],image_pool1[354],image_pool1[355],max1_out[86]);
    compare_2x2 comp1_87 (clk,rst,image_pool1[330],image_pool1[331],image_pool1[356],image_pool1[357],max1_out[87]);
    compare_2x2 comp1_88 (clk,rst,image_pool1[332],image_pool1[333],image_pool1[358],image_pool1[359],max1_out[88]);
    compare_2x2 comp1_89 (clk,rst,image_pool1[334],image_pool1[335],image_pool1[360],image_pool1[361],max1_out[89]);
    compare_2x2 comp1_90 (clk,rst,image_pool1[336],image_pool1[337],image_pool1[362],image_pool1[363],max1_out[90]);
    compare_2x2 comp1_91 (clk,rst,image_pool1[364],image_pool1[365],image_pool1[390],image_pool1[391],max1_out[91]);
    compare_2x2 comp1_92 (clk,rst,image_pool1[366],image_pool1[367],image_pool1[392],image_pool1[393],max1_out[92]);
    compare_2x2 comp1_93 (clk,rst,image_pool1[368],image_pool1[369],image_pool1[394],image_pool1[395],max1_out[93]);
    compare_2x2 comp1_94 (clk,rst,image_pool1[370],image_pool1[371],image_pool1[396],image_pool1[397],max1_out[94]);
    compare_2x2 comp1_95 (clk,rst,image_pool1[372],image_pool1[373],image_pool1[398],image_pool1[399],max1_out[95]);
    compare_2x2 comp1_96 (clk,rst,image_pool1[374],image_pool1[375],image_pool1[400],image_pool1[401],max1_out[96]);
    compare_2x2 comp1_97 (clk,rst,image_pool1[376],image_pool1[377],image_pool1[402],image_pool1[403],max1_out[97]);
    compare_2x2 comp1_98 (clk,rst,image_pool1[378],image_pool1[379],image_pool1[404],image_pool1[405],max1_out[98]);
    compare_2x2 comp1_99 (clk,rst,image_pool1[380],image_pool1[381],image_pool1[406],image_pool1[407],max1_out[99]);
    compare_2x2 comp1_100 (clk,rst,image_pool1[382],image_pool1[383],image_pool1[408],image_pool1[409],max1_out[100]);
    compare_2x2 comp1_101 (clk,rst,image_pool1[384],image_pool1[385],image_pool1[410],image_pool1[411],max1_out[101]);
    compare_2x2 comp1_102 (clk,rst,image_pool1[386],image_pool1[387],image_pool1[412],image_pool1[413],max1_out[102]);
    compare_2x2 comp1_103 (clk,rst,image_pool1[388],image_pool1[389],image_pool1[414],image_pool1[415],max1_out[103]);
    compare_2x2 comp1_104 (clk,rst,image_pool1[416],image_pool1[417],image_pool1[442],image_pool1[443],max1_out[104]);
    compare_2x2 comp1_105 (clk,rst,image_pool1[418],image_pool1[419],image_pool1[444],image_pool1[445],max1_out[105]);
    compare_2x2 comp1_106 (clk,rst,image_pool1[420],image_pool1[421],image_pool1[446],image_pool1[447],max1_out[106]);
    compare_2x2 comp1_107 (clk,rst,image_pool1[422],image_pool1[423],image_pool1[448],image_pool1[449],max1_out[107]);
    compare_2x2 comp1_108 (clk,rst,image_pool1[424],image_pool1[425],image_pool1[450],image_pool1[451],max1_out[108]);
    compare_2x2 comp1_109 (clk,rst,image_pool1[426],image_pool1[427],image_pool1[452],image_pool1[453],max1_out[109]);
    compare_2x2 comp1_110 (clk,rst,image_pool1[428],image_pool1[429],image_pool1[454],image_pool1[455],max1_out[110]);
    compare_2x2 comp1_111 (clk,rst,image_pool1[430],image_pool1[431],image_pool1[456],image_pool1[457],max1_out[111]);
    compare_2x2 comp1_112 (clk,rst,image_pool1[432],image_pool1[433],image_pool1[458],image_pool1[459],max1_out[112]);
    compare_2x2 comp1_113 (clk,rst,image_pool1[434],image_pool1[435],image_pool1[460],image_pool1[461],max1_out[113]);
    compare_2x2 comp1_114 (clk,rst,image_pool1[436],image_pool1[437],image_pool1[462],image_pool1[463],max1_out[114]);
    compare_2x2 comp1_115 (clk,rst,image_pool1[438],image_pool1[439],image_pool1[464],image_pool1[465],max1_out[115]);
    compare_2x2 comp1_116 (clk,rst,image_pool1[440],image_pool1[441],image_pool1[466],image_pool1[467],max1_out[116]);
    compare_2x2 comp1_117 (clk,rst,image_pool1[468],image_pool1[469],image_pool1[494],image_pool1[495],max1_out[117]);
    compare_2x2 comp1_118 (clk,rst,image_pool1[470],image_pool1[471],image_pool1[496],image_pool1[497],max1_out[118]);
    compare_2x2 comp1_119 (clk,rst,image_pool1[472],image_pool1[473],image_pool1[498],image_pool1[499],max1_out[119]);
    compare_2x2 comp1_120 (clk,rst,image_pool1[474],image_pool1[475],image_pool1[500],image_pool1[501],max1_out[120]);
    compare_2x2 comp1_121 (clk,rst,image_pool1[476],image_pool1[477],image_pool1[502],image_pool1[503],max1_out[121]);
    compare_2x2 comp1_122 (clk,rst,image_pool1[478],image_pool1[479],image_pool1[504],image_pool1[505],max1_out[122]);
    compare_2x2 comp1_123 (clk,rst,image_pool1[480],image_pool1[481],image_pool1[506],image_pool1[507],max1_out[123]);
    compare_2x2 comp1_124 (clk,rst,image_pool1[482],image_pool1[483],image_pool1[508],image_pool1[509],max1_out[124]);
    compare_2x2 comp1_125 (clk,rst,image_pool1[484],image_pool1[485],image_pool1[510],image_pool1[511],max1_out[125]);
    compare_2x2 comp1_126 (clk,rst,image_pool1[486],image_pool1[487],image_pool1[512],image_pool1[513],max1_out[126]);
    compare_2x2 comp1_127 (clk,rst,image_pool1[488],image_pool1[489],image_pool1[514],image_pool1[515],max1_out[127]);
    compare_2x2 comp1_128 (clk,rst,image_pool1[490],image_pool1[491],image_pool1[516],image_pool1[517],max1_out[128]);
    compare_2x2 comp1_129 (clk,rst,image_pool1[492],image_pool1[493],image_pool1[518],image_pool1[519],max1_out[129]);
    compare_2x2 comp1_130 (clk,rst,image_pool1[520],image_pool1[521],image_pool1[546],image_pool1[547],max1_out[130]);
    compare_2x2 comp1_131 (clk,rst,image_pool1[522],image_pool1[523],image_pool1[548],image_pool1[549],max1_out[131]);
    compare_2x2 comp1_132 (clk,rst,image_pool1[524],image_pool1[525],image_pool1[550],image_pool1[551],max1_out[132]);
    compare_2x2 comp1_133 (clk,rst,image_pool1[526],image_pool1[527],image_pool1[552],image_pool1[553],max1_out[133]);
    compare_2x2 comp1_134 (clk,rst,image_pool1[528],image_pool1[529],image_pool1[554],image_pool1[555],max1_out[134]);
    compare_2x2 comp1_135 (clk,rst,image_pool1[530],image_pool1[531],image_pool1[556],image_pool1[557],max1_out[135]);
    compare_2x2 comp1_136 (clk,rst,image_pool1[532],image_pool1[533],image_pool1[558],image_pool1[559],max1_out[136]);
    compare_2x2 comp1_137 (clk,rst,image_pool1[534],image_pool1[535],image_pool1[560],image_pool1[561],max1_out[137]);
    compare_2x2 comp1_138 (clk,rst,image_pool1[536],image_pool1[537],image_pool1[562],image_pool1[563],max1_out[138]);
    compare_2x2 comp1_139 (clk,rst,image_pool1[538],image_pool1[539],image_pool1[564],image_pool1[565],max1_out[139]);
    compare_2x2 comp1_140 (clk,rst,image_pool1[540],image_pool1[541],image_pool1[566],image_pool1[567],max1_out[140]);
    compare_2x2 comp1_141 (clk,rst,image_pool1[542],image_pool1[543],image_pool1[568],image_pool1[569],max1_out[141]);
    compare_2x2 comp1_142 (clk,rst,image_pool1[544],image_pool1[545],image_pool1[570],image_pool1[571],max1_out[142]);
    compare_2x2 comp1_143 (clk,rst,image_pool1[572],image_pool1[573],image_pool1[598],image_pool1[599],max1_out[143]);
    compare_2x2 comp1_144 (clk,rst,image_pool1[574],image_pool1[575],image_pool1[600],image_pool1[601],max1_out[144]);
    compare_2x2 comp1_145 (clk,rst,image_pool1[576],image_pool1[577],image_pool1[602],image_pool1[603],max1_out[145]);
    compare_2x2 comp1_146 (clk,rst,image_pool1[578],image_pool1[579],image_pool1[604],image_pool1[605],max1_out[146]);
    compare_2x2 comp1_147 (clk,rst,image_pool1[580],image_pool1[581],image_pool1[606],image_pool1[607],max1_out[147]);
    compare_2x2 comp1_148 (clk,rst,image_pool1[582],image_pool1[583],image_pool1[608],image_pool1[609],max1_out[148]);
    compare_2x2 comp1_149 (clk,rst,image_pool1[584],image_pool1[585],image_pool1[610],image_pool1[611],max1_out[149]);
    compare_2x2 comp1_150 (clk,rst,image_pool1[586],image_pool1[587],image_pool1[612],image_pool1[613],max1_out[150]);
    compare_2x2 comp1_151 (clk,rst,image_pool1[588],image_pool1[589],image_pool1[614],image_pool1[615],max1_out[151]);
    compare_2x2 comp1_152 (clk,rst,image_pool1[590],image_pool1[591],image_pool1[616],image_pool1[617],max1_out[152]);
    compare_2x2 comp1_153 (clk,rst,image_pool1[592],image_pool1[593],image_pool1[618],image_pool1[619],max1_out[153]);
    compare_2x2 comp1_154 (clk,rst,image_pool1[594],image_pool1[595],image_pool1[620],image_pool1[621],max1_out[154]);
    compare_2x2 comp1_155 (clk,rst,image_pool1[596],image_pool1[597],image_pool1[622],image_pool1[623],max1_out[155]);
    compare_2x2 comp1_156 (clk,rst,image_pool1[624],image_pool1[625],image_pool1[650],image_pool1[651],max1_out[156]);
    compare_2x2 comp1_157 (clk,rst,image_pool1[626],image_pool1[627],image_pool1[652],image_pool1[653],max1_out[157]);
    compare_2x2 comp1_158 (clk,rst,image_pool1[628],image_pool1[629],image_pool1[654],image_pool1[655],max1_out[158]);
    compare_2x2 comp1_159 (clk,rst,image_pool1[630],image_pool1[631],image_pool1[656],image_pool1[657],max1_out[159]);
    compare_2x2 comp1_160 (clk,rst,image_pool1[632],image_pool1[633],image_pool1[658],image_pool1[659],max1_out[160]);
    compare_2x2 comp1_161 (clk,rst,image_pool1[634],image_pool1[635],image_pool1[660],image_pool1[661],max1_out[161]);
    compare_2x2 comp1_162 (clk,rst,image_pool1[636],image_pool1[637],image_pool1[662],image_pool1[663],max1_out[162]);
    compare_2x2 comp1_163 (clk,rst,image_pool1[638],image_pool1[639],image_pool1[664],image_pool1[665],max1_out[163]);
    compare_2x2 comp1_164 (clk,rst,image_pool1[640],image_pool1[641],image_pool1[666],image_pool1[667],max1_out[164]);
    compare_2x2 comp1_165 (clk,rst,image_pool1[642],image_pool1[643],image_pool1[668],image_pool1[669],max1_out[165]);
    compare_2x2 comp1_166 (clk,rst,image_pool1[644],image_pool1[645],image_pool1[670],image_pool1[671],max1_out[166]);
    compare_2x2 comp1_167 (clk,rst,image_pool1[646],image_pool1[647],image_pool1[672],image_pool1[673],max1_out[167]);
    compare_2x2 comp1_168 (clk,rst,image_pool1[648],image_pool1[649],image_pool1[674],image_pool1[675],max1_out[168]);   
    
    
    /*
    #include <stdio.h>
    
    int main() 
    {
         int k = 0;
       int l = 0;
       int d = 0;
        // Write C code here
        //stride 2 => j=j+2 , i=i+2 stride =>1 j++,i++
        
        for (int j =0; j<630; j=j+52){
        for(int i = 0; i<26; i=i+2) {
            k = 0;
        
    printf("compare_2x2 comp1_%d (clk,rst,image_pool1[%d],image_pool1[%d],image_pool1[%d],image_pool1[%d],max1_out[%d]);\n",d, i+j,i+j+1,i+j+26,i+j+26+1,d);
        k++;
       
        d =d +1;
        
    
       
         l++;
        }
    }
        return 0;
    
    }
    
    */
    
endmodule
