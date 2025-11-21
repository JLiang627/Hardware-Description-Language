// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Nov 19 12:52:09 2025
// Host        : DESKTOP-EBUR9LD running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/airlab/Documents/HDL/HW_4/VivadoUsed/HW4/HW4.sim/sim_1/impl/func/xsim/HDL_HW4_TB_func_impl.v
// Design      : Edge
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "977283cf" *) (* THRESHOLD = "125" *) 
(* NotValidForBitStream *)
module Edge
   (clk,
    rst,
    R,
    G,
    B,
    edge_x,
    edge_y);
  input clk;
  input rst;
  input [7:0]R;
  input [7:0]G;
  input [7:0]B;
  output [7:0]edge_x;
  output [7:0]edge_y;

  wire [7:0]B;
  wire [7:3]B_IBUF;
  wire [7:0]G;
  wire [7:1]G_IBUF;
  wire [10:0]Gx_calc;
  wire [9:0]Gx_calc0;
  wire [8:1]Gx_calc2;
  wire [10:0]Gy_calc;
  wire [9:0]Gy_calc0;
  wire [8:1]Gy_calc2;
  wire [7:0]R;
  wire [7:0]R0;
  wire [7:0]R1;
  wire [7:0]R2;
  wire [7:0]R4;
  wire [7:0]R5;
  wire [7:0]R6;
  wire [7:0]R8;
  wire \R8[3]_i_10_n_0 ;
  wire \R8[3]_i_11_n_0 ;
  wire \R8[3]_i_12_n_0 ;
  wire \R8[3]_i_2_n_0 ;
  wire \R8[3]_i_3_n_0 ;
  wire \R8[3]_i_4_n_0 ;
  wire \R8[3]_i_5_n_0 ;
  wire \R8[3]_i_6_n_0 ;
  wire \R8[3]_i_7_n_0 ;
  wire \R8[3]_i_8_n_0 ;
  wire \R8[3]_i_9_n_0 ;
  wire \R8[7]_i_11_n_0 ;
  wire \R8[7]_i_12_n_0 ;
  wire \R8[7]_i_13_n_0 ;
  wire \R8[7]_i_14_n_0 ;
  wire \R8[7]_i_15_n_0 ;
  wire \R8[7]_i_16_n_0 ;
  wire \R8[7]_i_17_n_0 ;
  wire \R8[7]_i_18_n_0 ;
  wire \R8[7]_i_19_n_0 ;
  wire \R8[7]_i_20_n_0 ;
  wire \R8[7]_i_21_n_0 ;
  wire \R8[7]_i_22_n_0 ;
  wire \R8[7]_i_23_n_0 ;
  wire \R8[7]_i_2_n_0 ;
  wire \R8[7]_i_3_n_0 ;
  wire \R8[7]_i_4_n_0 ;
  wire \R8[7]_i_5_n_0 ;
  wire \R8[7]_i_6_n_0 ;
  wire \R8[7]_i_7_n_0 ;
  wire \R8[7]_i_8_n_0 ;
  wire \R8_reg[3]_i_1_n_0 ;
  wire \R8_reg[7]_i_10_n_0 ;
  wire \R8_reg[7]_i_10_n_4 ;
  wire \R8_reg[7]_i_10_n_5 ;
  wire \R8_reg[7]_i_10_n_6 ;
  wire \R8_reg[7]_i_10_n_7 ;
  wire \R8_reg[7]_i_9_n_0 ;
  wire \R8_reg[7]_i_9_n_5 ;
  wire \R8_reg[7]_i_9_n_6 ;
  wire \R8_reg[7]_i_9_n_7 ;
  wire [7:2]R_IBUF;
  wire [7:0]Y_calc;
  wire \buf1_reg[159][0]_srl32_buf1_reg_c_158_n_1 ;
  wire \buf1_reg[159][1]_srl32_buf1_reg_c_158_n_1 ;
  wire \buf1_reg[159][2]_srl32_buf1_reg_c_158_n_1 ;
  wire \buf1_reg[159][3]_srl32_buf1_reg_c_158_n_1 ;
  wire \buf1_reg[159][4]_srl32_buf1_reg_c_158_n_1 ;
  wire \buf1_reg[159][5]_srl32_buf1_reg_c_158_n_1 ;
  wire \buf1_reg[159][6]_srl32_buf1_reg_c_158_n_1 ;
  wire \buf1_reg[159][7]_srl32_buf1_reg_c_158_n_1 ;
  wire \buf1_reg[191][0]_srl32_buf1_reg_c_190_n_1 ;
  wire \buf1_reg[191][1]_srl32_buf1_reg_c_190_n_1 ;
  wire \buf1_reg[191][2]_srl32_buf1_reg_c_190_n_1 ;
  wire \buf1_reg[191][3]_srl32_buf1_reg_c_190_n_1 ;
  wire \buf1_reg[191][4]_srl32_buf1_reg_c_190_n_1 ;
  wire \buf1_reg[191][5]_srl32_buf1_reg_c_190_n_1 ;
  wire \buf1_reg[191][6]_srl32_buf1_reg_c_190_n_1 ;
  wire \buf1_reg[191][7]_srl32_buf1_reg_c_190_n_1 ;
  wire \buf1_reg[223][0]_srl32_buf1_reg_c_222_n_1 ;
  wire \buf1_reg[223][1]_srl32_buf1_reg_c_222_n_1 ;
  wire \buf1_reg[223][2]_srl32_buf1_reg_c_222_n_1 ;
  wire \buf1_reg[223][3]_srl32_buf1_reg_c_222_n_1 ;
  wire \buf1_reg[223][4]_srl32_buf1_reg_c_222_n_1 ;
  wire \buf1_reg[223][5]_srl32_buf1_reg_c_222_n_1 ;
  wire \buf1_reg[223][6]_srl32_buf1_reg_c_222_n_1 ;
  wire \buf1_reg[223][7]_srl32_buf1_reg_c_222_n_1 ;
  wire \buf1_reg[287][0]_srl32_buf1_reg_c_286_n_1 ;
  wire \buf1_reg[287][1]_srl32_buf1_reg_c_286_n_1 ;
  wire \buf1_reg[287][2]_srl32_buf1_reg_c_286_n_1 ;
  wire \buf1_reg[287][3]_srl32_buf1_reg_c_286_n_1 ;
  wire \buf1_reg[287][4]_srl32_buf1_reg_c_286_n_1 ;
  wire \buf1_reg[287][5]_srl32_buf1_reg_c_286_n_1 ;
  wire \buf1_reg[287][6]_srl32_buf1_reg_c_286_n_1 ;
  wire \buf1_reg[287][7]_srl32_buf1_reg_c_286_n_1 ;
  wire \buf1_reg[319][0]_srl32_buf1_reg_c_318_n_1 ;
  wire \buf1_reg[319][1]_srl32_buf1_reg_c_318_n_1 ;
  wire \buf1_reg[319][2]_srl32_buf1_reg_c_318_n_1 ;
  wire \buf1_reg[319][3]_srl32_buf1_reg_c_318_n_1 ;
  wire \buf1_reg[319][4]_srl32_buf1_reg_c_318_n_1 ;
  wire \buf1_reg[319][5]_srl32_buf1_reg_c_318_n_1 ;
  wire \buf1_reg[319][6]_srl32_buf1_reg_c_318_n_1 ;
  wire \buf1_reg[319][7]_srl32_buf1_reg_c_318_n_1 ;
  wire \buf1_reg[31][0]_srl32_buf1_reg_c_30_n_1 ;
  wire \buf1_reg[31][1]_srl32_buf1_reg_c_30_n_1 ;
  wire \buf1_reg[31][2]_srl32_buf1_reg_c_30_n_1 ;
  wire \buf1_reg[31][3]_srl32_buf1_reg_c_30_n_1 ;
  wire \buf1_reg[31][4]_srl32_buf1_reg_c_30_n_1 ;
  wire \buf1_reg[31][5]_srl32_buf1_reg_c_30_n_1 ;
  wire \buf1_reg[31][6]_srl32_buf1_reg_c_30_n_1 ;
  wire \buf1_reg[31][7]_srl32_buf1_reg_c_30_n_1 ;
  wire \buf1_reg[351][0]_srl32_buf1_reg_c_350_n_1 ;
  wire \buf1_reg[351][1]_srl32_buf1_reg_c_350_n_1 ;
  wire \buf1_reg[351][2]_srl32_buf1_reg_c_350_n_1 ;
  wire \buf1_reg[351][3]_srl32_buf1_reg_c_350_n_1 ;
  wire \buf1_reg[351][4]_srl32_buf1_reg_c_350_n_1 ;
  wire \buf1_reg[351][5]_srl32_buf1_reg_c_350_n_1 ;
  wire \buf1_reg[351][6]_srl32_buf1_reg_c_350_n_1 ;
  wire \buf1_reg[351][7]_srl32_buf1_reg_c_350_n_1 ;
  wire \buf1_reg[415][0]_srl32_buf1_reg_c_414_n_1 ;
  wire \buf1_reg[415][1]_srl32_buf1_reg_c_414_n_1 ;
  wire \buf1_reg[415][2]_srl32_buf1_reg_c_414_n_1 ;
  wire \buf1_reg[415][3]_srl32_buf1_reg_c_414_n_1 ;
  wire \buf1_reg[415][4]_srl32_buf1_reg_c_414_n_1 ;
  wire \buf1_reg[415][5]_srl32_buf1_reg_c_414_n_1 ;
  wire \buf1_reg[415][6]_srl32_buf1_reg_c_414_n_1 ;
  wire \buf1_reg[415][7]_srl32_buf1_reg_c_414_n_1 ;
  wire \buf1_reg[447][0]_srl32_buf1_reg_c_446_n_1 ;
  wire \buf1_reg[447][1]_srl32_buf1_reg_c_446_n_1 ;
  wire \buf1_reg[447][2]_srl32_buf1_reg_c_446_n_1 ;
  wire \buf1_reg[447][3]_srl32_buf1_reg_c_446_n_1 ;
  wire \buf1_reg[447][4]_srl32_buf1_reg_c_446_n_1 ;
  wire \buf1_reg[447][5]_srl32_buf1_reg_c_446_n_1 ;
  wire \buf1_reg[447][6]_srl32_buf1_reg_c_446_n_1 ;
  wire \buf1_reg[447][7]_srl32_buf1_reg_c_446_n_1 ;
  wire \buf1_reg[477][0]_srl30_buf1_reg_c_476_n_0 ;
  wire \buf1_reg[477][1]_srl30_buf1_reg_c_476_n_0 ;
  wire \buf1_reg[477][2]_srl30_buf1_reg_c_476_n_0 ;
  wire \buf1_reg[477][3]_srl30_buf1_reg_c_476_n_0 ;
  wire \buf1_reg[477][4]_srl30_buf1_reg_c_476_n_0 ;
  wire \buf1_reg[477][5]_srl30_buf1_reg_c_476_n_0 ;
  wire \buf1_reg[477][6]_srl30_buf1_reg_c_476_n_0 ;
  wire \buf1_reg[477][7]_srl30_buf1_reg_c_476_n_0 ;
  wire \buf1_reg[478][0]_buf1_reg_c_477_n_0 ;
  wire \buf1_reg[478][1]_buf1_reg_c_477_n_0 ;
  wire \buf1_reg[478][2]_buf1_reg_c_477_n_0 ;
  wire \buf1_reg[478][3]_buf1_reg_c_477_n_0 ;
  wire \buf1_reg[478][4]_buf1_reg_c_477_n_0 ;
  wire \buf1_reg[478][5]_buf1_reg_c_477_n_0 ;
  wire \buf1_reg[478][6]_buf1_reg_c_477_n_0 ;
  wire \buf1_reg[478][7]_buf1_reg_c_477_n_0 ;
  wire \buf1_reg[63][0]_srl32_buf1_reg_c_62_n_1 ;
  wire \buf1_reg[63][1]_srl32_buf1_reg_c_62_n_1 ;
  wire \buf1_reg[63][2]_srl32_buf1_reg_c_62_n_1 ;
  wire \buf1_reg[63][3]_srl32_buf1_reg_c_62_n_1 ;
  wire \buf1_reg[63][4]_srl32_buf1_reg_c_62_n_1 ;
  wire \buf1_reg[63][5]_srl32_buf1_reg_c_62_n_1 ;
  wire \buf1_reg[63][6]_srl32_buf1_reg_c_62_n_1 ;
  wire \buf1_reg[63][7]_srl32_buf1_reg_c_62_n_1 ;
  wire \buf1_reg[95][0]_srl32_buf1_reg_c_94_n_1 ;
  wire \buf1_reg[95][1]_srl32_buf1_reg_c_94_n_1 ;
  wire \buf1_reg[95][2]_srl32_buf1_reg_c_94_n_1 ;
  wire \buf1_reg[95][3]_srl32_buf1_reg_c_94_n_1 ;
  wire \buf1_reg[95][4]_srl32_buf1_reg_c_94_n_1 ;
  wire \buf1_reg[95][5]_srl32_buf1_reg_c_94_n_1 ;
  wire \buf1_reg[95][6]_srl32_buf1_reg_c_94_n_1 ;
  wire \buf1_reg[95][7]_srl32_buf1_reg_c_94_n_1 ;
  wire buf1_reg_c_0_n_0;
  wire buf1_reg_c_100_n_0;
  wire buf1_reg_c_101_n_0;
  wire buf1_reg_c_102_n_0;
  wire buf1_reg_c_103_n_0;
  wire buf1_reg_c_104_n_0;
  wire buf1_reg_c_105_n_0;
  wire buf1_reg_c_106_n_0;
  wire buf1_reg_c_107_n_0;
  wire buf1_reg_c_108_n_0;
  wire buf1_reg_c_109_n_0;
  wire buf1_reg_c_10_n_0;
  wire buf1_reg_c_110_n_0;
  wire buf1_reg_c_111_n_0;
  wire buf1_reg_c_112_n_0;
  wire buf1_reg_c_113_n_0;
  wire buf1_reg_c_114_n_0;
  wire buf1_reg_c_115_n_0;
  wire buf1_reg_c_116_n_0;
  wire buf1_reg_c_117_n_0;
  wire buf1_reg_c_118_n_0;
  wire buf1_reg_c_119_n_0;
  wire buf1_reg_c_11_n_0;
  wire buf1_reg_c_120_n_0;
  wire buf1_reg_c_121_n_0;
  wire buf1_reg_c_122_n_0;
  wire buf1_reg_c_123_n_0;
  wire buf1_reg_c_124_n_0;
  wire buf1_reg_c_125_n_0;
  wire buf1_reg_c_126_n_0;
  wire buf1_reg_c_127_n_0;
  wire buf1_reg_c_128_n_0;
  wire buf1_reg_c_129_n_0;
  wire buf1_reg_c_12_n_0;
  wire buf1_reg_c_130_n_0;
  wire buf1_reg_c_131_n_0;
  wire buf1_reg_c_132_n_0;
  wire buf1_reg_c_133_n_0;
  wire buf1_reg_c_134_n_0;
  wire buf1_reg_c_135_n_0;
  wire buf1_reg_c_136_n_0;
  wire buf1_reg_c_137_n_0;
  wire buf1_reg_c_138_n_0;
  wire buf1_reg_c_139_n_0;
  wire buf1_reg_c_13_n_0;
  wire buf1_reg_c_140_n_0;
  wire buf1_reg_c_141_n_0;
  wire buf1_reg_c_142_n_0;
  wire buf1_reg_c_143_n_0;
  wire buf1_reg_c_144_n_0;
  wire buf1_reg_c_145_n_0;
  wire buf1_reg_c_146_n_0;
  wire buf1_reg_c_147_n_0;
  wire buf1_reg_c_148_n_0;
  wire buf1_reg_c_149_n_0;
  wire buf1_reg_c_14_n_0;
  wire buf1_reg_c_150_n_0;
  wire buf1_reg_c_151_n_0;
  wire buf1_reg_c_152_n_0;
  wire buf1_reg_c_153_n_0;
  wire buf1_reg_c_154_n_0;
  wire buf1_reg_c_155_n_0;
  wire buf1_reg_c_156_n_0;
  wire buf1_reg_c_157_n_0;
  wire buf1_reg_c_158_n_0;
  wire buf1_reg_c_159_n_0;
  wire buf1_reg_c_15_n_0;
  wire buf1_reg_c_160_n_0;
  wire buf1_reg_c_161_n_0;
  wire buf1_reg_c_162_n_0;
  wire buf1_reg_c_163_n_0;
  wire buf1_reg_c_164_n_0;
  wire buf1_reg_c_165_n_0;
  wire buf1_reg_c_166_n_0;
  wire buf1_reg_c_167_n_0;
  wire buf1_reg_c_168_n_0;
  wire buf1_reg_c_169_n_0;
  wire buf1_reg_c_16_n_0;
  wire buf1_reg_c_170_n_0;
  wire buf1_reg_c_171_n_0;
  wire buf1_reg_c_172_n_0;
  wire buf1_reg_c_173_n_0;
  wire buf1_reg_c_174_n_0;
  wire buf1_reg_c_175_n_0;
  wire buf1_reg_c_176_n_0;
  wire buf1_reg_c_177_n_0;
  wire buf1_reg_c_178_n_0;
  wire buf1_reg_c_179_n_0;
  wire buf1_reg_c_17_n_0;
  wire buf1_reg_c_180_n_0;
  wire buf1_reg_c_181_n_0;
  wire buf1_reg_c_182_n_0;
  wire buf1_reg_c_183_n_0;
  wire buf1_reg_c_184_n_0;
  wire buf1_reg_c_185_n_0;
  wire buf1_reg_c_186_n_0;
  wire buf1_reg_c_187_n_0;
  wire buf1_reg_c_188_n_0;
  wire buf1_reg_c_189_n_0;
  wire buf1_reg_c_18_n_0;
  wire buf1_reg_c_190_n_0;
  wire buf1_reg_c_191_n_0;
  wire buf1_reg_c_192_n_0;
  wire buf1_reg_c_193_n_0;
  wire buf1_reg_c_194_n_0;
  wire buf1_reg_c_195_n_0;
  wire buf1_reg_c_196_n_0;
  wire buf1_reg_c_197_n_0;
  wire buf1_reg_c_198_n_0;
  wire buf1_reg_c_199_n_0;
  wire buf1_reg_c_19_n_0;
  wire buf1_reg_c_1_n_0;
  wire buf1_reg_c_200_n_0;
  wire buf1_reg_c_201_n_0;
  wire buf1_reg_c_202_n_0;
  wire buf1_reg_c_203_n_0;
  wire buf1_reg_c_204_n_0;
  wire buf1_reg_c_205_n_0;
  wire buf1_reg_c_206_n_0;
  wire buf1_reg_c_207_n_0;
  wire buf1_reg_c_208_n_0;
  wire buf1_reg_c_209_n_0;
  wire buf1_reg_c_20_n_0;
  wire buf1_reg_c_210_n_0;
  wire buf1_reg_c_211_n_0;
  wire buf1_reg_c_212_n_0;
  wire buf1_reg_c_213_n_0;
  wire buf1_reg_c_214_n_0;
  wire buf1_reg_c_215_n_0;
  wire buf1_reg_c_216_n_0;
  wire buf1_reg_c_217_n_0;
  wire buf1_reg_c_218_n_0;
  wire buf1_reg_c_219_n_0;
  wire buf1_reg_c_21_n_0;
  wire buf1_reg_c_220_n_0;
  wire buf1_reg_c_221_n_0;
  wire buf1_reg_c_222_n_0;
  wire buf1_reg_c_223_n_0;
  wire buf1_reg_c_224_n_0;
  wire buf1_reg_c_225_n_0;
  wire buf1_reg_c_226_n_0;
  wire buf1_reg_c_227_n_0;
  wire buf1_reg_c_228_n_0;
  wire buf1_reg_c_229_n_0;
  wire buf1_reg_c_22_n_0;
  wire buf1_reg_c_230_n_0;
  wire buf1_reg_c_231_n_0;
  wire buf1_reg_c_232_n_0;
  wire buf1_reg_c_233_n_0;
  wire buf1_reg_c_234_n_0;
  wire buf1_reg_c_235_n_0;
  wire buf1_reg_c_236_n_0;
  wire buf1_reg_c_237_n_0;
  wire buf1_reg_c_238_n_0;
  wire buf1_reg_c_239_n_0;
  wire buf1_reg_c_23_n_0;
  wire buf1_reg_c_240_n_0;
  wire buf1_reg_c_241_n_0;
  wire buf1_reg_c_242_n_0;
  wire buf1_reg_c_243_n_0;
  wire buf1_reg_c_244_n_0;
  wire buf1_reg_c_245_n_0;
  wire buf1_reg_c_246_n_0;
  wire buf1_reg_c_247_n_0;
  wire buf1_reg_c_248_n_0;
  wire buf1_reg_c_249_n_0;
  wire buf1_reg_c_24_n_0;
  wire buf1_reg_c_250_n_0;
  wire buf1_reg_c_251_n_0;
  wire buf1_reg_c_252_n_0;
  wire buf1_reg_c_253_n_0;
  wire buf1_reg_c_254_n_0;
  wire buf1_reg_c_255_n_0;
  wire buf1_reg_c_256_n_0;
  wire buf1_reg_c_257_n_0;
  wire buf1_reg_c_258_n_0;
  wire buf1_reg_c_259_n_0;
  wire buf1_reg_c_25_n_0;
  wire buf1_reg_c_260_n_0;
  wire buf1_reg_c_261_n_0;
  wire buf1_reg_c_262_n_0;
  wire buf1_reg_c_263_n_0;
  wire buf1_reg_c_264_n_0;
  wire buf1_reg_c_265_n_0;
  wire buf1_reg_c_266_n_0;
  wire buf1_reg_c_267_n_0;
  wire buf1_reg_c_268_n_0;
  wire buf1_reg_c_269_n_0;
  wire buf1_reg_c_26_n_0;
  wire buf1_reg_c_270_n_0;
  wire buf1_reg_c_271_n_0;
  wire buf1_reg_c_272_n_0;
  wire buf1_reg_c_273_n_0;
  wire buf1_reg_c_274_n_0;
  wire buf1_reg_c_275_n_0;
  wire buf1_reg_c_276_n_0;
  wire buf1_reg_c_277_n_0;
  wire buf1_reg_c_278_n_0;
  wire buf1_reg_c_279_n_0;
  wire buf1_reg_c_27_n_0;
  wire buf1_reg_c_280_n_0;
  wire buf1_reg_c_281_n_0;
  wire buf1_reg_c_282_n_0;
  wire buf1_reg_c_283_n_0;
  wire buf1_reg_c_284_n_0;
  wire buf1_reg_c_285_n_0;
  wire buf1_reg_c_286_n_0;
  wire buf1_reg_c_287_n_0;
  wire buf1_reg_c_288_n_0;
  wire buf1_reg_c_289_n_0;
  wire buf1_reg_c_28_n_0;
  wire buf1_reg_c_290_n_0;
  wire buf1_reg_c_291_n_0;
  wire buf1_reg_c_292_n_0;
  wire buf1_reg_c_293_n_0;
  wire buf1_reg_c_294_n_0;
  wire buf1_reg_c_295_n_0;
  wire buf1_reg_c_296_n_0;
  wire buf1_reg_c_297_n_0;
  wire buf1_reg_c_298_n_0;
  wire buf1_reg_c_299_n_0;
  wire buf1_reg_c_29_n_0;
  wire buf1_reg_c_2_n_0;
  wire buf1_reg_c_300_n_0;
  wire buf1_reg_c_301_n_0;
  wire buf1_reg_c_302_n_0;
  wire buf1_reg_c_303_n_0;
  wire buf1_reg_c_304_n_0;
  wire buf1_reg_c_305_n_0;
  wire buf1_reg_c_306_n_0;
  wire buf1_reg_c_307_n_0;
  wire buf1_reg_c_308_n_0;
  wire buf1_reg_c_309_n_0;
  wire buf1_reg_c_30_n_0;
  wire buf1_reg_c_310_n_0;
  wire buf1_reg_c_311_n_0;
  wire buf1_reg_c_312_n_0;
  wire buf1_reg_c_313_n_0;
  wire buf1_reg_c_314_n_0;
  wire buf1_reg_c_315_n_0;
  wire buf1_reg_c_316_n_0;
  wire buf1_reg_c_317_n_0;
  wire buf1_reg_c_318_n_0;
  wire buf1_reg_c_319_n_0;
  wire buf1_reg_c_31_n_0;
  wire buf1_reg_c_320_n_0;
  wire buf1_reg_c_321_n_0;
  wire buf1_reg_c_322_n_0;
  wire buf1_reg_c_323_n_0;
  wire buf1_reg_c_324_n_0;
  wire buf1_reg_c_325_n_0;
  wire buf1_reg_c_326_n_0;
  wire buf1_reg_c_327_n_0;
  wire buf1_reg_c_328_n_0;
  wire buf1_reg_c_329_n_0;
  wire buf1_reg_c_32_n_0;
  wire buf1_reg_c_330_n_0;
  wire buf1_reg_c_331_n_0;
  wire buf1_reg_c_332_n_0;
  wire buf1_reg_c_333_n_0;
  wire buf1_reg_c_334_n_0;
  wire buf1_reg_c_335_n_0;
  wire buf1_reg_c_336_n_0;
  wire buf1_reg_c_337_n_0;
  wire buf1_reg_c_338_n_0;
  wire buf1_reg_c_339_n_0;
  wire buf1_reg_c_33_n_0;
  wire buf1_reg_c_340_n_0;
  wire buf1_reg_c_341_n_0;
  wire buf1_reg_c_342_n_0;
  wire buf1_reg_c_343_n_0;
  wire buf1_reg_c_344_n_0;
  wire buf1_reg_c_345_n_0;
  wire buf1_reg_c_346_n_0;
  wire buf1_reg_c_347_n_0;
  wire buf1_reg_c_348_n_0;
  wire buf1_reg_c_349_n_0;
  wire buf1_reg_c_34_n_0;
  wire buf1_reg_c_350_n_0;
  wire buf1_reg_c_351_n_0;
  wire buf1_reg_c_352_n_0;
  wire buf1_reg_c_353_n_0;
  wire buf1_reg_c_354_n_0;
  wire buf1_reg_c_355_n_0;
  wire buf1_reg_c_356_n_0;
  wire buf1_reg_c_357_n_0;
  wire buf1_reg_c_358_n_0;
  wire buf1_reg_c_359_n_0;
  wire buf1_reg_c_35_n_0;
  wire buf1_reg_c_360_n_0;
  wire buf1_reg_c_361_n_0;
  wire buf1_reg_c_362_n_0;
  wire buf1_reg_c_363_n_0;
  wire buf1_reg_c_364_n_0;
  wire buf1_reg_c_365_n_0;
  wire buf1_reg_c_366_n_0;
  wire buf1_reg_c_367_n_0;
  wire buf1_reg_c_368_n_0;
  wire buf1_reg_c_369_n_0;
  wire buf1_reg_c_36_n_0;
  wire buf1_reg_c_370_n_0;
  wire buf1_reg_c_371_n_0;
  wire buf1_reg_c_372_n_0;
  wire buf1_reg_c_373_n_0;
  wire buf1_reg_c_374_n_0;
  wire buf1_reg_c_375_n_0;
  wire buf1_reg_c_376_n_0;
  wire buf1_reg_c_377_n_0;
  wire buf1_reg_c_378_n_0;
  wire buf1_reg_c_379_n_0;
  wire buf1_reg_c_37_n_0;
  wire buf1_reg_c_380_n_0;
  wire buf1_reg_c_381_n_0;
  wire buf1_reg_c_382_n_0;
  wire buf1_reg_c_383_n_0;
  wire buf1_reg_c_384_n_0;
  wire buf1_reg_c_385_n_0;
  wire buf1_reg_c_386_n_0;
  wire buf1_reg_c_387_n_0;
  wire buf1_reg_c_388_n_0;
  wire buf1_reg_c_389_n_0;
  wire buf1_reg_c_38_n_0;
  wire buf1_reg_c_390_n_0;
  wire buf1_reg_c_391_n_0;
  wire buf1_reg_c_392_n_0;
  wire buf1_reg_c_393_n_0;
  wire buf1_reg_c_394_n_0;
  wire buf1_reg_c_395_n_0;
  wire buf1_reg_c_396_n_0;
  wire buf1_reg_c_397_n_0;
  wire buf1_reg_c_398_n_0;
  wire buf1_reg_c_399_n_0;
  wire buf1_reg_c_39_n_0;
  wire buf1_reg_c_3_n_0;
  wire buf1_reg_c_400_n_0;
  wire buf1_reg_c_401_n_0;
  wire buf1_reg_c_402_n_0;
  wire buf1_reg_c_403_n_0;
  wire buf1_reg_c_404_n_0;
  wire buf1_reg_c_405_n_0;
  wire buf1_reg_c_406_n_0;
  wire buf1_reg_c_407_n_0;
  wire buf1_reg_c_408_n_0;
  wire buf1_reg_c_409_n_0;
  wire buf1_reg_c_40_n_0;
  wire buf1_reg_c_410_n_0;
  wire buf1_reg_c_411_n_0;
  wire buf1_reg_c_412_n_0;
  wire buf1_reg_c_413_n_0;
  wire buf1_reg_c_414_n_0;
  wire buf1_reg_c_415_n_0;
  wire buf1_reg_c_416_n_0;
  wire buf1_reg_c_417_n_0;
  wire buf1_reg_c_418_n_0;
  wire buf1_reg_c_419_n_0;
  wire buf1_reg_c_41_n_0;
  wire buf1_reg_c_420_n_0;
  wire buf1_reg_c_421_n_0;
  wire buf1_reg_c_422_n_0;
  wire buf1_reg_c_423_n_0;
  wire buf1_reg_c_424_n_0;
  wire buf1_reg_c_425_n_0;
  wire buf1_reg_c_426_n_0;
  wire buf1_reg_c_427_n_0;
  wire buf1_reg_c_428_n_0;
  wire buf1_reg_c_429_n_0;
  wire buf1_reg_c_42_n_0;
  wire buf1_reg_c_430_n_0;
  wire buf1_reg_c_431_n_0;
  wire buf1_reg_c_432_n_0;
  wire buf1_reg_c_433_n_0;
  wire buf1_reg_c_434_n_0;
  wire buf1_reg_c_435_n_0;
  wire buf1_reg_c_436_n_0;
  wire buf1_reg_c_437_n_0;
  wire buf1_reg_c_438_n_0;
  wire buf1_reg_c_439_n_0;
  wire buf1_reg_c_43_n_0;
  wire buf1_reg_c_440_n_0;
  wire buf1_reg_c_441_n_0;
  wire buf1_reg_c_442_n_0;
  wire buf1_reg_c_443_n_0;
  wire buf1_reg_c_444_n_0;
  wire buf1_reg_c_445_n_0;
  wire buf1_reg_c_446_n_0;
  wire buf1_reg_c_447_n_0;
  wire buf1_reg_c_448_n_0;
  wire buf1_reg_c_449_n_0;
  wire buf1_reg_c_44_n_0;
  wire buf1_reg_c_450_n_0;
  wire buf1_reg_c_451_n_0;
  wire buf1_reg_c_452_n_0;
  wire buf1_reg_c_453_n_0;
  wire buf1_reg_c_454_n_0;
  wire buf1_reg_c_455_n_0;
  wire buf1_reg_c_456_n_0;
  wire buf1_reg_c_457_n_0;
  wire buf1_reg_c_458_n_0;
  wire buf1_reg_c_459_n_0;
  wire buf1_reg_c_45_n_0;
  wire buf1_reg_c_460_n_0;
  wire buf1_reg_c_461_n_0;
  wire buf1_reg_c_462_n_0;
  wire buf1_reg_c_463_n_0;
  wire buf1_reg_c_464_n_0;
  wire buf1_reg_c_465_n_0;
  wire buf1_reg_c_466_n_0;
  wire buf1_reg_c_467_n_0;
  wire buf1_reg_c_468_n_0;
  wire buf1_reg_c_469_n_0;
  wire buf1_reg_c_46_n_0;
  wire buf1_reg_c_470_n_0;
  wire buf1_reg_c_471_n_0;
  wire buf1_reg_c_472_n_0;
  wire buf1_reg_c_473_n_0;
  wire buf1_reg_c_474_n_0;
  wire buf1_reg_c_475_n_0;
  wire buf1_reg_c_476_n_0;
  wire buf1_reg_c_477_n_0;
  wire buf1_reg_c_47_n_0;
  wire buf1_reg_c_48_n_0;
  wire buf1_reg_c_49_n_0;
  wire buf1_reg_c_4_n_0;
  wire buf1_reg_c_50_n_0;
  wire buf1_reg_c_51_n_0;
  wire buf1_reg_c_52_n_0;
  wire buf1_reg_c_53_n_0;
  wire buf1_reg_c_54_n_0;
  wire buf1_reg_c_55_n_0;
  wire buf1_reg_c_56_n_0;
  wire buf1_reg_c_57_n_0;
  wire buf1_reg_c_58_n_0;
  wire buf1_reg_c_59_n_0;
  wire buf1_reg_c_5_n_0;
  wire buf1_reg_c_60_n_0;
  wire buf1_reg_c_61_n_0;
  wire buf1_reg_c_62_n_0;
  wire buf1_reg_c_63_n_0;
  wire buf1_reg_c_64_n_0;
  wire buf1_reg_c_65_n_0;
  wire buf1_reg_c_66_n_0;
  wire buf1_reg_c_67_n_0;
  wire buf1_reg_c_68_n_0;
  wire buf1_reg_c_69_n_0;
  wire buf1_reg_c_6_n_0;
  wire buf1_reg_c_70_n_0;
  wire buf1_reg_c_71_n_0;
  wire buf1_reg_c_72_n_0;
  wire buf1_reg_c_73_n_0;
  wire buf1_reg_c_74_n_0;
  wire buf1_reg_c_75_n_0;
  wire buf1_reg_c_76_n_0;
  wire buf1_reg_c_77_n_0;
  wire buf1_reg_c_78_n_0;
  wire buf1_reg_c_79_n_0;
  wire buf1_reg_c_7_n_0;
  wire buf1_reg_c_80_n_0;
  wire buf1_reg_c_81_n_0;
  wire buf1_reg_c_82_n_0;
  wire buf1_reg_c_83_n_0;
  wire buf1_reg_c_84_n_0;
  wire buf1_reg_c_85_n_0;
  wire buf1_reg_c_86_n_0;
  wire buf1_reg_c_87_n_0;
  wire buf1_reg_c_88_n_0;
  wire buf1_reg_c_89_n_0;
  wire buf1_reg_c_8_n_0;
  wire buf1_reg_c_90_n_0;
  wire buf1_reg_c_91_n_0;
  wire buf1_reg_c_92_n_0;
  wire buf1_reg_c_93_n_0;
  wire buf1_reg_c_94_n_0;
  wire buf1_reg_c_95_n_0;
  wire buf1_reg_c_96_n_0;
  wire buf1_reg_c_97_n_0;
  wire buf1_reg_c_98_n_0;
  wire buf1_reg_c_99_n_0;
  wire buf1_reg_c_9_n_0;
  wire buf1_reg_c_n_0;
  wire buf1_reg_gate__0_n_0;
  wire buf1_reg_gate__1_n_0;
  wire buf1_reg_gate__2_n_0;
  wire buf1_reg_gate__3_n_0;
  wire buf1_reg_gate__4_n_0;
  wire buf1_reg_gate__5_n_0;
  wire buf1_reg_gate__6_n_0;
  wire buf1_reg_gate_n_0;
  wire \buf2_reg[159][0]_srl32_buf1_reg_c_158_n_1 ;
  wire \buf2_reg[159][1]_srl32_buf1_reg_c_158_n_1 ;
  wire \buf2_reg[159][2]_srl32_buf1_reg_c_158_n_1 ;
  wire \buf2_reg[159][3]_srl32_buf1_reg_c_158_n_1 ;
  wire \buf2_reg[159][4]_srl32_buf1_reg_c_158_n_1 ;
  wire \buf2_reg[159][5]_srl32_buf1_reg_c_158_n_1 ;
  wire \buf2_reg[159][6]_srl32_buf1_reg_c_158_n_1 ;
  wire \buf2_reg[159][7]_srl32_buf1_reg_c_158_n_1 ;
  wire \buf2_reg[191][0]_srl32_buf1_reg_c_190_n_1 ;
  wire \buf2_reg[191][1]_srl32_buf1_reg_c_190_n_1 ;
  wire \buf2_reg[191][2]_srl32_buf1_reg_c_190_n_1 ;
  wire \buf2_reg[191][3]_srl32_buf1_reg_c_190_n_1 ;
  wire \buf2_reg[191][4]_srl32_buf1_reg_c_190_n_1 ;
  wire \buf2_reg[191][5]_srl32_buf1_reg_c_190_n_1 ;
  wire \buf2_reg[191][6]_srl32_buf1_reg_c_190_n_1 ;
  wire \buf2_reg[191][7]_srl32_buf1_reg_c_190_n_1 ;
  wire \buf2_reg[223][0]_srl32_buf1_reg_c_222_n_1 ;
  wire \buf2_reg[223][1]_srl32_buf1_reg_c_222_n_1 ;
  wire \buf2_reg[223][2]_srl32_buf1_reg_c_222_n_1 ;
  wire \buf2_reg[223][3]_srl32_buf1_reg_c_222_n_1 ;
  wire \buf2_reg[223][4]_srl32_buf1_reg_c_222_n_1 ;
  wire \buf2_reg[223][5]_srl32_buf1_reg_c_222_n_1 ;
  wire \buf2_reg[223][6]_srl32_buf1_reg_c_222_n_1 ;
  wire \buf2_reg[223][7]_srl32_buf1_reg_c_222_n_1 ;
  wire \buf2_reg[287][0]_srl32_buf1_reg_c_286_n_1 ;
  wire \buf2_reg[287][1]_srl32_buf1_reg_c_286_n_1 ;
  wire \buf2_reg[287][2]_srl32_buf1_reg_c_286_n_1 ;
  wire \buf2_reg[287][3]_srl32_buf1_reg_c_286_n_1 ;
  wire \buf2_reg[287][4]_srl32_buf1_reg_c_286_n_1 ;
  wire \buf2_reg[287][5]_srl32_buf1_reg_c_286_n_1 ;
  wire \buf2_reg[287][6]_srl32_buf1_reg_c_286_n_1 ;
  wire \buf2_reg[287][7]_srl32_buf1_reg_c_286_n_1 ;
  wire \buf2_reg[319][0]_srl32_buf1_reg_c_318_n_1 ;
  wire \buf2_reg[319][1]_srl32_buf1_reg_c_318_n_1 ;
  wire \buf2_reg[319][2]_srl32_buf1_reg_c_318_n_1 ;
  wire \buf2_reg[319][3]_srl32_buf1_reg_c_318_n_1 ;
  wire \buf2_reg[319][4]_srl32_buf1_reg_c_318_n_1 ;
  wire \buf2_reg[319][5]_srl32_buf1_reg_c_318_n_1 ;
  wire \buf2_reg[319][6]_srl32_buf1_reg_c_318_n_1 ;
  wire \buf2_reg[319][7]_srl32_buf1_reg_c_318_n_1 ;
  wire \buf2_reg[31][0]_srl32_buf1_reg_c_30_n_1 ;
  wire \buf2_reg[31][1]_srl32_buf1_reg_c_30_n_1 ;
  wire \buf2_reg[31][2]_srl32_buf1_reg_c_30_n_1 ;
  wire \buf2_reg[31][3]_srl32_buf1_reg_c_30_n_1 ;
  wire \buf2_reg[31][4]_srl32_buf1_reg_c_30_n_1 ;
  wire \buf2_reg[31][5]_srl32_buf1_reg_c_30_n_1 ;
  wire \buf2_reg[31][6]_srl32_buf1_reg_c_30_n_1 ;
  wire \buf2_reg[31][7]_srl32_buf1_reg_c_30_n_1 ;
  wire \buf2_reg[351][0]_srl32_buf1_reg_c_350_n_1 ;
  wire \buf2_reg[351][1]_srl32_buf1_reg_c_350_n_1 ;
  wire \buf2_reg[351][2]_srl32_buf1_reg_c_350_n_1 ;
  wire \buf2_reg[351][3]_srl32_buf1_reg_c_350_n_1 ;
  wire \buf2_reg[351][4]_srl32_buf1_reg_c_350_n_1 ;
  wire \buf2_reg[351][5]_srl32_buf1_reg_c_350_n_1 ;
  wire \buf2_reg[351][6]_srl32_buf1_reg_c_350_n_1 ;
  wire \buf2_reg[351][7]_srl32_buf1_reg_c_350_n_1 ;
  wire \buf2_reg[415][0]_srl32_buf1_reg_c_414_n_1 ;
  wire \buf2_reg[415][1]_srl32_buf1_reg_c_414_n_1 ;
  wire \buf2_reg[415][2]_srl32_buf1_reg_c_414_n_1 ;
  wire \buf2_reg[415][3]_srl32_buf1_reg_c_414_n_1 ;
  wire \buf2_reg[415][4]_srl32_buf1_reg_c_414_n_1 ;
  wire \buf2_reg[415][5]_srl32_buf1_reg_c_414_n_1 ;
  wire \buf2_reg[415][6]_srl32_buf1_reg_c_414_n_1 ;
  wire \buf2_reg[415][7]_srl32_buf1_reg_c_414_n_1 ;
  wire \buf2_reg[447][0]_srl32_buf1_reg_c_446_n_1 ;
  wire \buf2_reg[447][1]_srl32_buf1_reg_c_446_n_1 ;
  wire \buf2_reg[447][2]_srl32_buf1_reg_c_446_n_1 ;
  wire \buf2_reg[447][3]_srl32_buf1_reg_c_446_n_1 ;
  wire \buf2_reg[447][4]_srl32_buf1_reg_c_446_n_1 ;
  wire \buf2_reg[447][5]_srl32_buf1_reg_c_446_n_1 ;
  wire \buf2_reg[447][6]_srl32_buf1_reg_c_446_n_1 ;
  wire \buf2_reg[447][7]_srl32_buf1_reg_c_446_n_1 ;
  wire \buf2_reg[477][0]_srl30_buf1_reg_c_476_n_0 ;
  wire \buf2_reg[477][1]_srl30_buf1_reg_c_476_n_0 ;
  wire \buf2_reg[477][2]_srl30_buf1_reg_c_476_n_0 ;
  wire \buf2_reg[477][3]_srl30_buf1_reg_c_476_n_0 ;
  wire \buf2_reg[477][4]_srl30_buf1_reg_c_476_n_0 ;
  wire \buf2_reg[477][5]_srl30_buf1_reg_c_476_n_0 ;
  wire \buf2_reg[477][6]_srl30_buf1_reg_c_476_n_0 ;
  wire \buf2_reg[477][7]_srl30_buf1_reg_c_476_n_0 ;
  wire \buf2_reg[478][0]_buf1_reg_c_477_n_0 ;
  wire \buf2_reg[478][1]_buf1_reg_c_477_n_0 ;
  wire \buf2_reg[478][2]_buf1_reg_c_477_n_0 ;
  wire \buf2_reg[478][3]_buf1_reg_c_477_n_0 ;
  wire \buf2_reg[478][4]_buf1_reg_c_477_n_0 ;
  wire \buf2_reg[478][5]_buf1_reg_c_477_n_0 ;
  wire \buf2_reg[478][6]_buf1_reg_c_477_n_0 ;
  wire \buf2_reg[478][7]_buf1_reg_c_477_n_0 ;
  wire \buf2_reg[63][0]_srl32_buf1_reg_c_62_n_1 ;
  wire \buf2_reg[63][1]_srl32_buf1_reg_c_62_n_1 ;
  wire \buf2_reg[63][2]_srl32_buf1_reg_c_62_n_1 ;
  wire \buf2_reg[63][3]_srl32_buf1_reg_c_62_n_1 ;
  wire \buf2_reg[63][4]_srl32_buf1_reg_c_62_n_1 ;
  wire \buf2_reg[63][5]_srl32_buf1_reg_c_62_n_1 ;
  wire \buf2_reg[63][6]_srl32_buf1_reg_c_62_n_1 ;
  wire \buf2_reg[63][7]_srl32_buf1_reg_c_62_n_1 ;
  wire \buf2_reg[95][0]_srl32_buf1_reg_c_94_n_1 ;
  wire \buf2_reg[95][1]_srl32_buf1_reg_c_94_n_1 ;
  wire \buf2_reg[95][2]_srl32_buf1_reg_c_94_n_1 ;
  wire \buf2_reg[95][3]_srl32_buf1_reg_c_94_n_1 ;
  wire \buf2_reg[95][4]_srl32_buf1_reg_c_94_n_1 ;
  wire \buf2_reg[95][5]_srl32_buf1_reg_c_94_n_1 ;
  wire \buf2_reg[95][6]_srl32_buf1_reg_c_94_n_1 ;
  wire \buf2_reg[95][7]_srl32_buf1_reg_c_94_n_1 ;
  wire buf2_reg_gate__0_n_0;
  wire buf2_reg_gate__1_n_0;
  wire buf2_reg_gate__2_n_0;
  wire buf2_reg_gate__3_n_0;
  wire buf2_reg_gate__4_n_0;
  wire buf2_reg_gate__5_n_0;
  wire buf2_reg_gate__6_n_0;
  wire buf2_reg_gate_n_0;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [8:0]cnt;
  wire \cnt[8]_i_2_n_0 ;
  wire \cnt[8]_i_3_n_0 ;
  wire \cnt_reg_n_0_[0] ;
  wire \cnt_reg_n_0_[1] ;
  wire \cnt_reg_n_0_[2] ;
  wire \cnt_reg_n_0_[3] ;
  wire \cnt_reg_n_0_[4] ;
  wire \cnt_reg_n_0_[5] ;
  wire \cnt_reg_n_0_[6] ;
  wire \cnt_reg_n_0_[7] ;
  wire \cnt_reg_n_0_[8] ;
  wire [7:0]edge_x;
  wire [0:0]edge_x_OBUF;
  wire \edge_x_OBUF[7]_inst_i_10_n_0 ;
  wire \edge_x_OBUF[7]_inst_i_12_n_0 ;
  wire \edge_x_OBUF[7]_inst_i_13_n_0 ;
  wire \edge_x_OBUF[7]_inst_i_14_n_0 ;
  wire \edge_x_OBUF[7]_inst_i_15_n_0 ;
  wire \edge_x_OBUF[7]_inst_i_16_n_0 ;
  wire \edge_x_OBUF[7]_inst_i_17_n_0 ;
  wire \edge_x_OBUF[7]_inst_i_18_n_0 ;
  wire \edge_x_OBUF[7]_inst_i_19_n_0 ;
  wire \edge_x_OBUF[7]_inst_i_20_n_0 ;
  wire \edge_x_OBUF[7]_inst_i_21_n_0 ;
  wire \edge_x_OBUF[7]_inst_i_22_n_0 ;
  wire \edge_x_OBUF[7]_inst_i_23_n_0 ;
  wire \edge_x_OBUF[7]_inst_i_24_n_0 ;
  wire \edge_x_OBUF[7]_inst_i_25_n_0 ;
  wire \edge_x_OBUF[7]_inst_i_26_n_0 ;
  wire \edge_x_OBUF[7]_inst_i_27_n_0 ;
  wire \edge_x_OBUF[7]_inst_i_28_n_0 ;
  wire \edge_x_OBUF[7]_inst_i_29_n_0 ;
  wire \edge_x_OBUF[7]_inst_i_2_n_0 ;
  wire \edge_x_OBUF[7]_inst_i_30_n_0 ;
  wire \edge_x_OBUF[7]_inst_i_31_n_0 ;
  wire \edge_x_OBUF[7]_inst_i_32_n_0 ;
  wire \edge_x_OBUF[7]_inst_i_33_n_0 ;
  wire \edge_x_OBUF[7]_inst_i_34_n_0 ;
  wire \edge_x_OBUF[7]_inst_i_35_n_0 ;
  wire \edge_x_OBUF[7]_inst_i_36_n_0 ;
  wire \edge_x_OBUF[7]_inst_i_37_n_0 ;
  wire \edge_x_OBUF[7]_inst_i_38_n_0 ;
  wire \edge_x_OBUF[7]_inst_i_39_n_0 ;
  wire \edge_x_OBUF[7]_inst_i_3_n_0 ;
  wire \edge_x_OBUF[7]_inst_i_40_n_0 ;
  wire \edge_x_OBUF[7]_inst_i_41_n_0 ;
  wire \edge_x_OBUF[7]_inst_i_42_n_0 ;
  wire \edge_x_OBUF[7]_inst_i_43_n_0 ;
  wire \edge_x_OBUF[7]_inst_i_44_n_0 ;
  wire \edge_x_OBUF[7]_inst_i_45_n_0 ;
  wire \edge_x_OBUF[7]_inst_i_46_n_1 ;
  wire \edge_x_OBUF[7]_inst_i_47_n_0 ;
  wire \edge_x_OBUF[7]_inst_i_48_n_0 ;
  wire \edge_x_OBUF[7]_inst_i_49_n_0 ;
  wire \edge_x_OBUF[7]_inst_i_4_n_0 ;
  wire \edge_x_OBUF[7]_inst_i_50_n_0 ;
  wire \edge_x_OBUF[7]_inst_i_51_n_0 ;
  wire \edge_x_OBUF[7]_inst_i_52_n_0 ;
  wire \edge_x_OBUF[7]_inst_i_53_n_0 ;
  wire \edge_x_OBUF[7]_inst_i_54_n_0 ;
  wire \edge_x_OBUF[7]_inst_i_55_n_0 ;
  wire \edge_x_OBUF[7]_inst_i_56_n_0 ;
  wire \edge_x_OBUF[7]_inst_i_57_n_0 ;
  wire \edge_x_OBUF[7]_inst_i_58_n_0 ;
  wire \edge_x_OBUF[7]_inst_i_59_n_0 ;
  wire \edge_x_OBUF[7]_inst_i_5_n_0 ;
  wire \edge_x_OBUF[7]_inst_i_60_n_0 ;
  wire \edge_x_OBUF[7]_inst_i_61_n_0 ;
  wire \edge_x_OBUF[7]_inst_i_62_n_0 ;
  wire \edge_x_OBUF[7]_inst_i_63_n_0 ;
  wire \edge_x_OBUF[7]_inst_i_64_n_0 ;
  wire \edge_x_OBUF[7]_inst_i_65_n_0 ;
  wire \edge_x_OBUF[7]_inst_i_6_n_0 ;
  wire \edge_x_OBUF[7]_inst_i_7_n_0 ;
  wire \edge_x_OBUF[7]_inst_i_8_n_0 ;
  wire \edge_x_OBUF[7]_inst_i_9_n_0 ;
  wire [7:0]edge_y;
  wire [0:0]edge_y_OBUF;
  wire \edge_y_OBUF[7]_inst_i_10_n_0 ;
  wire \edge_y_OBUF[7]_inst_i_11_n_0 ;
  wire \edge_y_OBUF[7]_inst_i_12_n_0 ;
  wire \edge_y_OBUF[7]_inst_i_13_n_0 ;
  wire \edge_y_OBUF[7]_inst_i_14_n_0 ;
  wire \edge_y_OBUF[7]_inst_i_15_n_0 ;
  wire \edge_y_OBUF[7]_inst_i_16_n_0 ;
  wire \edge_y_OBUF[7]_inst_i_17_n_0 ;
  wire \edge_y_OBUF[7]_inst_i_18_n_0 ;
  wire \edge_y_OBUF[7]_inst_i_19_n_0 ;
  wire \edge_y_OBUF[7]_inst_i_20_n_0 ;
  wire \edge_y_OBUF[7]_inst_i_21_n_0 ;
  wire \edge_y_OBUF[7]_inst_i_22_n_0 ;
  wire \edge_y_OBUF[7]_inst_i_23_n_0 ;
  wire \edge_y_OBUF[7]_inst_i_24_n_0 ;
  wire \edge_y_OBUF[7]_inst_i_25_n_0 ;
  wire \edge_y_OBUF[7]_inst_i_26_n_0 ;
  wire \edge_y_OBUF[7]_inst_i_27_n_0 ;
  wire \edge_y_OBUF[7]_inst_i_28_n_0 ;
  wire \edge_y_OBUF[7]_inst_i_29_n_0 ;
  wire \edge_y_OBUF[7]_inst_i_2_n_0 ;
  wire \edge_y_OBUF[7]_inst_i_30_n_0 ;
  wire \edge_y_OBUF[7]_inst_i_31_n_0 ;
  wire \edge_y_OBUF[7]_inst_i_32_n_0 ;
  wire \edge_y_OBUF[7]_inst_i_33_n_0 ;
  wire \edge_y_OBUF[7]_inst_i_34_n_0 ;
  wire \edge_y_OBUF[7]_inst_i_35_n_0 ;
  wire \edge_y_OBUF[7]_inst_i_36_n_0 ;
  wire \edge_y_OBUF[7]_inst_i_37_n_0 ;
  wire \edge_y_OBUF[7]_inst_i_38_n_0 ;
  wire \edge_y_OBUF[7]_inst_i_39_n_0 ;
  wire \edge_y_OBUF[7]_inst_i_3_n_0 ;
  wire \edge_y_OBUF[7]_inst_i_40_n_0 ;
  wire \edge_y_OBUF[7]_inst_i_41_n_0 ;
  wire \edge_y_OBUF[7]_inst_i_42_n_0 ;
  wire \edge_y_OBUF[7]_inst_i_43_n_0 ;
  wire \edge_y_OBUF[7]_inst_i_44_n_1 ;
  wire \edge_y_OBUF[7]_inst_i_45_n_0 ;
  wire \edge_y_OBUF[7]_inst_i_46_n_0 ;
  wire \edge_y_OBUF[7]_inst_i_47_n_0 ;
  wire \edge_y_OBUF[7]_inst_i_48_n_0 ;
  wire \edge_y_OBUF[7]_inst_i_49_n_0 ;
  wire \edge_y_OBUF[7]_inst_i_4_n_0 ;
  wire \edge_y_OBUF[7]_inst_i_50_n_0 ;
  wire \edge_y_OBUF[7]_inst_i_51_n_0 ;
  wire \edge_y_OBUF[7]_inst_i_52_n_0 ;
  wire \edge_y_OBUF[7]_inst_i_53_n_0 ;
  wire \edge_y_OBUF[7]_inst_i_54_n_0 ;
  wire \edge_y_OBUF[7]_inst_i_55_n_0 ;
  wire \edge_y_OBUF[7]_inst_i_56_n_0 ;
  wire \edge_y_OBUF[7]_inst_i_57_n_0 ;
  wire \edge_y_OBUF[7]_inst_i_58_n_0 ;
  wire \edge_y_OBUF[7]_inst_i_59_n_0 ;
  wire \edge_y_OBUF[7]_inst_i_5_n_0 ;
  wire \edge_y_OBUF[7]_inst_i_60_n_0 ;
  wire \edge_y_OBUF[7]_inst_i_61_n_0 ;
  wire \edge_y_OBUF[7]_inst_i_62_n_0 ;
  wire \edge_y_OBUF[7]_inst_i_63_n_0 ;
  wire \edge_y_OBUF[7]_inst_i_6_n_0 ;
  wire \edge_y_OBUF[7]_inst_i_7_n_0 ;
  wire \edge_y_OBUF[7]_inst_i_8_n_0 ;
  wire rst;
  wire rst_IBUF;
  wire xlnx_opt_;
  wire xlnx_opt__1;
  wire xlnx_opt__10;
  wire xlnx_opt__11;
  wire xlnx_opt__12;
  wire xlnx_opt__13;
  wire xlnx_opt__14;
  wire xlnx_opt__15;
  wire xlnx_opt__16;
  wire xlnx_opt__17;
  wire xlnx_opt__18;
  wire xlnx_opt__19;
  wire xlnx_opt__2;
  wire xlnx_opt__20;
  wire xlnx_opt__21;
  wire xlnx_opt__22;
  wire xlnx_opt__23;
  wire xlnx_opt__24;
  wire xlnx_opt__25;
  wire xlnx_opt__26;
  wire xlnx_opt__27;
  wire xlnx_opt__28;
  wire xlnx_opt__29;
  wire xlnx_opt__3;
  wire xlnx_opt__30;
  wire xlnx_opt__31;
  wire xlnx_opt__32;
  wire xlnx_opt__33;
  wire xlnx_opt__34;
  wire xlnx_opt__35;
  wire xlnx_opt__36;
  wire xlnx_opt__37;
  wire xlnx_opt__38;
  wire xlnx_opt__39;
  wire xlnx_opt__4;
  wire xlnx_opt__40;
  wire xlnx_opt__41;
  wire xlnx_opt__42;
  wire xlnx_opt__43;
  wire xlnx_opt__44;
  wire xlnx_opt__45;
  wire xlnx_opt__46;
  wire xlnx_opt__47;
  wire xlnx_opt__5;
  wire xlnx_opt__6;
  wire xlnx_opt__7;
  wire xlnx_opt__8;
  wire xlnx_opt__9;
  wire [2:0]\NLW_R8_reg[3]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_R8_reg[7]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_R8_reg[7]_i_10_CO_UNCONNECTED ;
  wire [2:0]\NLW_R8_reg[7]_i_9_CO_UNCONNECTED ;
  wire [3:3]\NLW_R8_reg[7]_i_9_O_UNCONNECTED ;
  wire \NLW_buf1_reg[127][0]_srl32_buf1_reg_c_126_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[127][1]_srl32_buf1_reg_c_126_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[127][2]_srl32_buf1_reg_c_126_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[127][3]_srl32_buf1_reg_c_126_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[127][4]_srl32_buf1_reg_c_126_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[127][5]_srl32_buf1_reg_c_126_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[127][6]_srl32_buf1_reg_c_126_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[127][7]_srl32_buf1_reg_c_126_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[159][0]_srl32_buf1_reg_c_158_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[159][1]_srl32_buf1_reg_c_158_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[159][2]_srl32_buf1_reg_c_158_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[159][3]_srl32_buf1_reg_c_158_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[159][4]_srl32_buf1_reg_c_158_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[159][5]_srl32_buf1_reg_c_158_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[159][6]_srl32_buf1_reg_c_158_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[159][7]_srl32_buf1_reg_c_158_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[191][0]_srl32_buf1_reg_c_190_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[191][1]_srl32_buf1_reg_c_190_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[191][2]_srl32_buf1_reg_c_190_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[191][3]_srl32_buf1_reg_c_190_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[191][4]_srl32_buf1_reg_c_190_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[191][5]_srl32_buf1_reg_c_190_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[191][6]_srl32_buf1_reg_c_190_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[191][7]_srl32_buf1_reg_c_190_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[223][0]_srl32_buf1_reg_c_222_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[223][1]_srl32_buf1_reg_c_222_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[223][2]_srl32_buf1_reg_c_222_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[223][3]_srl32_buf1_reg_c_222_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[223][4]_srl32_buf1_reg_c_222_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[223][5]_srl32_buf1_reg_c_222_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[223][6]_srl32_buf1_reg_c_222_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[223][7]_srl32_buf1_reg_c_222_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[255][0]_srl32_buf1_reg_c_254_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[255][1]_srl32_buf1_reg_c_254_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[255][2]_srl32_buf1_reg_c_254_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[255][3]_srl32_buf1_reg_c_254_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[255][4]_srl32_buf1_reg_c_254_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[255][5]_srl32_buf1_reg_c_254_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[255][6]_srl32_buf1_reg_c_254_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[255][7]_srl32_buf1_reg_c_254_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[287][0]_srl32_buf1_reg_c_286_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[287][1]_srl32_buf1_reg_c_286_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[287][2]_srl32_buf1_reg_c_286_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[287][3]_srl32_buf1_reg_c_286_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[287][4]_srl32_buf1_reg_c_286_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[287][5]_srl32_buf1_reg_c_286_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[287][6]_srl32_buf1_reg_c_286_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[287][7]_srl32_buf1_reg_c_286_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[319][0]_srl32_buf1_reg_c_318_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[319][1]_srl32_buf1_reg_c_318_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[319][2]_srl32_buf1_reg_c_318_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[319][3]_srl32_buf1_reg_c_318_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[319][4]_srl32_buf1_reg_c_318_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[319][5]_srl32_buf1_reg_c_318_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[319][6]_srl32_buf1_reg_c_318_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[319][7]_srl32_buf1_reg_c_318_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[31][0]_srl32_buf1_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[31][1]_srl32_buf1_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[31][2]_srl32_buf1_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[31][3]_srl32_buf1_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[31][4]_srl32_buf1_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[31][5]_srl32_buf1_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[31][6]_srl32_buf1_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[31][7]_srl32_buf1_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[351][0]_srl32_buf1_reg_c_350_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[351][1]_srl32_buf1_reg_c_350_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[351][2]_srl32_buf1_reg_c_350_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[351][3]_srl32_buf1_reg_c_350_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[351][4]_srl32_buf1_reg_c_350_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[351][5]_srl32_buf1_reg_c_350_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[351][6]_srl32_buf1_reg_c_350_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[351][7]_srl32_buf1_reg_c_350_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[383][0]_srl32_buf1_reg_c_382_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[383][1]_srl32_buf1_reg_c_382_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[383][2]_srl32_buf1_reg_c_382_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[383][3]_srl32_buf1_reg_c_382_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[383][4]_srl32_buf1_reg_c_382_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[383][5]_srl32_buf1_reg_c_382_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[383][6]_srl32_buf1_reg_c_382_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[383][7]_srl32_buf1_reg_c_382_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[415][0]_srl32_buf1_reg_c_414_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[415][1]_srl32_buf1_reg_c_414_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[415][2]_srl32_buf1_reg_c_414_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[415][3]_srl32_buf1_reg_c_414_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[415][4]_srl32_buf1_reg_c_414_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[415][5]_srl32_buf1_reg_c_414_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[415][6]_srl32_buf1_reg_c_414_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[415][7]_srl32_buf1_reg_c_414_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[447][0]_srl32_buf1_reg_c_446_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[447][1]_srl32_buf1_reg_c_446_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[447][2]_srl32_buf1_reg_c_446_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[447][3]_srl32_buf1_reg_c_446_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[447][4]_srl32_buf1_reg_c_446_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[447][5]_srl32_buf1_reg_c_446_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[447][6]_srl32_buf1_reg_c_446_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[447][7]_srl32_buf1_reg_c_446_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[477][0]_srl30_buf1_reg_c_476_Q31_UNCONNECTED ;
  wire \NLW_buf1_reg[477][1]_srl30_buf1_reg_c_476_Q31_UNCONNECTED ;
  wire \NLW_buf1_reg[477][2]_srl30_buf1_reg_c_476_Q31_UNCONNECTED ;
  wire \NLW_buf1_reg[477][3]_srl30_buf1_reg_c_476_Q31_UNCONNECTED ;
  wire \NLW_buf1_reg[477][4]_srl30_buf1_reg_c_476_Q31_UNCONNECTED ;
  wire \NLW_buf1_reg[477][5]_srl30_buf1_reg_c_476_Q31_UNCONNECTED ;
  wire \NLW_buf1_reg[477][6]_srl30_buf1_reg_c_476_Q31_UNCONNECTED ;
  wire \NLW_buf1_reg[477][7]_srl30_buf1_reg_c_476_Q31_UNCONNECTED ;
  wire \NLW_buf1_reg[63][0]_srl32_buf1_reg_c_62_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[63][1]_srl32_buf1_reg_c_62_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[63][2]_srl32_buf1_reg_c_62_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[63][3]_srl32_buf1_reg_c_62_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[63][4]_srl32_buf1_reg_c_62_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[63][5]_srl32_buf1_reg_c_62_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[63][6]_srl32_buf1_reg_c_62_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[63][7]_srl32_buf1_reg_c_62_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[95][0]_srl32_buf1_reg_c_94_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[95][1]_srl32_buf1_reg_c_94_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[95][2]_srl32_buf1_reg_c_94_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[95][3]_srl32_buf1_reg_c_94_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[95][4]_srl32_buf1_reg_c_94_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[95][5]_srl32_buf1_reg_c_94_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[95][6]_srl32_buf1_reg_c_94_Q_UNCONNECTED ;
  wire \NLW_buf1_reg[95][7]_srl32_buf1_reg_c_94_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[127][0]_srl32_buf1_reg_c_126_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[127][1]_srl32_buf1_reg_c_126_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[127][2]_srl32_buf1_reg_c_126_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[127][3]_srl32_buf1_reg_c_126_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[127][4]_srl32_buf1_reg_c_126_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[127][5]_srl32_buf1_reg_c_126_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[127][6]_srl32_buf1_reg_c_126_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[127][7]_srl32_buf1_reg_c_126_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[159][0]_srl32_buf1_reg_c_158_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[159][1]_srl32_buf1_reg_c_158_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[159][2]_srl32_buf1_reg_c_158_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[159][3]_srl32_buf1_reg_c_158_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[159][4]_srl32_buf1_reg_c_158_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[159][5]_srl32_buf1_reg_c_158_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[159][6]_srl32_buf1_reg_c_158_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[159][7]_srl32_buf1_reg_c_158_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[191][0]_srl32_buf1_reg_c_190_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[191][1]_srl32_buf1_reg_c_190_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[191][2]_srl32_buf1_reg_c_190_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[191][3]_srl32_buf1_reg_c_190_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[191][4]_srl32_buf1_reg_c_190_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[191][5]_srl32_buf1_reg_c_190_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[191][6]_srl32_buf1_reg_c_190_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[191][7]_srl32_buf1_reg_c_190_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[223][0]_srl32_buf1_reg_c_222_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[223][1]_srl32_buf1_reg_c_222_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[223][2]_srl32_buf1_reg_c_222_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[223][3]_srl32_buf1_reg_c_222_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[223][4]_srl32_buf1_reg_c_222_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[223][5]_srl32_buf1_reg_c_222_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[223][6]_srl32_buf1_reg_c_222_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[223][7]_srl32_buf1_reg_c_222_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[255][0]_srl32_buf1_reg_c_254_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[255][1]_srl32_buf1_reg_c_254_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[255][2]_srl32_buf1_reg_c_254_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[255][3]_srl32_buf1_reg_c_254_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[255][4]_srl32_buf1_reg_c_254_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[255][5]_srl32_buf1_reg_c_254_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[255][6]_srl32_buf1_reg_c_254_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[255][7]_srl32_buf1_reg_c_254_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[287][0]_srl32_buf1_reg_c_286_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[287][1]_srl32_buf1_reg_c_286_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[287][2]_srl32_buf1_reg_c_286_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[287][3]_srl32_buf1_reg_c_286_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[287][4]_srl32_buf1_reg_c_286_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[287][5]_srl32_buf1_reg_c_286_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[287][6]_srl32_buf1_reg_c_286_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[287][7]_srl32_buf1_reg_c_286_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[319][0]_srl32_buf1_reg_c_318_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[319][1]_srl32_buf1_reg_c_318_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[319][2]_srl32_buf1_reg_c_318_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[319][3]_srl32_buf1_reg_c_318_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[319][4]_srl32_buf1_reg_c_318_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[319][5]_srl32_buf1_reg_c_318_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[319][6]_srl32_buf1_reg_c_318_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[319][7]_srl32_buf1_reg_c_318_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[31][0]_srl32_buf1_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[31][1]_srl32_buf1_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[31][2]_srl32_buf1_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[31][3]_srl32_buf1_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[31][4]_srl32_buf1_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[31][5]_srl32_buf1_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[31][6]_srl32_buf1_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[31][7]_srl32_buf1_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[351][0]_srl32_buf1_reg_c_350_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[351][1]_srl32_buf1_reg_c_350_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[351][2]_srl32_buf1_reg_c_350_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[351][3]_srl32_buf1_reg_c_350_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[351][4]_srl32_buf1_reg_c_350_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[351][5]_srl32_buf1_reg_c_350_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[351][6]_srl32_buf1_reg_c_350_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[351][7]_srl32_buf1_reg_c_350_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[383][0]_srl32_buf1_reg_c_382_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[383][1]_srl32_buf1_reg_c_382_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[383][2]_srl32_buf1_reg_c_382_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[383][3]_srl32_buf1_reg_c_382_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[383][4]_srl32_buf1_reg_c_382_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[383][5]_srl32_buf1_reg_c_382_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[383][6]_srl32_buf1_reg_c_382_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[383][7]_srl32_buf1_reg_c_382_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[415][0]_srl32_buf1_reg_c_414_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[415][1]_srl32_buf1_reg_c_414_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[415][2]_srl32_buf1_reg_c_414_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[415][3]_srl32_buf1_reg_c_414_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[415][4]_srl32_buf1_reg_c_414_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[415][5]_srl32_buf1_reg_c_414_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[415][6]_srl32_buf1_reg_c_414_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[415][7]_srl32_buf1_reg_c_414_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[447][0]_srl32_buf1_reg_c_446_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[447][1]_srl32_buf1_reg_c_446_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[447][2]_srl32_buf1_reg_c_446_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[447][3]_srl32_buf1_reg_c_446_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[447][4]_srl32_buf1_reg_c_446_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[447][5]_srl32_buf1_reg_c_446_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[447][6]_srl32_buf1_reg_c_446_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[447][7]_srl32_buf1_reg_c_446_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[477][0]_srl30_buf1_reg_c_476_Q31_UNCONNECTED ;
  wire \NLW_buf2_reg[477][1]_srl30_buf1_reg_c_476_Q31_UNCONNECTED ;
  wire \NLW_buf2_reg[477][2]_srl30_buf1_reg_c_476_Q31_UNCONNECTED ;
  wire \NLW_buf2_reg[477][3]_srl30_buf1_reg_c_476_Q31_UNCONNECTED ;
  wire \NLW_buf2_reg[477][4]_srl30_buf1_reg_c_476_Q31_UNCONNECTED ;
  wire \NLW_buf2_reg[477][5]_srl30_buf1_reg_c_476_Q31_UNCONNECTED ;
  wire \NLW_buf2_reg[477][6]_srl30_buf1_reg_c_476_Q31_UNCONNECTED ;
  wire \NLW_buf2_reg[477][7]_srl30_buf1_reg_c_476_Q31_UNCONNECTED ;
  wire \NLW_buf2_reg[63][0]_srl32_buf1_reg_c_62_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[63][1]_srl32_buf1_reg_c_62_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[63][2]_srl32_buf1_reg_c_62_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[63][3]_srl32_buf1_reg_c_62_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[63][4]_srl32_buf1_reg_c_62_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[63][5]_srl32_buf1_reg_c_62_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[63][6]_srl32_buf1_reg_c_62_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[63][7]_srl32_buf1_reg_c_62_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[95][0]_srl32_buf1_reg_c_94_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[95][1]_srl32_buf1_reg_c_94_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[95][2]_srl32_buf1_reg_c_94_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[95][3]_srl32_buf1_reg_c_94_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[95][4]_srl32_buf1_reg_c_94_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[95][5]_srl32_buf1_reg_c_94_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[95][6]_srl32_buf1_reg_c_94_Q_UNCONNECTED ;
  wire \NLW_buf2_reg[95][7]_srl32_buf1_reg_c_94_Q_UNCONNECTED ;
  wire [2:0]\NLW_edge_x_OBUF[7]_inst_i_10_CO_UNCONNECTED ;
  wire [3:0]\NLW_edge_x_OBUF[7]_inst_i_11_CO_UNCONNECTED ;
  wire [3:3]\NLW_edge_x_OBUF[7]_inst_i_11_O_UNCONNECTED ;
  wire [2:0]\NLW_edge_x_OBUF[7]_inst_i_32_CO_UNCONNECTED ;
  wire [2:0]\NLW_edge_x_OBUF[7]_inst_i_37_CO_UNCONNECTED ;
  wire [3:0]\NLW_edge_x_OBUF[7]_inst_i_46_CO_UNCONNECTED ;
  wire [3:2]\NLW_edge_x_OBUF[7]_inst_i_46_O_UNCONNECTED ;
  wire [2:0]\NLW_edge_x_OBUF[7]_inst_i_9_CO_UNCONNECTED ;
  wire [2:0]\NLW_edge_y_OBUF[7]_inst_i_30_CO_UNCONNECTED ;
  wire [2:0]\NLW_edge_y_OBUF[7]_inst_i_33_CO_UNCONNECTED ;
  wire [3:0]\NLW_edge_y_OBUF[7]_inst_i_44_CO_UNCONNECTED ;
  wire [3:2]\NLW_edge_y_OBUF[7]_inst_i_44_O_UNCONNECTED ;
  wire [2:0]\NLW_edge_y_OBUF[7]_inst_i_7_CO_UNCONNECTED ;
  wire [2:0]\NLW_edge_y_OBUF[7]_inst_i_8_CO_UNCONNECTED ;
  wire [3:0]\NLW_edge_y_OBUF[7]_inst_i_9_CO_UNCONNECTED ;
  wire [3:3]\NLW_edge_y_OBUF[7]_inst_i_9_O_UNCONNECTED ;

  IBUF \B_IBUF[3]_inst 
       (.I(B[3]),
        .O(B_IBUF[3]));
  IBUF \B_IBUF[4]_inst 
       (.I(B[4]),
        .O(B_IBUF[4]));
  IBUF \B_IBUF[5]_inst 
       (.I(B[5]),
        .O(B_IBUF[5]));
  IBUF \B_IBUF[6]_inst 
       (.I(B[6]),
        .O(B_IBUF[6]));
  IBUF \B_IBUF[7]_inst 
       (.I(B[7]),
        .O(B_IBUF[7]));
  IBUF \G_IBUF[1]_inst 
       (.I(G[1]),
        .O(G_IBUF[1]));
  IBUF \G_IBUF[2]_inst 
       (.I(G[2]),
        .O(G_IBUF[2]));
  IBUF \G_IBUF[3]_inst 
       (.I(G[3]),
        .O(G_IBUF[3]));
  IBUF \G_IBUF[4]_inst 
       (.I(G[4]),
        .O(G_IBUF[4]));
  IBUF \G_IBUF[5]_inst 
       (.I(G[5]),
        .O(G_IBUF[5]));
  IBUF \G_IBUF[6]_inst 
       (.I(G[6]),
        .O(G_IBUF[6]));
  IBUF \G_IBUF[7]_inst 
       (.I(G[7]),
        .O(G_IBUF[7]));
  FDCE #(
    .INIT(1'b0)) 
    \R0_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(R1[0]),
        .Q(R0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \R0_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(R1[1]),
        .Q(R0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \R0_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(R1[2]),
        .Q(R0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \R0_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(R1[3]),
        .Q(R0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \R0_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(R1[4]),
        .Q(R0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \R0_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(R1[5]),
        .Q(R0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \R0_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(R1[6]),
        .Q(R0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \R0_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(R1[7]),
        .Q(R0[7]));
  FDCE #(
    .INIT(1'b0)) 
    \R1_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(R2[0]),
        .Q(R1[0]));
  FDCE #(
    .INIT(1'b0)) 
    \R1_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(R2[1]),
        .Q(R1[1]));
  FDCE #(
    .INIT(1'b0)) 
    \R1_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(R2[2]),
        .Q(R1[2]));
  FDCE #(
    .INIT(1'b0)) 
    \R1_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(R2[3]),
        .Q(R1[3]));
  FDCE #(
    .INIT(1'b0)) 
    \R1_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(R2[4]),
        .Q(R1[4]));
  FDCE #(
    .INIT(1'b0)) 
    \R1_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(R2[5]),
        .Q(R1[5]));
  FDCE #(
    .INIT(1'b0)) 
    \R1_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(R2[6]),
        .Q(R1[6]));
  FDCE #(
    .INIT(1'b0)) 
    \R1_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(R2[7]),
        .Q(R1[7]));
  FDCE #(
    .INIT(1'b0)) 
    \R2_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf2_reg_gate__6_n_0),
        .Q(R2[0]));
  FDCE #(
    .INIT(1'b0)) 
    \R2_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf2_reg_gate__5_n_0),
        .Q(R2[1]));
  FDCE #(
    .INIT(1'b0)) 
    \R2_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf2_reg_gate__4_n_0),
        .Q(R2[2]));
  FDCE #(
    .INIT(1'b0)) 
    \R2_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf2_reg_gate__3_n_0),
        .Q(R2[3]));
  FDCE #(
    .INIT(1'b0)) 
    \R2_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf2_reg_gate__2_n_0),
        .Q(R2[4]));
  FDCE #(
    .INIT(1'b0)) 
    \R2_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf2_reg_gate__1_n_0),
        .Q(R2[5]));
  FDCE #(
    .INIT(1'b0)) 
    \R2_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf2_reg_gate__0_n_0),
        .Q(R2[6]));
  FDCE #(
    .INIT(1'b0)) 
    \R2_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf2_reg_gate_n_0),
        .Q(R2[7]));
  FDCE #(
    .INIT(1'b0)) 
    \R3_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(R4[0]),
        .Q(Gx_calc2[1]));
  FDCE #(
    .INIT(1'b0)) 
    \R3_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(R4[1]),
        .Q(Gx_calc2[2]));
  FDCE #(
    .INIT(1'b0)) 
    \R3_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(R4[2]),
        .Q(Gx_calc2[3]));
  FDCE #(
    .INIT(1'b0)) 
    \R3_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(R4[3]),
        .Q(Gx_calc2[4]));
  FDCE #(
    .INIT(1'b0)) 
    \R3_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(R4[4]),
        .Q(Gx_calc2[5]));
  FDCE #(
    .INIT(1'b0)) 
    \R3_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(R4[5]),
        .Q(Gx_calc2[6]));
  FDCE #(
    .INIT(1'b0)) 
    \R3_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(R4[6]),
        .Q(Gx_calc2[7]));
  FDCE #(
    .INIT(1'b0)) 
    \R3_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(R4[7]),
        .Q(Gx_calc2[8]));
  FDCE #(
    .INIT(1'b0)) 
    \R4_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(R5[0]),
        .Q(R4[0]));
  FDCE #(
    .INIT(1'b0)) 
    \R4_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(R5[1]),
        .Q(R4[1]));
  FDCE #(
    .INIT(1'b0)) 
    \R4_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(R5[2]),
        .Q(R4[2]));
  FDCE #(
    .INIT(1'b0)) 
    \R4_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(R5[3]),
        .Q(R4[3]));
  FDCE #(
    .INIT(1'b0)) 
    \R4_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(R5[4]),
        .Q(R4[4]));
  FDCE #(
    .INIT(1'b0)) 
    \R4_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(R5[5]),
        .Q(R4[5]));
  FDCE #(
    .INIT(1'b0)) 
    \R4_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(R5[6]),
        .Q(R4[6]));
  FDCE #(
    .INIT(1'b0)) 
    \R4_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(R5[7]),
        .Q(R4[7]));
  FDCE #(
    .INIT(1'b0)) 
    \R5_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_gate__6_n_0),
        .Q(R5[0]));
  FDCE #(
    .INIT(1'b0)) 
    \R5_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_gate__5_n_0),
        .Q(R5[1]));
  FDCE #(
    .INIT(1'b0)) 
    \R5_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_gate__4_n_0),
        .Q(R5[2]));
  FDCE #(
    .INIT(1'b0)) 
    \R5_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_gate__3_n_0),
        .Q(R5[3]));
  FDCE #(
    .INIT(1'b0)) 
    \R5_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_gate__2_n_0),
        .Q(R5[4]));
  FDCE #(
    .INIT(1'b0)) 
    \R5_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_gate__1_n_0),
        .Q(R5[5]));
  FDCE #(
    .INIT(1'b0)) 
    \R5_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_gate__0_n_0),
        .Q(R5[6]));
  FDCE #(
    .INIT(1'b0)) 
    \R5_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_gate_n_0),
        .Q(R5[7]));
  FDCE #(
    .INIT(1'b0)) 
    \R6_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(Gy_calc2[1]),
        .Q(R6[0]));
  FDCE #(
    .INIT(1'b0)) 
    \R6_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(Gy_calc2[2]),
        .Q(R6[1]));
  FDCE #(
    .INIT(1'b0)) 
    \R6_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(Gy_calc2[3]),
        .Q(R6[2]));
  FDCE #(
    .INIT(1'b0)) 
    \R6_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(Gy_calc2[4]),
        .Q(R6[3]));
  FDCE #(
    .INIT(1'b0)) 
    \R6_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(Gy_calc2[5]),
        .Q(R6[4]));
  FDCE #(
    .INIT(1'b0)) 
    \R6_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(Gy_calc2[6]),
        .Q(R6[5]));
  FDCE #(
    .INIT(1'b0)) 
    \R6_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(Gy_calc2[7]),
        .Q(R6[6]));
  FDCE #(
    .INIT(1'b0)) 
    \R6_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(Gy_calc2[8]),
        .Q(R6[7]));
  FDCE #(
    .INIT(1'b0)) 
    \R7_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(R8[0]),
        .Q(Gy_calc2[1]));
  FDCE #(
    .INIT(1'b0)) 
    \R7_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(R8[1]),
        .Q(Gy_calc2[2]));
  FDCE #(
    .INIT(1'b0)) 
    \R7_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(R8[2]),
        .Q(Gy_calc2[3]));
  FDCE #(
    .INIT(1'b0)) 
    \R7_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(R8[3]),
        .Q(Gy_calc2[4]));
  FDCE #(
    .INIT(1'b0)) 
    \R7_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(R8[4]),
        .Q(Gy_calc2[5]));
  FDCE #(
    .INIT(1'b0)) 
    \R7_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(R8[5]),
        .Q(Gy_calc2[6]));
  FDCE #(
    .INIT(1'b0)) 
    \R7_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(R8[6]),
        .Q(Gy_calc2[7]));
  FDCE #(
    .INIT(1'b0)) 
    \R7_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(R8[7]),
        .Q(Gy_calc2[8]));
  LUT3 #(
    .INIT(8'h96)) 
    \R8[3]_i_10 
       (.I0(G_IBUF[3]),
        .I1(\R8_reg[7]_i_10_n_5 ),
        .I2(R_IBUF[7]),
        .O(\R8[3]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \R8[3]_i_11 
       (.I0(G_IBUF[7]),
        .I1(\R8_reg[7]_i_10_n_4 ),
        .I2(G_IBUF[4]),
        .O(\R8[3]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \R8[3]_i_12 
       (.I0(G_IBUF[2]),
        .I1(\R8_reg[7]_i_10_n_6 ),
        .I2(R_IBUF[6]),
        .O(\R8[3]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \R8[3]_i_2 
       (.I0(G_IBUF[6]),
        .I1(\R8[3]_i_10_n_0 ),
        .I2(G_IBUF[2]),
        .I3(R_IBUF[6]),
        .I4(\R8_reg[7]_i_10_n_6 ),
        .O(\R8[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEA8080EA80EAEA80)) 
    \R8[3]_i_3 
       (.I0(G_IBUF[5]),
        .I1(G_IBUF[4]),
        .I2(G_IBUF[1]),
        .I3(R_IBUF[6]),
        .I4(\R8_reg[7]_i_10_n_6 ),
        .I5(G_IBUF[2]),
        .O(\R8[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669966996)) 
    \R8[3]_i_4 
       (.I0(R_IBUF[6]),
        .I1(\R8_reg[7]_i_10_n_6 ),
        .I2(G_IBUF[2]),
        .I3(G_IBUF[5]),
        .I4(G_IBUF[1]),
        .I5(G_IBUF[4]),
        .O(\R8[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \R8[3]_i_5 
       (.I0(\R8_reg[7]_i_10_n_7 ),
        .I1(R_IBUF[5]),
        .O(\R8[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h99969666)) 
    \R8[3]_i_6 
       (.I0(\R8[3]_i_2_n_0 ),
        .I1(\R8[3]_i_11_n_0 ),
        .I2(\R8_reg[7]_i_10_n_5 ),
        .I3(R_IBUF[7]),
        .I4(G_IBUF[3]),
        .O(\R8[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \R8[3]_i_7 
       (.I0(\R8[3]_i_3_n_0 ),
        .I1(\R8[3]_i_10_n_0 ),
        .I2(G_IBUF[6]),
        .I3(\R8_reg[7]_i_10_n_6 ),
        .I4(R_IBUF[6]),
        .I5(G_IBUF[2]),
        .O(\R8[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h7887788778878778)) 
    \R8[3]_i_8 
       (.I0(G_IBUF[4]),
        .I1(G_IBUF[1]),
        .I2(G_IBUF[5]),
        .I3(\R8[3]_i_12_n_0 ),
        .I4(\R8_reg[7]_i_10_n_7 ),
        .I5(R_IBUF[5]),
        .O(\R8[3]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \R8[3]_i_9 
       (.I0(\R8_reg[7]_i_10_n_7 ),
        .I1(R_IBUF[5]),
        .I2(G_IBUF[1]),
        .I3(G_IBUF[4]),
        .O(\R8[3]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \R8[7]_i_11 
       (.I0(\R8_reg[7]_i_10_n_4 ),
        .I1(G_IBUF[4]),
        .I2(G_IBUF[7]),
        .O(\R8[7]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \R8[7]_i_12 
       (.I0(R_IBUF[6]),
        .I1(B_IBUF[7]),
        .O(\R8[7]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \R8[7]_i_13 
       (.I0(R_IBUF[5]),
        .I1(B_IBUF[6]),
        .O(\R8[7]_i_13_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \R8[7]_i_14 
       (.I0(R_IBUF[7]),
        .O(\R8[7]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \R8[7]_i_15 
       (.I0(B_IBUF[7]),
        .I1(R_IBUF[6]),
        .I2(R_IBUF[7]),
        .O(\R8[7]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \R8[7]_i_16 
       (.I0(B_IBUF[6]),
        .I1(R_IBUF[5]),
        .I2(B_IBUF[7]),
        .I3(R_IBUF[6]),
        .O(\R8[7]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \R8[7]_i_17 
       (.I0(R_IBUF[4]),
        .I1(B_IBUF[5]),
        .O(\R8[7]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \R8[7]_i_18 
       (.I0(B_IBUF[7]),
        .I1(B_IBUF[4]),
        .I2(R_IBUF[3]),
        .O(\R8[7]_i_18_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \R8[7]_i_19 
       (.I0(B_IBUF[6]),
        .I1(B_IBUF[3]),
        .I2(R_IBUF[2]),
        .O(\R8[7]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \R8[7]_i_2 
       (.I0(\R8_reg[7]_i_9_n_6 ),
        .I1(G_IBUF[6]),
        .O(\R8[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \R8[7]_i_20 
       (.I0(B_IBUF[5]),
        .I1(R_IBUF[4]),
        .I2(B_IBUF[6]),
        .I3(R_IBUF[5]),
        .O(\R8[7]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \R8[7]_i_21 
       (.I0(R_IBUF[3]),
        .I1(B_IBUF[4]),
        .I2(B_IBUF[7]),
        .I3(B_IBUF[5]),
        .I4(R_IBUF[4]),
        .O(\R8[7]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \R8[7]_i_22 
       (.I0(\R8[7]_i_19_n_0 ),
        .I1(B_IBUF[7]),
        .I2(B_IBUF[4]),
        .I3(R_IBUF[3]),
        .O(\R8[7]_i_22_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \R8[7]_i_23 
       (.I0(B_IBUF[6]),
        .I1(B_IBUF[3]),
        .I2(R_IBUF[2]),
        .O(\R8[7]_i_23_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \R8[7]_i_3 
       (.I0(\R8_reg[7]_i_9_n_7 ),
        .I1(G_IBUF[5]),
        .I2(G_IBUF[7]),
        .I3(G_IBUF[4]),
        .I4(\R8_reg[7]_i_10_n_4 ),
        .O(\R8[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9696960096000000)) 
    \R8[7]_i_4 
       (.I0(G_IBUF[4]),
        .I1(\R8_reg[7]_i_10_n_4 ),
        .I2(G_IBUF[7]),
        .I3(G_IBUF[3]),
        .I4(R_IBUF[7]),
        .I5(\R8_reg[7]_i_10_n_5 ),
        .O(\R8[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h87)) 
    \R8[7]_i_5 
       (.I0(G_IBUF[7]),
        .I1(\R8_reg[7]_i_9_n_5 ),
        .I2(\R8_reg[7]_i_9_n_0 ),
        .O(\R8[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \R8[7]_i_6 
       (.I0(G_IBUF[6]),
        .I1(\R8_reg[7]_i_9_n_6 ),
        .I2(\R8_reg[7]_i_9_n_5 ),
        .I3(G_IBUF[7]),
        .O(\R8[7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \R8[7]_i_7 
       (.I0(\R8[7]_i_11_n_0 ),
        .I1(G_IBUF[5]),
        .I2(\R8_reg[7]_i_9_n_7 ),
        .I3(\R8_reg[7]_i_9_n_6 ),
        .I4(G_IBUF[6]),
        .O(\R8[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \R8[7]_i_8 
       (.I0(\R8[7]_i_4_n_0 ),
        .I1(G_IBUF[5]),
        .I2(\R8_reg[7]_i_9_n_7 ),
        .I3(\R8_reg[7]_i_10_n_4 ),
        .I4(G_IBUF[4]),
        .I5(G_IBUF[7]),
        .O(\R8[7]_i_8_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \R8_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(Y_calc[0]),
        .Q(R8[0]));
  FDCE #(
    .INIT(1'b0)) 
    \R8_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(Y_calc[1]),
        .Q(R8[1]));
  FDCE #(
    .INIT(1'b0)) 
    \R8_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(Y_calc[2]),
        .Q(R8[2]));
  FDCE #(
    .INIT(1'b0)) 
    \R8_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(Y_calc[3]),
        .Q(R8[3]));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \R8_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\R8_reg[3]_i_1_n_0 ,\NLW_R8_reg[3]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\R8[3]_i_2_n_0 ,\R8[3]_i_3_n_0 ,\R8[3]_i_4_n_0 ,\R8[3]_i_5_n_0 }),
        .O(Y_calc[3:0]),
        .S({\R8[3]_i_6_n_0 ,\R8[3]_i_7_n_0 ,\R8[3]_i_8_n_0 ,\R8[3]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \R8_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(Y_calc[4]),
        .Q(R8[4]));
  FDCE #(
    .INIT(1'b0)) 
    \R8_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(Y_calc[5]),
        .Q(R8[5]));
  FDCE #(
    .INIT(1'b0)) 
    \R8_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(Y_calc[6]),
        .Q(R8[6]));
  FDCE #(
    .INIT(1'b0)) 
    \R8_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(Y_calc[7]),
        .Q(R8[7]));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \R8_reg[7]_i_1 
       (.CI(\R8_reg[3]_i_1_n_0 ),
        .CO(\NLW_R8_reg[7]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\R8[7]_i_2_n_0 ,\R8[7]_i_3_n_0 ,\R8[7]_i_4_n_0 }),
        .O(Y_calc[7:4]),
        .S({\R8[7]_i_5_n_0 ,\R8[7]_i_6_n_0 ,\R8[7]_i_7_n_0 ,\R8[7]_i_8_n_0 }));
  (* OPT_MODIFIED = "PROPCONST SWEEP " *) 
  CARRY4 \R8_reg[7]_i_10 
       (.CI(1'b0),
        .CO({\R8_reg[7]_i_10_n_0 ,\NLW_R8_reg[7]_i_10_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\R8[7]_i_17_n_0 ,\R8[7]_i_18_n_0 ,\R8[7]_i_19_n_0 ,1'b0}),
        .O({\R8_reg[7]_i_10_n_4 ,\R8_reg[7]_i_10_n_5 ,\R8_reg[7]_i_10_n_6 ,\R8_reg[7]_i_10_n_7 }),
        .S({\R8[7]_i_20_n_0 ,\R8[7]_i_21_n_0 ,\R8[7]_i_22_n_0 ,\R8[7]_i_23_n_0 }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \R8_reg[7]_i_9 
       (.CI(\R8_reg[7]_i_10_n_0 ),
        .CO({\R8_reg[7]_i_9_n_0 ,\NLW_R8_reg[7]_i_9_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,R_IBUF[7],\R8[7]_i_12_n_0 ,\R8[7]_i_13_n_0 }),
        .O({\NLW_R8_reg[7]_i_9_O_UNCONNECTED [3],\R8_reg[7]_i_9_n_5 ,\R8_reg[7]_i_9_n_6 ,\R8_reg[7]_i_9_n_7 }),
        .S({1'b1,\R8[7]_i_14_n_0 ,\R8[7]_i_15_n_0 ,\R8[7]_i_16_n_0 }));
  IBUF \R_IBUF[2]_inst 
       (.I(R[2]),
        .O(R_IBUF[2]));
  IBUF \R_IBUF[3]_inst 
       (.I(R[3]),
        .O(R_IBUF[3]));
  IBUF \R_IBUF[4]_inst 
       (.I(R[4]),
        .O(R_IBUF[4]));
  IBUF \R_IBUF[5]_inst 
       (.I(R[5]),
        .O(R_IBUF[5]));
  IBUF \R_IBUF[6]_inst 
       (.I(R[6]),
        .O(R_IBUF[6]));
  IBUF \R_IBUF[7]_inst 
       (.I(R[7]),
        .O(R_IBUF[7]));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT POST_PROCESS_NETLIST " *) 
  (* srl_bus_name = "\buf1_reg[127] " *) 
  (* srl_name = "\buf1_reg[127][0]_srl32_buf1_reg_c_126 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[127][0]_srl32_buf1_reg_c_126 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[95][0]_srl32_buf1_reg_c_94_n_1 ),
        .Q(\NLW_buf1_reg[127][0]_srl32_buf1_reg_c_126_Q_UNCONNECTED ),
        .Q31(xlnx_opt_));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT POST_PROCESS_NETLIST " *) 
  (* srl_bus_name = "\buf1_reg[127] " *) 
  (* srl_name = "\buf1_reg[127][1]_srl32_buf1_reg_c_126 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[127][1]_srl32_buf1_reg_c_126 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[95][1]_srl32_buf1_reg_c_94_n_1 ),
        .Q(\NLW_buf1_reg[127][1]_srl32_buf1_reg_c_126_Q_UNCONNECTED ),
        .Q31(xlnx_opt__1));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT POST_PROCESS_NETLIST " *) 
  (* srl_bus_name = "\buf1_reg[127] " *) 
  (* srl_name = "\buf1_reg[127][2]_srl32_buf1_reg_c_126 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[127][2]_srl32_buf1_reg_c_126 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[95][2]_srl32_buf1_reg_c_94_n_1 ),
        .Q(\NLW_buf1_reg[127][2]_srl32_buf1_reg_c_126_Q_UNCONNECTED ),
        .Q31(xlnx_opt__2));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT POST_PROCESS_NETLIST " *) 
  (* srl_bus_name = "\buf1_reg[127] " *) 
  (* srl_name = "\buf1_reg[127][3]_srl32_buf1_reg_c_126 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[127][3]_srl32_buf1_reg_c_126 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[95][3]_srl32_buf1_reg_c_94_n_1 ),
        .Q(\NLW_buf1_reg[127][3]_srl32_buf1_reg_c_126_Q_UNCONNECTED ),
        .Q31(xlnx_opt__3));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT POST_PROCESS_NETLIST " *) 
  (* srl_bus_name = "\buf1_reg[127] " *) 
  (* srl_name = "\buf1_reg[127][4]_srl32_buf1_reg_c_126 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[127][4]_srl32_buf1_reg_c_126 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[95][4]_srl32_buf1_reg_c_94_n_1 ),
        .Q(\NLW_buf1_reg[127][4]_srl32_buf1_reg_c_126_Q_UNCONNECTED ),
        .Q31(xlnx_opt__4));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT POST_PROCESS_NETLIST " *) 
  (* srl_bus_name = "\buf1_reg[127] " *) 
  (* srl_name = "\buf1_reg[127][5]_srl32_buf1_reg_c_126 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[127][5]_srl32_buf1_reg_c_126 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[95][5]_srl32_buf1_reg_c_94_n_1 ),
        .Q(\NLW_buf1_reg[127][5]_srl32_buf1_reg_c_126_Q_UNCONNECTED ),
        .Q31(xlnx_opt__5));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT POST_PROCESS_NETLIST " *) 
  (* srl_bus_name = "\buf1_reg[127] " *) 
  (* srl_name = "\buf1_reg[127][6]_srl32_buf1_reg_c_126 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[127][6]_srl32_buf1_reg_c_126 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[95][6]_srl32_buf1_reg_c_94_n_1 ),
        .Q(\NLW_buf1_reg[127][6]_srl32_buf1_reg_c_126_Q_UNCONNECTED ),
        .Q31(xlnx_opt__6));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT POST_PROCESS_NETLIST " *) 
  (* srl_bus_name = "\buf1_reg[127] " *) 
  (* srl_name = "\buf1_reg[127][7]_srl32_buf1_reg_c_126 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[127][7]_srl32_buf1_reg_c_126 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[95][7]_srl32_buf1_reg_c_94_n_1 ),
        .Q(\NLW_buf1_reg[127][7]_srl32_buf1_reg_c_126_Q_UNCONNECTED ),
        .Q31(xlnx_opt__7));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT " *) 
  (* srl_bus_name = "\buf1_reg[159] " *) 
  (* srl_name = "\buf1_reg[159][0]_srl32_buf1_reg_c_158 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[159][0]_srl32_buf1_reg_c_158 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(xlnx_opt_),
        .Q(\NLW_buf1_reg[159][0]_srl32_buf1_reg_c_158_Q_UNCONNECTED ),
        .Q31(\buf1_reg[159][0]_srl32_buf1_reg_c_158_n_1 ));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT " *) 
  (* srl_bus_name = "\buf1_reg[159] " *) 
  (* srl_name = "\buf1_reg[159][1]_srl32_buf1_reg_c_158 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[159][1]_srl32_buf1_reg_c_158 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(xlnx_opt__1),
        .Q(\NLW_buf1_reg[159][1]_srl32_buf1_reg_c_158_Q_UNCONNECTED ),
        .Q31(\buf1_reg[159][1]_srl32_buf1_reg_c_158_n_1 ));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT " *) 
  (* srl_bus_name = "\buf1_reg[159] " *) 
  (* srl_name = "\buf1_reg[159][2]_srl32_buf1_reg_c_158 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[159][2]_srl32_buf1_reg_c_158 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(xlnx_opt__2),
        .Q(\NLW_buf1_reg[159][2]_srl32_buf1_reg_c_158_Q_UNCONNECTED ),
        .Q31(\buf1_reg[159][2]_srl32_buf1_reg_c_158_n_1 ));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT " *) 
  (* srl_bus_name = "\buf1_reg[159] " *) 
  (* srl_name = "\buf1_reg[159][3]_srl32_buf1_reg_c_158 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[159][3]_srl32_buf1_reg_c_158 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(xlnx_opt__3),
        .Q(\NLW_buf1_reg[159][3]_srl32_buf1_reg_c_158_Q_UNCONNECTED ),
        .Q31(\buf1_reg[159][3]_srl32_buf1_reg_c_158_n_1 ));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT " *) 
  (* srl_bus_name = "\buf1_reg[159] " *) 
  (* srl_name = "\buf1_reg[159][4]_srl32_buf1_reg_c_158 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[159][4]_srl32_buf1_reg_c_158 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(xlnx_opt__4),
        .Q(\NLW_buf1_reg[159][4]_srl32_buf1_reg_c_158_Q_UNCONNECTED ),
        .Q31(\buf1_reg[159][4]_srl32_buf1_reg_c_158_n_1 ));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT " *) 
  (* srl_bus_name = "\buf1_reg[159] " *) 
  (* srl_name = "\buf1_reg[159][5]_srl32_buf1_reg_c_158 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[159][5]_srl32_buf1_reg_c_158 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(xlnx_opt__5),
        .Q(\NLW_buf1_reg[159][5]_srl32_buf1_reg_c_158_Q_UNCONNECTED ),
        .Q31(\buf1_reg[159][5]_srl32_buf1_reg_c_158_n_1 ));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT " *) 
  (* srl_bus_name = "\buf1_reg[159] " *) 
  (* srl_name = "\buf1_reg[159][6]_srl32_buf1_reg_c_158 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[159][6]_srl32_buf1_reg_c_158 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(xlnx_opt__6),
        .Q(\NLW_buf1_reg[159][6]_srl32_buf1_reg_c_158_Q_UNCONNECTED ),
        .Q31(\buf1_reg[159][6]_srl32_buf1_reg_c_158_n_1 ));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT " *) 
  (* srl_bus_name = "\buf1_reg[159] " *) 
  (* srl_name = "\buf1_reg[159][7]_srl32_buf1_reg_c_158 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[159][7]_srl32_buf1_reg_c_158 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(xlnx_opt__7),
        .Q(\NLW_buf1_reg[159][7]_srl32_buf1_reg_c_158_Q_UNCONNECTED ),
        .Q31(\buf1_reg[159][7]_srl32_buf1_reg_c_158_n_1 ));
  (* srl_bus_name = "\buf1_reg[191] " *) 
  (* srl_name = "\buf1_reg[191][0]_srl32_buf1_reg_c_190 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[191][0]_srl32_buf1_reg_c_190 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[159][0]_srl32_buf1_reg_c_158_n_1 ),
        .Q(\NLW_buf1_reg[191][0]_srl32_buf1_reg_c_190_Q_UNCONNECTED ),
        .Q31(\buf1_reg[191][0]_srl32_buf1_reg_c_190_n_1 ));
  (* srl_bus_name = "\buf1_reg[191] " *) 
  (* srl_name = "\buf1_reg[191][1]_srl32_buf1_reg_c_190 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[191][1]_srl32_buf1_reg_c_190 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[159][1]_srl32_buf1_reg_c_158_n_1 ),
        .Q(\NLW_buf1_reg[191][1]_srl32_buf1_reg_c_190_Q_UNCONNECTED ),
        .Q31(\buf1_reg[191][1]_srl32_buf1_reg_c_190_n_1 ));
  (* srl_bus_name = "\buf1_reg[191] " *) 
  (* srl_name = "\buf1_reg[191][2]_srl32_buf1_reg_c_190 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[191][2]_srl32_buf1_reg_c_190 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[159][2]_srl32_buf1_reg_c_158_n_1 ),
        .Q(\NLW_buf1_reg[191][2]_srl32_buf1_reg_c_190_Q_UNCONNECTED ),
        .Q31(\buf1_reg[191][2]_srl32_buf1_reg_c_190_n_1 ));
  (* srl_bus_name = "\buf1_reg[191] " *) 
  (* srl_name = "\buf1_reg[191][3]_srl32_buf1_reg_c_190 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[191][3]_srl32_buf1_reg_c_190 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[159][3]_srl32_buf1_reg_c_158_n_1 ),
        .Q(\NLW_buf1_reg[191][3]_srl32_buf1_reg_c_190_Q_UNCONNECTED ),
        .Q31(\buf1_reg[191][3]_srl32_buf1_reg_c_190_n_1 ));
  (* srl_bus_name = "\buf1_reg[191] " *) 
  (* srl_name = "\buf1_reg[191][4]_srl32_buf1_reg_c_190 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[191][4]_srl32_buf1_reg_c_190 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[159][4]_srl32_buf1_reg_c_158_n_1 ),
        .Q(\NLW_buf1_reg[191][4]_srl32_buf1_reg_c_190_Q_UNCONNECTED ),
        .Q31(\buf1_reg[191][4]_srl32_buf1_reg_c_190_n_1 ));
  (* srl_bus_name = "\buf1_reg[191] " *) 
  (* srl_name = "\buf1_reg[191][5]_srl32_buf1_reg_c_190 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[191][5]_srl32_buf1_reg_c_190 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[159][5]_srl32_buf1_reg_c_158_n_1 ),
        .Q(\NLW_buf1_reg[191][5]_srl32_buf1_reg_c_190_Q_UNCONNECTED ),
        .Q31(\buf1_reg[191][5]_srl32_buf1_reg_c_190_n_1 ));
  (* srl_bus_name = "\buf1_reg[191] " *) 
  (* srl_name = "\buf1_reg[191][6]_srl32_buf1_reg_c_190 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[191][6]_srl32_buf1_reg_c_190 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[159][6]_srl32_buf1_reg_c_158_n_1 ),
        .Q(\NLW_buf1_reg[191][6]_srl32_buf1_reg_c_190_Q_UNCONNECTED ),
        .Q31(\buf1_reg[191][6]_srl32_buf1_reg_c_190_n_1 ));
  (* srl_bus_name = "\buf1_reg[191] " *) 
  (* srl_name = "\buf1_reg[191][7]_srl32_buf1_reg_c_190 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[191][7]_srl32_buf1_reg_c_190 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[159][7]_srl32_buf1_reg_c_158_n_1 ),
        .Q(\NLW_buf1_reg[191][7]_srl32_buf1_reg_c_190_Q_UNCONNECTED ),
        .Q31(\buf1_reg[191][7]_srl32_buf1_reg_c_190_n_1 ));
  (* srl_bus_name = "\buf1_reg[223] " *) 
  (* srl_name = "\buf1_reg[223][0]_srl32_buf1_reg_c_222 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[223][0]_srl32_buf1_reg_c_222 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[191][0]_srl32_buf1_reg_c_190_n_1 ),
        .Q(\NLW_buf1_reg[223][0]_srl32_buf1_reg_c_222_Q_UNCONNECTED ),
        .Q31(\buf1_reg[223][0]_srl32_buf1_reg_c_222_n_1 ));
  (* srl_bus_name = "\buf1_reg[223] " *) 
  (* srl_name = "\buf1_reg[223][1]_srl32_buf1_reg_c_222 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[223][1]_srl32_buf1_reg_c_222 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[191][1]_srl32_buf1_reg_c_190_n_1 ),
        .Q(\NLW_buf1_reg[223][1]_srl32_buf1_reg_c_222_Q_UNCONNECTED ),
        .Q31(\buf1_reg[223][1]_srl32_buf1_reg_c_222_n_1 ));
  (* srl_bus_name = "\buf1_reg[223] " *) 
  (* srl_name = "\buf1_reg[223][2]_srl32_buf1_reg_c_222 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[223][2]_srl32_buf1_reg_c_222 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[191][2]_srl32_buf1_reg_c_190_n_1 ),
        .Q(\NLW_buf1_reg[223][2]_srl32_buf1_reg_c_222_Q_UNCONNECTED ),
        .Q31(\buf1_reg[223][2]_srl32_buf1_reg_c_222_n_1 ));
  (* srl_bus_name = "\buf1_reg[223] " *) 
  (* srl_name = "\buf1_reg[223][3]_srl32_buf1_reg_c_222 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[223][3]_srl32_buf1_reg_c_222 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[191][3]_srl32_buf1_reg_c_190_n_1 ),
        .Q(\NLW_buf1_reg[223][3]_srl32_buf1_reg_c_222_Q_UNCONNECTED ),
        .Q31(\buf1_reg[223][3]_srl32_buf1_reg_c_222_n_1 ));
  (* srl_bus_name = "\buf1_reg[223] " *) 
  (* srl_name = "\buf1_reg[223][4]_srl32_buf1_reg_c_222 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[223][4]_srl32_buf1_reg_c_222 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[191][4]_srl32_buf1_reg_c_190_n_1 ),
        .Q(\NLW_buf1_reg[223][4]_srl32_buf1_reg_c_222_Q_UNCONNECTED ),
        .Q31(\buf1_reg[223][4]_srl32_buf1_reg_c_222_n_1 ));
  (* srl_bus_name = "\buf1_reg[223] " *) 
  (* srl_name = "\buf1_reg[223][5]_srl32_buf1_reg_c_222 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[223][5]_srl32_buf1_reg_c_222 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[191][5]_srl32_buf1_reg_c_190_n_1 ),
        .Q(\NLW_buf1_reg[223][5]_srl32_buf1_reg_c_222_Q_UNCONNECTED ),
        .Q31(\buf1_reg[223][5]_srl32_buf1_reg_c_222_n_1 ));
  (* srl_bus_name = "\buf1_reg[223] " *) 
  (* srl_name = "\buf1_reg[223][6]_srl32_buf1_reg_c_222 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[223][6]_srl32_buf1_reg_c_222 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[191][6]_srl32_buf1_reg_c_190_n_1 ),
        .Q(\NLW_buf1_reg[223][6]_srl32_buf1_reg_c_222_Q_UNCONNECTED ),
        .Q31(\buf1_reg[223][6]_srl32_buf1_reg_c_222_n_1 ));
  (* srl_bus_name = "\buf1_reg[223] " *) 
  (* srl_name = "\buf1_reg[223][7]_srl32_buf1_reg_c_222 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[223][7]_srl32_buf1_reg_c_222 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[191][7]_srl32_buf1_reg_c_190_n_1 ),
        .Q(\NLW_buf1_reg[223][7]_srl32_buf1_reg_c_222_Q_UNCONNECTED ),
        .Q31(\buf1_reg[223][7]_srl32_buf1_reg_c_222_n_1 ));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT POST_PROCESS_NETLIST " *) 
  (* srl_bus_name = "\buf1_reg[255] " *) 
  (* srl_name = "\buf1_reg[255][0]_srl32_buf1_reg_c_254 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[255][0]_srl32_buf1_reg_c_254 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[223][0]_srl32_buf1_reg_c_222_n_1 ),
        .Q(\NLW_buf1_reg[255][0]_srl32_buf1_reg_c_254_Q_UNCONNECTED ),
        .Q31(xlnx_opt__8));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT POST_PROCESS_NETLIST " *) 
  (* srl_bus_name = "\buf1_reg[255] " *) 
  (* srl_name = "\buf1_reg[255][1]_srl32_buf1_reg_c_254 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[255][1]_srl32_buf1_reg_c_254 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[223][1]_srl32_buf1_reg_c_222_n_1 ),
        .Q(\NLW_buf1_reg[255][1]_srl32_buf1_reg_c_254_Q_UNCONNECTED ),
        .Q31(xlnx_opt__9));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT POST_PROCESS_NETLIST " *) 
  (* srl_bus_name = "\buf1_reg[255] " *) 
  (* srl_name = "\buf1_reg[255][2]_srl32_buf1_reg_c_254 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[255][2]_srl32_buf1_reg_c_254 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[223][2]_srl32_buf1_reg_c_222_n_1 ),
        .Q(\NLW_buf1_reg[255][2]_srl32_buf1_reg_c_254_Q_UNCONNECTED ),
        .Q31(xlnx_opt__10));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT POST_PROCESS_NETLIST " *) 
  (* srl_bus_name = "\buf1_reg[255] " *) 
  (* srl_name = "\buf1_reg[255][3]_srl32_buf1_reg_c_254 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[255][3]_srl32_buf1_reg_c_254 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[223][3]_srl32_buf1_reg_c_222_n_1 ),
        .Q(\NLW_buf1_reg[255][3]_srl32_buf1_reg_c_254_Q_UNCONNECTED ),
        .Q31(xlnx_opt__11));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT POST_PROCESS_NETLIST " *) 
  (* srl_bus_name = "\buf1_reg[255] " *) 
  (* srl_name = "\buf1_reg[255][4]_srl32_buf1_reg_c_254 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[255][4]_srl32_buf1_reg_c_254 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[223][4]_srl32_buf1_reg_c_222_n_1 ),
        .Q(\NLW_buf1_reg[255][4]_srl32_buf1_reg_c_254_Q_UNCONNECTED ),
        .Q31(xlnx_opt__12));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT POST_PROCESS_NETLIST " *) 
  (* srl_bus_name = "\buf1_reg[255] " *) 
  (* srl_name = "\buf1_reg[255][5]_srl32_buf1_reg_c_254 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[255][5]_srl32_buf1_reg_c_254 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[223][5]_srl32_buf1_reg_c_222_n_1 ),
        .Q(\NLW_buf1_reg[255][5]_srl32_buf1_reg_c_254_Q_UNCONNECTED ),
        .Q31(xlnx_opt__13));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT POST_PROCESS_NETLIST " *) 
  (* srl_bus_name = "\buf1_reg[255] " *) 
  (* srl_name = "\buf1_reg[255][6]_srl32_buf1_reg_c_254 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[255][6]_srl32_buf1_reg_c_254 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[223][6]_srl32_buf1_reg_c_222_n_1 ),
        .Q(\NLW_buf1_reg[255][6]_srl32_buf1_reg_c_254_Q_UNCONNECTED ),
        .Q31(xlnx_opt__14));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT POST_PROCESS_NETLIST " *) 
  (* srl_bus_name = "\buf1_reg[255] " *) 
  (* srl_name = "\buf1_reg[255][7]_srl32_buf1_reg_c_254 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[255][7]_srl32_buf1_reg_c_254 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[223][7]_srl32_buf1_reg_c_222_n_1 ),
        .Q(\NLW_buf1_reg[255][7]_srl32_buf1_reg_c_254_Q_UNCONNECTED ),
        .Q31(xlnx_opt__15));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT " *) 
  (* srl_bus_name = "\buf1_reg[287] " *) 
  (* srl_name = "\buf1_reg[287][0]_srl32_buf1_reg_c_286 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[287][0]_srl32_buf1_reg_c_286 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(xlnx_opt__8),
        .Q(\NLW_buf1_reg[287][0]_srl32_buf1_reg_c_286_Q_UNCONNECTED ),
        .Q31(\buf1_reg[287][0]_srl32_buf1_reg_c_286_n_1 ));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT " *) 
  (* srl_bus_name = "\buf1_reg[287] " *) 
  (* srl_name = "\buf1_reg[287][1]_srl32_buf1_reg_c_286 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[287][1]_srl32_buf1_reg_c_286 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(xlnx_opt__9),
        .Q(\NLW_buf1_reg[287][1]_srl32_buf1_reg_c_286_Q_UNCONNECTED ),
        .Q31(\buf1_reg[287][1]_srl32_buf1_reg_c_286_n_1 ));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT " *) 
  (* srl_bus_name = "\buf1_reg[287] " *) 
  (* srl_name = "\buf1_reg[287][2]_srl32_buf1_reg_c_286 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[287][2]_srl32_buf1_reg_c_286 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(xlnx_opt__10),
        .Q(\NLW_buf1_reg[287][2]_srl32_buf1_reg_c_286_Q_UNCONNECTED ),
        .Q31(\buf1_reg[287][2]_srl32_buf1_reg_c_286_n_1 ));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT " *) 
  (* srl_bus_name = "\buf1_reg[287] " *) 
  (* srl_name = "\buf1_reg[287][3]_srl32_buf1_reg_c_286 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[287][3]_srl32_buf1_reg_c_286 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(xlnx_opt__11),
        .Q(\NLW_buf1_reg[287][3]_srl32_buf1_reg_c_286_Q_UNCONNECTED ),
        .Q31(\buf1_reg[287][3]_srl32_buf1_reg_c_286_n_1 ));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT " *) 
  (* srl_bus_name = "\buf1_reg[287] " *) 
  (* srl_name = "\buf1_reg[287][4]_srl32_buf1_reg_c_286 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[287][4]_srl32_buf1_reg_c_286 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(xlnx_opt__12),
        .Q(\NLW_buf1_reg[287][4]_srl32_buf1_reg_c_286_Q_UNCONNECTED ),
        .Q31(\buf1_reg[287][4]_srl32_buf1_reg_c_286_n_1 ));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT " *) 
  (* srl_bus_name = "\buf1_reg[287] " *) 
  (* srl_name = "\buf1_reg[287][5]_srl32_buf1_reg_c_286 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[287][5]_srl32_buf1_reg_c_286 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(xlnx_opt__13),
        .Q(\NLW_buf1_reg[287][5]_srl32_buf1_reg_c_286_Q_UNCONNECTED ),
        .Q31(\buf1_reg[287][5]_srl32_buf1_reg_c_286_n_1 ));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT " *) 
  (* srl_bus_name = "\buf1_reg[287] " *) 
  (* srl_name = "\buf1_reg[287][6]_srl32_buf1_reg_c_286 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[287][6]_srl32_buf1_reg_c_286 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(xlnx_opt__14),
        .Q(\NLW_buf1_reg[287][6]_srl32_buf1_reg_c_286_Q_UNCONNECTED ),
        .Q31(\buf1_reg[287][6]_srl32_buf1_reg_c_286_n_1 ));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT " *) 
  (* srl_bus_name = "\buf1_reg[287] " *) 
  (* srl_name = "\buf1_reg[287][7]_srl32_buf1_reg_c_286 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[287][7]_srl32_buf1_reg_c_286 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(xlnx_opt__15),
        .Q(\NLW_buf1_reg[287][7]_srl32_buf1_reg_c_286_Q_UNCONNECTED ),
        .Q31(\buf1_reg[287][7]_srl32_buf1_reg_c_286_n_1 ));
  (* srl_bus_name = "\buf1_reg[319] " *) 
  (* srl_name = "\buf1_reg[319][0]_srl32_buf1_reg_c_318 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[319][0]_srl32_buf1_reg_c_318 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[287][0]_srl32_buf1_reg_c_286_n_1 ),
        .Q(\NLW_buf1_reg[319][0]_srl32_buf1_reg_c_318_Q_UNCONNECTED ),
        .Q31(\buf1_reg[319][0]_srl32_buf1_reg_c_318_n_1 ));
  (* srl_bus_name = "\buf1_reg[319] " *) 
  (* srl_name = "\buf1_reg[319][1]_srl32_buf1_reg_c_318 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[319][1]_srl32_buf1_reg_c_318 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[287][1]_srl32_buf1_reg_c_286_n_1 ),
        .Q(\NLW_buf1_reg[319][1]_srl32_buf1_reg_c_318_Q_UNCONNECTED ),
        .Q31(\buf1_reg[319][1]_srl32_buf1_reg_c_318_n_1 ));
  (* srl_bus_name = "\buf1_reg[319] " *) 
  (* srl_name = "\buf1_reg[319][2]_srl32_buf1_reg_c_318 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[319][2]_srl32_buf1_reg_c_318 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[287][2]_srl32_buf1_reg_c_286_n_1 ),
        .Q(\NLW_buf1_reg[319][2]_srl32_buf1_reg_c_318_Q_UNCONNECTED ),
        .Q31(\buf1_reg[319][2]_srl32_buf1_reg_c_318_n_1 ));
  (* srl_bus_name = "\buf1_reg[319] " *) 
  (* srl_name = "\buf1_reg[319][3]_srl32_buf1_reg_c_318 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[319][3]_srl32_buf1_reg_c_318 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[287][3]_srl32_buf1_reg_c_286_n_1 ),
        .Q(\NLW_buf1_reg[319][3]_srl32_buf1_reg_c_318_Q_UNCONNECTED ),
        .Q31(\buf1_reg[319][3]_srl32_buf1_reg_c_318_n_1 ));
  (* srl_bus_name = "\buf1_reg[319] " *) 
  (* srl_name = "\buf1_reg[319][4]_srl32_buf1_reg_c_318 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[319][4]_srl32_buf1_reg_c_318 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[287][4]_srl32_buf1_reg_c_286_n_1 ),
        .Q(\NLW_buf1_reg[319][4]_srl32_buf1_reg_c_318_Q_UNCONNECTED ),
        .Q31(\buf1_reg[319][4]_srl32_buf1_reg_c_318_n_1 ));
  (* srl_bus_name = "\buf1_reg[319] " *) 
  (* srl_name = "\buf1_reg[319][5]_srl32_buf1_reg_c_318 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[319][5]_srl32_buf1_reg_c_318 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[287][5]_srl32_buf1_reg_c_286_n_1 ),
        .Q(\NLW_buf1_reg[319][5]_srl32_buf1_reg_c_318_Q_UNCONNECTED ),
        .Q31(\buf1_reg[319][5]_srl32_buf1_reg_c_318_n_1 ));
  (* srl_bus_name = "\buf1_reg[319] " *) 
  (* srl_name = "\buf1_reg[319][6]_srl32_buf1_reg_c_318 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[319][6]_srl32_buf1_reg_c_318 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[287][6]_srl32_buf1_reg_c_286_n_1 ),
        .Q(\NLW_buf1_reg[319][6]_srl32_buf1_reg_c_318_Q_UNCONNECTED ),
        .Q31(\buf1_reg[319][6]_srl32_buf1_reg_c_318_n_1 ));
  (* srl_bus_name = "\buf1_reg[319] " *) 
  (* srl_name = "\buf1_reg[319][7]_srl32_buf1_reg_c_318 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[319][7]_srl32_buf1_reg_c_318 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[287][7]_srl32_buf1_reg_c_286_n_1 ),
        .Q(\NLW_buf1_reg[319][7]_srl32_buf1_reg_c_318_Q_UNCONNECTED ),
        .Q31(\buf1_reg[319][7]_srl32_buf1_reg_c_318_n_1 ));
  (* srl_bus_name = "\buf1_reg[31] " *) 
  (* srl_name = "\buf1_reg[31][0]_srl32_buf1_reg_c_30 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[31][0]_srl32_buf1_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(R6[0]),
        .Q(\NLW_buf1_reg[31][0]_srl32_buf1_reg_c_30_Q_UNCONNECTED ),
        .Q31(\buf1_reg[31][0]_srl32_buf1_reg_c_30_n_1 ));
  (* srl_bus_name = "\buf1_reg[31] " *) 
  (* srl_name = "\buf1_reg[31][1]_srl32_buf1_reg_c_30 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[31][1]_srl32_buf1_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(R6[1]),
        .Q(\NLW_buf1_reg[31][1]_srl32_buf1_reg_c_30_Q_UNCONNECTED ),
        .Q31(\buf1_reg[31][1]_srl32_buf1_reg_c_30_n_1 ));
  (* srl_bus_name = "\buf1_reg[31] " *) 
  (* srl_name = "\buf1_reg[31][2]_srl32_buf1_reg_c_30 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[31][2]_srl32_buf1_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(R6[2]),
        .Q(\NLW_buf1_reg[31][2]_srl32_buf1_reg_c_30_Q_UNCONNECTED ),
        .Q31(\buf1_reg[31][2]_srl32_buf1_reg_c_30_n_1 ));
  (* srl_bus_name = "\buf1_reg[31] " *) 
  (* srl_name = "\buf1_reg[31][3]_srl32_buf1_reg_c_30 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[31][3]_srl32_buf1_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(R6[3]),
        .Q(\NLW_buf1_reg[31][3]_srl32_buf1_reg_c_30_Q_UNCONNECTED ),
        .Q31(\buf1_reg[31][3]_srl32_buf1_reg_c_30_n_1 ));
  (* srl_bus_name = "\buf1_reg[31] " *) 
  (* srl_name = "\buf1_reg[31][4]_srl32_buf1_reg_c_30 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[31][4]_srl32_buf1_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(R6[4]),
        .Q(\NLW_buf1_reg[31][4]_srl32_buf1_reg_c_30_Q_UNCONNECTED ),
        .Q31(\buf1_reg[31][4]_srl32_buf1_reg_c_30_n_1 ));
  (* srl_bus_name = "\buf1_reg[31] " *) 
  (* srl_name = "\buf1_reg[31][5]_srl32_buf1_reg_c_30 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[31][5]_srl32_buf1_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(R6[5]),
        .Q(\NLW_buf1_reg[31][5]_srl32_buf1_reg_c_30_Q_UNCONNECTED ),
        .Q31(\buf1_reg[31][5]_srl32_buf1_reg_c_30_n_1 ));
  (* srl_bus_name = "\buf1_reg[31] " *) 
  (* srl_name = "\buf1_reg[31][6]_srl32_buf1_reg_c_30 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[31][6]_srl32_buf1_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(R6[6]),
        .Q(\NLW_buf1_reg[31][6]_srl32_buf1_reg_c_30_Q_UNCONNECTED ),
        .Q31(\buf1_reg[31][6]_srl32_buf1_reg_c_30_n_1 ));
  (* srl_bus_name = "\buf1_reg[31] " *) 
  (* srl_name = "\buf1_reg[31][7]_srl32_buf1_reg_c_30 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[31][7]_srl32_buf1_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(R6[7]),
        .Q(\NLW_buf1_reg[31][7]_srl32_buf1_reg_c_30_Q_UNCONNECTED ),
        .Q31(\buf1_reg[31][7]_srl32_buf1_reg_c_30_n_1 ));
  (* srl_bus_name = "\buf1_reg[351] " *) 
  (* srl_name = "\buf1_reg[351][0]_srl32_buf1_reg_c_350 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[351][0]_srl32_buf1_reg_c_350 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[319][0]_srl32_buf1_reg_c_318_n_1 ),
        .Q(\NLW_buf1_reg[351][0]_srl32_buf1_reg_c_350_Q_UNCONNECTED ),
        .Q31(\buf1_reg[351][0]_srl32_buf1_reg_c_350_n_1 ));
  (* srl_bus_name = "\buf1_reg[351] " *) 
  (* srl_name = "\buf1_reg[351][1]_srl32_buf1_reg_c_350 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[351][1]_srl32_buf1_reg_c_350 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[319][1]_srl32_buf1_reg_c_318_n_1 ),
        .Q(\NLW_buf1_reg[351][1]_srl32_buf1_reg_c_350_Q_UNCONNECTED ),
        .Q31(\buf1_reg[351][1]_srl32_buf1_reg_c_350_n_1 ));
  (* srl_bus_name = "\buf1_reg[351] " *) 
  (* srl_name = "\buf1_reg[351][2]_srl32_buf1_reg_c_350 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[351][2]_srl32_buf1_reg_c_350 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[319][2]_srl32_buf1_reg_c_318_n_1 ),
        .Q(\NLW_buf1_reg[351][2]_srl32_buf1_reg_c_350_Q_UNCONNECTED ),
        .Q31(\buf1_reg[351][2]_srl32_buf1_reg_c_350_n_1 ));
  (* srl_bus_name = "\buf1_reg[351] " *) 
  (* srl_name = "\buf1_reg[351][3]_srl32_buf1_reg_c_350 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[351][3]_srl32_buf1_reg_c_350 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[319][3]_srl32_buf1_reg_c_318_n_1 ),
        .Q(\NLW_buf1_reg[351][3]_srl32_buf1_reg_c_350_Q_UNCONNECTED ),
        .Q31(\buf1_reg[351][3]_srl32_buf1_reg_c_350_n_1 ));
  (* srl_bus_name = "\buf1_reg[351] " *) 
  (* srl_name = "\buf1_reg[351][4]_srl32_buf1_reg_c_350 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[351][4]_srl32_buf1_reg_c_350 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[319][4]_srl32_buf1_reg_c_318_n_1 ),
        .Q(\NLW_buf1_reg[351][4]_srl32_buf1_reg_c_350_Q_UNCONNECTED ),
        .Q31(\buf1_reg[351][4]_srl32_buf1_reg_c_350_n_1 ));
  (* srl_bus_name = "\buf1_reg[351] " *) 
  (* srl_name = "\buf1_reg[351][5]_srl32_buf1_reg_c_350 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[351][5]_srl32_buf1_reg_c_350 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[319][5]_srl32_buf1_reg_c_318_n_1 ),
        .Q(\NLW_buf1_reg[351][5]_srl32_buf1_reg_c_350_Q_UNCONNECTED ),
        .Q31(\buf1_reg[351][5]_srl32_buf1_reg_c_350_n_1 ));
  (* srl_bus_name = "\buf1_reg[351] " *) 
  (* srl_name = "\buf1_reg[351][6]_srl32_buf1_reg_c_350 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[351][6]_srl32_buf1_reg_c_350 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[319][6]_srl32_buf1_reg_c_318_n_1 ),
        .Q(\NLW_buf1_reg[351][6]_srl32_buf1_reg_c_350_Q_UNCONNECTED ),
        .Q31(\buf1_reg[351][6]_srl32_buf1_reg_c_350_n_1 ));
  (* srl_bus_name = "\buf1_reg[351] " *) 
  (* srl_name = "\buf1_reg[351][7]_srl32_buf1_reg_c_350 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[351][7]_srl32_buf1_reg_c_350 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[319][7]_srl32_buf1_reg_c_318_n_1 ),
        .Q(\NLW_buf1_reg[351][7]_srl32_buf1_reg_c_350_Q_UNCONNECTED ),
        .Q31(\buf1_reg[351][7]_srl32_buf1_reg_c_350_n_1 ));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT POST_PROCESS_NETLIST " *) 
  (* srl_bus_name = "\buf1_reg[383] " *) 
  (* srl_name = "\buf1_reg[383][0]_srl32_buf1_reg_c_382 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[383][0]_srl32_buf1_reg_c_382 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[351][0]_srl32_buf1_reg_c_350_n_1 ),
        .Q(\NLW_buf1_reg[383][0]_srl32_buf1_reg_c_382_Q_UNCONNECTED ),
        .Q31(xlnx_opt__16));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT POST_PROCESS_NETLIST " *) 
  (* srl_bus_name = "\buf1_reg[383] " *) 
  (* srl_name = "\buf1_reg[383][1]_srl32_buf1_reg_c_382 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[383][1]_srl32_buf1_reg_c_382 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[351][1]_srl32_buf1_reg_c_350_n_1 ),
        .Q(\NLW_buf1_reg[383][1]_srl32_buf1_reg_c_382_Q_UNCONNECTED ),
        .Q31(xlnx_opt__17));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT POST_PROCESS_NETLIST " *) 
  (* srl_bus_name = "\buf1_reg[383] " *) 
  (* srl_name = "\buf1_reg[383][2]_srl32_buf1_reg_c_382 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[383][2]_srl32_buf1_reg_c_382 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[351][2]_srl32_buf1_reg_c_350_n_1 ),
        .Q(\NLW_buf1_reg[383][2]_srl32_buf1_reg_c_382_Q_UNCONNECTED ),
        .Q31(xlnx_opt__18));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT POST_PROCESS_NETLIST " *) 
  (* srl_bus_name = "\buf1_reg[383] " *) 
  (* srl_name = "\buf1_reg[383][3]_srl32_buf1_reg_c_382 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[383][3]_srl32_buf1_reg_c_382 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[351][3]_srl32_buf1_reg_c_350_n_1 ),
        .Q(\NLW_buf1_reg[383][3]_srl32_buf1_reg_c_382_Q_UNCONNECTED ),
        .Q31(xlnx_opt__19));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT POST_PROCESS_NETLIST " *) 
  (* srl_bus_name = "\buf1_reg[383] " *) 
  (* srl_name = "\buf1_reg[383][4]_srl32_buf1_reg_c_382 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[383][4]_srl32_buf1_reg_c_382 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[351][4]_srl32_buf1_reg_c_350_n_1 ),
        .Q(\NLW_buf1_reg[383][4]_srl32_buf1_reg_c_382_Q_UNCONNECTED ),
        .Q31(xlnx_opt__20));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT POST_PROCESS_NETLIST " *) 
  (* srl_bus_name = "\buf1_reg[383] " *) 
  (* srl_name = "\buf1_reg[383][5]_srl32_buf1_reg_c_382 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[383][5]_srl32_buf1_reg_c_382 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[351][5]_srl32_buf1_reg_c_350_n_1 ),
        .Q(\NLW_buf1_reg[383][5]_srl32_buf1_reg_c_382_Q_UNCONNECTED ),
        .Q31(xlnx_opt__21));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT POST_PROCESS_NETLIST " *) 
  (* srl_bus_name = "\buf1_reg[383] " *) 
  (* srl_name = "\buf1_reg[383][6]_srl32_buf1_reg_c_382 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[383][6]_srl32_buf1_reg_c_382 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[351][6]_srl32_buf1_reg_c_350_n_1 ),
        .Q(\NLW_buf1_reg[383][6]_srl32_buf1_reg_c_382_Q_UNCONNECTED ),
        .Q31(xlnx_opt__22));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT POST_PROCESS_NETLIST " *) 
  (* srl_bus_name = "\buf1_reg[383] " *) 
  (* srl_name = "\buf1_reg[383][7]_srl32_buf1_reg_c_382 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[383][7]_srl32_buf1_reg_c_382 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[351][7]_srl32_buf1_reg_c_350_n_1 ),
        .Q(\NLW_buf1_reg[383][7]_srl32_buf1_reg_c_382_Q_UNCONNECTED ),
        .Q31(xlnx_opt__23));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT " *) 
  (* srl_bus_name = "\buf1_reg[415] " *) 
  (* srl_name = "\buf1_reg[415][0]_srl32_buf1_reg_c_414 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[415][0]_srl32_buf1_reg_c_414 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(xlnx_opt__16),
        .Q(\NLW_buf1_reg[415][0]_srl32_buf1_reg_c_414_Q_UNCONNECTED ),
        .Q31(\buf1_reg[415][0]_srl32_buf1_reg_c_414_n_1 ));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT " *) 
  (* srl_bus_name = "\buf1_reg[415] " *) 
  (* srl_name = "\buf1_reg[415][1]_srl32_buf1_reg_c_414 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[415][1]_srl32_buf1_reg_c_414 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(xlnx_opt__17),
        .Q(\NLW_buf1_reg[415][1]_srl32_buf1_reg_c_414_Q_UNCONNECTED ),
        .Q31(\buf1_reg[415][1]_srl32_buf1_reg_c_414_n_1 ));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT " *) 
  (* srl_bus_name = "\buf1_reg[415] " *) 
  (* srl_name = "\buf1_reg[415][2]_srl32_buf1_reg_c_414 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[415][2]_srl32_buf1_reg_c_414 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(xlnx_opt__18),
        .Q(\NLW_buf1_reg[415][2]_srl32_buf1_reg_c_414_Q_UNCONNECTED ),
        .Q31(\buf1_reg[415][2]_srl32_buf1_reg_c_414_n_1 ));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT " *) 
  (* srl_bus_name = "\buf1_reg[415] " *) 
  (* srl_name = "\buf1_reg[415][3]_srl32_buf1_reg_c_414 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[415][3]_srl32_buf1_reg_c_414 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(xlnx_opt__19),
        .Q(\NLW_buf1_reg[415][3]_srl32_buf1_reg_c_414_Q_UNCONNECTED ),
        .Q31(\buf1_reg[415][3]_srl32_buf1_reg_c_414_n_1 ));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT " *) 
  (* srl_bus_name = "\buf1_reg[415] " *) 
  (* srl_name = "\buf1_reg[415][4]_srl32_buf1_reg_c_414 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[415][4]_srl32_buf1_reg_c_414 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(xlnx_opt__20),
        .Q(\NLW_buf1_reg[415][4]_srl32_buf1_reg_c_414_Q_UNCONNECTED ),
        .Q31(\buf1_reg[415][4]_srl32_buf1_reg_c_414_n_1 ));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT " *) 
  (* srl_bus_name = "\buf1_reg[415] " *) 
  (* srl_name = "\buf1_reg[415][5]_srl32_buf1_reg_c_414 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[415][5]_srl32_buf1_reg_c_414 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(xlnx_opt__21),
        .Q(\NLW_buf1_reg[415][5]_srl32_buf1_reg_c_414_Q_UNCONNECTED ),
        .Q31(\buf1_reg[415][5]_srl32_buf1_reg_c_414_n_1 ));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT " *) 
  (* srl_bus_name = "\buf1_reg[415] " *) 
  (* srl_name = "\buf1_reg[415][6]_srl32_buf1_reg_c_414 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[415][6]_srl32_buf1_reg_c_414 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(xlnx_opt__22),
        .Q(\NLW_buf1_reg[415][6]_srl32_buf1_reg_c_414_Q_UNCONNECTED ),
        .Q31(\buf1_reg[415][6]_srl32_buf1_reg_c_414_n_1 ));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT " *) 
  (* srl_bus_name = "\buf1_reg[415] " *) 
  (* srl_name = "\buf1_reg[415][7]_srl32_buf1_reg_c_414 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[415][7]_srl32_buf1_reg_c_414 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(xlnx_opt__23),
        .Q(\NLW_buf1_reg[415][7]_srl32_buf1_reg_c_414_Q_UNCONNECTED ),
        .Q31(\buf1_reg[415][7]_srl32_buf1_reg_c_414_n_1 ));
  (* srl_bus_name = "\buf1_reg[447] " *) 
  (* srl_name = "\buf1_reg[447][0]_srl32_buf1_reg_c_446 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[447][0]_srl32_buf1_reg_c_446 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[415][0]_srl32_buf1_reg_c_414_n_1 ),
        .Q(\NLW_buf1_reg[447][0]_srl32_buf1_reg_c_446_Q_UNCONNECTED ),
        .Q31(\buf1_reg[447][0]_srl32_buf1_reg_c_446_n_1 ));
  (* srl_bus_name = "\buf1_reg[447] " *) 
  (* srl_name = "\buf1_reg[447][1]_srl32_buf1_reg_c_446 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[447][1]_srl32_buf1_reg_c_446 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[415][1]_srl32_buf1_reg_c_414_n_1 ),
        .Q(\NLW_buf1_reg[447][1]_srl32_buf1_reg_c_446_Q_UNCONNECTED ),
        .Q31(\buf1_reg[447][1]_srl32_buf1_reg_c_446_n_1 ));
  (* srl_bus_name = "\buf1_reg[447] " *) 
  (* srl_name = "\buf1_reg[447][2]_srl32_buf1_reg_c_446 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[447][2]_srl32_buf1_reg_c_446 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[415][2]_srl32_buf1_reg_c_414_n_1 ),
        .Q(\NLW_buf1_reg[447][2]_srl32_buf1_reg_c_446_Q_UNCONNECTED ),
        .Q31(\buf1_reg[447][2]_srl32_buf1_reg_c_446_n_1 ));
  (* srl_bus_name = "\buf1_reg[447] " *) 
  (* srl_name = "\buf1_reg[447][3]_srl32_buf1_reg_c_446 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[447][3]_srl32_buf1_reg_c_446 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[415][3]_srl32_buf1_reg_c_414_n_1 ),
        .Q(\NLW_buf1_reg[447][3]_srl32_buf1_reg_c_446_Q_UNCONNECTED ),
        .Q31(\buf1_reg[447][3]_srl32_buf1_reg_c_446_n_1 ));
  (* srl_bus_name = "\buf1_reg[447] " *) 
  (* srl_name = "\buf1_reg[447][4]_srl32_buf1_reg_c_446 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[447][4]_srl32_buf1_reg_c_446 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[415][4]_srl32_buf1_reg_c_414_n_1 ),
        .Q(\NLW_buf1_reg[447][4]_srl32_buf1_reg_c_446_Q_UNCONNECTED ),
        .Q31(\buf1_reg[447][4]_srl32_buf1_reg_c_446_n_1 ));
  (* srl_bus_name = "\buf1_reg[447] " *) 
  (* srl_name = "\buf1_reg[447][5]_srl32_buf1_reg_c_446 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[447][5]_srl32_buf1_reg_c_446 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[415][5]_srl32_buf1_reg_c_414_n_1 ),
        .Q(\NLW_buf1_reg[447][5]_srl32_buf1_reg_c_446_Q_UNCONNECTED ),
        .Q31(\buf1_reg[447][5]_srl32_buf1_reg_c_446_n_1 ));
  (* srl_bus_name = "\buf1_reg[447] " *) 
  (* srl_name = "\buf1_reg[447][6]_srl32_buf1_reg_c_446 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[447][6]_srl32_buf1_reg_c_446 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[415][6]_srl32_buf1_reg_c_414_n_1 ),
        .Q(\NLW_buf1_reg[447][6]_srl32_buf1_reg_c_446_Q_UNCONNECTED ),
        .Q31(\buf1_reg[447][6]_srl32_buf1_reg_c_446_n_1 ));
  (* srl_bus_name = "\buf1_reg[447] " *) 
  (* srl_name = "\buf1_reg[447][7]_srl32_buf1_reg_c_446 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[447][7]_srl32_buf1_reg_c_446 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[415][7]_srl32_buf1_reg_c_414_n_1 ),
        .Q(\NLW_buf1_reg[447][7]_srl32_buf1_reg_c_446_Q_UNCONNECTED ),
        .Q31(\buf1_reg[447][7]_srl32_buf1_reg_c_446_n_1 ));
  (* srl_bus_name = "\buf1_reg[477] " *) 
  (* srl_name = "\buf1_reg[477][0]_srl30_buf1_reg_c_476 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[477][0]_srl30_buf1_reg_c_476 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[447][0]_srl32_buf1_reg_c_446_n_1 ),
        .Q(\buf1_reg[477][0]_srl30_buf1_reg_c_476_n_0 ),
        .Q31(\NLW_buf1_reg[477][0]_srl30_buf1_reg_c_476_Q31_UNCONNECTED ));
  (* srl_bus_name = "\buf1_reg[477] " *) 
  (* srl_name = "\buf1_reg[477][1]_srl30_buf1_reg_c_476 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[477][1]_srl30_buf1_reg_c_476 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[447][1]_srl32_buf1_reg_c_446_n_1 ),
        .Q(\buf1_reg[477][1]_srl30_buf1_reg_c_476_n_0 ),
        .Q31(\NLW_buf1_reg[477][1]_srl30_buf1_reg_c_476_Q31_UNCONNECTED ));
  (* srl_bus_name = "\buf1_reg[477] " *) 
  (* srl_name = "\buf1_reg[477][2]_srl30_buf1_reg_c_476 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[477][2]_srl30_buf1_reg_c_476 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[447][2]_srl32_buf1_reg_c_446_n_1 ),
        .Q(\buf1_reg[477][2]_srl30_buf1_reg_c_476_n_0 ),
        .Q31(\NLW_buf1_reg[477][2]_srl30_buf1_reg_c_476_Q31_UNCONNECTED ));
  (* srl_bus_name = "\buf1_reg[477] " *) 
  (* srl_name = "\buf1_reg[477][3]_srl30_buf1_reg_c_476 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[477][3]_srl30_buf1_reg_c_476 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[447][3]_srl32_buf1_reg_c_446_n_1 ),
        .Q(\buf1_reg[477][3]_srl30_buf1_reg_c_476_n_0 ),
        .Q31(\NLW_buf1_reg[477][3]_srl30_buf1_reg_c_476_Q31_UNCONNECTED ));
  (* srl_bus_name = "\buf1_reg[477] " *) 
  (* srl_name = "\buf1_reg[477][4]_srl30_buf1_reg_c_476 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[477][4]_srl30_buf1_reg_c_476 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[447][4]_srl32_buf1_reg_c_446_n_1 ),
        .Q(\buf1_reg[477][4]_srl30_buf1_reg_c_476_n_0 ),
        .Q31(\NLW_buf1_reg[477][4]_srl30_buf1_reg_c_476_Q31_UNCONNECTED ));
  (* srl_bus_name = "\buf1_reg[477] " *) 
  (* srl_name = "\buf1_reg[477][5]_srl30_buf1_reg_c_476 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[477][5]_srl30_buf1_reg_c_476 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[447][5]_srl32_buf1_reg_c_446_n_1 ),
        .Q(\buf1_reg[477][5]_srl30_buf1_reg_c_476_n_0 ),
        .Q31(\NLW_buf1_reg[477][5]_srl30_buf1_reg_c_476_Q31_UNCONNECTED ));
  (* srl_bus_name = "\buf1_reg[477] " *) 
  (* srl_name = "\buf1_reg[477][6]_srl30_buf1_reg_c_476 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[477][6]_srl30_buf1_reg_c_476 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[447][6]_srl32_buf1_reg_c_446_n_1 ),
        .Q(\buf1_reg[477][6]_srl30_buf1_reg_c_476_n_0 ),
        .Q31(\NLW_buf1_reg[477][6]_srl30_buf1_reg_c_476_Q31_UNCONNECTED ));
  (* srl_bus_name = "\buf1_reg[477] " *) 
  (* srl_name = "\buf1_reg[477][7]_srl30_buf1_reg_c_476 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[477][7]_srl30_buf1_reg_c_476 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[447][7]_srl32_buf1_reg_c_446_n_1 ),
        .Q(\buf1_reg[477][7]_srl30_buf1_reg_c_476_n_0 ),
        .Q31(\NLW_buf1_reg[477][7]_srl30_buf1_reg_c_476_Q31_UNCONNECTED ));
  FDRE #(
    .INIT(1'b0)) 
    \buf1_reg[478][0]_buf1_reg_c_477 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\buf1_reg[477][0]_srl30_buf1_reg_c_476_n_0 ),
        .Q(\buf1_reg[478][0]_buf1_reg_c_477_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buf1_reg[478][1]_buf1_reg_c_477 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\buf1_reg[477][1]_srl30_buf1_reg_c_476_n_0 ),
        .Q(\buf1_reg[478][1]_buf1_reg_c_477_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buf1_reg[478][2]_buf1_reg_c_477 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\buf1_reg[477][2]_srl30_buf1_reg_c_476_n_0 ),
        .Q(\buf1_reg[478][2]_buf1_reg_c_477_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buf1_reg[478][3]_buf1_reg_c_477 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\buf1_reg[477][3]_srl30_buf1_reg_c_476_n_0 ),
        .Q(\buf1_reg[478][3]_buf1_reg_c_477_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buf1_reg[478][4]_buf1_reg_c_477 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\buf1_reg[477][4]_srl30_buf1_reg_c_476_n_0 ),
        .Q(\buf1_reg[478][4]_buf1_reg_c_477_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buf1_reg[478][5]_buf1_reg_c_477 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\buf1_reg[477][5]_srl30_buf1_reg_c_476_n_0 ),
        .Q(\buf1_reg[478][5]_buf1_reg_c_477_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buf1_reg[478][6]_buf1_reg_c_477 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\buf1_reg[477][6]_srl30_buf1_reg_c_476_n_0 ),
        .Q(\buf1_reg[478][6]_buf1_reg_c_477_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buf1_reg[478][7]_buf1_reg_c_477 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\buf1_reg[477][7]_srl30_buf1_reg_c_476_n_0 ),
        .Q(\buf1_reg[478][7]_buf1_reg_c_477_n_0 ),
        .R(1'b0));
  (* srl_bus_name = "\buf1_reg[63] " *) 
  (* srl_name = "\buf1_reg[63][0]_srl32_buf1_reg_c_62 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[63][0]_srl32_buf1_reg_c_62 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[31][0]_srl32_buf1_reg_c_30_n_1 ),
        .Q(\NLW_buf1_reg[63][0]_srl32_buf1_reg_c_62_Q_UNCONNECTED ),
        .Q31(\buf1_reg[63][0]_srl32_buf1_reg_c_62_n_1 ));
  (* srl_bus_name = "\buf1_reg[63] " *) 
  (* srl_name = "\buf1_reg[63][1]_srl32_buf1_reg_c_62 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[63][1]_srl32_buf1_reg_c_62 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[31][1]_srl32_buf1_reg_c_30_n_1 ),
        .Q(\NLW_buf1_reg[63][1]_srl32_buf1_reg_c_62_Q_UNCONNECTED ),
        .Q31(\buf1_reg[63][1]_srl32_buf1_reg_c_62_n_1 ));
  (* srl_bus_name = "\buf1_reg[63] " *) 
  (* srl_name = "\buf1_reg[63][2]_srl32_buf1_reg_c_62 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[63][2]_srl32_buf1_reg_c_62 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[31][2]_srl32_buf1_reg_c_30_n_1 ),
        .Q(\NLW_buf1_reg[63][2]_srl32_buf1_reg_c_62_Q_UNCONNECTED ),
        .Q31(\buf1_reg[63][2]_srl32_buf1_reg_c_62_n_1 ));
  (* srl_bus_name = "\buf1_reg[63] " *) 
  (* srl_name = "\buf1_reg[63][3]_srl32_buf1_reg_c_62 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[63][3]_srl32_buf1_reg_c_62 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[31][3]_srl32_buf1_reg_c_30_n_1 ),
        .Q(\NLW_buf1_reg[63][3]_srl32_buf1_reg_c_62_Q_UNCONNECTED ),
        .Q31(\buf1_reg[63][3]_srl32_buf1_reg_c_62_n_1 ));
  (* srl_bus_name = "\buf1_reg[63] " *) 
  (* srl_name = "\buf1_reg[63][4]_srl32_buf1_reg_c_62 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[63][4]_srl32_buf1_reg_c_62 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[31][4]_srl32_buf1_reg_c_30_n_1 ),
        .Q(\NLW_buf1_reg[63][4]_srl32_buf1_reg_c_62_Q_UNCONNECTED ),
        .Q31(\buf1_reg[63][4]_srl32_buf1_reg_c_62_n_1 ));
  (* srl_bus_name = "\buf1_reg[63] " *) 
  (* srl_name = "\buf1_reg[63][5]_srl32_buf1_reg_c_62 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[63][5]_srl32_buf1_reg_c_62 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[31][5]_srl32_buf1_reg_c_30_n_1 ),
        .Q(\NLW_buf1_reg[63][5]_srl32_buf1_reg_c_62_Q_UNCONNECTED ),
        .Q31(\buf1_reg[63][5]_srl32_buf1_reg_c_62_n_1 ));
  (* srl_bus_name = "\buf1_reg[63] " *) 
  (* srl_name = "\buf1_reg[63][6]_srl32_buf1_reg_c_62 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[63][6]_srl32_buf1_reg_c_62 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[31][6]_srl32_buf1_reg_c_30_n_1 ),
        .Q(\NLW_buf1_reg[63][6]_srl32_buf1_reg_c_62_Q_UNCONNECTED ),
        .Q31(\buf1_reg[63][6]_srl32_buf1_reg_c_62_n_1 ));
  (* srl_bus_name = "\buf1_reg[63] " *) 
  (* srl_name = "\buf1_reg[63][7]_srl32_buf1_reg_c_62 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[63][7]_srl32_buf1_reg_c_62 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[31][7]_srl32_buf1_reg_c_30_n_1 ),
        .Q(\NLW_buf1_reg[63][7]_srl32_buf1_reg_c_62_Q_UNCONNECTED ),
        .Q31(\buf1_reg[63][7]_srl32_buf1_reg_c_62_n_1 ));
  (* srl_bus_name = "\buf1_reg[95] " *) 
  (* srl_name = "\buf1_reg[95][0]_srl32_buf1_reg_c_94 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[95][0]_srl32_buf1_reg_c_94 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[63][0]_srl32_buf1_reg_c_62_n_1 ),
        .Q(\NLW_buf1_reg[95][0]_srl32_buf1_reg_c_94_Q_UNCONNECTED ),
        .Q31(\buf1_reg[95][0]_srl32_buf1_reg_c_94_n_1 ));
  (* srl_bus_name = "\buf1_reg[95] " *) 
  (* srl_name = "\buf1_reg[95][1]_srl32_buf1_reg_c_94 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[95][1]_srl32_buf1_reg_c_94 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[63][1]_srl32_buf1_reg_c_62_n_1 ),
        .Q(\NLW_buf1_reg[95][1]_srl32_buf1_reg_c_94_Q_UNCONNECTED ),
        .Q31(\buf1_reg[95][1]_srl32_buf1_reg_c_94_n_1 ));
  (* srl_bus_name = "\buf1_reg[95] " *) 
  (* srl_name = "\buf1_reg[95][2]_srl32_buf1_reg_c_94 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[95][2]_srl32_buf1_reg_c_94 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[63][2]_srl32_buf1_reg_c_62_n_1 ),
        .Q(\NLW_buf1_reg[95][2]_srl32_buf1_reg_c_94_Q_UNCONNECTED ),
        .Q31(\buf1_reg[95][2]_srl32_buf1_reg_c_94_n_1 ));
  (* srl_bus_name = "\buf1_reg[95] " *) 
  (* srl_name = "\buf1_reg[95][3]_srl32_buf1_reg_c_94 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[95][3]_srl32_buf1_reg_c_94 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[63][3]_srl32_buf1_reg_c_62_n_1 ),
        .Q(\NLW_buf1_reg[95][3]_srl32_buf1_reg_c_94_Q_UNCONNECTED ),
        .Q31(\buf1_reg[95][3]_srl32_buf1_reg_c_94_n_1 ));
  (* srl_bus_name = "\buf1_reg[95] " *) 
  (* srl_name = "\buf1_reg[95][4]_srl32_buf1_reg_c_94 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[95][4]_srl32_buf1_reg_c_94 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[63][4]_srl32_buf1_reg_c_62_n_1 ),
        .Q(\NLW_buf1_reg[95][4]_srl32_buf1_reg_c_94_Q_UNCONNECTED ),
        .Q31(\buf1_reg[95][4]_srl32_buf1_reg_c_94_n_1 ));
  (* srl_bus_name = "\buf1_reg[95] " *) 
  (* srl_name = "\buf1_reg[95][5]_srl32_buf1_reg_c_94 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[95][5]_srl32_buf1_reg_c_94 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[63][5]_srl32_buf1_reg_c_62_n_1 ),
        .Q(\NLW_buf1_reg[95][5]_srl32_buf1_reg_c_94_Q_UNCONNECTED ),
        .Q31(\buf1_reg[95][5]_srl32_buf1_reg_c_94_n_1 ));
  (* srl_bus_name = "\buf1_reg[95] " *) 
  (* srl_name = "\buf1_reg[95][6]_srl32_buf1_reg_c_94 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[95][6]_srl32_buf1_reg_c_94 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[63][6]_srl32_buf1_reg_c_62_n_1 ),
        .Q(\NLW_buf1_reg[95][6]_srl32_buf1_reg_c_94_Q_UNCONNECTED ),
        .Q31(\buf1_reg[95][6]_srl32_buf1_reg_c_94_n_1 ));
  (* srl_bus_name = "\buf1_reg[95] " *) 
  (* srl_name = "\buf1_reg[95][7]_srl32_buf1_reg_c_94 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf1_reg[95][7]_srl32_buf1_reg_c_94 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf1_reg[63][7]_srl32_buf1_reg_c_62_n_1 ),
        .Q(\NLW_buf1_reg[95][7]_srl32_buf1_reg_c_94_Q_UNCONNECTED ),
        .Q31(\buf1_reg[95][7]_srl32_buf1_reg_c_94_n_1 ));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(1'b1),
        .Q(buf1_reg_c_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_0
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_n_0),
        .Q(buf1_reg_c_0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_1
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_0_n_0),
        .Q(buf1_reg_c_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_10
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_9_n_0),
        .Q(buf1_reg_c_10_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_100
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_99_n_0),
        .Q(buf1_reg_c_100_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_101
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_100_n_0),
        .Q(buf1_reg_c_101_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_102
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_101_n_0),
        .Q(buf1_reg_c_102_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_103
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_102_n_0),
        .Q(buf1_reg_c_103_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_104
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_103_n_0),
        .Q(buf1_reg_c_104_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_105
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_104_n_0),
        .Q(buf1_reg_c_105_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_106
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_105_n_0),
        .Q(buf1_reg_c_106_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_107
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_106_n_0),
        .Q(buf1_reg_c_107_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_108
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_107_n_0),
        .Q(buf1_reg_c_108_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_109
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_108_n_0),
        .Q(buf1_reg_c_109_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_11
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_10_n_0),
        .Q(buf1_reg_c_11_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_110
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_109_n_0),
        .Q(buf1_reg_c_110_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_111
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_110_n_0),
        .Q(buf1_reg_c_111_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_112
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_111_n_0),
        .Q(buf1_reg_c_112_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_113
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_112_n_0),
        .Q(buf1_reg_c_113_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_114
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_113_n_0),
        .Q(buf1_reg_c_114_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_115
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_114_n_0),
        .Q(buf1_reg_c_115_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_116
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_115_n_0),
        .Q(buf1_reg_c_116_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_117
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_116_n_0),
        .Q(buf1_reg_c_117_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_118
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_117_n_0),
        .Q(buf1_reg_c_118_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_119
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_118_n_0),
        .Q(buf1_reg_c_119_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_12
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_11_n_0),
        .Q(buf1_reg_c_12_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_120
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_119_n_0),
        .Q(buf1_reg_c_120_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_121
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_120_n_0),
        .Q(buf1_reg_c_121_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_122
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_121_n_0),
        .Q(buf1_reg_c_122_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_123
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_122_n_0),
        .Q(buf1_reg_c_123_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_124
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_123_n_0),
        .Q(buf1_reg_c_124_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_125
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_124_n_0),
        .Q(buf1_reg_c_125_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_126
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_125_n_0),
        .Q(buf1_reg_c_126_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_127
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_126_n_0),
        .Q(buf1_reg_c_127_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_128
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_127_n_0),
        .Q(buf1_reg_c_128_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_129
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_128_n_0),
        .Q(buf1_reg_c_129_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_13
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_12_n_0),
        .Q(buf1_reg_c_13_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_130
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_129_n_0),
        .Q(buf1_reg_c_130_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_131
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_130_n_0),
        .Q(buf1_reg_c_131_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_132
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_131_n_0),
        .Q(buf1_reg_c_132_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_133
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_132_n_0),
        .Q(buf1_reg_c_133_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_134
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_133_n_0),
        .Q(buf1_reg_c_134_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_135
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_134_n_0),
        .Q(buf1_reg_c_135_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_136
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_135_n_0),
        .Q(buf1_reg_c_136_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_137
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_136_n_0),
        .Q(buf1_reg_c_137_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_138
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_137_n_0),
        .Q(buf1_reg_c_138_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_139
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_138_n_0),
        .Q(buf1_reg_c_139_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_14
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_13_n_0),
        .Q(buf1_reg_c_14_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_140
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_139_n_0),
        .Q(buf1_reg_c_140_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_141
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_140_n_0),
        .Q(buf1_reg_c_141_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_142
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_141_n_0),
        .Q(buf1_reg_c_142_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_143
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_142_n_0),
        .Q(buf1_reg_c_143_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_144
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_143_n_0),
        .Q(buf1_reg_c_144_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_145
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_144_n_0),
        .Q(buf1_reg_c_145_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_146
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_145_n_0),
        .Q(buf1_reg_c_146_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_147
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_146_n_0),
        .Q(buf1_reg_c_147_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_148
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_147_n_0),
        .Q(buf1_reg_c_148_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_149
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_148_n_0),
        .Q(buf1_reg_c_149_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_15
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_14_n_0),
        .Q(buf1_reg_c_15_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_150
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_149_n_0),
        .Q(buf1_reg_c_150_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_151
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_150_n_0),
        .Q(buf1_reg_c_151_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_152
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_151_n_0),
        .Q(buf1_reg_c_152_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_153
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_152_n_0),
        .Q(buf1_reg_c_153_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_154
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_153_n_0),
        .Q(buf1_reg_c_154_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_155
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_154_n_0),
        .Q(buf1_reg_c_155_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_156
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_155_n_0),
        .Q(buf1_reg_c_156_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_157
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_156_n_0),
        .Q(buf1_reg_c_157_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_158
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_157_n_0),
        .Q(buf1_reg_c_158_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_159
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_158_n_0),
        .Q(buf1_reg_c_159_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_16
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_15_n_0),
        .Q(buf1_reg_c_16_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_160
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_159_n_0),
        .Q(buf1_reg_c_160_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_161
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_160_n_0),
        .Q(buf1_reg_c_161_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_162
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_161_n_0),
        .Q(buf1_reg_c_162_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_163
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_162_n_0),
        .Q(buf1_reg_c_163_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_164
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_163_n_0),
        .Q(buf1_reg_c_164_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_165
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_164_n_0),
        .Q(buf1_reg_c_165_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_166
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_165_n_0),
        .Q(buf1_reg_c_166_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_167
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_166_n_0),
        .Q(buf1_reg_c_167_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_168
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_167_n_0),
        .Q(buf1_reg_c_168_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_169
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_168_n_0),
        .Q(buf1_reg_c_169_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_17
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_16_n_0),
        .Q(buf1_reg_c_17_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_170
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_169_n_0),
        .Q(buf1_reg_c_170_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_171
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_170_n_0),
        .Q(buf1_reg_c_171_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_172
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_171_n_0),
        .Q(buf1_reg_c_172_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_173
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_172_n_0),
        .Q(buf1_reg_c_173_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_174
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_173_n_0),
        .Q(buf1_reg_c_174_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_175
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_174_n_0),
        .Q(buf1_reg_c_175_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_176
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_175_n_0),
        .Q(buf1_reg_c_176_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_177
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_176_n_0),
        .Q(buf1_reg_c_177_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_178
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_177_n_0),
        .Q(buf1_reg_c_178_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_179
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_178_n_0),
        .Q(buf1_reg_c_179_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_18
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_17_n_0),
        .Q(buf1_reg_c_18_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_180
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_179_n_0),
        .Q(buf1_reg_c_180_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_181
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_180_n_0),
        .Q(buf1_reg_c_181_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_182
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_181_n_0),
        .Q(buf1_reg_c_182_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_183
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_182_n_0),
        .Q(buf1_reg_c_183_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_184
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_183_n_0),
        .Q(buf1_reg_c_184_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_185
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_184_n_0),
        .Q(buf1_reg_c_185_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_186
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_185_n_0),
        .Q(buf1_reg_c_186_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_187
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_186_n_0),
        .Q(buf1_reg_c_187_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_188
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_187_n_0),
        .Q(buf1_reg_c_188_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_189
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_188_n_0),
        .Q(buf1_reg_c_189_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_19
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_18_n_0),
        .Q(buf1_reg_c_19_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_190
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_189_n_0),
        .Q(buf1_reg_c_190_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_191
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_190_n_0),
        .Q(buf1_reg_c_191_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_192
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_191_n_0),
        .Q(buf1_reg_c_192_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_193
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_192_n_0),
        .Q(buf1_reg_c_193_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_194
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_193_n_0),
        .Q(buf1_reg_c_194_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_195
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_194_n_0),
        .Q(buf1_reg_c_195_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_196
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_195_n_0),
        .Q(buf1_reg_c_196_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_197
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_196_n_0),
        .Q(buf1_reg_c_197_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_198
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_197_n_0),
        .Q(buf1_reg_c_198_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_199
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_198_n_0),
        .Q(buf1_reg_c_199_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_2
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_1_n_0),
        .Q(buf1_reg_c_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_20
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_19_n_0),
        .Q(buf1_reg_c_20_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_200
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_199_n_0),
        .Q(buf1_reg_c_200_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_201
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_200_n_0),
        .Q(buf1_reg_c_201_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_202
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_201_n_0),
        .Q(buf1_reg_c_202_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_203
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_202_n_0),
        .Q(buf1_reg_c_203_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_204
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_203_n_0),
        .Q(buf1_reg_c_204_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_205
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_204_n_0),
        .Q(buf1_reg_c_205_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_206
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_205_n_0),
        .Q(buf1_reg_c_206_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_207
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_206_n_0),
        .Q(buf1_reg_c_207_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_208
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_207_n_0),
        .Q(buf1_reg_c_208_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_209
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_208_n_0),
        .Q(buf1_reg_c_209_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_21
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_20_n_0),
        .Q(buf1_reg_c_21_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_210
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_209_n_0),
        .Q(buf1_reg_c_210_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_211
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_210_n_0),
        .Q(buf1_reg_c_211_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_212
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_211_n_0),
        .Q(buf1_reg_c_212_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_213
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_212_n_0),
        .Q(buf1_reg_c_213_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_214
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_213_n_0),
        .Q(buf1_reg_c_214_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_215
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_214_n_0),
        .Q(buf1_reg_c_215_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_216
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_215_n_0),
        .Q(buf1_reg_c_216_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_217
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_216_n_0),
        .Q(buf1_reg_c_217_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_218
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_217_n_0),
        .Q(buf1_reg_c_218_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_219
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_218_n_0),
        .Q(buf1_reg_c_219_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_22
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_21_n_0),
        .Q(buf1_reg_c_22_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_220
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_219_n_0),
        .Q(buf1_reg_c_220_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_221
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_220_n_0),
        .Q(buf1_reg_c_221_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_222
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_221_n_0),
        .Q(buf1_reg_c_222_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_223
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_222_n_0),
        .Q(buf1_reg_c_223_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_224
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_223_n_0),
        .Q(buf1_reg_c_224_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_225
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_224_n_0),
        .Q(buf1_reg_c_225_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_226
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_225_n_0),
        .Q(buf1_reg_c_226_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_227
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_226_n_0),
        .Q(buf1_reg_c_227_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_228
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_227_n_0),
        .Q(buf1_reg_c_228_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_229
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_228_n_0),
        .Q(buf1_reg_c_229_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_23
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_22_n_0),
        .Q(buf1_reg_c_23_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_230
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_229_n_0),
        .Q(buf1_reg_c_230_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_231
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_230_n_0),
        .Q(buf1_reg_c_231_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_232
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_231_n_0),
        .Q(buf1_reg_c_232_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_233
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_232_n_0),
        .Q(buf1_reg_c_233_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_234
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_233_n_0),
        .Q(buf1_reg_c_234_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_235
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_234_n_0),
        .Q(buf1_reg_c_235_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_236
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_235_n_0),
        .Q(buf1_reg_c_236_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_237
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_236_n_0),
        .Q(buf1_reg_c_237_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_238
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_237_n_0),
        .Q(buf1_reg_c_238_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_239
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_238_n_0),
        .Q(buf1_reg_c_239_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_24
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_23_n_0),
        .Q(buf1_reg_c_24_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_240
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_239_n_0),
        .Q(buf1_reg_c_240_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_241
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_240_n_0),
        .Q(buf1_reg_c_241_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_242
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_241_n_0),
        .Q(buf1_reg_c_242_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_243
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_242_n_0),
        .Q(buf1_reg_c_243_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_244
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_243_n_0),
        .Q(buf1_reg_c_244_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_245
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_244_n_0),
        .Q(buf1_reg_c_245_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_246
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_245_n_0),
        .Q(buf1_reg_c_246_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_247
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_246_n_0),
        .Q(buf1_reg_c_247_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_248
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_247_n_0),
        .Q(buf1_reg_c_248_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_249
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_248_n_0),
        .Q(buf1_reg_c_249_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_25
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_24_n_0),
        .Q(buf1_reg_c_25_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_250
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_249_n_0),
        .Q(buf1_reg_c_250_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_251
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_250_n_0),
        .Q(buf1_reg_c_251_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_252
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_251_n_0),
        .Q(buf1_reg_c_252_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_253
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_252_n_0),
        .Q(buf1_reg_c_253_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_254
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_253_n_0),
        .Q(buf1_reg_c_254_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_255
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_254_n_0),
        .Q(buf1_reg_c_255_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_256
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_255_n_0),
        .Q(buf1_reg_c_256_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_257
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_256_n_0),
        .Q(buf1_reg_c_257_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_258
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_257_n_0),
        .Q(buf1_reg_c_258_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_259
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_258_n_0),
        .Q(buf1_reg_c_259_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_26
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_25_n_0),
        .Q(buf1_reg_c_26_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_260
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_259_n_0),
        .Q(buf1_reg_c_260_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_261
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_260_n_0),
        .Q(buf1_reg_c_261_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_262
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_261_n_0),
        .Q(buf1_reg_c_262_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_263
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_262_n_0),
        .Q(buf1_reg_c_263_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_264
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_263_n_0),
        .Q(buf1_reg_c_264_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_265
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_264_n_0),
        .Q(buf1_reg_c_265_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_266
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_265_n_0),
        .Q(buf1_reg_c_266_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_267
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_266_n_0),
        .Q(buf1_reg_c_267_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_268
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_267_n_0),
        .Q(buf1_reg_c_268_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_269
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_268_n_0),
        .Q(buf1_reg_c_269_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_27
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_26_n_0),
        .Q(buf1_reg_c_27_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_270
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_269_n_0),
        .Q(buf1_reg_c_270_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_271
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_270_n_0),
        .Q(buf1_reg_c_271_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_272
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_271_n_0),
        .Q(buf1_reg_c_272_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_273
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_272_n_0),
        .Q(buf1_reg_c_273_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_274
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_273_n_0),
        .Q(buf1_reg_c_274_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_275
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_274_n_0),
        .Q(buf1_reg_c_275_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_276
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_275_n_0),
        .Q(buf1_reg_c_276_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_277
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_276_n_0),
        .Q(buf1_reg_c_277_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_278
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_277_n_0),
        .Q(buf1_reg_c_278_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_279
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_278_n_0),
        .Q(buf1_reg_c_279_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_28
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_27_n_0),
        .Q(buf1_reg_c_28_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_280
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_279_n_0),
        .Q(buf1_reg_c_280_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_281
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_280_n_0),
        .Q(buf1_reg_c_281_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_282
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_281_n_0),
        .Q(buf1_reg_c_282_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_283
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_282_n_0),
        .Q(buf1_reg_c_283_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_284
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_283_n_0),
        .Q(buf1_reg_c_284_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_285
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_284_n_0),
        .Q(buf1_reg_c_285_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_286
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_285_n_0),
        .Q(buf1_reg_c_286_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_287
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_286_n_0),
        .Q(buf1_reg_c_287_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_288
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_287_n_0),
        .Q(buf1_reg_c_288_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_289
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_288_n_0),
        .Q(buf1_reg_c_289_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_29
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_28_n_0),
        .Q(buf1_reg_c_29_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_290
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_289_n_0),
        .Q(buf1_reg_c_290_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_291
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_290_n_0),
        .Q(buf1_reg_c_291_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_292
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_291_n_0),
        .Q(buf1_reg_c_292_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_293
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_292_n_0),
        .Q(buf1_reg_c_293_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_294
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_293_n_0),
        .Q(buf1_reg_c_294_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_295
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_294_n_0),
        .Q(buf1_reg_c_295_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_296
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_295_n_0),
        .Q(buf1_reg_c_296_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_297
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_296_n_0),
        .Q(buf1_reg_c_297_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_298
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_297_n_0),
        .Q(buf1_reg_c_298_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_299
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_298_n_0),
        .Q(buf1_reg_c_299_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_3
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_2_n_0),
        .Q(buf1_reg_c_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_30
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_29_n_0),
        .Q(buf1_reg_c_30_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_300
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_299_n_0),
        .Q(buf1_reg_c_300_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_301
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_300_n_0),
        .Q(buf1_reg_c_301_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_302
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_301_n_0),
        .Q(buf1_reg_c_302_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_303
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_302_n_0),
        .Q(buf1_reg_c_303_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_304
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_303_n_0),
        .Q(buf1_reg_c_304_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_305
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_304_n_0),
        .Q(buf1_reg_c_305_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_306
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_305_n_0),
        .Q(buf1_reg_c_306_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_307
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_306_n_0),
        .Q(buf1_reg_c_307_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_308
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_307_n_0),
        .Q(buf1_reg_c_308_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_309
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_308_n_0),
        .Q(buf1_reg_c_309_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_31
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_30_n_0),
        .Q(buf1_reg_c_31_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_310
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_309_n_0),
        .Q(buf1_reg_c_310_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_311
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_310_n_0),
        .Q(buf1_reg_c_311_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_312
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_311_n_0),
        .Q(buf1_reg_c_312_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_313
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_312_n_0),
        .Q(buf1_reg_c_313_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_314
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_313_n_0),
        .Q(buf1_reg_c_314_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_315
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_314_n_0),
        .Q(buf1_reg_c_315_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_316
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_315_n_0),
        .Q(buf1_reg_c_316_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_317
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_316_n_0),
        .Q(buf1_reg_c_317_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_318
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_317_n_0),
        .Q(buf1_reg_c_318_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_319
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_318_n_0),
        .Q(buf1_reg_c_319_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_32
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_31_n_0),
        .Q(buf1_reg_c_32_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_320
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_319_n_0),
        .Q(buf1_reg_c_320_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_321
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_320_n_0),
        .Q(buf1_reg_c_321_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_322
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_321_n_0),
        .Q(buf1_reg_c_322_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_323
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_322_n_0),
        .Q(buf1_reg_c_323_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_324
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_323_n_0),
        .Q(buf1_reg_c_324_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_325
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_324_n_0),
        .Q(buf1_reg_c_325_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_326
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_325_n_0),
        .Q(buf1_reg_c_326_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_327
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_326_n_0),
        .Q(buf1_reg_c_327_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_328
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_327_n_0),
        .Q(buf1_reg_c_328_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_329
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_328_n_0),
        .Q(buf1_reg_c_329_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_33
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_32_n_0),
        .Q(buf1_reg_c_33_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_330
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_329_n_0),
        .Q(buf1_reg_c_330_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_331
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_330_n_0),
        .Q(buf1_reg_c_331_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_332
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_331_n_0),
        .Q(buf1_reg_c_332_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_333
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_332_n_0),
        .Q(buf1_reg_c_333_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_334
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_333_n_0),
        .Q(buf1_reg_c_334_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_335
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_334_n_0),
        .Q(buf1_reg_c_335_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_336
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_335_n_0),
        .Q(buf1_reg_c_336_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_337
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_336_n_0),
        .Q(buf1_reg_c_337_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_338
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_337_n_0),
        .Q(buf1_reg_c_338_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_339
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_338_n_0),
        .Q(buf1_reg_c_339_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_34
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_33_n_0),
        .Q(buf1_reg_c_34_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_340
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_339_n_0),
        .Q(buf1_reg_c_340_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_341
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_340_n_0),
        .Q(buf1_reg_c_341_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_342
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_341_n_0),
        .Q(buf1_reg_c_342_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_343
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_342_n_0),
        .Q(buf1_reg_c_343_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_344
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_343_n_0),
        .Q(buf1_reg_c_344_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_345
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_344_n_0),
        .Q(buf1_reg_c_345_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_346
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_345_n_0),
        .Q(buf1_reg_c_346_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_347
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_346_n_0),
        .Q(buf1_reg_c_347_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_348
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_347_n_0),
        .Q(buf1_reg_c_348_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_349
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_348_n_0),
        .Q(buf1_reg_c_349_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_35
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_34_n_0),
        .Q(buf1_reg_c_35_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_350
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_349_n_0),
        .Q(buf1_reg_c_350_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_351
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_350_n_0),
        .Q(buf1_reg_c_351_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_352
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_351_n_0),
        .Q(buf1_reg_c_352_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_353
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_352_n_0),
        .Q(buf1_reg_c_353_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_354
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_353_n_0),
        .Q(buf1_reg_c_354_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_355
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_354_n_0),
        .Q(buf1_reg_c_355_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_356
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_355_n_0),
        .Q(buf1_reg_c_356_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_357
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_356_n_0),
        .Q(buf1_reg_c_357_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_358
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_357_n_0),
        .Q(buf1_reg_c_358_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_359
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_358_n_0),
        .Q(buf1_reg_c_359_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_36
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_35_n_0),
        .Q(buf1_reg_c_36_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_360
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_359_n_0),
        .Q(buf1_reg_c_360_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_361
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_360_n_0),
        .Q(buf1_reg_c_361_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_362
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_361_n_0),
        .Q(buf1_reg_c_362_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_363
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_362_n_0),
        .Q(buf1_reg_c_363_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_364
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_363_n_0),
        .Q(buf1_reg_c_364_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_365
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_364_n_0),
        .Q(buf1_reg_c_365_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_366
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_365_n_0),
        .Q(buf1_reg_c_366_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_367
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_366_n_0),
        .Q(buf1_reg_c_367_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_368
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_367_n_0),
        .Q(buf1_reg_c_368_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_369
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_368_n_0),
        .Q(buf1_reg_c_369_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_37
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_36_n_0),
        .Q(buf1_reg_c_37_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_370
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_369_n_0),
        .Q(buf1_reg_c_370_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_371
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_370_n_0),
        .Q(buf1_reg_c_371_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_372
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_371_n_0),
        .Q(buf1_reg_c_372_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_373
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_372_n_0),
        .Q(buf1_reg_c_373_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_374
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_373_n_0),
        .Q(buf1_reg_c_374_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_375
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_374_n_0),
        .Q(buf1_reg_c_375_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_376
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_375_n_0),
        .Q(buf1_reg_c_376_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_377
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_376_n_0),
        .Q(buf1_reg_c_377_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_378
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_377_n_0),
        .Q(buf1_reg_c_378_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_379
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_378_n_0),
        .Q(buf1_reg_c_379_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_38
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_37_n_0),
        .Q(buf1_reg_c_38_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_380
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_379_n_0),
        .Q(buf1_reg_c_380_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_381
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_380_n_0),
        .Q(buf1_reg_c_381_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_382
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_381_n_0),
        .Q(buf1_reg_c_382_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_383
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_382_n_0),
        .Q(buf1_reg_c_383_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_384
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_383_n_0),
        .Q(buf1_reg_c_384_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_385
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_384_n_0),
        .Q(buf1_reg_c_385_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_386
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_385_n_0),
        .Q(buf1_reg_c_386_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_387
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_386_n_0),
        .Q(buf1_reg_c_387_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_388
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_387_n_0),
        .Q(buf1_reg_c_388_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_389
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_388_n_0),
        .Q(buf1_reg_c_389_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_39
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_38_n_0),
        .Q(buf1_reg_c_39_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_390
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_389_n_0),
        .Q(buf1_reg_c_390_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_391
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_390_n_0),
        .Q(buf1_reg_c_391_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_392
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_391_n_0),
        .Q(buf1_reg_c_392_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_393
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_392_n_0),
        .Q(buf1_reg_c_393_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_394
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_393_n_0),
        .Q(buf1_reg_c_394_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_395
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_394_n_0),
        .Q(buf1_reg_c_395_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_396
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_395_n_0),
        .Q(buf1_reg_c_396_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_397
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_396_n_0),
        .Q(buf1_reg_c_397_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_398
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_397_n_0),
        .Q(buf1_reg_c_398_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_399
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_398_n_0),
        .Q(buf1_reg_c_399_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_4
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_3_n_0),
        .Q(buf1_reg_c_4_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_40
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_39_n_0),
        .Q(buf1_reg_c_40_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_400
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_399_n_0),
        .Q(buf1_reg_c_400_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_401
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_400_n_0),
        .Q(buf1_reg_c_401_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_402
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_401_n_0),
        .Q(buf1_reg_c_402_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_403
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_402_n_0),
        .Q(buf1_reg_c_403_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_404
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_403_n_0),
        .Q(buf1_reg_c_404_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_405
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_404_n_0),
        .Q(buf1_reg_c_405_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_406
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_405_n_0),
        .Q(buf1_reg_c_406_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_407
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_406_n_0),
        .Q(buf1_reg_c_407_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_408
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_407_n_0),
        .Q(buf1_reg_c_408_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_409
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_408_n_0),
        .Q(buf1_reg_c_409_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_41
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_40_n_0),
        .Q(buf1_reg_c_41_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_410
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_409_n_0),
        .Q(buf1_reg_c_410_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_411
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_410_n_0),
        .Q(buf1_reg_c_411_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_412
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_411_n_0),
        .Q(buf1_reg_c_412_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_413
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_412_n_0),
        .Q(buf1_reg_c_413_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_414
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_413_n_0),
        .Q(buf1_reg_c_414_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_415
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_414_n_0),
        .Q(buf1_reg_c_415_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_416
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_415_n_0),
        .Q(buf1_reg_c_416_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_417
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_416_n_0),
        .Q(buf1_reg_c_417_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_418
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_417_n_0),
        .Q(buf1_reg_c_418_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_419
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_418_n_0),
        .Q(buf1_reg_c_419_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_42
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_41_n_0),
        .Q(buf1_reg_c_42_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_420
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_419_n_0),
        .Q(buf1_reg_c_420_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_421
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_420_n_0),
        .Q(buf1_reg_c_421_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_422
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_421_n_0),
        .Q(buf1_reg_c_422_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_423
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_422_n_0),
        .Q(buf1_reg_c_423_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_424
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_423_n_0),
        .Q(buf1_reg_c_424_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_425
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_424_n_0),
        .Q(buf1_reg_c_425_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_426
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_425_n_0),
        .Q(buf1_reg_c_426_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_427
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_426_n_0),
        .Q(buf1_reg_c_427_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_428
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_427_n_0),
        .Q(buf1_reg_c_428_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_429
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_428_n_0),
        .Q(buf1_reg_c_429_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_43
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_42_n_0),
        .Q(buf1_reg_c_43_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_430
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_429_n_0),
        .Q(buf1_reg_c_430_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_431
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_430_n_0),
        .Q(buf1_reg_c_431_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_432
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_431_n_0),
        .Q(buf1_reg_c_432_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_433
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_432_n_0),
        .Q(buf1_reg_c_433_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_434
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_433_n_0),
        .Q(buf1_reg_c_434_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_435
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_434_n_0),
        .Q(buf1_reg_c_435_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_436
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_435_n_0),
        .Q(buf1_reg_c_436_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_437
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_436_n_0),
        .Q(buf1_reg_c_437_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_438
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_437_n_0),
        .Q(buf1_reg_c_438_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_439
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_438_n_0),
        .Q(buf1_reg_c_439_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_44
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_43_n_0),
        .Q(buf1_reg_c_44_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_440
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_439_n_0),
        .Q(buf1_reg_c_440_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_441
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_440_n_0),
        .Q(buf1_reg_c_441_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_442
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_441_n_0),
        .Q(buf1_reg_c_442_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_443
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_442_n_0),
        .Q(buf1_reg_c_443_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_444
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_443_n_0),
        .Q(buf1_reg_c_444_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_445
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_444_n_0),
        .Q(buf1_reg_c_445_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_446
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_445_n_0),
        .Q(buf1_reg_c_446_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_447
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_446_n_0),
        .Q(buf1_reg_c_447_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_448
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_447_n_0),
        .Q(buf1_reg_c_448_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_449
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_448_n_0),
        .Q(buf1_reg_c_449_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_45
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_44_n_0),
        .Q(buf1_reg_c_45_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_450
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_449_n_0),
        .Q(buf1_reg_c_450_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_451
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_450_n_0),
        .Q(buf1_reg_c_451_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_452
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_451_n_0),
        .Q(buf1_reg_c_452_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_453
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_452_n_0),
        .Q(buf1_reg_c_453_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_454
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_453_n_0),
        .Q(buf1_reg_c_454_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_455
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_454_n_0),
        .Q(buf1_reg_c_455_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_456
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_455_n_0),
        .Q(buf1_reg_c_456_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_457
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_456_n_0),
        .Q(buf1_reg_c_457_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_458
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_457_n_0),
        .Q(buf1_reg_c_458_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_459
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_458_n_0),
        .Q(buf1_reg_c_459_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_46
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_45_n_0),
        .Q(buf1_reg_c_46_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_460
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_459_n_0),
        .Q(buf1_reg_c_460_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_461
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_460_n_0),
        .Q(buf1_reg_c_461_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_462
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_461_n_0),
        .Q(buf1_reg_c_462_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_463
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_462_n_0),
        .Q(buf1_reg_c_463_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_464
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_463_n_0),
        .Q(buf1_reg_c_464_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_465
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_464_n_0),
        .Q(buf1_reg_c_465_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_466
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_465_n_0),
        .Q(buf1_reg_c_466_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_467
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_466_n_0),
        .Q(buf1_reg_c_467_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_468
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_467_n_0),
        .Q(buf1_reg_c_468_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_469
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_468_n_0),
        .Q(buf1_reg_c_469_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_47
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_46_n_0),
        .Q(buf1_reg_c_47_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_470
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_469_n_0),
        .Q(buf1_reg_c_470_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_471
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_470_n_0),
        .Q(buf1_reg_c_471_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_472
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_471_n_0),
        .Q(buf1_reg_c_472_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_473
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_472_n_0),
        .Q(buf1_reg_c_473_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_474
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_473_n_0),
        .Q(buf1_reg_c_474_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_475
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_474_n_0),
        .Q(buf1_reg_c_475_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_476
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_475_n_0),
        .Q(buf1_reg_c_476_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_477
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_476_n_0),
        .Q(buf1_reg_c_477_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_48
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_47_n_0),
        .Q(buf1_reg_c_48_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_49
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_48_n_0),
        .Q(buf1_reg_c_49_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_5
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_4_n_0),
        .Q(buf1_reg_c_5_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_50
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_49_n_0),
        .Q(buf1_reg_c_50_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_51
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_50_n_0),
        .Q(buf1_reg_c_51_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_52
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_51_n_0),
        .Q(buf1_reg_c_52_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_53
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_52_n_0),
        .Q(buf1_reg_c_53_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_54
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_53_n_0),
        .Q(buf1_reg_c_54_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_55
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_54_n_0),
        .Q(buf1_reg_c_55_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_56
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_55_n_0),
        .Q(buf1_reg_c_56_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_57
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_56_n_0),
        .Q(buf1_reg_c_57_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_58
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_57_n_0),
        .Q(buf1_reg_c_58_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_59
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_58_n_0),
        .Q(buf1_reg_c_59_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_6
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_5_n_0),
        .Q(buf1_reg_c_6_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_60
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_59_n_0),
        .Q(buf1_reg_c_60_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_61
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_60_n_0),
        .Q(buf1_reg_c_61_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_62
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_61_n_0),
        .Q(buf1_reg_c_62_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_63
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_62_n_0),
        .Q(buf1_reg_c_63_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_64
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_63_n_0),
        .Q(buf1_reg_c_64_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_65
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_64_n_0),
        .Q(buf1_reg_c_65_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_66
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_65_n_0),
        .Q(buf1_reg_c_66_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_67
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_66_n_0),
        .Q(buf1_reg_c_67_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_68
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_67_n_0),
        .Q(buf1_reg_c_68_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_69
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_68_n_0),
        .Q(buf1_reg_c_69_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_7
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_6_n_0),
        .Q(buf1_reg_c_7_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_70
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_69_n_0),
        .Q(buf1_reg_c_70_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_71
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_70_n_0),
        .Q(buf1_reg_c_71_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_72
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_71_n_0),
        .Q(buf1_reg_c_72_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_73
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_72_n_0),
        .Q(buf1_reg_c_73_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_74
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_73_n_0),
        .Q(buf1_reg_c_74_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_75
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_74_n_0),
        .Q(buf1_reg_c_75_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_76
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_75_n_0),
        .Q(buf1_reg_c_76_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_77
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_76_n_0),
        .Q(buf1_reg_c_77_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_78
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_77_n_0),
        .Q(buf1_reg_c_78_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_79
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_78_n_0),
        .Q(buf1_reg_c_79_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_8
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_7_n_0),
        .Q(buf1_reg_c_8_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_80
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_79_n_0),
        .Q(buf1_reg_c_80_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_81
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_80_n_0),
        .Q(buf1_reg_c_81_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_82
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_81_n_0),
        .Q(buf1_reg_c_82_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_83
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_82_n_0),
        .Q(buf1_reg_c_83_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_84
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_83_n_0),
        .Q(buf1_reg_c_84_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_85
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_84_n_0),
        .Q(buf1_reg_c_85_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_86
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_85_n_0),
        .Q(buf1_reg_c_86_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_87
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_86_n_0),
        .Q(buf1_reg_c_87_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_88
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_87_n_0),
        .Q(buf1_reg_c_88_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_89
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_88_n_0),
        .Q(buf1_reg_c_89_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_9
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_8_n_0),
        .Q(buf1_reg_c_9_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_90
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_89_n_0),
        .Q(buf1_reg_c_90_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_91
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_90_n_0),
        .Q(buf1_reg_c_91_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_92
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_91_n_0),
        .Q(buf1_reg_c_92_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_93
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_92_n_0),
        .Q(buf1_reg_c_93_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_94
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_93_n_0),
        .Q(buf1_reg_c_94_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_95
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_94_n_0),
        .Q(buf1_reg_c_95_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_96
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_95_n_0),
        .Q(buf1_reg_c_96_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_97
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_96_n_0),
        .Q(buf1_reg_c_97_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_98
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_97_n_0),
        .Q(buf1_reg_c_98_n_0));
  FDCE #(
    .INIT(1'b0)) 
    buf1_reg_c_99
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(buf1_reg_c_98_n_0),
        .Q(buf1_reg_c_99_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    buf1_reg_gate
       (.I0(\buf1_reg[478][7]_buf1_reg_c_477_n_0 ),
        .I1(buf1_reg_c_477_n_0),
        .O(buf1_reg_gate_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    buf1_reg_gate__0
       (.I0(\buf1_reg[478][6]_buf1_reg_c_477_n_0 ),
        .I1(buf1_reg_c_477_n_0),
        .O(buf1_reg_gate__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    buf1_reg_gate__1
       (.I0(\buf1_reg[478][5]_buf1_reg_c_477_n_0 ),
        .I1(buf1_reg_c_477_n_0),
        .O(buf1_reg_gate__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    buf1_reg_gate__2
       (.I0(\buf1_reg[478][4]_buf1_reg_c_477_n_0 ),
        .I1(buf1_reg_c_477_n_0),
        .O(buf1_reg_gate__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    buf1_reg_gate__3
       (.I0(\buf1_reg[478][3]_buf1_reg_c_477_n_0 ),
        .I1(buf1_reg_c_477_n_0),
        .O(buf1_reg_gate__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    buf1_reg_gate__4
       (.I0(\buf1_reg[478][2]_buf1_reg_c_477_n_0 ),
        .I1(buf1_reg_c_477_n_0),
        .O(buf1_reg_gate__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    buf1_reg_gate__5
       (.I0(\buf1_reg[478][1]_buf1_reg_c_477_n_0 ),
        .I1(buf1_reg_c_477_n_0),
        .O(buf1_reg_gate__5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    buf1_reg_gate__6
       (.I0(\buf1_reg[478][0]_buf1_reg_c_477_n_0 ),
        .I1(buf1_reg_c_477_n_0),
        .O(buf1_reg_gate__6_n_0));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT POST_PROCESS_NETLIST " *) 
  (* srl_bus_name = "\buf2_reg[127] " *) 
  (* srl_name = "\buf2_reg[127][0]_srl32_buf1_reg_c_126 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[127][0]_srl32_buf1_reg_c_126 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[95][0]_srl32_buf1_reg_c_94_n_1 ),
        .Q(\NLW_buf2_reg[127][0]_srl32_buf1_reg_c_126_Q_UNCONNECTED ),
        .Q31(xlnx_opt__24));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT POST_PROCESS_NETLIST " *) 
  (* srl_bus_name = "\buf2_reg[127] " *) 
  (* srl_name = "\buf2_reg[127][1]_srl32_buf1_reg_c_126 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[127][1]_srl32_buf1_reg_c_126 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[95][1]_srl32_buf1_reg_c_94_n_1 ),
        .Q(\NLW_buf2_reg[127][1]_srl32_buf1_reg_c_126_Q_UNCONNECTED ),
        .Q31(xlnx_opt__25));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT POST_PROCESS_NETLIST " *) 
  (* srl_bus_name = "\buf2_reg[127] " *) 
  (* srl_name = "\buf2_reg[127][2]_srl32_buf1_reg_c_126 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[127][2]_srl32_buf1_reg_c_126 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[95][2]_srl32_buf1_reg_c_94_n_1 ),
        .Q(\NLW_buf2_reg[127][2]_srl32_buf1_reg_c_126_Q_UNCONNECTED ),
        .Q31(xlnx_opt__26));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT POST_PROCESS_NETLIST " *) 
  (* srl_bus_name = "\buf2_reg[127] " *) 
  (* srl_name = "\buf2_reg[127][3]_srl32_buf1_reg_c_126 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[127][3]_srl32_buf1_reg_c_126 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[95][3]_srl32_buf1_reg_c_94_n_1 ),
        .Q(\NLW_buf2_reg[127][3]_srl32_buf1_reg_c_126_Q_UNCONNECTED ),
        .Q31(xlnx_opt__27));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT POST_PROCESS_NETLIST " *) 
  (* srl_bus_name = "\buf2_reg[127] " *) 
  (* srl_name = "\buf2_reg[127][4]_srl32_buf1_reg_c_126 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[127][4]_srl32_buf1_reg_c_126 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[95][4]_srl32_buf1_reg_c_94_n_1 ),
        .Q(\NLW_buf2_reg[127][4]_srl32_buf1_reg_c_126_Q_UNCONNECTED ),
        .Q31(xlnx_opt__28));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT POST_PROCESS_NETLIST " *) 
  (* srl_bus_name = "\buf2_reg[127] " *) 
  (* srl_name = "\buf2_reg[127][5]_srl32_buf1_reg_c_126 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[127][5]_srl32_buf1_reg_c_126 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[95][5]_srl32_buf1_reg_c_94_n_1 ),
        .Q(\NLW_buf2_reg[127][5]_srl32_buf1_reg_c_126_Q_UNCONNECTED ),
        .Q31(xlnx_opt__29));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT POST_PROCESS_NETLIST " *) 
  (* srl_bus_name = "\buf2_reg[127] " *) 
  (* srl_name = "\buf2_reg[127][6]_srl32_buf1_reg_c_126 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[127][6]_srl32_buf1_reg_c_126 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[95][6]_srl32_buf1_reg_c_94_n_1 ),
        .Q(\NLW_buf2_reg[127][6]_srl32_buf1_reg_c_126_Q_UNCONNECTED ),
        .Q31(xlnx_opt__30));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT POST_PROCESS_NETLIST " *) 
  (* srl_bus_name = "\buf2_reg[127] " *) 
  (* srl_name = "\buf2_reg[127][7]_srl32_buf1_reg_c_126 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[127][7]_srl32_buf1_reg_c_126 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[95][7]_srl32_buf1_reg_c_94_n_1 ),
        .Q(\NLW_buf2_reg[127][7]_srl32_buf1_reg_c_126_Q_UNCONNECTED ),
        .Q31(xlnx_opt__31));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT " *) 
  (* srl_bus_name = "\buf2_reg[159] " *) 
  (* srl_name = "\buf2_reg[159][0]_srl32_buf1_reg_c_158 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[159][0]_srl32_buf1_reg_c_158 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(xlnx_opt__24),
        .Q(\NLW_buf2_reg[159][0]_srl32_buf1_reg_c_158_Q_UNCONNECTED ),
        .Q31(\buf2_reg[159][0]_srl32_buf1_reg_c_158_n_1 ));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT " *) 
  (* srl_bus_name = "\buf2_reg[159] " *) 
  (* srl_name = "\buf2_reg[159][1]_srl32_buf1_reg_c_158 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[159][1]_srl32_buf1_reg_c_158 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(xlnx_opt__25),
        .Q(\NLW_buf2_reg[159][1]_srl32_buf1_reg_c_158_Q_UNCONNECTED ),
        .Q31(\buf2_reg[159][1]_srl32_buf1_reg_c_158_n_1 ));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT " *) 
  (* srl_bus_name = "\buf2_reg[159] " *) 
  (* srl_name = "\buf2_reg[159][2]_srl32_buf1_reg_c_158 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[159][2]_srl32_buf1_reg_c_158 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(xlnx_opt__26),
        .Q(\NLW_buf2_reg[159][2]_srl32_buf1_reg_c_158_Q_UNCONNECTED ),
        .Q31(\buf2_reg[159][2]_srl32_buf1_reg_c_158_n_1 ));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT " *) 
  (* srl_bus_name = "\buf2_reg[159] " *) 
  (* srl_name = "\buf2_reg[159][3]_srl32_buf1_reg_c_158 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[159][3]_srl32_buf1_reg_c_158 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(xlnx_opt__27),
        .Q(\NLW_buf2_reg[159][3]_srl32_buf1_reg_c_158_Q_UNCONNECTED ),
        .Q31(\buf2_reg[159][3]_srl32_buf1_reg_c_158_n_1 ));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT " *) 
  (* srl_bus_name = "\buf2_reg[159] " *) 
  (* srl_name = "\buf2_reg[159][4]_srl32_buf1_reg_c_158 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[159][4]_srl32_buf1_reg_c_158 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(xlnx_opt__28),
        .Q(\NLW_buf2_reg[159][4]_srl32_buf1_reg_c_158_Q_UNCONNECTED ),
        .Q31(\buf2_reg[159][4]_srl32_buf1_reg_c_158_n_1 ));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT " *) 
  (* srl_bus_name = "\buf2_reg[159] " *) 
  (* srl_name = "\buf2_reg[159][5]_srl32_buf1_reg_c_158 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[159][5]_srl32_buf1_reg_c_158 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(xlnx_opt__29),
        .Q(\NLW_buf2_reg[159][5]_srl32_buf1_reg_c_158_Q_UNCONNECTED ),
        .Q31(\buf2_reg[159][5]_srl32_buf1_reg_c_158_n_1 ));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT " *) 
  (* srl_bus_name = "\buf2_reg[159] " *) 
  (* srl_name = "\buf2_reg[159][6]_srl32_buf1_reg_c_158 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[159][6]_srl32_buf1_reg_c_158 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(xlnx_opt__30),
        .Q(\NLW_buf2_reg[159][6]_srl32_buf1_reg_c_158_Q_UNCONNECTED ),
        .Q31(\buf2_reg[159][6]_srl32_buf1_reg_c_158_n_1 ));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT " *) 
  (* srl_bus_name = "\buf2_reg[159] " *) 
  (* srl_name = "\buf2_reg[159][7]_srl32_buf1_reg_c_158 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[159][7]_srl32_buf1_reg_c_158 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(xlnx_opt__31),
        .Q(\NLW_buf2_reg[159][7]_srl32_buf1_reg_c_158_Q_UNCONNECTED ),
        .Q31(\buf2_reg[159][7]_srl32_buf1_reg_c_158_n_1 ));
  (* srl_bus_name = "\buf2_reg[191] " *) 
  (* srl_name = "\buf2_reg[191][0]_srl32_buf1_reg_c_190 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[191][0]_srl32_buf1_reg_c_190 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[159][0]_srl32_buf1_reg_c_158_n_1 ),
        .Q(\NLW_buf2_reg[191][0]_srl32_buf1_reg_c_190_Q_UNCONNECTED ),
        .Q31(\buf2_reg[191][0]_srl32_buf1_reg_c_190_n_1 ));
  (* srl_bus_name = "\buf2_reg[191] " *) 
  (* srl_name = "\buf2_reg[191][1]_srl32_buf1_reg_c_190 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[191][1]_srl32_buf1_reg_c_190 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[159][1]_srl32_buf1_reg_c_158_n_1 ),
        .Q(\NLW_buf2_reg[191][1]_srl32_buf1_reg_c_190_Q_UNCONNECTED ),
        .Q31(\buf2_reg[191][1]_srl32_buf1_reg_c_190_n_1 ));
  (* srl_bus_name = "\buf2_reg[191] " *) 
  (* srl_name = "\buf2_reg[191][2]_srl32_buf1_reg_c_190 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[191][2]_srl32_buf1_reg_c_190 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[159][2]_srl32_buf1_reg_c_158_n_1 ),
        .Q(\NLW_buf2_reg[191][2]_srl32_buf1_reg_c_190_Q_UNCONNECTED ),
        .Q31(\buf2_reg[191][2]_srl32_buf1_reg_c_190_n_1 ));
  (* srl_bus_name = "\buf2_reg[191] " *) 
  (* srl_name = "\buf2_reg[191][3]_srl32_buf1_reg_c_190 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[191][3]_srl32_buf1_reg_c_190 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[159][3]_srl32_buf1_reg_c_158_n_1 ),
        .Q(\NLW_buf2_reg[191][3]_srl32_buf1_reg_c_190_Q_UNCONNECTED ),
        .Q31(\buf2_reg[191][3]_srl32_buf1_reg_c_190_n_1 ));
  (* srl_bus_name = "\buf2_reg[191] " *) 
  (* srl_name = "\buf2_reg[191][4]_srl32_buf1_reg_c_190 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[191][4]_srl32_buf1_reg_c_190 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[159][4]_srl32_buf1_reg_c_158_n_1 ),
        .Q(\NLW_buf2_reg[191][4]_srl32_buf1_reg_c_190_Q_UNCONNECTED ),
        .Q31(\buf2_reg[191][4]_srl32_buf1_reg_c_190_n_1 ));
  (* srl_bus_name = "\buf2_reg[191] " *) 
  (* srl_name = "\buf2_reg[191][5]_srl32_buf1_reg_c_190 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[191][5]_srl32_buf1_reg_c_190 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[159][5]_srl32_buf1_reg_c_158_n_1 ),
        .Q(\NLW_buf2_reg[191][5]_srl32_buf1_reg_c_190_Q_UNCONNECTED ),
        .Q31(\buf2_reg[191][5]_srl32_buf1_reg_c_190_n_1 ));
  (* srl_bus_name = "\buf2_reg[191] " *) 
  (* srl_name = "\buf2_reg[191][6]_srl32_buf1_reg_c_190 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[191][6]_srl32_buf1_reg_c_190 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[159][6]_srl32_buf1_reg_c_158_n_1 ),
        .Q(\NLW_buf2_reg[191][6]_srl32_buf1_reg_c_190_Q_UNCONNECTED ),
        .Q31(\buf2_reg[191][6]_srl32_buf1_reg_c_190_n_1 ));
  (* srl_bus_name = "\buf2_reg[191] " *) 
  (* srl_name = "\buf2_reg[191][7]_srl32_buf1_reg_c_190 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[191][7]_srl32_buf1_reg_c_190 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[159][7]_srl32_buf1_reg_c_158_n_1 ),
        .Q(\NLW_buf2_reg[191][7]_srl32_buf1_reg_c_190_Q_UNCONNECTED ),
        .Q31(\buf2_reg[191][7]_srl32_buf1_reg_c_190_n_1 ));
  (* srl_bus_name = "\buf2_reg[223] " *) 
  (* srl_name = "\buf2_reg[223][0]_srl32_buf1_reg_c_222 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[223][0]_srl32_buf1_reg_c_222 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[191][0]_srl32_buf1_reg_c_190_n_1 ),
        .Q(\NLW_buf2_reg[223][0]_srl32_buf1_reg_c_222_Q_UNCONNECTED ),
        .Q31(\buf2_reg[223][0]_srl32_buf1_reg_c_222_n_1 ));
  (* srl_bus_name = "\buf2_reg[223] " *) 
  (* srl_name = "\buf2_reg[223][1]_srl32_buf1_reg_c_222 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[223][1]_srl32_buf1_reg_c_222 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[191][1]_srl32_buf1_reg_c_190_n_1 ),
        .Q(\NLW_buf2_reg[223][1]_srl32_buf1_reg_c_222_Q_UNCONNECTED ),
        .Q31(\buf2_reg[223][1]_srl32_buf1_reg_c_222_n_1 ));
  (* srl_bus_name = "\buf2_reg[223] " *) 
  (* srl_name = "\buf2_reg[223][2]_srl32_buf1_reg_c_222 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[223][2]_srl32_buf1_reg_c_222 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[191][2]_srl32_buf1_reg_c_190_n_1 ),
        .Q(\NLW_buf2_reg[223][2]_srl32_buf1_reg_c_222_Q_UNCONNECTED ),
        .Q31(\buf2_reg[223][2]_srl32_buf1_reg_c_222_n_1 ));
  (* srl_bus_name = "\buf2_reg[223] " *) 
  (* srl_name = "\buf2_reg[223][3]_srl32_buf1_reg_c_222 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[223][3]_srl32_buf1_reg_c_222 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[191][3]_srl32_buf1_reg_c_190_n_1 ),
        .Q(\NLW_buf2_reg[223][3]_srl32_buf1_reg_c_222_Q_UNCONNECTED ),
        .Q31(\buf2_reg[223][3]_srl32_buf1_reg_c_222_n_1 ));
  (* srl_bus_name = "\buf2_reg[223] " *) 
  (* srl_name = "\buf2_reg[223][4]_srl32_buf1_reg_c_222 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[223][4]_srl32_buf1_reg_c_222 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[191][4]_srl32_buf1_reg_c_190_n_1 ),
        .Q(\NLW_buf2_reg[223][4]_srl32_buf1_reg_c_222_Q_UNCONNECTED ),
        .Q31(\buf2_reg[223][4]_srl32_buf1_reg_c_222_n_1 ));
  (* srl_bus_name = "\buf2_reg[223] " *) 
  (* srl_name = "\buf2_reg[223][5]_srl32_buf1_reg_c_222 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[223][5]_srl32_buf1_reg_c_222 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[191][5]_srl32_buf1_reg_c_190_n_1 ),
        .Q(\NLW_buf2_reg[223][5]_srl32_buf1_reg_c_222_Q_UNCONNECTED ),
        .Q31(\buf2_reg[223][5]_srl32_buf1_reg_c_222_n_1 ));
  (* srl_bus_name = "\buf2_reg[223] " *) 
  (* srl_name = "\buf2_reg[223][6]_srl32_buf1_reg_c_222 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[223][6]_srl32_buf1_reg_c_222 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[191][6]_srl32_buf1_reg_c_190_n_1 ),
        .Q(\NLW_buf2_reg[223][6]_srl32_buf1_reg_c_222_Q_UNCONNECTED ),
        .Q31(\buf2_reg[223][6]_srl32_buf1_reg_c_222_n_1 ));
  (* srl_bus_name = "\buf2_reg[223] " *) 
  (* srl_name = "\buf2_reg[223][7]_srl32_buf1_reg_c_222 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[223][7]_srl32_buf1_reg_c_222 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[191][7]_srl32_buf1_reg_c_190_n_1 ),
        .Q(\NLW_buf2_reg[223][7]_srl32_buf1_reg_c_222_Q_UNCONNECTED ),
        .Q31(\buf2_reg[223][7]_srl32_buf1_reg_c_222_n_1 ));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT POST_PROCESS_NETLIST " *) 
  (* srl_bus_name = "\buf2_reg[255] " *) 
  (* srl_name = "\buf2_reg[255][0]_srl32_buf1_reg_c_254 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[255][0]_srl32_buf1_reg_c_254 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[223][0]_srl32_buf1_reg_c_222_n_1 ),
        .Q(\NLW_buf2_reg[255][0]_srl32_buf1_reg_c_254_Q_UNCONNECTED ),
        .Q31(xlnx_opt__32));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT POST_PROCESS_NETLIST " *) 
  (* srl_bus_name = "\buf2_reg[255] " *) 
  (* srl_name = "\buf2_reg[255][1]_srl32_buf1_reg_c_254 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[255][1]_srl32_buf1_reg_c_254 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[223][1]_srl32_buf1_reg_c_222_n_1 ),
        .Q(\NLW_buf2_reg[255][1]_srl32_buf1_reg_c_254_Q_UNCONNECTED ),
        .Q31(xlnx_opt__33));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT POST_PROCESS_NETLIST " *) 
  (* srl_bus_name = "\buf2_reg[255] " *) 
  (* srl_name = "\buf2_reg[255][2]_srl32_buf1_reg_c_254 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[255][2]_srl32_buf1_reg_c_254 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[223][2]_srl32_buf1_reg_c_222_n_1 ),
        .Q(\NLW_buf2_reg[255][2]_srl32_buf1_reg_c_254_Q_UNCONNECTED ),
        .Q31(xlnx_opt__34));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT POST_PROCESS_NETLIST " *) 
  (* srl_bus_name = "\buf2_reg[255] " *) 
  (* srl_name = "\buf2_reg[255][3]_srl32_buf1_reg_c_254 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[255][3]_srl32_buf1_reg_c_254 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[223][3]_srl32_buf1_reg_c_222_n_1 ),
        .Q(\NLW_buf2_reg[255][3]_srl32_buf1_reg_c_254_Q_UNCONNECTED ),
        .Q31(xlnx_opt__35));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT POST_PROCESS_NETLIST " *) 
  (* srl_bus_name = "\buf2_reg[255] " *) 
  (* srl_name = "\buf2_reg[255][4]_srl32_buf1_reg_c_254 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[255][4]_srl32_buf1_reg_c_254 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[223][4]_srl32_buf1_reg_c_222_n_1 ),
        .Q(\NLW_buf2_reg[255][4]_srl32_buf1_reg_c_254_Q_UNCONNECTED ),
        .Q31(xlnx_opt__36));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT POST_PROCESS_NETLIST " *) 
  (* srl_bus_name = "\buf2_reg[255] " *) 
  (* srl_name = "\buf2_reg[255][5]_srl32_buf1_reg_c_254 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[255][5]_srl32_buf1_reg_c_254 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[223][5]_srl32_buf1_reg_c_222_n_1 ),
        .Q(\NLW_buf2_reg[255][5]_srl32_buf1_reg_c_254_Q_UNCONNECTED ),
        .Q31(xlnx_opt__37));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT POST_PROCESS_NETLIST " *) 
  (* srl_bus_name = "\buf2_reg[255] " *) 
  (* srl_name = "\buf2_reg[255][6]_srl32_buf1_reg_c_254 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[255][6]_srl32_buf1_reg_c_254 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[223][6]_srl32_buf1_reg_c_222_n_1 ),
        .Q(\NLW_buf2_reg[255][6]_srl32_buf1_reg_c_254_Q_UNCONNECTED ),
        .Q31(xlnx_opt__38));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT POST_PROCESS_NETLIST " *) 
  (* srl_bus_name = "\buf2_reg[255] " *) 
  (* srl_name = "\buf2_reg[255][7]_srl32_buf1_reg_c_254 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[255][7]_srl32_buf1_reg_c_254 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[223][7]_srl32_buf1_reg_c_222_n_1 ),
        .Q(\NLW_buf2_reg[255][7]_srl32_buf1_reg_c_254_Q_UNCONNECTED ),
        .Q31(xlnx_opt__39));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT " *) 
  (* srl_bus_name = "\buf2_reg[287] " *) 
  (* srl_name = "\buf2_reg[287][0]_srl32_buf1_reg_c_286 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[287][0]_srl32_buf1_reg_c_286 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(xlnx_opt__32),
        .Q(\NLW_buf2_reg[287][0]_srl32_buf1_reg_c_286_Q_UNCONNECTED ),
        .Q31(\buf2_reg[287][0]_srl32_buf1_reg_c_286_n_1 ));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT " *) 
  (* srl_bus_name = "\buf2_reg[287] " *) 
  (* srl_name = "\buf2_reg[287][1]_srl32_buf1_reg_c_286 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[287][1]_srl32_buf1_reg_c_286 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(xlnx_opt__33),
        .Q(\NLW_buf2_reg[287][1]_srl32_buf1_reg_c_286_Q_UNCONNECTED ),
        .Q31(\buf2_reg[287][1]_srl32_buf1_reg_c_286_n_1 ));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT " *) 
  (* srl_bus_name = "\buf2_reg[287] " *) 
  (* srl_name = "\buf2_reg[287][2]_srl32_buf1_reg_c_286 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[287][2]_srl32_buf1_reg_c_286 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(xlnx_opt__34),
        .Q(\NLW_buf2_reg[287][2]_srl32_buf1_reg_c_286_Q_UNCONNECTED ),
        .Q31(\buf2_reg[287][2]_srl32_buf1_reg_c_286_n_1 ));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT " *) 
  (* srl_bus_name = "\buf2_reg[287] " *) 
  (* srl_name = "\buf2_reg[287][3]_srl32_buf1_reg_c_286 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[287][3]_srl32_buf1_reg_c_286 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(xlnx_opt__35),
        .Q(\NLW_buf2_reg[287][3]_srl32_buf1_reg_c_286_Q_UNCONNECTED ),
        .Q31(\buf2_reg[287][3]_srl32_buf1_reg_c_286_n_1 ));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT " *) 
  (* srl_bus_name = "\buf2_reg[287] " *) 
  (* srl_name = "\buf2_reg[287][4]_srl32_buf1_reg_c_286 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[287][4]_srl32_buf1_reg_c_286 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(xlnx_opt__36),
        .Q(\NLW_buf2_reg[287][4]_srl32_buf1_reg_c_286_Q_UNCONNECTED ),
        .Q31(\buf2_reg[287][4]_srl32_buf1_reg_c_286_n_1 ));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT " *) 
  (* srl_bus_name = "\buf2_reg[287] " *) 
  (* srl_name = "\buf2_reg[287][5]_srl32_buf1_reg_c_286 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[287][5]_srl32_buf1_reg_c_286 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(xlnx_opt__37),
        .Q(\NLW_buf2_reg[287][5]_srl32_buf1_reg_c_286_Q_UNCONNECTED ),
        .Q31(\buf2_reg[287][5]_srl32_buf1_reg_c_286_n_1 ));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT " *) 
  (* srl_bus_name = "\buf2_reg[287] " *) 
  (* srl_name = "\buf2_reg[287][6]_srl32_buf1_reg_c_286 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[287][6]_srl32_buf1_reg_c_286 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(xlnx_opt__38),
        .Q(\NLW_buf2_reg[287][6]_srl32_buf1_reg_c_286_Q_UNCONNECTED ),
        .Q31(\buf2_reg[287][6]_srl32_buf1_reg_c_286_n_1 ));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT " *) 
  (* srl_bus_name = "\buf2_reg[287] " *) 
  (* srl_name = "\buf2_reg[287][7]_srl32_buf1_reg_c_286 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[287][7]_srl32_buf1_reg_c_286 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(xlnx_opt__39),
        .Q(\NLW_buf2_reg[287][7]_srl32_buf1_reg_c_286_Q_UNCONNECTED ),
        .Q31(\buf2_reg[287][7]_srl32_buf1_reg_c_286_n_1 ));
  (* srl_bus_name = "\buf2_reg[319] " *) 
  (* srl_name = "\buf2_reg[319][0]_srl32_buf1_reg_c_318 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[319][0]_srl32_buf1_reg_c_318 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[287][0]_srl32_buf1_reg_c_286_n_1 ),
        .Q(\NLW_buf2_reg[319][0]_srl32_buf1_reg_c_318_Q_UNCONNECTED ),
        .Q31(\buf2_reg[319][0]_srl32_buf1_reg_c_318_n_1 ));
  (* srl_bus_name = "\buf2_reg[319] " *) 
  (* srl_name = "\buf2_reg[319][1]_srl32_buf1_reg_c_318 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[319][1]_srl32_buf1_reg_c_318 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[287][1]_srl32_buf1_reg_c_286_n_1 ),
        .Q(\NLW_buf2_reg[319][1]_srl32_buf1_reg_c_318_Q_UNCONNECTED ),
        .Q31(\buf2_reg[319][1]_srl32_buf1_reg_c_318_n_1 ));
  (* srl_bus_name = "\buf2_reg[319] " *) 
  (* srl_name = "\buf2_reg[319][2]_srl32_buf1_reg_c_318 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[319][2]_srl32_buf1_reg_c_318 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[287][2]_srl32_buf1_reg_c_286_n_1 ),
        .Q(\NLW_buf2_reg[319][2]_srl32_buf1_reg_c_318_Q_UNCONNECTED ),
        .Q31(\buf2_reg[319][2]_srl32_buf1_reg_c_318_n_1 ));
  (* srl_bus_name = "\buf2_reg[319] " *) 
  (* srl_name = "\buf2_reg[319][3]_srl32_buf1_reg_c_318 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[319][3]_srl32_buf1_reg_c_318 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[287][3]_srl32_buf1_reg_c_286_n_1 ),
        .Q(\NLW_buf2_reg[319][3]_srl32_buf1_reg_c_318_Q_UNCONNECTED ),
        .Q31(\buf2_reg[319][3]_srl32_buf1_reg_c_318_n_1 ));
  (* srl_bus_name = "\buf2_reg[319] " *) 
  (* srl_name = "\buf2_reg[319][4]_srl32_buf1_reg_c_318 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[319][4]_srl32_buf1_reg_c_318 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[287][4]_srl32_buf1_reg_c_286_n_1 ),
        .Q(\NLW_buf2_reg[319][4]_srl32_buf1_reg_c_318_Q_UNCONNECTED ),
        .Q31(\buf2_reg[319][4]_srl32_buf1_reg_c_318_n_1 ));
  (* srl_bus_name = "\buf2_reg[319] " *) 
  (* srl_name = "\buf2_reg[319][5]_srl32_buf1_reg_c_318 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[319][5]_srl32_buf1_reg_c_318 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[287][5]_srl32_buf1_reg_c_286_n_1 ),
        .Q(\NLW_buf2_reg[319][5]_srl32_buf1_reg_c_318_Q_UNCONNECTED ),
        .Q31(\buf2_reg[319][5]_srl32_buf1_reg_c_318_n_1 ));
  (* srl_bus_name = "\buf2_reg[319] " *) 
  (* srl_name = "\buf2_reg[319][6]_srl32_buf1_reg_c_318 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[319][6]_srl32_buf1_reg_c_318 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[287][6]_srl32_buf1_reg_c_286_n_1 ),
        .Q(\NLW_buf2_reg[319][6]_srl32_buf1_reg_c_318_Q_UNCONNECTED ),
        .Q31(\buf2_reg[319][6]_srl32_buf1_reg_c_318_n_1 ));
  (* srl_bus_name = "\buf2_reg[319] " *) 
  (* srl_name = "\buf2_reg[319][7]_srl32_buf1_reg_c_318 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[319][7]_srl32_buf1_reg_c_318 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[287][7]_srl32_buf1_reg_c_286_n_1 ),
        .Q(\NLW_buf2_reg[319][7]_srl32_buf1_reg_c_318_Q_UNCONNECTED ),
        .Q31(\buf2_reg[319][7]_srl32_buf1_reg_c_318_n_1 ));
  (* srl_bus_name = "\buf2_reg[31] " *) 
  (* srl_name = "\buf2_reg[31][0]_srl32_buf1_reg_c_30 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[31][0]_srl32_buf1_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(Gx_calc2[1]),
        .Q(\NLW_buf2_reg[31][0]_srl32_buf1_reg_c_30_Q_UNCONNECTED ),
        .Q31(\buf2_reg[31][0]_srl32_buf1_reg_c_30_n_1 ));
  (* srl_bus_name = "\buf2_reg[31] " *) 
  (* srl_name = "\buf2_reg[31][1]_srl32_buf1_reg_c_30 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[31][1]_srl32_buf1_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(Gx_calc2[2]),
        .Q(\NLW_buf2_reg[31][1]_srl32_buf1_reg_c_30_Q_UNCONNECTED ),
        .Q31(\buf2_reg[31][1]_srl32_buf1_reg_c_30_n_1 ));
  (* srl_bus_name = "\buf2_reg[31] " *) 
  (* srl_name = "\buf2_reg[31][2]_srl32_buf1_reg_c_30 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[31][2]_srl32_buf1_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(Gx_calc2[3]),
        .Q(\NLW_buf2_reg[31][2]_srl32_buf1_reg_c_30_Q_UNCONNECTED ),
        .Q31(\buf2_reg[31][2]_srl32_buf1_reg_c_30_n_1 ));
  (* srl_bus_name = "\buf2_reg[31] " *) 
  (* srl_name = "\buf2_reg[31][3]_srl32_buf1_reg_c_30 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[31][3]_srl32_buf1_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(Gx_calc2[4]),
        .Q(\NLW_buf2_reg[31][3]_srl32_buf1_reg_c_30_Q_UNCONNECTED ),
        .Q31(\buf2_reg[31][3]_srl32_buf1_reg_c_30_n_1 ));
  (* srl_bus_name = "\buf2_reg[31] " *) 
  (* srl_name = "\buf2_reg[31][4]_srl32_buf1_reg_c_30 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[31][4]_srl32_buf1_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(Gx_calc2[5]),
        .Q(\NLW_buf2_reg[31][4]_srl32_buf1_reg_c_30_Q_UNCONNECTED ),
        .Q31(\buf2_reg[31][4]_srl32_buf1_reg_c_30_n_1 ));
  (* srl_bus_name = "\buf2_reg[31] " *) 
  (* srl_name = "\buf2_reg[31][5]_srl32_buf1_reg_c_30 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[31][5]_srl32_buf1_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(Gx_calc2[6]),
        .Q(\NLW_buf2_reg[31][5]_srl32_buf1_reg_c_30_Q_UNCONNECTED ),
        .Q31(\buf2_reg[31][5]_srl32_buf1_reg_c_30_n_1 ));
  (* srl_bus_name = "\buf2_reg[31] " *) 
  (* srl_name = "\buf2_reg[31][6]_srl32_buf1_reg_c_30 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[31][6]_srl32_buf1_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(Gx_calc2[7]),
        .Q(\NLW_buf2_reg[31][6]_srl32_buf1_reg_c_30_Q_UNCONNECTED ),
        .Q31(\buf2_reg[31][6]_srl32_buf1_reg_c_30_n_1 ));
  (* srl_bus_name = "\buf2_reg[31] " *) 
  (* srl_name = "\buf2_reg[31][7]_srl32_buf1_reg_c_30 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[31][7]_srl32_buf1_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(Gx_calc2[8]),
        .Q(\NLW_buf2_reg[31][7]_srl32_buf1_reg_c_30_Q_UNCONNECTED ),
        .Q31(\buf2_reg[31][7]_srl32_buf1_reg_c_30_n_1 ));
  (* srl_bus_name = "\buf2_reg[351] " *) 
  (* srl_name = "\buf2_reg[351][0]_srl32_buf1_reg_c_350 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[351][0]_srl32_buf1_reg_c_350 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[319][0]_srl32_buf1_reg_c_318_n_1 ),
        .Q(\NLW_buf2_reg[351][0]_srl32_buf1_reg_c_350_Q_UNCONNECTED ),
        .Q31(\buf2_reg[351][0]_srl32_buf1_reg_c_350_n_1 ));
  (* srl_bus_name = "\buf2_reg[351] " *) 
  (* srl_name = "\buf2_reg[351][1]_srl32_buf1_reg_c_350 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[351][1]_srl32_buf1_reg_c_350 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[319][1]_srl32_buf1_reg_c_318_n_1 ),
        .Q(\NLW_buf2_reg[351][1]_srl32_buf1_reg_c_350_Q_UNCONNECTED ),
        .Q31(\buf2_reg[351][1]_srl32_buf1_reg_c_350_n_1 ));
  (* srl_bus_name = "\buf2_reg[351] " *) 
  (* srl_name = "\buf2_reg[351][2]_srl32_buf1_reg_c_350 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[351][2]_srl32_buf1_reg_c_350 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[319][2]_srl32_buf1_reg_c_318_n_1 ),
        .Q(\NLW_buf2_reg[351][2]_srl32_buf1_reg_c_350_Q_UNCONNECTED ),
        .Q31(\buf2_reg[351][2]_srl32_buf1_reg_c_350_n_1 ));
  (* srl_bus_name = "\buf2_reg[351] " *) 
  (* srl_name = "\buf2_reg[351][3]_srl32_buf1_reg_c_350 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[351][3]_srl32_buf1_reg_c_350 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[319][3]_srl32_buf1_reg_c_318_n_1 ),
        .Q(\NLW_buf2_reg[351][3]_srl32_buf1_reg_c_350_Q_UNCONNECTED ),
        .Q31(\buf2_reg[351][3]_srl32_buf1_reg_c_350_n_1 ));
  (* srl_bus_name = "\buf2_reg[351] " *) 
  (* srl_name = "\buf2_reg[351][4]_srl32_buf1_reg_c_350 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[351][4]_srl32_buf1_reg_c_350 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[319][4]_srl32_buf1_reg_c_318_n_1 ),
        .Q(\NLW_buf2_reg[351][4]_srl32_buf1_reg_c_350_Q_UNCONNECTED ),
        .Q31(\buf2_reg[351][4]_srl32_buf1_reg_c_350_n_1 ));
  (* srl_bus_name = "\buf2_reg[351] " *) 
  (* srl_name = "\buf2_reg[351][5]_srl32_buf1_reg_c_350 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[351][5]_srl32_buf1_reg_c_350 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[319][5]_srl32_buf1_reg_c_318_n_1 ),
        .Q(\NLW_buf2_reg[351][5]_srl32_buf1_reg_c_350_Q_UNCONNECTED ),
        .Q31(\buf2_reg[351][5]_srl32_buf1_reg_c_350_n_1 ));
  (* srl_bus_name = "\buf2_reg[351] " *) 
  (* srl_name = "\buf2_reg[351][6]_srl32_buf1_reg_c_350 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[351][6]_srl32_buf1_reg_c_350 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[319][6]_srl32_buf1_reg_c_318_n_1 ),
        .Q(\NLW_buf2_reg[351][6]_srl32_buf1_reg_c_350_Q_UNCONNECTED ),
        .Q31(\buf2_reg[351][6]_srl32_buf1_reg_c_350_n_1 ));
  (* srl_bus_name = "\buf2_reg[351] " *) 
  (* srl_name = "\buf2_reg[351][7]_srl32_buf1_reg_c_350 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[351][7]_srl32_buf1_reg_c_350 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[319][7]_srl32_buf1_reg_c_318_n_1 ),
        .Q(\NLW_buf2_reg[351][7]_srl32_buf1_reg_c_350_Q_UNCONNECTED ),
        .Q31(\buf2_reg[351][7]_srl32_buf1_reg_c_350_n_1 ));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT POST_PROCESS_NETLIST " *) 
  (* srl_bus_name = "\buf2_reg[383] " *) 
  (* srl_name = "\buf2_reg[383][0]_srl32_buf1_reg_c_382 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[383][0]_srl32_buf1_reg_c_382 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[351][0]_srl32_buf1_reg_c_350_n_1 ),
        .Q(\NLW_buf2_reg[383][0]_srl32_buf1_reg_c_382_Q_UNCONNECTED ),
        .Q31(xlnx_opt__40));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT POST_PROCESS_NETLIST " *) 
  (* srl_bus_name = "\buf2_reg[383] " *) 
  (* srl_name = "\buf2_reg[383][1]_srl32_buf1_reg_c_382 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[383][1]_srl32_buf1_reg_c_382 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[351][1]_srl32_buf1_reg_c_350_n_1 ),
        .Q(\NLW_buf2_reg[383][1]_srl32_buf1_reg_c_382_Q_UNCONNECTED ),
        .Q31(xlnx_opt__41));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT POST_PROCESS_NETLIST " *) 
  (* srl_bus_name = "\buf2_reg[383] " *) 
  (* srl_name = "\buf2_reg[383][2]_srl32_buf1_reg_c_382 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[383][2]_srl32_buf1_reg_c_382 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[351][2]_srl32_buf1_reg_c_350_n_1 ),
        .Q(\NLW_buf2_reg[383][2]_srl32_buf1_reg_c_382_Q_UNCONNECTED ),
        .Q31(xlnx_opt__42));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT POST_PROCESS_NETLIST " *) 
  (* srl_bus_name = "\buf2_reg[383] " *) 
  (* srl_name = "\buf2_reg[383][3]_srl32_buf1_reg_c_382 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[383][3]_srl32_buf1_reg_c_382 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[351][3]_srl32_buf1_reg_c_350_n_1 ),
        .Q(\NLW_buf2_reg[383][3]_srl32_buf1_reg_c_382_Q_UNCONNECTED ),
        .Q31(xlnx_opt__43));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT POST_PROCESS_NETLIST " *) 
  (* srl_bus_name = "\buf2_reg[383] " *) 
  (* srl_name = "\buf2_reg[383][4]_srl32_buf1_reg_c_382 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[383][4]_srl32_buf1_reg_c_382 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[351][4]_srl32_buf1_reg_c_350_n_1 ),
        .Q(\NLW_buf2_reg[383][4]_srl32_buf1_reg_c_382_Q_UNCONNECTED ),
        .Q31(xlnx_opt__44));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT POST_PROCESS_NETLIST " *) 
  (* srl_bus_name = "\buf2_reg[383] " *) 
  (* srl_name = "\buf2_reg[383][5]_srl32_buf1_reg_c_382 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[383][5]_srl32_buf1_reg_c_382 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[351][5]_srl32_buf1_reg_c_350_n_1 ),
        .Q(\NLW_buf2_reg[383][5]_srl32_buf1_reg_c_382_Q_UNCONNECTED ),
        .Q31(xlnx_opt__45));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT POST_PROCESS_NETLIST " *) 
  (* srl_bus_name = "\buf2_reg[383] " *) 
  (* srl_name = "\buf2_reg[383][6]_srl32_buf1_reg_c_382 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[383][6]_srl32_buf1_reg_c_382 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[351][6]_srl32_buf1_reg_c_350_n_1 ),
        .Q(\NLW_buf2_reg[383][6]_srl32_buf1_reg_c_382_Q_UNCONNECTED ),
        .Q31(xlnx_opt__46));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT POST_PROCESS_NETLIST " *) 
  (* srl_bus_name = "\buf2_reg[383] " *) 
  (* srl_name = "\buf2_reg[383][7]_srl32_buf1_reg_c_382 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[383][7]_srl32_buf1_reg_c_382 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[351][7]_srl32_buf1_reg_c_350_n_1 ),
        .Q(\NLW_buf2_reg[383][7]_srl32_buf1_reg_c_382_Q_UNCONNECTED ),
        .Q31(xlnx_opt__47));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT " *) 
  (* srl_bus_name = "\buf2_reg[415] " *) 
  (* srl_name = "\buf2_reg[415][0]_srl32_buf1_reg_c_414 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[415][0]_srl32_buf1_reg_c_414 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(xlnx_opt__40),
        .Q(\NLW_buf2_reg[415][0]_srl32_buf1_reg_c_414_Q_UNCONNECTED ),
        .Q31(\buf2_reg[415][0]_srl32_buf1_reg_c_414_n_1 ));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT " *) 
  (* srl_bus_name = "\buf2_reg[415] " *) 
  (* srl_name = "\buf2_reg[415][1]_srl32_buf1_reg_c_414 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[415][1]_srl32_buf1_reg_c_414 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(xlnx_opt__41),
        .Q(\NLW_buf2_reg[415][1]_srl32_buf1_reg_c_414_Q_UNCONNECTED ),
        .Q31(\buf2_reg[415][1]_srl32_buf1_reg_c_414_n_1 ));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT " *) 
  (* srl_bus_name = "\buf2_reg[415] " *) 
  (* srl_name = "\buf2_reg[415][2]_srl32_buf1_reg_c_414 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[415][2]_srl32_buf1_reg_c_414 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(xlnx_opt__42),
        .Q(\NLW_buf2_reg[415][2]_srl32_buf1_reg_c_414_Q_UNCONNECTED ),
        .Q31(\buf2_reg[415][2]_srl32_buf1_reg_c_414_n_1 ));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT " *) 
  (* srl_bus_name = "\buf2_reg[415] " *) 
  (* srl_name = "\buf2_reg[415][3]_srl32_buf1_reg_c_414 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[415][3]_srl32_buf1_reg_c_414 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(xlnx_opt__43),
        .Q(\NLW_buf2_reg[415][3]_srl32_buf1_reg_c_414_Q_UNCONNECTED ),
        .Q31(\buf2_reg[415][3]_srl32_buf1_reg_c_414_n_1 ));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT " *) 
  (* srl_bus_name = "\buf2_reg[415] " *) 
  (* srl_name = "\buf2_reg[415][4]_srl32_buf1_reg_c_414 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[415][4]_srl32_buf1_reg_c_414 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(xlnx_opt__44),
        .Q(\NLW_buf2_reg[415][4]_srl32_buf1_reg_c_414_Q_UNCONNECTED ),
        .Q31(\buf2_reg[415][4]_srl32_buf1_reg_c_414_n_1 ));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT " *) 
  (* srl_bus_name = "\buf2_reg[415] " *) 
  (* srl_name = "\buf2_reg[415][5]_srl32_buf1_reg_c_414 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[415][5]_srl32_buf1_reg_c_414 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(xlnx_opt__45),
        .Q(\NLW_buf2_reg[415][5]_srl32_buf1_reg_c_414_Q_UNCONNECTED ),
        .Q31(\buf2_reg[415][5]_srl32_buf1_reg_c_414_n_1 ));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT " *) 
  (* srl_bus_name = "\buf2_reg[415] " *) 
  (* srl_name = "\buf2_reg[415][6]_srl32_buf1_reg_c_414 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[415][6]_srl32_buf1_reg_c_414 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(xlnx_opt__46),
        .Q(\NLW_buf2_reg[415][6]_srl32_buf1_reg_c_414_Q_UNCONNECTED ),
        .Q31(\buf2_reg[415][6]_srl32_buf1_reg_c_414_n_1 ));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT " *) 
  (* srl_bus_name = "\buf2_reg[415] " *) 
  (* srl_name = "\buf2_reg[415][7]_srl32_buf1_reg_c_414 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[415][7]_srl32_buf1_reg_c_414 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(xlnx_opt__47),
        .Q(\NLW_buf2_reg[415][7]_srl32_buf1_reg_c_414_Q_UNCONNECTED ),
        .Q31(\buf2_reg[415][7]_srl32_buf1_reg_c_414_n_1 ));
  (* srl_bus_name = "\buf2_reg[447] " *) 
  (* srl_name = "\buf2_reg[447][0]_srl32_buf1_reg_c_446 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[447][0]_srl32_buf1_reg_c_446 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[415][0]_srl32_buf1_reg_c_414_n_1 ),
        .Q(\NLW_buf2_reg[447][0]_srl32_buf1_reg_c_446_Q_UNCONNECTED ),
        .Q31(\buf2_reg[447][0]_srl32_buf1_reg_c_446_n_1 ));
  (* srl_bus_name = "\buf2_reg[447] " *) 
  (* srl_name = "\buf2_reg[447][1]_srl32_buf1_reg_c_446 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[447][1]_srl32_buf1_reg_c_446 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[415][1]_srl32_buf1_reg_c_414_n_1 ),
        .Q(\NLW_buf2_reg[447][1]_srl32_buf1_reg_c_446_Q_UNCONNECTED ),
        .Q31(\buf2_reg[447][1]_srl32_buf1_reg_c_446_n_1 ));
  (* srl_bus_name = "\buf2_reg[447] " *) 
  (* srl_name = "\buf2_reg[447][2]_srl32_buf1_reg_c_446 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[447][2]_srl32_buf1_reg_c_446 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[415][2]_srl32_buf1_reg_c_414_n_1 ),
        .Q(\NLW_buf2_reg[447][2]_srl32_buf1_reg_c_446_Q_UNCONNECTED ),
        .Q31(\buf2_reg[447][2]_srl32_buf1_reg_c_446_n_1 ));
  (* srl_bus_name = "\buf2_reg[447] " *) 
  (* srl_name = "\buf2_reg[447][3]_srl32_buf1_reg_c_446 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[447][3]_srl32_buf1_reg_c_446 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[415][3]_srl32_buf1_reg_c_414_n_1 ),
        .Q(\NLW_buf2_reg[447][3]_srl32_buf1_reg_c_446_Q_UNCONNECTED ),
        .Q31(\buf2_reg[447][3]_srl32_buf1_reg_c_446_n_1 ));
  (* srl_bus_name = "\buf2_reg[447] " *) 
  (* srl_name = "\buf2_reg[447][4]_srl32_buf1_reg_c_446 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[447][4]_srl32_buf1_reg_c_446 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[415][4]_srl32_buf1_reg_c_414_n_1 ),
        .Q(\NLW_buf2_reg[447][4]_srl32_buf1_reg_c_446_Q_UNCONNECTED ),
        .Q31(\buf2_reg[447][4]_srl32_buf1_reg_c_446_n_1 ));
  (* srl_bus_name = "\buf2_reg[447] " *) 
  (* srl_name = "\buf2_reg[447][5]_srl32_buf1_reg_c_446 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[447][5]_srl32_buf1_reg_c_446 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[415][5]_srl32_buf1_reg_c_414_n_1 ),
        .Q(\NLW_buf2_reg[447][5]_srl32_buf1_reg_c_446_Q_UNCONNECTED ),
        .Q31(\buf2_reg[447][5]_srl32_buf1_reg_c_446_n_1 ));
  (* srl_bus_name = "\buf2_reg[447] " *) 
  (* srl_name = "\buf2_reg[447][6]_srl32_buf1_reg_c_446 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[447][6]_srl32_buf1_reg_c_446 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[415][6]_srl32_buf1_reg_c_414_n_1 ),
        .Q(\NLW_buf2_reg[447][6]_srl32_buf1_reg_c_446_Q_UNCONNECTED ),
        .Q31(\buf2_reg[447][6]_srl32_buf1_reg_c_446_n_1 ));
  (* srl_bus_name = "\buf2_reg[447] " *) 
  (* srl_name = "\buf2_reg[447][7]_srl32_buf1_reg_c_446 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[447][7]_srl32_buf1_reg_c_446 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[415][7]_srl32_buf1_reg_c_414_n_1 ),
        .Q(\NLW_buf2_reg[447][7]_srl32_buf1_reg_c_446_Q_UNCONNECTED ),
        .Q31(\buf2_reg[447][7]_srl32_buf1_reg_c_446_n_1 ));
  (* srl_bus_name = "\buf2_reg[477] " *) 
  (* srl_name = "\buf2_reg[477][0]_srl30_buf1_reg_c_476 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[477][0]_srl30_buf1_reg_c_476 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[447][0]_srl32_buf1_reg_c_446_n_1 ),
        .Q(\buf2_reg[477][0]_srl30_buf1_reg_c_476_n_0 ),
        .Q31(\NLW_buf2_reg[477][0]_srl30_buf1_reg_c_476_Q31_UNCONNECTED ));
  (* srl_bus_name = "\buf2_reg[477] " *) 
  (* srl_name = "\buf2_reg[477][1]_srl30_buf1_reg_c_476 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[477][1]_srl30_buf1_reg_c_476 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[447][1]_srl32_buf1_reg_c_446_n_1 ),
        .Q(\buf2_reg[477][1]_srl30_buf1_reg_c_476_n_0 ),
        .Q31(\NLW_buf2_reg[477][1]_srl30_buf1_reg_c_476_Q31_UNCONNECTED ));
  (* srl_bus_name = "\buf2_reg[477] " *) 
  (* srl_name = "\buf2_reg[477][2]_srl30_buf1_reg_c_476 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[477][2]_srl30_buf1_reg_c_476 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[447][2]_srl32_buf1_reg_c_446_n_1 ),
        .Q(\buf2_reg[477][2]_srl30_buf1_reg_c_476_n_0 ),
        .Q31(\NLW_buf2_reg[477][2]_srl30_buf1_reg_c_476_Q31_UNCONNECTED ));
  (* srl_bus_name = "\buf2_reg[477] " *) 
  (* srl_name = "\buf2_reg[477][3]_srl30_buf1_reg_c_476 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[477][3]_srl30_buf1_reg_c_476 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[447][3]_srl32_buf1_reg_c_446_n_1 ),
        .Q(\buf2_reg[477][3]_srl30_buf1_reg_c_476_n_0 ),
        .Q31(\NLW_buf2_reg[477][3]_srl30_buf1_reg_c_476_Q31_UNCONNECTED ));
  (* srl_bus_name = "\buf2_reg[477] " *) 
  (* srl_name = "\buf2_reg[477][4]_srl30_buf1_reg_c_476 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[477][4]_srl30_buf1_reg_c_476 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[447][4]_srl32_buf1_reg_c_446_n_1 ),
        .Q(\buf2_reg[477][4]_srl30_buf1_reg_c_476_n_0 ),
        .Q31(\NLW_buf2_reg[477][4]_srl30_buf1_reg_c_476_Q31_UNCONNECTED ));
  (* srl_bus_name = "\buf2_reg[477] " *) 
  (* srl_name = "\buf2_reg[477][5]_srl30_buf1_reg_c_476 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[477][5]_srl30_buf1_reg_c_476 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[447][5]_srl32_buf1_reg_c_446_n_1 ),
        .Q(\buf2_reg[477][5]_srl30_buf1_reg_c_476_n_0 ),
        .Q31(\NLW_buf2_reg[477][5]_srl30_buf1_reg_c_476_Q31_UNCONNECTED ));
  (* srl_bus_name = "\buf2_reg[477] " *) 
  (* srl_name = "\buf2_reg[477][6]_srl30_buf1_reg_c_476 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[477][6]_srl30_buf1_reg_c_476 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[447][6]_srl32_buf1_reg_c_446_n_1 ),
        .Q(\buf2_reg[477][6]_srl30_buf1_reg_c_476_n_0 ),
        .Q31(\NLW_buf2_reg[477][6]_srl30_buf1_reg_c_476_Q31_UNCONNECTED ));
  (* srl_bus_name = "\buf2_reg[477] " *) 
  (* srl_name = "\buf2_reg[477][7]_srl30_buf1_reg_c_476 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[477][7]_srl30_buf1_reg_c_476 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[447][7]_srl32_buf1_reg_c_446_n_1 ),
        .Q(\buf2_reg[477][7]_srl30_buf1_reg_c_476_n_0 ),
        .Q31(\NLW_buf2_reg[477][7]_srl30_buf1_reg_c_476_Q31_UNCONNECTED ));
  FDRE #(
    .INIT(1'b0)) 
    \buf2_reg[478][0]_buf1_reg_c_477 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\buf2_reg[477][0]_srl30_buf1_reg_c_476_n_0 ),
        .Q(\buf2_reg[478][0]_buf1_reg_c_477_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buf2_reg[478][1]_buf1_reg_c_477 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\buf2_reg[477][1]_srl30_buf1_reg_c_476_n_0 ),
        .Q(\buf2_reg[478][1]_buf1_reg_c_477_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buf2_reg[478][2]_buf1_reg_c_477 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\buf2_reg[477][2]_srl30_buf1_reg_c_476_n_0 ),
        .Q(\buf2_reg[478][2]_buf1_reg_c_477_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buf2_reg[478][3]_buf1_reg_c_477 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\buf2_reg[477][3]_srl30_buf1_reg_c_476_n_0 ),
        .Q(\buf2_reg[478][3]_buf1_reg_c_477_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buf2_reg[478][4]_buf1_reg_c_477 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\buf2_reg[477][4]_srl30_buf1_reg_c_476_n_0 ),
        .Q(\buf2_reg[478][4]_buf1_reg_c_477_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buf2_reg[478][5]_buf1_reg_c_477 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\buf2_reg[477][5]_srl30_buf1_reg_c_476_n_0 ),
        .Q(\buf2_reg[478][5]_buf1_reg_c_477_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buf2_reg[478][6]_buf1_reg_c_477 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\buf2_reg[477][6]_srl30_buf1_reg_c_476_n_0 ),
        .Q(\buf2_reg[478][6]_buf1_reg_c_477_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buf2_reg[478][7]_buf1_reg_c_477 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\buf2_reg[477][7]_srl30_buf1_reg_c_476_n_0 ),
        .Q(\buf2_reg[478][7]_buf1_reg_c_477_n_0 ),
        .R(1'b0));
  (* srl_bus_name = "\buf2_reg[63] " *) 
  (* srl_name = "\buf2_reg[63][0]_srl32_buf1_reg_c_62 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[63][0]_srl32_buf1_reg_c_62 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[31][0]_srl32_buf1_reg_c_30_n_1 ),
        .Q(\NLW_buf2_reg[63][0]_srl32_buf1_reg_c_62_Q_UNCONNECTED ),
        .Q31(\buf2_reg[63][0]_srl32_buf1_reg_c_62_n_1 ));
  (* srl_bus_name = "\buf2_reg[63] " *) 
  (* srl_name = "\buf2_reg[63][1]_srl32_buf1_reg_c_62 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[63][1]_srl32_buf1_reg_c_62 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[31][1]_srl32_buf1_reg_c_30_n_1 ),
        .Q(\NLW_buf2_reg[63][1]_srl32_buf1_reg_c_62_Q_UNCONNECTED ),
        .Q31(\buf2_reg[63][1]_srl32_buf1_reg_c_62_n_1 ));
  (* srl_bus_name = "\buf2_reg[63] " *) 
  (* srl_name = "\buf2_reg[63][2]_srl32_buf1_reg_c_62 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[63][2]_srl32_buf1_reg_c_62 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[31][2]_srl32_buf1_reg_c_30_n_1 ),
        .Q(\NLW_buf2_reg[63][2]_srl32_buf1_reg_c_62_Q_UNCONNECTED ),
        .Q31(\buf2_reg[63][2]_srl32_buf1_reg_c_62_n_1 ));
  (* srl_bus_name = "\buf2_reg[63] " *) 
  (* srl_name = "\buf2_reg[63][3]_srl32_buf1_reg_c_62 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[63][3]_srl32_buf1_reg_c_62 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[31][3]_srl32_buf1_reg_c_30_n_1 ),
        .Q(\NLW_buf2_reg[63][3]_srl32_buf1_reg_c_62_Q_UNCONNECTED ),
        .Q31(\buf2_reg[63][3]_srl32_buf1_reg_c_62_n_1 ));
  (* srl_bus_name = "\buf2_reg[63] " *) 
  (* srl_name = "\buf2_reg[63][4]_srl32_buf1_reg_c_62 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[63][4]_srl32_buf1_reg_c_62 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[31][4]_srl32_buf1_reg_c_30_n_1 ),
        .Q(\NLW_buf2_reg[63][4]_srl32_buf1_reg_c_62_Q_UNCONNECTED ),
        .Q31(\buf2_reg[63][4]_srl32_buf1_reg_c_62_n_1 ));
  (* srl_bus_name = "\buf2_reg[63] " *) 
  (* srl_name = "\buf2_reg[63][5]_srl32_buf1_reg_c_62 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[63][5]_srl32_buf1_reg_c_62 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[31][5]_srl32_buf1_reg_c_30_n_1 ),
        .Q(\NLW_buf2_reg[63][5]_srl32_buf1_reg_c_62_Q_UNCONNECTED ),
        .Q31(\buf2_reg[63][5]_srl32_buf1_reg_c_62_n_1 ));
  (* srl_bus_name = "\buf2_reg[63] " *) 
  (* srl_name = "\buf2_reg[63][6]_srl32_buf1_reg_c_62 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[63][6]_srl32_buf1_reg_c_62 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[31][6]_srl32_buf1_reg_c_30_n_1 ),
        .Q(\NLW_buf2_reg[63][6]_srl32_buf1_reg_c_62_Q_UNCONNECTED ),
        .Q31(\buf2_reg[63][6]_srl32_buf1_reg_c_62_n_1 ));
  (* srl_bus_name = "\buf2_reg[63] " *) 
  (* srl_name = "\buf2_reg[63][7]_srl32_buf1_reg_c_62 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[63][7]_srl32_buf1_reg_c_62 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[31][7]_srl32_buf1_reg_c_30_n_1 ),
        .Q(\NLW_buf2_reg[63][7]_srl32_buf1_reg_c_62_Q_UNCONNECTED ),
        .Q31(\buf2_reg[63][7]_srl32_buf1_reg_c_62_n_1 ));
  (* srl_bus_name = "\buf2_reg[95] " *) 
  (* srl_name = "\buf2_reg[95][0]_srl32_buf1_reg_c_94 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[95][0]_srl32_buf1_reg_c_94 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[63][0]_srl32_buf1_reg_c_62_n_1 ),
        .Q(\NLW_buf2_reg[95][0]_srl32_buf1_reg_c_94_Q_UNCONNECTED ),
        .Q31(\buf2_reg[95][0]_srl32_buf1_reg_c_94_n_1 ));
  (* srl_bus_name = "\buf2_reg[95] " *) 
  (* srl_name = "\buf2_reg[95][1]_srl32_buf1_reg_c_94 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[95][1]_srl32_buf1_reg_c_94 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[63][1]_srl32_buf1_reg_c_62_n_1 ),
        .Q(\NLW_buf2_reg[95][1]_srl32_buf1_reg_c_94_Q_UNCONNECTED ),
        .Q31(\buf2_reg[95][1]_srl32_buf1_reg_c_94_n_1 ));
  (* srl_bus_name = "\buf2_reg[95] " *) 
  (* srl_name = "\buf2_reg[95][2]_srl32_buf1_reg_c_94 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[95][2]_srl32_buf1_reg_c_94 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[63][2]_srl32_buf1_reg_c_62_n_1 ),
        .Q(\NLW_buf2_reg[95][2]_srl32_buf1_reg_c_94_Q_UNCONNECTED ),
        .Q31(\buf2_reg[95][2]_srl32_buf1_reg_c_94_n_1 ));
  (* srl_bus_name = "\buf2_reg[95] " *) 
  (* srl_name = "\buf2_reg[95][3]_srl32_buf1_reg_c_94 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[95][3]_srl32_buf1_reg_c_94 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[63][3]_srl32_buf1_reg_c_62_n_1 ),
        .Q(\NLW_buf2_reg[95][3]_srl32_buf1_reg_c_94_Q_UNCONNECTED ),
        .Q31(\buf2_reg[95][3]_srl32_buf1_reg_c_94_n_1 ));
  (* srl_bus_name = "\buf2_reg[95] " *) 
  (* srl_name = "\buf2_reg[95][4]_srl32_buf1_reg_c_94 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[95][4]_srl32_buf1_reg_c_94 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[63][4]_srl32_buf1_reg_c_62_n_1 ),
        .Q(\NLW_buf2_reg[95][4]_srl32_buf1_reg_c_94_Q_UNCONNECTED ),
        .Q31(\buf2_reg[95][4]_srl32_buf1_reg_c_94_n_1 ));
  (* srl_bus_name = "\buf2_reg[95] " *) 
  (* srl_name = "\buf2_reg[95][5]_srl32_buf1_reg_c_94 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[95][5]_srl32_buf1_reg_c_94 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[63][5]_srl32_buf1_reg_c_62_n_1 ),
        .Q(\NLW_buf2_reg[95][5]_srl32_buf1_reg_c_94_Q_UNCONNECTED ),
        .Q31(\buf2_reg[95][5]_srl32_buf1_reg_c_94_n_1 ));
  (* srl_bus_name = "\buf2_reg[95] " *) 
  (* srl_name = "\buf2_reg[95][6]_srl32_buf1_reg_c_94 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[95][6]_srl32_buf1_reg_c_94 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[63][6]_srl32_buf1_reg_c_62_n_1 ),
        .Q(\NLW_buf2_reg[95][6]_srl32_buf1_reg_c_94_Q_UNCONNECTED ),
        .Q31(\buf2_reg[95][6]_srl32_buf1_reg_c_94_n_1 ));
  (* srl_bus_name = "\buf2_reg[95] " *) 
  (* srl_name = "\buf2_reg[95][7]_srl32_buf1_reg_c_94 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buf2_reg[95][7]_srl32_buf1_reg_c_94 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\buf2_reg[63][7]_srl32_buf1_reg_c_62_n_1 ),
        .Q(\NLW_buf2_reg[95][7]_srl32_buf1_reg_c_94_Q_UNCONNECTED ),
        .Q31(\buf2_reg[95][7]_srl32_buf1_reg_c_94_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    buf2_reg_gate
       (.I0(\buf2_reg[478][7]_buf1_reg_c_477_n_0 ),
        .I1(buf1_reg_c_477_n_0),
        .O(buf2_reg_gate_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    buf2_reg_gate__0
       (.I0(\buf2_reg[478][6]_buf1_reg_c_477_n_0 ),
        .I1(buf1_reg_c_477_n_0),
        .O(buf2_reg_gate__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    buf2_reg_gate__1
       (.I0(\buf2_reg[478][5]_buf1_reg_c_477_n_0 ),
        .I1(buf1_reg_c_477_n_0),
        .O(buf2_reg_gate__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    buf2_reg_gate__2
       (.I0(\buf2_reg[478][4]_buf1_reg_c_477_n_0 ),
        .I1(buf1_reg_c_477_n_0),
        .O(buf2_reg_gate__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    buf2_reg_gate__3
       (.I0(\buf2_reg[478][3]_buf1_reg_c_477_n_0 ),
        .I1(buf1_reg_c_477_n_0),
        .O(buf2_reg_gate__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    buf2_reg_gate__4
       (.I0(\buf2_reg[478][2]_buf1_reg_c_477_n_0 ),
        .I1(buf1_reg_c_477_n_0),
        .O(buf2_reg_gate__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    buf2_reg_gate__5
       (.I0(\buf2_reg[478][1]_buf1_reg_c_477_n_0 ),
        .I1(buf1_reg_c_477_n_0),
        .O(buf2_reg_gate__5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    buf2_reg_gate__6
       (.I0(\buf2_reg[478][0]_buf1_reg_c_477_n_0 ),
        .I1(buf1_reg_c_477_n_0),
        .O(buf2_reg_gate__6_n_0));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1 
       (.I0(\cnt_reg_n_0_[0] ),
        .O(cnt[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h26)) 
    \cnt[1]_i_1 
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt[8]_i_3_n_0 ),
        .O(cnt[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt[2]_i_1 
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[2] ),
        .O(cnt[2]));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \cnt[3]_i_1 
       (.I0(\cnt_reg_n_0_[3] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(cnt[3]));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \cnt[4]_i_1 
       (.I0(\cnt_reg_n_0_[4] ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[3] ),
        .O(cnt[4]));
  LUT3 #(
    .INIT(8'h26)) 
    \cnt[5]_i_1 
       (.I0(\cnt[8]_i_2_n_0 ),
        .I1(\cnt_reg_n_0_[5] ),
        .I2(\cnt[8]_i_3_n_0 ),
        .O(cnt[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0878)) 
    \cnt[6]_i_1 
       (.I0(\cnt_reg_n_0_[5] ),
        .I1(\cnt[8]_i_2_n_0 ),
        .I2(\cnt_reg_n_0_[6] ),
        .I3(\cnt[8]_i_3_n_0 ),
        .O(cnt[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00807F80)) 
    \cnt[7]_i_1 
       (.I0(\cnt[8]_i_2_n_0 ),
        .I1(\cnt_reg_n_0_[5] ),
        .I2(\cnt_reg_n_0_[6] ),
        .I3(\cnt_reg_n_0_[7] ),
        .I4(\cnt[8]_i_3_n_0 ),
        .O(cnt[7]));
  LUT6 #(
    .INIT(64'h000080007FFF8000)) 
    \cnt[8]_i_1 
       (.I0(\cnt_reg_n_0_[6] ),
        .I1(\cnt_reg_n_0_[5] ),
        .I2(\cnt_reg_n_0_[7] ),
        .I3(\cnt[8]_i_2_n_0 ),
        .I4(\cnt_reg_n_0_[8] ),
        .I5(\cnt[8]_i_3_n_0 ),
        .O(cnt[8]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \cnt[8]_i_2 
       (.I0(\cnt_reg_n_0_[4] ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[3] ),
        .O(\cnt[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cnt[8]_i_3 
       (.I0(\edge_x_OBUF[7]_inst_i_8_n_0 ),
        .I1(\cnt_reg_n_0_[7] ),
        .I2(\cnt_reg_n_0_[5] ),
        .I3(\cnt_reg_n_0_[6] ),
        .I4(\cnt_reg_n_0_[8] ),
        .I5(\cnt_reg_n_0_[0] ),
        .O(\cnt[8]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(cnt[0]),
        .Q(\cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(cnt[1]),
        .Q(\cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(cnt[2]),
        .Q(\cnt_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(cnt[3]),
        .Q(\cnt_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(cnt[4]),
        .Q(\cnt_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(cnt[5]),
        .Q(\cnt_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(cnt[6]),
        .Q(\cnt_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(cnt[7]),
        .Q(\cnt_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(cnt[8]),
        .Q(\cnt_reg_n_0_[8] ));
  OBUF \edge_x_OBUF[0]_inst 
       (.I(edge_x_OBUF),
        .O(edge_x[0]));
  OBUF \edge_x_OBUF[1]_inst 
       (.I(edge_x_OBUF),
        .O(edge_x[1]));
  OBUF \edge_x_OBUF[2]_inst 
       (.I(edge_x_OBUF),
        .O(edge_x[2]));
  OBUF \edge_x_OBUF[3]_inst 
       (.I(edge_x_OBUF),
        .O(edge_x[3]));
  OBUF \edge_x_OBUF[4]_inst 
       (.I(edge_x_OBUF),
        .O(edge_x[4]));
  OBUF \edge_x_OBUF[5]_inst 
       (.I(edge_x_OBUF),
        .O(edge_x[5]));
  OBUF \edge_x_OBUF[6]_inst 
       (.I(edge_x_OBUF),
        .O(edge_x[6]));
  OBUF \edge_x_OBUF[7]_inst 
       (.I(edge_x_OBUF),
        .O(edge_x[7]));
  LUT6 #(
    .INIT(64'hAA02AA020000AA02)) 
    \edge_x_OBUF[7]_inst_i_1 
       (.I0(\edge_x_OBUF[7]_inst_i_2_n_0 ),
        .I1(\edge_x_OBUF[7]_inst_i_3_n_0 ),
        .I2(\edge_x_OBUF[7]_inst_i_4_n_0 ),
        .I3(\edge_x_OBUF[7]_inst_i_5_n_0 ),
        .I4(\edge_x_OBUF[7]_inst_i_6_n_0 ),
        .I5(\edge_x_OBUF[7]_inst_i_7_n_0 ),
        .O(edge_x_OBUF));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \edge_x_OBUF[7]_inst_i_10 
       (.CI(\edge_x_OBUF[7]_inst_i_9_n_0 ),
        .CO({\edge_x_OBUF[7]_inst_i_10_n_0 ,\NLW_edge_x_OBUF[7]_inst_i_10_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\edge_x_OBUF[7]_inst_i_19_n_0 ,\edge_x_OBUF[7]_inst_i_20_n_0 ,\edge_x_OBUF[7]_inst_i_21_n_0 ,\edge_x_OBUF[7]_inst_i_22_n_0 }),
        .O(Gx_calc[7:4]),
        .S({\edge_x_OBUF[7]_inst_i_23_n_0 ,\edge_x_OBUF[7]_inst_i_24_n_0 ,\edge_x_OBUF[7]_inst_i_25_n_0 ,\edge_x_OBUF[7]_inst_i_26_n_0 }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \edge_x_OBUF[7]_inst_i_11 
       (.CI(\edge_x_OBUF[7]_inst_i_10_n_0 ),
        .CO(\NLW_edge_x_OBUF[7]_inst_i_11_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\edge_x_OBUF[7]_inst_i_27_n_0 ,\edge_x_OBUF[7]_inst_i_28_n_0 }),
        .O({\NLW_edge_x_OBUF[7]_inst_i_11_O_UNCONNECTED [3],Gx_calc[10:8]}),
        .S({1'b0,\edge_x_OBUF[7]_inst_i_29_n_0 ,\edge_x_OBUF[7]_inst_i_30_n_0 ,\edge_x_OBUF[7]_inst_i_31_n_0 }));
  LUT5 #(
    .INIT(32'h8EFF008E)) 
    \edge_x_OBUF[7]_inst_i_12 
       (.I0(R8[1]),
        .I1(R5[0]),
        .I2(Gx_calc0[1]),
        .I3(\edge_x_OBUF[7]_inst_i_33_n_0 ),
        .I4(R2[2]),
        .O(\edge_x_OBUF[7]_inst_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h2BD4D42B)) 
    \edge_x_OBUF[7]_inst_i_13 
       (.I0(Gx_calc0[1]),
        .I1(R5[0]),
        .I2(R8[1]),
        .I3(\edge_x_OBUF[7]_inst_i_33_n_0 ),
        .I4(R2[2]),
        .O(\edge_x_OBUF[7]_inst_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \edge_x_OBUF[7]_inst_i_14 
       (.I0(R5[0]),
        .I1(Gx_calc0[1]),
        .I2(R8[1]),
        .I3(R2[1]),
        .O(\edge_x_OBUF[7]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h781EE178E17887E1)) 
    \edge_x_OBUF[7]_inst_i_15 
       (.I0(R2[2]),
        .I1(\edge_x_OBUF[7]_inst_i_34_n_0 ),
        .I2(\edge_x_OBUF[7]_inst_i_35_n_0 ),
        .I3(Gx_calc0[2]),
        .I4(R8[2]),
        .I5(R5[1]),
        .O(\edge_x_OBUF[7]_inst_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h6696696669669969)) 
    \edge_x_OBUF[7]_inst_i_16 
       (.I0(R2[2]),
        .I1(\edge_x_OBUF[7]_inst_i_33_n_0 ),
        .I2(R8[1]),
        .I3(Gx_calc0[1]),
        .I4(R5[0]),
        .I5(R2[1]),
        .O(\edge_x_OBUF[7]_inst_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h6996699696696996)) 
    \edge_x_OBUF[7]_inst_i_17 
       (.I0(R2[1]),
        .I1(R8[1]),
        .I2(Gx_calc0[1]),
        .I3(R5[0]),
        .I4(Gx_calc0[0]),
        .I5(R8[0]),
        .O(\edge_x_OBUF[7]_inst_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \edge_x_OBUF[7]_inst_i_18 
       (.I0(R8[0]),
        .I1(Gx_calc0[0]),
        .I2(R2[0]),
        .O(\edge_x_OBUF[7]_inst_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h8EE8E88E)) 
    \edge_x_OBUF[7]_inst_i_19 
       (.I0(\edge_x_OBUF[7]_inst_i_36_n_0 ),
        .I1(R2[6]),
        .I2(R5[5]),
        .I3(Gx_calc0[6]),
        .I4(R8[6]),
        .O(\edge_x_OBUF[7]_inst_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFEFFFFFFFF)) 
    \edge_x_OBUF[7]_inst_i_2 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[8] ),
        .I2(\cnt_reg_n_0_[6] ),
        .I3(\cnt_reg_n_0_[5] ),
        .I4(\cnt_reg_n_0_[7] ),
        .I5(\edge_x_OBUF[7]_inst_i_8_n_0 ),
        .O(\edge_x_OBUF[7]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFB2B200)) 
    \edge_x_OBUF[7]_inst_i_20 
       (.I0(R8[4]),
        .I1(Gx_calc0[4]),
        .I2(R5[3]),
        .I3(R2[5]),
        .I4(\edge_x_OBUF[7]_inst_i_38_n_0 ),
        .O(\edge_x_OBUF[7]_inst_i_20_n_0 ));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    \edge_x_OBUF[7]_inst_i_21 
       (.I0(Gx_calc0[3]),
        .I1(R8[3]),
        .I2(R5[2]),
        .I3(R2[4]),
        .I4(\edge_x_OBUF[7]_inst_i_39_n_0 ),
        .O(\edge_x_OBUF[7]_inst_i_21_n_0 ));
  LUT5 #(
    .INIT(32'hBB2B2B22)) 
    \edge_x_OBUF[7]_inst_i_22 
       (.I0(R2[3]),
        .I1(\edge_x_OBUF[7]_inst_i_40_n_0 ),
        .I2(Gx_calc0[2]),
        .I3(R8[2]),
        .I4(R5[1]),
        .O(\edge_x_OBUF[7]_inst_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h781EE178E17887E1)) 
    \edge_x_OBUF[7]_inst_i_23 
       (.I0(R2[6]),
        .I1(\edge_x_OBUF[7]_inst_i_36_n_0 ),
        .I2(\edge_x_OBUF[7]_inst_i_41_n_0 ),
        .I3(Gx_calc0[6]),
        .I4(R8[6]),
        .I5(R5[5]),
        .O(\edge_x_OBUF[7]_inst_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \edge_x_OBUF[7]_inst_i_24 
       (.I0(\edge_x_OBUF[7]_inst_i_38_n_0 ),
        .I1(R2[5]),
        .I2(\edge_x_OBUF[7]_inst_i_42_n_0 ),
        .I3(R2[6]),
        .I4(\edge_x_OBUF[7]_inst_i_36_n_0 ),
        .I5(\edge_x_OBUF[7]_inst_i_43_n_0 ),
        .O(\edge_x_OBUF[7]_inst_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h718E8E718E71718E)) 
    \edge_x_OBUF[7]_inst_i_25 
       (.I0(\edge_x_OBUF[7]_inst_i_39_n_0 ),
        .I1(R2[4]),
        .I2(\edge_x_OBUF[7]_inst_i_44_n_0 ),
        .I3(R2[5]),
        .I4(\edge_x_OBUF[7]_inst_i_42_n_0 ),
        .I5(\edge_x_OBUF[7]_inst_i_38_n_0 ),
        .O(\edge_x_OBUF[7]_inst_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h718E8E718E71718E)) 
    \edge_x_OBUF[7]_inst_i_26 
       (.I0(\edge_x_OBUF[7]_inst_i_45_n_0 ),
        .I1(\edge_x_OBUF[7]_inst_i_40_n_0 ),
        .I2(R2[3]),
        .I3(R2[4]),
        .I4(\edge_x_OBUF[7]_inst_i_44_n_0 ),
        .I5(\edge_x_OBUF[7]_inst_i_39_n_0 ),
        .O(\edge_x_OBUF[7]_inst_i_26_n_0 ));
  LUT5 #(
    .INIT(32'h90009990)) 
    \edge_x_OBUF[7]_inst_i_27 
       (.I0(Gx_calc0[8]),
        .I1(R5[7]),
        .I2(R5[6]),
        .I3(R8[7]),
        .I4(Gx_calc0[7]),
        .O(\edge_x_OBUF[7]_inst_i_27_n_0 ));
  LUT5 #(
    .INIT(32'hBB2B2B22)) 
    \edge_x_OBUF[7]_inst_i_28 
       (.I0(R2[7]),
        .I1(\edge_x_OBUF[7]_inst_i_47_n_0 ),
        .I2(Gx_calc0[6]),
        .I3(R8[6]),
        .I4(R5[5]),
        .O(\edge_x_OBUF[7]_inst_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \edge_x_OBUF[7]_inst_i_29 
       (.I0(R5[7]),
        .I1(Gx_calc0[8]),
        .I2(Gx_calc0[9]),
        .I3(\edge_x_OBUF[7]_inst_i_46_n_1 ),
        .O(\edge_x_OBUF[7]_inst_i_29_n_0 ));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \edge_x_OBUF[7]_inst_i_3 
       (.I0(Gx_calc[1]),
        .I1(Gx_calc[0]),
        .I2(Gx_calc[6]),
        .I3(Gx_calc[5]),
        .O(\edge_x_OBUF[7]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2BD400FF00FFD42B)) 
    \edge_x_OBUF[7]_inst_i_30 
       (.I0(Gx_calc0[7]),
        .I1(R8[7]),
        .I2(R5[6]),
        .I3(Gx_calc0[9]),
        .I4(Gx_calc0[8]),
        .I5(R5[7]),
        .O(\edge_x_OBUF[7]_inst_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hB2DBDB4D4D2424B2)) 
    \edge_x_OBUF[7]_inst_i_31 
       (.I0(\edge_x_OBUF[7]_inst_i_48_n_0 ),
        .I1(R2[7]),
        .I2(Gx_calc0[7]),
        .I3(R8[7]),
        .I4(R5[6]),
        .I5(\edge_x_OBUF[7]_inst_i_49_n_0 ),
        .O(\edge_x_OBUF[7]_inst_i_31_n_0 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \edge_x_OBUF[7]_inst_i_32 
       (.CI(1'b0),
        .CO({\edge_x_OBUF[7]_inst_i_32_n_0 ,\NLW_edge_x_OBUF[7]_inst_i_32_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\edge_x_OBUF[7]_inst_i_50_n_0 ,\edge_x_OBUF[7]_inst_i_51_n_0 ,R0[1:0]}),
        .O(Gx_calc0[3:0]),
        .S({\edge_x_OBUF[7]_inst_i_52_n_0 ,\edge_x_OBUF[7]_inst_i_53_n_0 ,\edge_x_OBUF[7]_inst_i_54_n_0 ,\edge_x_OBUF[7]_inst_i_55_n_0 }));
  LUT3 #(
    .INIT(8'h96)) 
    \edge_x_OBUF[7]_inst_i_33 
       (.I0(R5[1]),
        .I1(Gx_calc0[2]),
        .I2(R8[2]),
        .O(\edge_x_OBUF[7]_inst_i_33_n_0 ));
  LUT3 #(
    .INIT(8'h8E)) 
    \edge_x_OBUF[7]_inst_i_34 
       (.I0(R8[1]),
        .I1(R5[0]),
        .I2(Gx_calc0[1]),
        .O(\edge_x_OBUF[7]_inst_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \edge_x_OBUF[7]_inst_i_35 
       (.I0(R2[3]),
        .I1(R8[3]),
        .I2(Gx_calc0[3]),
        .I3(R5[2]),
        .O(\edge_x_OBUF[7]_inst_i_35_n_0 ));
  LUT3 #(
    .INIT(8'hB2)) 
    \edge_x_OBUF[7]_inst_i_36 
       (.I0(R8[5]),
        .I1(Gx_calc0[5]),
        .I2(R5[4]),
        .O(\edge_x_OBUF[7]_inst_i_36_n_0 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \edge_x_OBUF[7]_inst_i_37 
       (.CI(\edge_x_OBUF[7]_inst_i_32_n_0 ),
        .CO({\edge_x_OBUF[7]_inst_i_37_n_0 ,\NLW_edge_x_OBUF[7]_inst_i_37_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\edge_x_OBUF[7]_inst_i_56_n_0 ,\edge_x_OBUF[7]_inst_i_57_n_0 ,\edge_x_OBUF[7]_inst_i_58_n_0 ,\edge_x_OBUF[7]_inst_i_59_n_0 }),
        .O(Gx_calc0[7:4]),
        .S({\edge_x_OBUF[7]_inst_i_60_n_0 ,\edge_x_OBUF[7]_inst_i_61_n_0 ,\edge_x_OBUF[7]_inst_i_62_n_0 ,\edge_x_OBUF[7]_inst_i_63_n_0 }));
  LUT3 #(
    .INIT(8'h69)) 
    \edge_x_OBUF[7]_inst_i_38 
       (.I0(R5[4]),
        .I1(Gx_calc0[5]),
        .I2(R8[5]),
        .O(\edge_x_OBUF[7]_inst_i_38_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \edge_x_OBUF[7]_inst_i_39 
       (.I0(R5[3]),
        .I1(Gx_calc0[4]),
        .I2(R8[4]),
        .O(\edge_x_OBUF[7]_inst_i_39_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \edge_x_OBUF[7]_inst_i_4 
       (.I0(Gx_calc[4]),
        .I1(Gx_calc[3]),
        .I2(Gx_calc[2]),
        .O(\edge_x_OBUF[7]_inst_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \edge_x_OBUF[7]_inst_i_40 
       (.I0(R5[2]),
        .I1(Gx_calc0[3]),
        .I2(R8[3]),
        .O(\edge_x_OBUF[7]_inst_i_40_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \edge_x_OBUF[7]_inst_i_41 
       (.I0(R2[7]),
        .I1(R8[7]),
        .I2(Gx_calc0[7]),
        .I3(R5[6]),
        .O(\edge_x_OBUF[7]_inst_i_41_n_0 ));
  LUT3 #(
    .INIT(8'hB2)) 
    \edge_x_OBUF[7]_inst_i_42 
       (.I0(R8[4]),
        .I1(Gx_calc0[4]),
        .I2(R5[3]),
        .O(\edge_x_OBUF[7]_inst_i_42_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \edge_x_OBUF[7]_inst_i_43 
       (.I0(R5[5]),
        .I1(Gx_calc0[6]),
        .I2(R8[6]),
        .O(\edge_x_OBUF[7]_inst_i_43_n_0 ));
  LUT3 #(
    .INIT(8'h2B)) 
    \edge_x_OBUF[7]_inst_i_44 
       (.I0(Gx_calc0[3]),
        .I1(R8[3]),
        .I2(R5[2]),
        .O(\edge_x_OBUF[7]_inst_i_44_n_0 ));
  LUT3 #(
    .INIT(8'h2B)) 
    \edge_x_OBUF[7]_inst_i_45 
       (.I0(Gx_calc0[2]),
        .I1(R8[2]),
        .I2(R5[1]),
        .O(\edge_x_OBUF[7]_inst_i_45_n_0 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \edge_x_OBUF[7]_inst_i_46 
       (.CI(\edge_x_OBUF[7]_inst_i_37_n_0 ),
        .CO({\NLW_edge_x_OBUF[7]_inst_i_46_CO_UNCONNECTED [3],\edge_x_OBUF[7]_inst_i_46_n_1 ,\NLW_edge_x_OBUF[7]_inst_i_46_CO_UNCONNECTED [1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\edge_x_OBUF[7]_inst_i_64_n_0 ,Gx_calc2[8]}),
        .O({\NLW_edge_x_OBUF[7]_inst_i_46_O_UNCONNECTED [3:2],Gx_calc0[9:8]}),
        .S({1'b0,1'b1,Gx_calc2[8],\edge_x_OBUF[7]_inst_i_65_n_0 }));
  LUT3 #(
    .INIT(8'h96)) 
    \edge_x_OBUF[7]_inst_i_47 
       (.I0(R5[6]),
        .I1(Gx_calc0[7]),
        .I2(R8[7]),
        .O(\edge_x_OBUF[7]_inst_i_47_n_0 ));
  LUT3 #(
    .INIT(8'h2B)) 
    \edge_x_OBUF[7]_inst_i_48 
       (.I0(Gx_calc0[6]),
        .I1(R8[6]),
        .I2(R5[5]),
        .O(\edge_x_OBUF[7]_inst_i_48_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \edge_x_OBUF[7]_inst_i_49 
       (.I0(R5[7]),
        .I1(Gx_calc0[8]),
        .O(\edge_x_OBUF[7]_inst_i_49_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \edge_x_OBUF[7]_inst_i_5 
       (.I0(Gx_calc[8]),
        .I1(Gx_calc[7]),
        .I2(Gx_calc[9]),
        .I3(Gx_calc[10]),
        .O(\edge_x_OBUF[7]_inst_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \edge_x_OBUF[7]_inst_i_50 
       (.I0(Gx_calc2[2]),
        .I1(R6[2]),
        .I2(R0[2]),
        .O(\edge_x_OBUF[7]_inst_i_50_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \edge_x_OBUF[7]_inst_i_51 
       (.I0(R0[2]),
        .I1(R6[2]),
        .I2(Gx_calc2[2]),
        .O(\edge_x_OBUF[7]_inst_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \edge_x_OBUF[7]_inst_i_52 
       (.I0(R0[2]),
        .I1(R6[2]),
        .I2(Gx_calc2[2]),
        .I3(Gx_calc2[3]),
        .I4(R0[3]),
        .I5(R6[3]),
        .O(\edge_x_OBUF[7]_inst_i_52_n_0 ));
  LUT5 #(
    .INIT(32'h69969696)) 
    \edge_x_OBUF[7]_inst_i_53 
       (.I0(Gx_calc2[2]),
        .I1(R6[2]),
        .I2(R0[2]),
        .I3(R6[1]),
        .I4(Gx_calc2[1]),
        .O(\edge_x_OBUF[7]_inst_i_53_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \edge_x_OBUF[7]_inst_i_54 
       (.I0(R6[1]),
        .I1(Gx_calc2[1]),
        .I2(R0[1]),
        .O(\edge_x_OBUF[7]_inst_i_54_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \edge_x_OBUF[7]_inst_i_55 
       (.I0(R0[0]),
        .I1(R6[0]),
        .O(\edge_x_OBUF[7]_inst_i_55_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \edge_x_OBUF[7]_inst_i_56 
       (.I0(R0[6]),
        .I1(R6[6]),
        .I2(Gx_calc2[6]),
        .O(\edge_x_OBUF[7]_inst_i_56_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \edge_x_OBUF[7]_inst_i_57 
       (.I0(R0[5]),
        .I1(R6[5]),
        .I2(Gx_calc2[5]),
        .O(\edge_x_OBUF[7]_inst_i_57_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \edge_x_OBUF[7]_inst_i_58 
       (.I0(R0[4]),
        .I1(R6[4]),
        .I2(Gx_calc2[4]),
        .O(\edge_x_OBUF[7]_inst_i_58_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \edge_x_OBUF[7]_inst_i_59 
       (.I0(R6[3]),
        .I1(Gx_calc2[3]),
        .I2(R0[3]),
        .O(\edge_x_OBUF[7]_inst_i_59_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \edge_x_OBUF[7]_inst_i_6 
       (.I0(Gx_calc[6]),
        .I1(Gx_calc[4]),
        .I2(Gx_calc[1]),
        .I3(Gx_calc[2]),
        .I4(Gx_calc[5]),
        .I5(Gx_calc[3]),
        .O(\edge_x_OBUF[7]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \edge_x_OBUF[7]_inst_i_60 
       (.I0(Gx_calc2[6]),
        .I1(R6[6]),
        .I2(R0[6]),
        .I3(Gx_calc2[7]),
        .I4(R0[7]),
        .I5(R6[7]),
        .O(\edge_x_OBUF[7]_inst_i_60_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \edge_x_OBUF[7]_inst_i_61 
       (.I0(Gx_calc2[5]),
        .I1(R6[5]),
        .I2(R0[5]),
        .I3(Gx_calc2[6]),
        .I4(R6[6]),
        .I5(R0[6]),
        .O(\edge_x_OBUF[7]_inst_i_61_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \edge_x_OBUF[7]_inst_i_62 
       (.I0(Gx_calc2[4]),
        .I1(R6[4]),
        .I2(R0[4]),
        .I3(Gx_calc2[5]),
        .I4(R6[5]),
        .I5(R0[5]),
        .O(\edge_x_OBUF[7]_inst_i_62_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \edge_x_OBUF[7]_inst_i_63 
       (.I0(R0[3]),
        .I1(Gx_calc2[3]),
        .I2(R6[3]),
        .I3(Gx_calc2[4]),
        .I4(R6[4]),
        .I5(R0[4]),
        .O(\edge_x_OBUF[7]_inst_i_63_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \edge_x_OBUF[7]_inst_i_64 
       (.I0(Gx_calc2[8]),
        .O(\edge_x_OBUF[7]_inst_i_64_n_0 ));
  LUT4 #(
    .INIT(16'h17E8)) 
    \edge_x_OBUF[7]_inst_i_65 
       (.I0(R0[7]),
        .I1(Gx_calc2[7]),
        .I2(R6[7]),
        .I3(Gx_calc2[8]),
        .O(\edge_x_OBUF[7]_inst_i_65_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \edge_x_OBUF[7]_inst_i_7 
       (.I0(Gx_calc[7]),
        .I1(Gx_calc[9]),
        .I2(Gx_calc[8]),
        .I3(Gx_calc[10]),
        .O(\edge_x_OBUF[7]_inst_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \edge_x_OBUF[7]_inst_i_8 
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\edge_x_OBUF[7]_inst_i_8_n_0 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \edge_x_OBUF[7]_inst_i_9 
       (.CI(1'b0),
        .CO({\edge_x_OBUF[7]_inst_i_9_n_0 ,\NLW_edge_x_OBUF[7]_inst_i_9_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\edge_x_OBUF[7]_inst_i_12_n_0 ,\edge_x_OBUF[7]_inst_i_13_n_0 ,\edge_x_OBUF[7]_inst_i_14_n_0 ,R2[0]}),
        .O(Gx_calc[3:0]),
        .S({\edge_x_OBUF[7]_inst_i_15_n_0 ,\edge_x_OBUF[7]_inst_i_16_n_0 ,\edge_x_OBUF[7]_inst_i_17_n_0 ,\edge_x_OBUF[7]_inst_i_18_n_0 }));
  OBUF \edge_y_OBUF[0]_inst 
       (.I(edge_y_OBUF),
        .O(edge_y[0]));
  OBUF \edge_y_OBUF[1]_inst 
       (.I(edge_y_OBUF),
        .O(edge_y[1]));
  OBUF \edge_y_OBUF[2]_inst 
       (.I(edge_y_OBUF),
        .O(edge_y[2]));
  OBUF \edge_y_OBUF[3]_inst 
       (.I(edge_y_OBUF),
        .O(edge_y[3]));
  OBUF \edge_y_OBUF[4]_inst 
       (.I(edge_y_OBUF),
        .O(edge_y[4]));
  OBUF \edge_y_OBUF[5]_inst 
       (.I(edge_y_OBUF),
        .O(edge_y[5]));
  OBUF \edge_y_OBUF[6]_inst 
       (.I(edge_y_OBUF),
        .O(edge_y[6]));
  OBUF \edge_y_OBUF[7]_inst 
       (.I(edge_y_OBUF),
        .O(edge_y[7]));
  LUT6 #(
    .INIT(64'hA2A2A2A2000000A2)) 
    \edge_y_OBUF[7]_inst_i_1 
       (.I0(\edge_x_OBUF[7]_inst_i_2_n_0 ),
        .I1(\edge_y_OBUF[7]_inst_i_2_n_0 ),
        .I2(\edge_y_OBUF[7]_inst_i_3_n_0 ),
        .I3(\edge_y_OBUF[7]_inst_i_4_n_0 ),
        .I4(\edge_y_OBUF[7]_inst_i_5_n_0 ),
        .I5(\edge_y_OBUF[7]_inst_i_6_n_0 ),
        .O(edge_y_OBUF));
  LUT5 #(
    .INIT(32'hFFB2B200)) 
    \edge_y_OBUF[7]_inst_i_10 
       (.I0(R1[4]),
        .I1(Gy_calc0[5]),
        .I2(R2[5]),
        .I3(\edge_y_OBUF[7]_inst_i_31_n_0 ),
        .I4(R0[6]),
        .O(\edge_y_OBUF[7]_inst_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFB2B200)) 
    \edge_y_OBUF[7]_inst_i_11 
       (.I0(R1[3]),
        .I1(Gy_calc0[4]),
        .I2(R2[4]),
        .I3(\edge_y_OBUF[7]_inst_i_32_n_0 ),
        .I4(R0[5]),
        .O(\edge_y_OBUF[7]_inst_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    \edge_y_OBUF[7]_inst_i_12 
       (.I0(Gy_calc0[3]),
        .I1(R1[2]),
        .I2(R2[3]),
        .I3(R0[4]),
        .I4(\edge_y_OBUF[7]_inst_i_34_n_0 ),
        .O(\edge_y_OBUF[7]_inst_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hD400FFD4)) 
    \edge_y_OBUF[7]_inst_i_13 
       (.I0(Gy_calc0[2]),
        .I1(R1[1]),
        .I2(R2[2]),
        .I3(R0[3]),
        .I4(\edge_y_OBUF[7]_inst_i_35_n_0 ),
        .O(\edge_y_OBUF[7]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h781EE178E17887E1)) 
    \edge_y_OBUF[7]_inst_i_14 
       (.I0(R0[6]),
        .I1(\edge_y_OBUF[7]_inst_i_36_n_0 ),
        .I2(\edge_y_OBUF[7]_inst_i_37_n_0 ),
        .I3(Gy_calc0[6]),
        .I4(R1[5]),
        .I5(R2[6]),
        .O(\edge_y_OBUF[7]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \edge_y_OBUF[7]_inst_i_15 
       (.I0(R0[5]),
        .I1(\edge_y_OBUF[7]_inst_i_32_n_0 ),
        .I2(\edge_y_OBUF[7]_inst_i_38_n_0 ),
        .I3(R0[6]),
        .I4(\edge_y_OBUF[7]_inst_i_36_n_0 ),
        .I5(\edge_y_OBUF[7]_inst_i_31_n_0 ),
        .O(\edge_y_OBUF[7]_inst_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h718E8E718E71718E)) 
    \edge_y_OBUF[7]_inst_i_16 
       (.I0(\edge_y_OBUF[7]_inst_i_34_n_0 ),
        .I1(R0[4]),
        .I2(\edge_y_OBUF[7]_inst_i_39_n_0 ),
        .I3(R0[5]),
        .I4(\edge_y_OBUF[7]_inst_i_38_n_0 ),
        .I5(\edge_y_OBUF[7]_inst_i_32_n_0 ),
        .O(\edge_y_OBUF[7]_inst_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h4DB2B24DB24D4DB2)) 
    \edge_y_OBUF[7]_inst_i_17 
       (.I0(\edge_y_OBUF[7]_inst_i_35_n_0 ),
        .I1(R0[3]),
        .I2(\edge_y_OBUF[7]_inst_i_40_n_0 ),
        .I3(R0[4]),
        .I4(\edge_y_OBUF[7]_inst_i_39_n_0 ),
        .I5(\edge_y_OBUF[7]_inst_i_34_n_0 ),
        .O(\edge_y_OBUF[7]_inst_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h8EFF008E)) 
    \edge_y_OBUF[7]_inst_i_18 
       (.I0(R2[1]),
        .I1(R1[0]),
        .I2(Gy_calc0[1]),
        .I3(\edge_y_OBUF[7]_inst_i_41_n_0 ),
        .I4(R0[2]),
        .O(\edge_y_OBUF[7]_inst_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h2BD4D42B)) 
    \edge_y_OBUF[7]_inst_i_19 
       (.I0(Gy_calc0[1]),
        .I1(R1[0]),
        .I2(R2[1]),
        .I3(\edge_y_OBUF[7]_inst_i_41_n_0 ),
        .I4(R0[2]),
        .O(\edge_y_OBUF[7]_inst_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \edge_y_OBUF[7]_inst_i_2 
       (.I0(Gy_calc[6]),
        .I1(Gy_calc[4]),
        .I2(Gy_calc[1]),
        .I3(Gy_calc[2]),
        .I4(Gy_calc[5]),
        .I5(Gy_calc[3]),
        .O(\edge_y_OBUF[7]_inst_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \edge_y_OBUF[7]_inst_i_20 
       (.I0(R1[0]),
        .I1(Gy_calc0[1]),
        .I2(R2[1]),
        .I3(R0[1]),
        .O(\edge_y_OBUF[7]_inst_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h781EE178E17887E1)) 
    \edge_y_OBUF[7]_inst_i_21 
       (.I0(R0[2]),
        .I1(\edge_y_OBUF[7]_inst_i_42_n_0 ),
        .I2(\edge_y_OBUF[7]_inst_i_43_n_0 ),
        .I3(Gy_calc0[2]),
        .I4(R1[1]),
        .I5(R2[2]),
        .O(\edge_y_OBUF[7]_inst_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h6696696669669969)) 
    \edge_y_OBUF[7]_inst_i_22 
       (.I0(R0[2]),
        .I1(\edge_y_OBUF[7]_inst_i_41_n_0 ),
        .I2(R2[1]),
        .I3(Gy_calc0[1]),
        .I4(R1[0]),
        .I5(R0[1]),
        .O(\edge_y_OBUF[7]_inst_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h6996699696696996)) 
    \edge_y_OBUF[7]_inst_i_23 
       (.I0(R0[1]),
        .I1(R2[1]),
        .I2(Gy_calc0[1]),
        .I3(R1[0]),
        .I4(Gy_calc0[0]),
        .I5(R2[0]),
        .O(\edge_y_OBUF[7]_inst_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \edge_y_OBUF[7]_inst_i_24 
       (.I0(R2[0]),
        .I1(Gy_calc0[0]),
        .I2(R0[0]),
        .O(\edge_y_OBUF[7]_inst_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h90009990)) 
    \edge_y_OBUF[7]_inst_i_25 
       (.I0(Gy_calc0[8]),
        .I1(R1[7]),
        .I2(R2[7]),
        .I3(R1[6]),
        .I4(Gy_calc0[7]),
        .O(\edge_y_OBUF[7]_inst_i_25_n_0 ));
  LUT5 #(
    .INIT(32'hD400FFD4)) 
    \edge_y_OBUF[7]_inst_i_26 
       (.I0(Gy_calc0[6]),
        .I1(R1[5]),
        .I2(R2[6]),
        .I3(R0[7]),
        .I4(\edge_y_OBUF[7]_inst_i_45_n_0 ),
        .O(\edge_y_OBUF[7]_inst_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \edge_y_OBUF[7]_inst_i_27 
       (.I0(R1[7]),
        .I1(Gy_calc0[8]),
        .I2(Gy_calc0[9]),
        .I3(\edge_y_OBUF[7]_inst_i_44_n_1 ),
        .O(\edge_y_OBUF[7]_inst_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h2BD400FF00FFD42B)) 
    \edge_y_OBUF[7]_inst_i_28 
       (.I0(Gy_calc0[7]),
        .I1(R1[6]),
        .I2(R2[7]),
        .I3(Gy_calc0[9]),
        .I4(Gy_calc0[8]),
        .I5(R1[7]),
        .O(\edge_y_OBUF[7]_inst_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hD4BDBD2B2B4242D4)) 
    \edge_y_OBUF[7]_inst_i_29 
       (.I0(R0[7]),
        .I1(\edge_y_OBUF[7]_inst_i_46_n_0 ),
        .I2(Gy_calc0[7]),
        .I3(R1[6]),
        .I4(R2[7]),
        .I5(\edge_y_OBUF[7]_inst_i_47_n_0 ),
        .O(\edge_y_OBUF[7]_inst_i_29_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \edge_y_OBUF[7]_inst_i_3 
       (.I0(Gy_calc[7]),
        .I1(Gy_calc[9]),
        .I2(Gy_calc[8]),
        .I3(Gy_calc[10]),
        .O(\edge_y_OBUF[7]_inst_i_3_n_0 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \edge_y_OBUF[7]_inst_i_30 
       (.CI(\edge_y_OBUF[7]_inst_i_33_n_0 ),
        .CO({\edge_y_OBUF[7]_inst_i_30_n_0 ,\NLW_edge_y_OBUF[7]_inst_i_30_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\edge_y_OBUF[7]_inst_i_48_n_0 ,\edge_y_OBUF[7]_inst_i_49_n_0 ,\edge_y_OBUF[7]_inst_i_50_n_0 ,\edge_y_OBUF[7]_inst_i_51_n_0 }),
        .O(Gy_calc0[7:4]),
        .S({\edge_y_OBUF[7]_inst_i_52_n_0 ,\edge_y_OBUF[7]_inst_i_53_n_0 ,\edge_y_OBUF[7]_inst_i_54_n_0 ,\edge_y_OBUF[7]_inst_i_55_n_0 }));
  LUT3 #(
    .INIT(8'h69)) 
    \edge_y_OBUF[7]_inst_i_31 
       (.I0(R2[6]),
        .I1(Gy_calc0[6]),
        .I2(R1[5]),
        .O(\edge_y_OBUF[7]_inst_i_31_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \edge_y_OBUF[7]_inst_i_32 
       (.I0(R2[5]),
        .I1(Gy_calc0[5]),
        .I2(R1[4]),
        .O(\edge_y_OBUF[7]_inst_i_32_n_0 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \edge_y_OBUF[7]_inst_i_33 
       (.CI(1'b0),
        .CO({\edge_y_OBUF[7]_inst_i_33_n_0 ,\NLW_edge_y_OBUF[7]_inst_i_33_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\edge_y_OBUF[7]_inst_i_56_n_0 ,\edge_y_OBUF[7]_inst_i_57_n_0 ,R6[1:0]}),
        .O(Gy_calc0[3:0]),
        .S({\edge_y_OBUF[7]_inst_i_58_n_0 ,\edge_y_OBUF[7]_inst_i_59_n_0 ,\edge_y_OBUF[7]_inst_i_60_n_0 ,\edge_y_OBUF[7]_inst_i_61_n_0 }));
  LUT3 #(
    .INIT(8'h69)) 
    \edge_y_OBUF[7]_inst_i_34 
       (.I0(R2[4]),
        .I1(Gy_calc0[4]),
        .I2(R1[3]),
        .O(\edge_y_OBUF[7]_inst_i_34_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \edge_y_OBUF[7]_inst_i_35 
       (.I0(R2[3]),
        .I1(Gy_calc0[3]),
        .I2(R1[2]),
        .O(\edge_y_OBUF[7]_inst_i_35_n_0 ));
  LUT3 #(
    .INIT(8'hB2)) 
    \edge_y_OBUF[7]_inst_i_36 
       (.I0(R1[4]),
        .I1(Gy_calc0[5]),
        .I2(R2[5]),
        .O(\edge_y_OBUF[7]_inst_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \edge_y_OBUF[7]_inst_i_37 
       (.I0(R0[7]),
        .I1(R1[6]),
        .I2(Gy_calc0[7]),
        .I3(R2[7]),
        .O(\edge_y_OBUF[7]_inst_i_37_n_0 ));
  LUT3 #(
    .INIT(8'hB2)) 
    \edge_y_OBUF[7]_inst_i_38 
       (.I0(R1[3]),
        .I1(Gy_calc0[4]),
        .I2(R2[4]),
        .O(\edge_y_OBUF[7]_inst_i_38_n_0 ));
  LUT3 #(
    .INIT(8'h2B)) 
    \edge_y_OBUF[7]_inst_i_39 
       (.I0(Gy_calc0[3]),
        .I1(R1[2]),
        .I2(R2[3]),
        .O(\edge_y_OBUF[7]_inst_i_39_n_0 ));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \edge_y_OBUF[7]_inst_i_4 
       (.I0(Gy_calc[1]),
        .I1(Gy_calc[0]),
        .I2(Gy_calc[6]),
        .I3(Gy_calc[5]),
        .O(\edge_y_OBUF[7]_inst_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h2B)) 
    \edge_y_OBUF[7]_inst_i_40 
       (.I0(Gy_calc0[2]),
        .I1(R1[1]),
        .I2(R2[2]),
        .O(\edge_y_OBUF[7]_inst_i_40_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \edge_y_OBUF[7]_inst_i_41 
       (.I0(R2[2]),
        .I1(Gy_calc0[2]),
        .I2(R1[1]),
        .O(\edge_y_OBUF[7]_inst_i_41_n_0 ));
  LUT3 #(
    .INIT(8'h8E)) 
    \edge_y_OBUF[7]_inst_i_42 
       (.I0(R2[1]),
        .I1(R1[0]),
        .I2(Gy_calc0[1]),
        .O(\edge_y_OBUF[7]_inst_i_42_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \edge_y_OBUF[7]_inst_i_43 
       (.I0(R0[3]),
        .I1(R1[2]),
        .I2(Gy_calc0[3]),
        .I3(R2[3]),
        .O(\edge_y_OBUF[7]_inst_i_43_n_0 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \edge_y_OBUF[7]_inst_i_44 
       (.CI(\edge_y_OBUF[7]_inst_i_30_n_0 ),
        .CO({\NLW_edge_y_OBUF[7]_inst_i_44_CO_UNCONNECTED [3],\edge_y_OBUF[7]_inst_i_44_n_1 ,\NLW_edge_y_OBUF[7]_inst_i_44_CO_UNCONNECTED [1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\edge_y_OBUF[7]_inst_i_62_n_0 ,Gy_calc2[8]}),
        .O({\NLW_edge_y_OBUF[7]_inst_i_44_O_UNCONNECTED [3:2],Gy_calc0[9:8]}),
        .S({1'b0,1'b1,Gy_calc2[8],\edge_y_OBUF[7]_inst_i_63_n_0 }));
  LUT3 #(
    .INIT(8'h96)) 
    \edge_y_OBUF[7]_inst_i_45 
       (.I0(R2[7]),
        .I1(Gy_calc0[7]),
        .I2(R1[6]),
        .O(\edge_y_OBUF[7]_inst_i_45_n_0 ));
  LUT3 #(
    .INIT(8'h2B)) 
    \edge_y_OBUF[7]_inst_i_46 
       (.I0(Gy_calc0[6]),
        .I1(R1[5]),
        .I2(R2[6]),
        .O(\edge_y_OBUF[7]_inst_i_46_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \edge_y_OBUF[7]_inst_i_47 
       (.I0(R1[7]),
        .I1(Gy_calc0[8]),
        .O(\edge_y_OBUF[7]_inst_i_47_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \edge_y_OBUF[7]_inst_i_48 
       (.I0(R6[6]),
        .I1(R8[6]),
        .I2(Gy_calc2[6]),
        .O(\edge_y_OBUF[7]_inst_i_48_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \edge_y_OBUF[7]_inst_i_49 
       (.I0(R6[5]),
        .I1(R8[5]),
        .I2(Gy_calc2[5]),
        .O(\edge_y_OBUF[7]_inst_i_49_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \edge_y_OBUF[7]_inst_i_5 
       (.I0(Gy_calc[4]),
        .I1(Gy_calc[3]),
        .I2(Gy_calc[2]),
        .O(\edge_y_OBUF[7]_inst_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \edge_y_OBUF[7]_inst_i_50 
       (.I0(R6[4]),
        .I1(R8[4]),
        .I2(Gy_calc2[4]),
        .O(\edge_y_OBUF[7]_inst_i_50_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \edge_y_OBUF[7]_inst_i_51 
       (.I0(Gy_calc2[3]),
        .I1(R6[3]),
        .I2(R8[3]),
        .O(\edge_y_OBUF[7]_inst_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \edge_y_OBUF[7]_inst_i_52 
       (.I0(Gy_calc2[6]),
        .I1(R8[6]),
        .I2(R6[6]),
        .I3(Gy_calc2[7]),
        .I4(R6[7]),
        .I5(R8[7]),
        .O(\edge_y_OBUF[7]_inst_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \edge_y_OBUF[7]_inst_i_53 
       (.I0(Gy_calc2[5]),
        .I1(R8[5]),
        .I2(R6[5]),
        .I3(Gy_calc2[6]),
        .I4(R8[6]),
        .I5(R6[6]),
        .O(\edge_y_OBUF[7]_inst_i_53_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \edge_y_OBUF[7]_inst_i_54 
       (.I0(Gy_calc2[4]),
        .I1(R8[4]),
        .I2(R6[4]),
        .I3(Gy_calc2[5]),
        .I4(R8[5]),
        .I5(R6[5]),
        .O(\edge_y_OBUF[7]_inst_i_54_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \edge_y_OBUF[7]_inst_i_55 
       (.I0(R8[3]),
        .I1(R6[3]),
        .I2(Gy_calc2[3]),
        .I3(Gy_calc2[4]),
        .I4(R8[4]),
        .I5(R6[4]),
        .O(\edge_y_OBUF[7]_inst_i_55_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \edge_y_OBUF[7]_inst_i_56 
       (.I0(R6[2]),
        .I1(R8[2]),
        .I2(Gy_calc2[2]),
        .O(\edge_y_OBUF[7]_inst_i_56_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \edge_y_OBUF[7]_inst_i_57 
       (.I0(R6[2]),
        .I1(Gy_calc2[2]),
        .I2(R8[2]),
        .O(\edge_y_OBUF[7]_inst_i_57_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \edge_y_OBUF[7]_inst_i_58 
       (.I0(Gy_calc2[2]),
        .I1(R8[2]),
        .I2(R6[2]),
        .I3(Gy_calc2[3]),
        .I4(R6[3]),
        .I5(R8[3]),
        .O(\edge_y_OBUF[7]_inst_i_58_n_0 ));
  LUT5 #(
    .INIT(32'h69969696)) 
    \edge_y_OBUF[7]_inst_i_59 
       (.I0(R8[2]),
        .I1(Gy_calc2[2]),
        .I2(R6[2]),
        .I3(R8[1]),
        .I4(Gy_calc2[1]),
        .O(\edge_y_OBUF[7]_inst_i_59_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \edge_y_OBUF[7]_inst_i_6 
       (.I0(Gy_calc[8]),
        .I1(Gy_calc[7]),
        .I2(Gy_calc[9]),
        .I3(Gy_calc[10]),
        .O(\edge_y_OBUF[7]_inst_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \edge_y_OBUF[7]_inst_i_60 
       (.I0(R8[1]),
        .I1(Gy_calc2[1]),
        .I2(R6[1]),
        .O(\edge_y_OBUF[7]_inst_i_60_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \edge_y_OBUF[7]_inst_i_61 
       (.I0(R6[0]),
        .I1(R8[0]),
        .O(\edge_y_OBUF[7]_inst_i_61_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \edge_y_OBUF[7]_inst_i_62 
       (.I0(Gy_calc2[8]),
        .O(\edge_y_OBUF[7]_inst_i_62_n_0 ));
  LUT4 #(
    .INIT(16'h17E8)) 
    \edge_y_OBUF[7]_inst_i_63 
       (.I0(R8[7]),
        .I1(R6[7]),
        .I2(Gy_calc2[7]),
        .I3(Gy_calc2[8]),
        .O(\edge_y_OBUF[7]_inst_i_63_n_0 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \edge_y_OBUF[7]_inst_i_7 
       (.CI(\edge_y_OBUF[7]_inst_i_8_n_0 ),
        .CO({\edge_y_OBUF[7]_inst_i_7_n_0 ,\NLW_edge_y_OBUF[7]_inst_i_7_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\edge_y_OBUF[7]_inst_i_10_n_0 ,\edge_y_OBUF[7]_inst_i_11_n_0 ,\edge_y_OBUF[7]_inst_i_12_n_0 ,\edge_y_OBUF[7]_inst_i_13_n_0 }),
        .O(Gy_calc[7:4]),
        .S({\edge_y_OBUF[7]_inst_i_14_n_0 ,\edge_y_OBUF[7]_inst_i_15_n_0 ,\edge_y_OBUF[7]_inst_i_16_n_0 ,\edge_y_OBUF[7]_inst_i_17_n_0 }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \edge_y_OBUF[7]_inst_i_8 
       (.CI(1'b0),
        .CO({\edge_y_OBUF[7]_inst_i_8_n_0 ,\NLW_edge_y_OBUF[7]_inst_i_8_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\edge_y_OBUF[7]_inst_i_18_n_0 ,\edge_y_OBUF[7]_inst_i_19_n_0 ,\edge_y_OBUF[7]_inst_i_20_n_0 ,R0[0]}),
        .O(Gy_calc[3:0]),
        .S({\edge_y_OBUF[7]_inst_i_21_n_0 ,\edge_y_OBUF[7]_inst_i_22_n_0 ,\edge_y_OBUF[7]_inst_i_23_n_0 ,\edge_y_OBUF[7]_inst_i_24_n_0 }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \edge_y_OBUF[7]_inst_i_9 
       (.CI(\edge_y_OBUF[7]_inst_i_7_n_0 ),
        .CO(\NLW_edge_y_OBUF[7]_inst_i_9_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\edge_y_OBUF[7]_inst_i_25_n_0 ,\edge_y_OBUF[7]_inst_i_26_n_0 }),
        .O({\NLW_edge_y_OBUF[7]_inst_i_9_O_UNCONNECTED [3],Gy_calc[10:8]}),
        .S({1'b0,\edge_y_OBUF[7]_inst_i_27_n_0 ,\edge_y_OBUF[7]_inst_i_28_n_0 ,\edge_y_OBUF[7]_inst_i_29_n_0 }));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
