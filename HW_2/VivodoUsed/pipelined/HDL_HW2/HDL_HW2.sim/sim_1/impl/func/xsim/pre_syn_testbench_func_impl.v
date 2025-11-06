// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sat Nov  1 17:57:12 2025
// Host        : DESKTOP-EBUR9LD running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/airlab/Documents/HDL/HW_2/VivodoUsed/pipelined/HDL_HW2/HDL_HW2.sim/sim_1/impl/func/xsim/pre_syn_testbench_func_impl.v
// Design      : hw2_pipe
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "67f610d7" *) 
(* NotValidForBitStream *)
module hw2_pipe
   (a,
    b,
    c,
    s,
    clk,
    reset,
    d);
  input [7:0]a;
  input [7:0]b;
  input [7:0]c;
  input s;
  input clk;
  input reset;
  output [15:0]d;

  wire [7:0]a;
  wire [7:0]a_IBUF;
  wire [7:0]b;
  wire [7:0]b_IBUF;
  wire [7:0]c;
  wire [7:0]c_IBUF;
  wire [7:0]c_pipe_out;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [15:0]d;
  wire [15:0]d_OBUF;
  wire reset;
  wire reset_IBUF;
  wire s;
  wire s_IBUF;
  wire [8:0]sum_pipe_out;
  wire u_stage1_n_0;
  wire u_stage1_n_1;
  wire u_stage1_n_17;
  wire u_stage1_n_18;
  wire u_stage1_n_19;
  wire u_stage1_n_2;
  wire u_stage1_n_20;
  wire u_stage1_n_21;
  wire u_stage1_n_22;
  wire u_stage1_n_23;
  wire u_stage1_n_24;
  wire u_stage1_n_25;
  wire u_stage1_n_26;
  wire u_stage1_n_27;
  wire u_stage1_n_28;
  wire u_stage1_n_29;
  wire u_stage1_n_30;
  wire u_stage1_n_31;
  wire u_stage1_n_32;
  wire u_stage1_n_33;
  wire u_stage1_n_34;
  wire u_stage1_n_35;
  wire u_stage1_n_36;
  wire u_stage1_n_37;
  wire u_stage1_n_38;
  wire u_stage1_n_39;
  wire u_stage1_n_40;
  wire u_stage1_n_41;
  wire u_stage1_n_42;
  wire u_stage1_n_43;
  wire u_stage1_n_44;
  wire u_stage1_n_45;
  wire u_stage1_n_46;
  wire u_stage1_n_47;
  wire u_stage1_n_48;
  wire u_stage1_n_49;
  wire u_stage1_n_50;
  wire u_stage1_n_51;
  wire u_stage1_n_52;
  wire u_stage1_n_53;
  wire u_stage1_n_54;
  wire u_stage1_n_55;
  wire u_stage1_n_56;
  wire u_stage1_n_57;
  wire u_stage1_n_58;
  wire u_stage1_n_59;
  wire u_stage1_n_60;
  wire u_stage1_n_61;
  wire u_stage2_n_0;
  wire u_stage2_n_1;
  wire u_stage2_n_10;
  wire u_stage2_n_11;
  wire u_stage2_n_12;
  wire u_stage2_n_13;
  wire u_stage2_n_14;
  wire u_stage2_n_15;
  wire u_stage2_n_2;
  wire u_stage2_n_3;
  wire u_stage2_n_4;
  wire u_stage2_n_5;
  wire u_stage2_n_6;
  wire u_stage2_n_7;
  wire u_stage2_n_8;
  wire u_stage2_n_9;

  IBUF \a_IBUF[0]_inst 
       (.I(a[0]),
        .O(a_IBUF[0]));
  IBUF \a_IBUF[1]_inst 
       (.I(a[1]),
        .O(a_IBUF[1]));
  IBUF \a_IBUF[2]_inst 
       (.I(a[2]),
        .O(a_IBUF[2]));
  IBUF \a_IBUF[3]_inst 
       (.I(a[3]),
        .O(a_IBUF[3]));
  IBUF \a_IBUF[4]_inst 
       (.I(a[4]),
        .O(a_IBUF[4]));
  IBUF \a_IBUF[5]_inst 
       (.I(a[5]),
        .O(a_IBUF[5]));
  IBUF \a_IBUF[6]_inst 
       (.I(a[6]),
        .O(a_IBUF[6]));
  IBUF \a_IBUF[7]_inst 
       (.I(a[7]),
        .O(a_IBUF[7]));
  IBUF \b_IBUF[0]_inst 
       (.I(b[0]),
        .O(b_IBUF[0]));
  IBUF \b_IBUF[1]_inst 
       (.I(b[1]),
        .O(b_IBUF[1]));
  IBUF \b_IBUF[2]_inst 
       (.I(b[2]),
        .O(b_IBUF[2]));
  IBUF \b_IBUF[3]_inst 
       (.I(b[3]),
        .O(b_IBUF[3]));
  IBUF \b_IBUF[4]_inst 
       (.I(b[4]),
        .O(b_IBUF[4]));
  IBUF \b_IBUF[5]_inst 
       (.I(b[5]),
        .O(b_IBUF[5]));
  IBUF \b_IBUF[6]_inst 
       (.I(b[6]),
        .O(b_IBUF[6]));
  IBUF \b_IBUF[7]_inst 
       (.I(b[7]),
        .O(b_IBUF[7]));
  IBUF \c_IBUF[0]_inst 
       (.I(c[0]),
        .O(c_IBUF[0]));
  IBUF \c_IBUF[1]_inst 
       (.I(c[1]),
        .O(c_IBUF[1]));
  IBUF \c_IBUF[2]_inst 
       (.I(c[2]),
        .O(c_IBUF[2]));
  IBUF \c_IBUF[3]_inst 
       (.I(c[3]),
        .O(c_IBUF[3]));
  IBUF \c_IBUF[4]_inst 
       (.I(c[4]),
        .O(c_IBUF[4]));
  IBUF \c_IBUF[5]_inst 
       (.I(c[5]),
        .O(c_IBUF[5]));
  IBUF \c_IBUF[6]_inst 
       (.I(c[6]),
        .O(c_IBUF[6]));
  IBUF \c_IBUF[7]_inst 
       (.I(c[7]),
        .O(c_IBUF[7]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF \d_OBUF[0]_inst 
       (.I(d_OBUF[0]),
        .O(d[0]));
  OBUF \d_OBUF[10]_inst 
       (.I(d_OBUF[10]),
        .O(d[10]));
  OBUF \d_OBUF[11]_inst 
       (.I(d_OBUF[11]),
        .O(d[11]));
  OBUF \d_OBUF[12]_inst 
       (.I(d_OBUF[12]),
        .O(d[12]));
  OBUF \d_OBUF[13]_inst 
       (.I(d_OBUF[13]),
        .O(d[13]));
  OBUF \d_OBUF[14]_inst 
       (.I(d_OBUF[14]),
        .O(d[14]));
  OBUF \d_OBUF[15]_inst 
       (.I(d_OBUF[15]),
        .O(d[15]));
  OBUF \d_OBUF[1]_inst 
       (.I(d_OBUF[1]),
        .O(d[1]));
  OBUF \d_OBUF[2]_inst 
       (.I(d_OBUF[2]),
        .O(d[2]));
  OBUF \d_OBUF[3]_inst 
       (.I(d_OBUF[3]),
        .O(d[3]));
  OBUF \d_OBUF[4]_inst 
       (.I(d_OBUF[4]),
        .O(d[4]));
  OBUF \d_OBUF[5]_inst 
       (.I(d_OBUF[5]),
        .O(d[5]));
  OBUF \d_OBUF[6]_inst 
       (.I(d_OBUF[6]),
        .O(d[6]));
  OBUF \d_OBUF[7]_inst 
       (.I(d_OBUF[7]),
        .O(d[7]));
  OBUF \d_OBUF[8]_inst 
       (.I(d_OBUF[8]),
        .O(d[8]));
  OBUF \d_OBUF[9]_inst 
       (.I(d_OBUF[9]),
        .O(d[9]));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  IBUF s_IBUF_inst
       (.I(s),
        .O(s_IBUF));
  hw2_pipe_stage1 u_stage1
       (.AR(reset_IBUF),
        .CLK(clk_IBUF_BUFG),
        .CO(u_stage2_n_2),
        .D(c_IBUF),
        .DI({u_stage1_n_0,u_stage1_n_1,u_stage1_n_2}),
        .O({u_stage2_n_7,u_stage2_n_8,u_stage2_n_9,u_stage2_n_10}),
        .Q({sum_pipe_out[8:6],sum_pipe_out[2:0]}),
        .S({u_stage1_n_30,u_stage1_n_31}),
        .a(a_IBUF),
        .b_IBUF(b_IBUF),
        .\c_pipe_out_reg[1]_0 ({u_stage1_n_21,u_stage1_n_22}),
        .\c_pipe_out_reg[4]_0 ({u_stage1_n_32,u_stage1_n_33}),
        .\c_pipe_out_reg[4]_1 ({u_stage1_n_34,u_stage1_n_35}),
        .\c_pipe_out_reg[6]_0 (u_stage1_n_43),
        .\c_pipe_out_reg[7]_0 (c_pipe_out),
        .\c_pipe_out_reg[7]_1 ({u_stage1_n_58,u_stage1_n_59,u_stage1_n_60,u_stage1_n_61}),
        .\result_reg[10] ({u_stage2_n_0,u_stage2_n_1}),
        .\result_reg[10]_0 (u_stage2_n_6),
        .\result_reg[10]_1 (u_stage2_n_15),
        .\result_reg[14] ({u_stage2_n_3,u_stage2_n_4,u_stage2_n_5}),
        .\result_reg[14]_0 ({u_stage2_n_12,u_stage2_n_13,u_stage2_n_14}),
        .\result_reg[15] (u_stage2_n_11),
        .s_IBUF(s_IBUF),
        .\sum_pipe_out_reg[1]_0 ({u_stage1_n_36,u_stage1_n_37,u_stage1_n_38}),
        .\sum_pipe_out_reg[1]_1 ({u_stage1_n_54,u_stage1_n_55,u_stage1_n_56,u_stage1_n_57}),
        .\sum_pipe_out_reg[6]_0 ({u_stage1_n_17,u_stage1_n_18,u_stage1_n_19,u_stage1_n_20}),
        .\sum_pipe_out_reg[6]_1 ({u_stage1_n_23,u_stage1_n_24,u_stage1_n_25,u_stage1_n_26}),
        .\sum_pipe_out_reg[6]_2 ({u_stage1_n_39,u_stage1_n_40,u_stage1_n_41,u_stage1_n_42}),
        .\sum_pipe_out_reg[6]_3 ({u_stage1_n_45,u_stage1_n_46,u_stage1_n_47,u_stage1_n_48}),
        .\sum_pipe_out_reg[6]_4 ({u_stage1_n_49,u_stage1_n_50,u_stage1_n_51,u_stage1_n_52}),
        .\sum_pipe_out_reg[7]_0 (u_stage1_n_44),
        .\sum_pipe_out_reg[7]_1 (u_stage1_n_53),
        .\sum_pipe_out_reg[8]_0 ({u_stage1_n_27,u_stage1_n_28,u_stage1_n_29}));
  hw2_pipe_stage2 u_stage2
       (.AR(reset_IBUF),
        .CLK(clk_IBUF_BUFG),
        .CO(u_stage2_n_2),
        .DI({u_stage1_n_0,u_stage1_n_1,u_stage1_n_2}),
        .O({u_stage2_n_7,u_stage2_n_8,u_stage2_n_9,u_stage2_n_10}),
        .Q({sum_pipe_out[8:6],sum_pipe_out[2:0]}),
        .S({u_stage1_n_30,u_stage1_n_31}),
        .\c_pipe_out_reg[4] (u_stage2_n_6),
        .\c_pipe_out_reg[6] (u_stage2_n_15),
        .\result[10]_i_13 (u_stage1_n_44),
        .\result[10]_i_8 ({u_stage1_n_23,u_stage1_n_24,u_stage1_n_25,u_stage1_n_26}),
        .\result[10]_i_8_0 ({u_stage1_n_49,u_stage1_n_50,u_stage1_n_51,u_stage1_n_52}),
        .\result[14]_i_25 ({u_stage1_n_27,u_stage1_n_28,u_stage1_n_29}),
        .\result[14]_i_25_0 (u_stage1_n_53),
        .\result_reg[10]_0 ({u_stage1_n_36,u_stage1_n_37,u_stage1_n_38}),
        .\result_reg[10]_1 ({u_stage1_n_54,u_stage1_n_55,u_stage1_n_56,u_stage1_n_57}),
        .\result_reg[10]_2 (c_pipe_out),
        .\result_reg[14]_0 ({u_stage1_n_39,u_stage1_n_40,u_stage1_n_41,u_stage1_n_42}),
        .\result_reg[14]_1 ({u_stage1_n_58,u_stage1_n_59,u_stage1_n_60,u_stage1_n_61}),
        .\result_reg[15]_0 (d_OBUF),
        .\result_reg[15]_1 (u_stage1_n_43),
        .\result_reg[2]_0 ({u_stage1_n_21,u_stage1_n_22}),
        .\result_reg[3]_0 ({u_stage1_n_32,u_stage1_n_33}),
        .\result_reg[3]_1 ({u_stage1_n_34,u_stage1_n_35}),
        .\result_reg[6]_0 ({u_stage1_n_17,u_stage1_n_18,u_stage1_n_19,u_stage1_n_20}),
        .\result_reg[6]_1 ({u_stage1_n_45,u_stage1_n_46,u_stage1_n_47,u_stage1_n_48}),
        .\sum_pipe_out_reg[6] ({u_stage2_n_0,u_stage2_n_1}),
        .\sum_pipe_out_reg[8] ({u_stage2_n_3,u_stage2_n_4,u_stage2_n_5}),
        .\sum_pipe_out_reg[8]_0 (u_stage2_n_11),
        .\sum_pipe_out_reg[8]_1 ({u_stage2_n_12,u_stage2_n_13,u_stage2_n_14}));
endmodule

module hw2_pipe_stage1
   (DI,
    Q,
    \c_pipe_out_reg[7]_0 ,
    \sum_pipe_out_reg[6]_0 ,
    \c_pipe_out_reg[1]_0 ,
    \sum_pipe_out_reg[6]_1 ,
    \sum_pipe_out_reg[8]_0 ,
    S,
    \c_pipe_out_reg[4]_0 ,
    \c_pipe_out_reg[4]_1 ,
    \sum_pipe_out_reg[1]_0 ,
    \sum_pipe_out_reg[6]_2 ,
    \c_pipe_out_reg[6]_0 ,
    \sum_pipe_out_reg[7]_0 ,
    \sum_pipe_out_reg[6]_3 ,
    \sum_pipe_out_reg[6]_4 ,
    \sum_pipe_out_reg[7]_1 ,
    \sum_pipe_out_reg[1]_1 ,
    \c_pipe_out_reg[7]_1 ,
    O,
    \result_reg[10] ,
    \result_reg[10]_0 ,
    \result_reg[14] ,
    \result_reg[14]_0 ,
    CO,
    \result_reg[15] ,
    \result_reg[10]_1 ,
    b_IBUF,
    D,
    CLK,
    AR,
    s_IBUF,
    a);
  output [2:0]DI;
  output [5:0]Q;
  output [7:0]\c_pipe_out_reg[7]_0 ;
  output [3:0]\sum_pipe_out_reg[6]_0 ;
  output [1:0]\c_pipe_out_reg[1]_0 ;
  output [3:0]\sum_pipe_out_reg[6]_1 ;
  output [2:0]\sum_pipe_out_reg[8]_0 ;
  output [1:0]S;
  output [1:0]\c_pipe_out_reg[4]_0 ;
  output [1:0]\c_pipe_out_reg[4]_1 ;
  output [2:0]\sum_pipe_out_reg[1]_0 ;
  output [3:0]\sum_pipe_out_reg[6]_2 ;
  output [0:0]\c_pipe_out_reg[6]_0 ;
  output [0:0]\sum_pipe_out_reg[7]_0 ;
  output [3:0]\sum_pipe_out_reg[6]_3 ;
  output [3:0]\sum_pipe_out_reg[6]_4 ;
  output [0:0]\sum_pipe_out_reg[7]_1 ;
  output [3:0]\sum_pipe_out_reg[1]_1 ;
  output [3:0]\c_pipe_out_reg[7]_1 ;
  input [3:0]O;
  input [1:0]\result_reg[10] ;
  input [0:0]\result_reg[10]_0 ;
  input [2:0]\result_reg[14] ;
  input [2:0]\result_reg[14]_0 ;
  input [0:0]CO;
  input [0:0]\result_reg[15] ;
  input \result_reg[10]_1 ;
  input [7:0]b_IBUF;
  input [7:0]D;
  input CLK;
  input [0:0]AR;
  input s_IBUF;
  input [7:0]a;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]CO;
  wire [7:0]D;
  wire [2:0]DI;
  wire [3:0]O;
  wire [5:0]Q;
  wire [1:0]S;
  wire [7:0]a;
  wire [7:0]b_IBUF;
  wire [1:0]\c_pipe_out_reg[1]_0 ;
  wire [1:0]\c_pipe_out_reg[4]_0 ;
  wire [1:0]\c_pipe_out_reg[4]_1 ;
  wire [0:0]\c_pipe_out_reg[6]_0 ;
  wire [7:0]\c_pipe_out_reg[7]_0 ;
  wire [3:0]\c_pipe_out_reg[7]_1 ;
  wire [8:8]p_0_in;
  wire \result[10]_i_10_n_0 ;
  wire \result[10]_i_11_n_0 ;
  wire \result[10]_i_12_n_0 ;
  wire \result[10]_i_13_n_0 ;
  wire \result[10]_i_15_n_0 ;
  wire \result[10]_i_16_n_0 ;
  wire \result[10]_i_17_n_0 ;
  wire \result[14]_i_10_n_0 ;
  wire \result[14]_i_11_n_0 ;
  wire \result[14]_i_12_n_0 ;
  wire \result[14]_i_13_n_0 ;
  wire \result[14]_i_15_n_0 ;
  wire \result[14]_i_16_n_0 ;
  wire \result[14]_i_18_n_0 ;
  wire \result[14]_i_19_n_0 ;
  wire \result[14]_i_20_n_0 ;
  wire \result[14]_i_21_n_0 ;
  wire \result[14]_i_22_n_0 ;
  wire \result[14]_i_23_n_0 ;
  wire \result[14]_i_24_n_0 ;
  wire \result[14]_i_25_n_0 ;
  wire \result[14]_i_26_n_0 ;
  wire \result[14]_i_41_n_0 ;
  wire \result[14]_i_42_n_0 ;
  wire \result[14]_i_43_n_0 ;
  wire \result[14]_i_44_n_0 ;
  wire \result[14]_i_45_n_0 ;
  wire \result[15]_i_11_n_0 ;
  wire \result[15]_i_3_n_0 ;
  wire \result[2]_i_9_n_0 ;
  wire \result[3]_i_10_n_0 ;
  wire \result[6]_i_16_n_0 ;
  wire \result[6]_i_17_n_0 ;
  wire \result[6]_i_18_n_0 ;
  wire \result[6]_i_19_n_0 ;
  wire [1:0]\result_reg[10] ;
  wire [0:0]\result_reg[10]_0 ;
  wire \result_reg[10]_1 ;
  wire [2:0]\result_reg[14] ;
  wire [2:0]\result_reg[14]_0 ;
  wire [0:0]\result_reg[15] ;
  wire s_IBUF;
  wire [5:3]sum_pipe_out;
  wire \sum_pipe_out[3]_i_2_n_0 ;
  wire \sum_pipe_out[3]_i_3_n_0 ;
  wire \sum_pipe_out[3]_i_4_n_0 ;
  wire \sum_pipe_out[3]_i_5_n_0 ;
  wire \sum_pipe_out[7]_i_2_n_0 ;
  wire \sum_pipe_out[7]_i_3_n_0 ;
  wire \sum_pipe_out[7]_i_4_n_0 ;
  wire \sum_pipe_out[7]_i_5_n_0 ;
  wire [2:0]\sum_pipe_out_reg[1]_0 ;
  wire [3:0]\sum_pipe_out_reg[1]_1 ;
  wire \sum_pipe_out_reg[3]_i_1_n_0 ;
  wire [3:0]\sum_pipe_out_reg[6]_0 ;
  wire [3:0]\sum_pipe_out_reg[6]_1 ;
  wire [3:0]\sum_pipe_out_reg[6]_2 ;
  wire [3:0]\sum_pipe_out_reg[6]_3 ;
  wire [3:0]\sum_pipe_out_reg[6]_4 ;
  wire [0:0]\sum_pipe_out_reg[7]_0 ;
  wire [0:0]\sum_pipe_out_reg[7]_1 ;
  wire \sum_pipe_out_reg[7]_i_1_n_0 ;
  wire [2:0]\sum_pipe_out_reg[8]_0 ;
  wire [8:0]temp_sum;
  wire [2:0]\NLW_sum_pipe_out_reg[3]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_sum_pipe_out_reg[7]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_sum_pipe_out_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_sum_pipe_out_reg[8]_i_1_O_UNCONNECTED ;

  FDCE #(
    .INIT(1'b0)) 
    \c_pipe_out_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[0]),
        .Q(\c_pipe_out_reg[7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \c_pipe_out_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[1]),
        .Q(\c_pipe_out_reg[7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \c_pipe_out_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[2]),
        .Q(\c_pipe_out_reg[7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \c_pipe_out_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[3]),
        .Q(\c_pipe_out_reg[7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \c_pipe_out_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[4]),
        .Q(\c_pipe_out_reg[7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \c_pipe_out_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[5]),
        .Q(\c_pipe_out_reg[7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \c_pipe_out_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[6]),
        .Q(\c_pipe_out_reg[7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \c_pipe_out_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[7]),
        .Q(\c_pipe_out_reg[7]_0 [7]));
  LUT2 #(
    .INIT(4'h8)) 
    \result[10]_i_10 
       (.I0(sum_pipe_out[3]),
        .I1(\c_pipe_out_reg[7]_0 [6]),
        .O(\result[10]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h7887)) 
    \result[10]_i_11 
       (.I0(Q[2]),
        .I1(\c_pipe_out_reg[7]_0 [7]),
        .I2(O[2]),
        .I3(\result_reg[14] [1]),
        .O(\result[10]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h7887)) 
    \result[10]_i_12 
       (.I0(Q[1]),
        .I1(\c_pipe_out_reg[7]_0 [7]),
        .I2(O[1]),
        .I3(\result_reg[14] [0]),
        .O(\result[10]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF880)) 
    \result[10]_i_13 
       (.I0(Q[1]),
        .I1(\c_pipe_out_reg[7]_0 [7]),
        .I2(\result_reg[14] [0]),
        .I3(O[1]),
        .O(\result[10]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h9666699969996999)) 
    \result[10]_i_15 
       (.I0(\result_reg[14] [1]),
        .I1(O[2]),
        .I2(\c_pipe_out_reg[7]_0 [7]),
        .I3(Q[2]),
        .I4(sum_pipe_out[3]),
        .I5(\c_pipe_out_reg[7]_0 [6]),
        .O(\result[10]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h9666699969996999)) 
    \result[10]_i_16 
       (.I0(\result_reg[14] [0]),
        .I1(O[1]),
        .I2(\c_pipe_out_reg[7]_0 [7]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(\c_pipe_out_reg[7]_0 [6]),
        .O(\result[10]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h7887)) 
    \result[10]_i_17 
       (.I0(\c_pipe_out_reg[7]_0 [7]),
        .I1(Q[0]),
        .I2(O[0]),
        .I3(\result_reg[10] [1]),
        .O(\result[10]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBB222B2222222)) 
    \result[10]_i_2 
       (.I0(\result[10]_i_10_n_0 ),
        .I1(\result[10]_i_11_n_0 ),
        .I2(Q[1]),
        .I3(\c_pipe_out_reg[7]_0 [7]),
        .I4(\result_reg[14] [0]),
        .I5(O[1]),
        .O(\sum_pipe_out_reg[1]_0 [2]));
  LUT6 #(
    .INIT(64'hB222000022220000)) 
    \result[10]_i_3 
       (.I0(Q[2]),
        .I1(\result[10]_i_12_n_0 ),
        .I2(\result_reg[10] [0]),
        .I3(\result_reg[10]_0 ),
        .I4(\c_pipe_out_reg[7]_0 [6]),
        .I5(Q[1]),
        .O(\sum_pipe_out_reg[1]_0 [1]));
  LUT6 #(
    .INIT(64'h6595959595959595)) 
    \result[10]_i_4 
       (.I0(\result[10]_i_12_n_0 ),
        .I1(Q[2]),
        .I2(\c_pipe_out_reg[7]_0 [6]),
        .I3(\result_reg[10] [0]),
        .I4(\result_reg[10]_0 ),
        .I5(Q[1]),
        .O(\sum_pipe_out_reg[1]_0 [0]));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    \result[10]_i_6 
       (.I0(\result[10]_i_13_n_0 ),
        .I1(\result[10]_i_11_n_0 ),
        .I2(\result[10]_i_10_n_0 ),
        .I3(\result[14]_i_19_n_0 ),
        .I4(\result[14]_i_18_n_0 ),
        .I5(\result[14]_i_26_n_0 ),
        .O(\sum_pipe_out_reg[1]_1 [3]));
  LUT6 #(
    .INIT(64'h4D5DB2A2B2A24D5D)) 
    \result[10]_i_7 
       (.I0(\result_reg[10]_1 ),
        .I1(\result[10]_i_12_n_0 ),
        .I2(Q[2]),
        .I3(\c_pipe_out_reg[7]_0 [6]),
        .I4(\result[10]_i_15_n_0 ),
        .I5(\result[10]_i_13_n_0 ),
        .O(\sum_pipe_out_reg[1]_1 [2]));
  LUT6 #(
    .INIT(64'h6669699969996999)) 
    \result[10]_i_8 
       (.I0(\result[10]_i_16_n_0 ),
        .I1(\result_reg[10]_1 ),
        .I2(O[0]),
        .I3(\result_reg[10] [1]),
        .I4(Q[0]),
        .I5(\c_pipe_out_reg[7]_0 [7]),
        .O(\sum_pipe_out_reg[1]_1 [1]));
  LUT5 #(
    .INIT(32'h6A959595)) 
    \result[10]_i_9 
       (.I0(\result[10]_i_17_n_0 ),
        .I1(Q[1]),
        .I2(\c_pipe_out_reg[7]_0 [6]),
        .I3(\result_reg[10]_0 ),
        .I4(\result_reg[10] [0]),
        .O(\sum_pipe_out_reg[1]_1 [0]));
  LUT2 #(
    .INIT(4'h7)) 
    \result[14]_i_10 
       (.I0(Q[4]),
        .I1(\c_pipe_out_reg[7]_0 [6]),
        .O(\result[14]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result[14]_i_11 
       (.I0(Q[3]),
        .I1(\c_pipe_out_reg[7]_0 [6]),
        .O(\result[14]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \result[14]_i_12 
       (.I0(sum_pipe_out[5]),
        .I1(\c_pipe_out_reg[7]_0 [7]),
        .O(\result[14]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result[14]_i_13 
       (.I0(sum_pipe_out[4]),
        .I1(\c_pipe_out_reg[7]_0 [7]),
        .O(\result[14]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result[14]_i_15 
       (.I0(sum_pipe_out[5]),
        .I1(\c_pipe_out_reg[7]_0 [6]),
        .O(\result[14]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h7887)) 
    \result[14]_i_16 
       (.I0(sum_pipe_out[4]),
        .I1(\c_pipe_out_reg[7]_0 [7]),
        .I2(\result_reg[14]_0 [0]),
        .I3(CO),
        .O(\result[14]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result[14]_i_18 
       (.I0(sum_pipe_out[4]),
        .I1(\c_pipe_out_reg[7]_0 [6]),
        .O(\result[14]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h7887)) 
    \result[14]_i_19 
       (.I0(sum_pipe_out[3]),
        .I1(\c_pipe_out_reg[7]_0 [7]),
        .I2(O[3]),
        .I3(\result_reg[14] [2]),
        .O(\result[14]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h7D44144414441444)) 
    \result[14]_i_2 
       (.I0(\result[14]_i_10_n_0 ),
        .I1(\result_reg[14]_0 [2]),
        .I2(Q[3]),
        .I3(\c_pipe_out_reg[7]_0 [7]),
        .I4(\result_reg[14]_0 [1]),
        .I5(sum_pipe_out[5]),
        .O(\sum_pipe_out_reg[6]_2 [3]));
  LUT3 #(
    .INIT(8'h87)) 
    \result[14]_i_20 
       (.I0(Q[4]),
        .I1(\c_pipe_out_reg[7]_0 [7]),
        .I2(\result_reg[15] ),
        .O(\result[14]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \result[14]_i_21 
       (.I0(Q[5]),
        .I1(\c_pipe_out_reg[7]_0 [6]),
        .O(\result[14]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'h87)) 
    \result[14]_i_22 
       (.I0(\c_pipe_out_reg[7]_0 [7]),
        .I1(Q[3]),
        .I2(\result_reg[14]_0 [2]),
        .O(\result[14]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'hF880)) 
    \result[14]_i_23 
       (.I0(sum_pipe_out[3]),
        .I1(\c_pipe_out_reg[7]_0 [7]),
        .I2(\result_reg[14] [2]),
        .I3(O[3]),
        .O(\result[14]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h87)) 
    \result[14]_i_24 
       (.I0(\c_pipe_out_reg[7]_0 [7]),
        .I1(sum_pipe_out[5]),
        .I2(\result_reg[14]_0 [1]),
        .O(\result[14]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'hF880)) 
    \result[14]_i_25 
       (.I0(sum_pipe_out[4]),
        .I1(\c_pipe_out_reg[7]_0 [7]),
        .I2(CO),
        .I3(\result_reg[14]_0 [0]),
        .O(\result[14]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'hF880)) 
    \result[14]_i_26 
       (.I0(Q[2]),
        .I1(\c_pipe_out_reg[7]_0 [7]),
        .I2(\result_reg[14] [1]),
        .I3(O[2]),
        .O(\result[14]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \result[14]_i_27 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\c_pipe_out_reg[7]_0 [2]),
        .I3(\c_pipe_out_reg[7]_0 [1]),
        .O(DI[2]));
  LUT6 #(
    .INIT(64'hEAC0800080008000)) 
    \result[14]_i_28 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\c_pipe_out_reg[7]_0 [2]),
        .I3(\c_pipe_out_reg[7]_0 [0]),
        .I4(Q[4]),
        .I5(\c_pipe_out_reg[7]_0 [1]),
        .O(DI[1]));
  LUT6 #(
    .INIT(64'hEAC0800080008000)) 
    \result[14]_i_29 
       (.I0(Q[4]),
        .I1(sum_pipe_out[5]),
        .I2(\c_pipe_out_reg[7]_0 [2]),
        .I3(\c_pipe_out_reg[7]_0 [0]),
        .I4(Q[3]),
        .I5(\c_pipe_out_reg[7]_0 [1]),
        .O(DI[0]));
  LUT6 #(
    .INIT(64'hEBEBEB82EB828282)) 
    \result[14]_i_3 
       (.I0(\result[14]_i_11_n_0 ),
        .I1(\result_reg[14]_0 [1]),
        .I2(\result[14]_i_12_n_0 ),
        .I3(\result[14]_i_13_n_0 ),
        .I4(CO),
        .I5(\result_reg[14]_0 [0]),
        .O(\sum_pipe_out_reg[6]_2 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    \result[14]_i_32 
       (.I0(DI[0]),
        .I1(\result[14]_i_41_n_0 ),
        .O(\sum_pipe_out_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hEAC0800080008000)) 
    \result[14]_i_33 
       (.I0(Q[3]),
        .I1(sum_pipe_out[4]),
        .I2(\c_pipe_out_reg[7]_0 [5]),
        .I3(\c_pipe_out_reg[7]_0 [3]),
        .I4(sum_pipe_out[5]),
        .I5(\c_pipe_out_reg[7]_0 [4]),
        .O(\sum_pipe_out_reg[6]_1 [3]));
  LUT6 #(
    .INIT(64'hEAC0800080008000)) 
    \result[14]_i_34 
       (.I0(sum_pipe_out[5]),
        .I1(sum_pipe_out[3]),
        .I2(\c_pipe_out_reg[7]_0 [5]),
        .I3(\c_pipe_out_reg[7]_0 [3]),
        .I4(sum_pipe_out[4]),
        .I5(\c_pipe_out_reg[7]_0 [4]),
        .O(\sum_pipe_out_reg[6]_1 [2]));
  LUT6 #(
    .INIT(64'hEAC0800080008000)) 
    \result[14]_i_35 
       (.I0(sum_pipe_out[4]),
        .I1(Q[2]),
        .I2(\c_pipe_out_reg[7]_0 [5]),
        .I3(\c_pipe_out_reg[7]_0 [3]),
        .I4(sum_pipe_out[3]),
        .I5(\c_pipe_out_reg[7]_0 [4]),
        .O(\sum_pipe_out_reg[6]_1 [1]));
  LUT6 #(
    .INIT(64'hEAC0800080008000)) 
    \result[14]_i_36 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\c_pipe_out_reg[7]_0 [5]),
        .I3(\c_pipe_out_reg[7]_0 [4]),
        .I4(sum_pipe_out[3]),
        .I5(\c_pipe_out_reg[7]_0 [3]),
        .O(\sum_pipe_out_reg[6]_1 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    \result[14]_i_37 
       (.I0(\sum_pipe_out_reg[6]_1 [3]),
        .I1(\result[14]_i_42_n_0 ),
        .O(\sum_pipe_out_reg[6]_4 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    \result[14]_i_38 
       (.I0(\sum_pipe_out_reg[6]_1 [2]),
        .I1(\result[14]_i_43_n_0 ),
        .O(\sum_pipe_out_reg[6]_4 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    \result[14]_i_39 
       (.I0(\sum_pipe_out_reg[6]_1 [1]),
        .I1(\result[14]_i_44_n_0 ),
        .O(\sum_pipe_out_reg[6]_4 [1]));
  LUT6 #(
    .INIT(64'hBBBBB222B2222222)) 
    \result[14]_i_4 
       (.I0(\result[14]_i_15_n_0 ),
        .I1(\result[14]_i_16_n_0 ),
        .I2(sum_pipe_out[3]),
        .I3(\c_pipe_out_reg[7]_0 [7]),
        .I4(\result_reg[14] [2]),
        .I5(O[3]),
        .O(\sum_pipe_out_reg[6]_2 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    \result[14]_i_40 
       (.I0(\sum_pipe_out_reg[6]_1 [0]),
        .I1(\result[14]_i_45_n_0 ),
        .O(\sum_pipe_out_reg[6]_4 [0]));
  LUT6 #(
    .INIT(64'h7888877787778777)) 
    \result[14]_i_41 
       (.I0(\c_pipe_out_reg[7]_0 [0]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\c_pipe_out_reg[7]_0 [2]),
        .I4(Q[4]),
        .I5(\c_pipe_out_reg[7]_0 [1]),
        .O(\result[14]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h7888877787778777)) 
    \result[14]_i_42 
       (.I0(\c_pipe_out_reg[7]_0 [3]),
        .I1(Q[4]),
        .I2(sum_pipe_out[5]),
        .I3(\c_pipe_out_reg[7]_0 [5]),
        .I4(Q[3]),
        .I5(\c_pipe_out_reg[7]_0 [4]),
        .O(\result[14]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h7888877787778777)) 
    \result[14]_i_43 
       (.I0(\c_pipe_out_reg[7]_0 [3]),
        .I1(Q[3]),
        .I2(sum_pipe_out[4]),
        .I3(\c_pipe_out_reg[7]_0 [5]),
        .I4(sum_pipe_out[5]),
        .I5(\c_pipe_out_reg[7]_0 [4]),
        .O(\result[14]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h7888877787778777)) 
    \result[14]_i_44 
       (.I0(\c_pipe_out_reg[7]_0 [3]),
        .I1(sum_pipe_out[5]),
        .I2(sum_pipe_out[3]),
        .I3(\c_pipe_out_reg[7]_0 [5]),
        .I4(sum_pipe_out[4]),
        .I5(\c_pipe_out_reg[7]_0 [4]),
        .O(\result[14]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h7888877787778777)) 
    \result[14]_i_45 
       (.I0(\c_pipe_out_reg[7]_0 [3]),
        .I1(sum_pipe_out[4]),
        .I2(Q[2]),
        .I3(\c_pipe_out_reg[7]_0 [5]),
        .I4(sum_pipe_out[3]),
        .I5(\c_pipe_out_reg[7]_0 [4]),
        .O(\result[14]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBB222B2222222)) 
    \result[14]_i_5 
       (.I0(\result[14]_i_18_n_0 ),
        .I1(\result[14]_i_19_n_0 ),
        .I2(Q[2]),
        .I3(\c_pipe_out_reg[7]_0 [7]),
        .I4(\result_reg[14] [1]),
        .I5(O[2]),
        .O(\sum_pipe_out_reg[6]_2 [0]));
  LUT6 #(
    .INIT(64'h6996969696969696)) 
    \result[14]_i_6 
       (.I0(\sum_pipe_out_reg[6]_2 [3]),
        .I1(\result[14]_i_20_n_0 ),
        .I2(\result[14]_i_21_n_0 ),
        .I3(\result_reg[14]_0 [2]),
        .I4(\c_pipe_out_reg[7]_0 [7]),
        .I5(Q[3]),
        .O(\c_pipe_out_reg[7]_1 [3]));
  LUT6 #(
    .INIT(64'h6996969696969696)) 
    \result[14]_i_7 
       (.I0(\sum_pipe_out_reg[6]_2 [2]),
        .I1(\result[14]_i_22_n_0 ),
        .I2(\result[14]_i_10_n_0 ),
        .I3(\result_reg[14]_0 [1]),
        .I4(\c_pipe_out_reg[7]_0 [7]),
        .I5(sum_pipe_out[5]),
        .O(\c_pipe_out_reg[7]_1 [2]));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    \result[14]_i_8 
       (.I0(\result[14]_i_23_n_0 ),
        .I1(\result[14]_i_16_n_0 ),
        .I2(\result[14]_i_15_n_0 ),
        .I3(\result[14]_i_24_n_0 ),
        .I4(\result[14]_i_11_n_0 ),
        .I5(\result[14]_i_25_n_0 ),
        .O(\c_pipe_out_reg[7]_1 [1]));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    \result[14]_i_9 
       (.I0(\result[14]_i_26_n_0 ),
        .I1(\result[14]_i_19_n_0 ),
        .I2(\result[14]_i_18_n_0 ),
        .I3(\result[14]_i_16_n_0 ),
        .I4(\result[14]_i_15_n_0 ),
        .I5(\result[14]_i_23_n_0 ),
        .O(\c_pipe_out_reg[7]_1 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    \result[15]_i_10 
       (.I0(\sum_pipe_out_reg[8]_0 [0]),
        .I1(\result[15]_i_11_n_0 ),
        .O(\sum_pipe_out_reg[7]_1 ));
  LUT6 #(
    .INIT(64'h7888877787778777)) 
    \result[15]_i_11 
       (.I0(\c_pipe_out_reg[7]_0 [3]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\c_pipe_out_reg[7]_0 [5]),
        .I4(Q[4]),
        .I5(\c_pipe_out_reg[7]_0 [4]),
        .O(\result[15]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h8EFA1EAA18A07800)) 
    \result[15]_i_2 
       (.I0(\result[15]_i_3_n_0 ),
        .I1(\c_pipe_out_reg[7]_0 [6]),
        .I2(\c_pipe_out_reg[7]_0 [7]),
        .I3(Q[5]),
        .I4(Q[4]),
        .I5(\result_reg[15] ),
        .O(\c_pipe_out_reg[6]_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \result[15]_i_3 
       (.I0(\result_reg[14]_0 [2]),
        .I1(\c_pipe_out_reg[7]_0 [7]),
        .I2(Q[3]),
        .O(\result[15]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \result[15]_i_5 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\c_pipe_out_reg[7]_0 [5]),
        .I3(\c_pipe_out_reg[7]_0 [4]),
        .O(\sum_pipe_out_reg[8]_0 [2]));
  LUT6 #(
    .INIT(64'hEAC0800080008000)) 
    \result[15]_i_6 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\c_pipe_out_reg[7]_0 [5]),
        .I3(\c_pipe_out_reg[7]_0 [3]),
        .I4(Q[4]),
        .I5(\c_pipe_out_reg[7]_0 [4]),
        .O(\sum_pipe_out_reg[8]_0 [1]));
  LUT6 #(
    .INIT(64'hEAC0800080008000)) 
    \result[15]_i_7 
       (.I0(Q[4]),
        .I1(sum_pipe_out[5]),
        .I2(\c_pipe_out_reg[7]_0 [5]),
        .I3(\c_pipe_out_reg[7]_0 [3]),
        .I4(Q[3]),
        .I5(\c_pipe_out_reg[7]_0 [4]),
        .O(\sum_pipe_out_reg[8]_0 [0]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \result[2]_i_2 
       (.I0(\c_pipe_out_reg[7]_0 [1]),
        .I1(Q[2]),
        .I2(\c_pipe_out_reg[7]_0 [2]),
        .I3(Q[1]),
        .I4(sum_pipe_out[3]),
        .I5(\c_pipe_out_reg[7]_0 [0]),
        .O(\c_pipe_out_reg[1]_0 [1]));
  LUT2 #(
    .INIT(4'h8)) 
    \result[2]_i_4 
       (.I0(Q[1]),
        .I1(\c_pipe_out_reg[7]_0 [0]),
        .O(\c_pipe_out_reg[1]_0 [0]));
  LUT5 #(
    .INIT(32'h95555555)) 
    \result[2]_i_5 
       (.I0(\result[2]_i_9_n_0 ),
        .I1(\c_pipe_out_reg[7]_0 [1]),
        .I2(\c_pipe_out_reg[7]_0 [2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \result[2]_i_8 
       (.I0(Q[0]),
        .I1(\c_pipe_out_reg[7]_0 [0]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'h7888877787778777)) 
    \result[2]_i_9 
       (.I0(\c_pipe_out_reg[7]_0 [0]),
        .I1(sum_pipe_out[3]),
        .I2(Q[1]),
        .I3(\c_pipe_out_reg[7]_0 [2]),
        .I4(Q[2]),
        .I5(\c_pipe_out_reg[7]_0 [1]),
        .O(\result[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h7888877787778777)) 
    \result[3]_i_10 
       (.I0(\c_pipe_out_reg[7]_0 [3]),
        .I1(sum_pipe_out[3]),
        .I2(Q[1]),
        .I3(\c_pipe_out_reg[7]_0 [5]),
        .I4(Q[2]),
        .I5(\c_pipe_out_reg[7]_0 [4]),
        .O(\result[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \result[3]_i_3 
       (.I0(\c_pipe_out_reg[7]_0 [4]),
        .I1(Q[2]),
        .I2(\c_pipe_out_reg[7]_0 [5]),
        .I3(Q[1]),
        .I4(sum_pipe_out[3]),
        .I5(\c_pipe_out_reg[7]_0 [3]),
        .O(\c_pipe_out_reg[4]_0 [1]));
  LUT2 #(
    .INIT(4'h8)) 
    \result[3]_i_5 
       (.I0(Q[1]),
        .I1(\c_pipe_out_reg[7]_0 [3]),
        .O(\c_pipe_out_reg[4]_0 [0]));
  LUT5 #(
    .INIT(32'h95555555)) 
    \result[3]_i_6 
       (.I0(\result[3]_i_10_n_0 ),
        .I1(\c_pipe_out_reg[7]_0 [4]),
        .I2(\c_pipe_out_reg[7]_0 [5]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\c_pipe_out_reg[4]_1 [1]));
  LUT2 #(
    .INIT(4'h8)) 
    \result[3]_i_9 
       (.I0(Q[0]),
        .I1(\c_pipe_out_reg[7]_0 [3]),
        .O(\c_pipe_out_reg[4]_1 [0]));
  LUT6 #(
    .INIT(64'hEAC0800080008000)) 
    \result[6]_i_10 
       (.I0(sum_pipe_out[4]),
        .I1(Q[2]),
        .I2(\c_pipe_out_reg[7]_0 [2]),
        .I3(\c_pipe_out_reg[7]_0 [0]),
        .I4(sum_pipe_out[3]),
        .I5(\c_pipe_out_reg[7]_0 [1]),
        .O(\sum_pipe_out_reg[6]_0 [1]));
  LUT6 #(
    .INIT(64'hEAC0800080008000)) 
    \result[6]_i_11 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\c_pipe_out_reg[7]_0 [2]),
        .I3(\c_pipe_out_reg[7]_0 [1]),
        .I4(sum_pipe_out[3]),
        .I5(\c_pipe_out_reg[7]_0 [0]),
        .O(\sum_pipe_out_reg[6]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    \result[6]_i_12 
       (.I0(\sum_pipe_out_reg[6]_0 [3]),
        .I1(\result[6]_i_16_n_0 ),
        .O(\sum_pipe_out_reg[6]_3 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    \result[6]_i_13 
       (.I0(\sum_pipe_out_reg[6]_0 [2]),
        .I1(\result[6]_i_17_n_0 ),
        .O(\sum_pipe_out_reg[6]_3 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    \result[6]_i_14 
       (.I0(\sum_pipe_out_reg[6]_0 [1]),
        .I1(\result[6]_i_18_n_0 ),
        .O(\sum_pipe_out_reg[6]_3 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    \result[6]_i_15 
       (.I0(\sum_pipe_out_reg[6]_0 [0]),
        .I1(\result[6]_i_19_n_0 ),
        .O(\sum_pipe_out_reg[6]_3 [0]));
  LUT6 #(
    .INIT(64'h7888877787778777)) 
    \result[6]_i_16 
       (.I0(\c_pipe_out_reg[7]_0 [0]),
        .I1(Q[4]),
        .I2(sum_pipe_out[5]),
        .I3(\c_pipe_out_reg[7]_0 [2]),
        .I4(Q[3]),
        .I5(\c_pipe_out_reg[7]_0 [1]),
        .O(\result[6]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h7888877787778777)) 
    \result[6]_i_17 
       (.I0(\c_pipe_out_reg[7]_0 [0]),
        .I1(Q[3]),
        .I2(sum_pipe_out[4]),
        .I3(\c_pipe_out_reg[7]_0 [2]),
        .I4(sum_pipe_out[5]),
        .I5(\c_pipe_out_reg[7]_0 [1]),
        .O(\result[6]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h7888877787778777)) 
    \result[6]_i_18 
       (.I0(\c_pipe_out_reg[7]_0 [0]),
        .I1(sum_pipe_out[5]),
        .I2(sum_pipe_out[3]),
        .I3(\c_pipe_out_reg[7]_0 [2]),
        .I4(sum_pipe_out[4]),
        .I5(\c_pipe_out_reg[7]_0 [1]),
        .O(\result[6]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h7888877787778777)) 
    \result[6]_i_19 
       (.I0(\c_pipe_out_reg[7]_0 [0]),
        .I1(sum_pipe_out[4]),
        .I2(Q[2]),
        .I3(\c_pipe_out_reg[7]_0 [2]),
        .I4(sum_pipe_out[3]),
        .I5(\c_pipe_out_reg[7]_0 [1]),
        .O(\result[6]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hEAC0800080008000)) 
    \result[6]_i_8 
       (.I0(Q[3]),
        .I1(sum_pipe_out[4]),
        .I2(\c_pipe_out_reg[7]_0 [2]),
        .I3(\c_pipe_out_reg[7]_0 [0]),
        .I4(sum_pipe_out[5]),
        .I5(\c_pipe_out_reg[7]_0 [1]),
        .O(\sum_pipe_out_reg[6]_0 [3]));
  LUT6 #(
    .INIT(64'hEAC0800080008000)) 
    \result[6]_i_9 
       (.I0(sum_pipe_out[5]),
        .I1(sum_pipe_out[3]),
        .I2(\c_pipe_out_reg[7]_0 [2]),
        .I3(\c_pipe_out_reg[7]_0 [0]),
        .I4(sum_pipe_out[4]),
        .I5(\c_pipe_out_reg[7]_0 [1]),
        .O(\sum_pipe_out_reg[6]_0 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    \sum_pipe_out[3]_i_2 
       (.I0(s_IBUF),
        .O(\sum_pipe_out[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \sum_pipe_out[3]_i_3 
       (.I0(b_IBUF[3]),
        .I1(s_IBUF),
        .I2(a[3]),
        .O(\sum_pipe_out[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \sum_pipe_out[3]_i_4 
       (.I0(b_IBUF[2]),
        .I1(s_IBUF),
        .I2(a[2]),
        .O(\sum_pipe_out[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \sum_pipe_out[3]_i_5 
       (.I0(b_IBUF[1]),
        .I1(s_IBUF),
        .I2(a[1]),
        .O(\sum_pipe_out[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \sum_pipe_out[7]_i_2 
       (.I0(b_IBUF[7]),
        .I1(s_IBUF),
        .I2(a[7]),
        .O(\sum_pipe_out[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \sum_pipe_out[7]_i_3 
       (.I0(b_IBUF[6]),
        .I1(s_IBUF),
        .I2(a[6]),
        .O(\sum_pipe_out[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \sum_pipe_out[7]_i_4 
       (.I0(b_IBUF[5]),
        .I1(s_IBUF),
        .I2(a[5]),
        .O(\sum_pipe_out[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \sum_pipe_out[7]_i_5 
       (.I0(b_IBUF[4]),
        .I1(s_IBUF),
        .I2(a[4]),
        .O(\sum_pipe_out[7]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sum_pipe_out[8]_i_2 
       (.I0(s_IBUF),
        .O(p_0_in));
  FDCE #(
    .INIT(1'b0)) 
    \sum_pipe_out_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(temp_sum[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \sum_pipe_out_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(temp_sum[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \sum_pipe_out_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(temp_sum[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \sum_pipe_out_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(temp_sum[3]),
        .Q(sum_pipe_out[3]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "RETARGET SWEEP " *) 
  CARRY4 \sum_pipe_out_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\sum_pipe_out_reg[3]_i_1_n_0 ,\NLW_sum_pipe_out_reg[3]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(a[0]),
        .DI({a[3:1],\sum_pipe_out[3]_i_2_n_0 }),
        .O(temp_sum[3:0]),
        .S({\sum_pipe_out[3]_i_3_n_0 ,\sum_pipe_out[3]_i_4_n_0 ,\sum_pipe_out[3]_i_5_n_0 ,b_IBUF[0]}));
  FDCE #(
    .INIT(1'b0)) 
    \sum_pipe_out_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(temp_sum[4]),
        .Q(sum_pipe_out[4]));
  FDCE #(
    .INIT(1'b0)) 
    \sum_pipe_out_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(temp_sum[5]),
        .Q(sum_pipe_out[5]));
  FDCE #(
    .INIT(1'b0)) 
    \sum_pipe_out_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(temp_sum[6]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \sum_pipe_out_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(temp_sum[7]),
        .Q(Q[4]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \sum_pipe_out_reg[7]_i_1 
       (.CI(\sum_pipe_out_reg[3]_i_1_n_0 ),
        .CO({\sum_pipe_out_reg[7]_i_1_n_0 ,\NLW_sum_pipe_out_reg[7]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(a[7:4]),
        .O(temp_sum[7:4]),
        .S({\sum_pipe_out[7]_i_2_n_0 ,\sum_pipe_out[7]_i_3_n_0 ,\sum_pipe_out[7]_i_4_n_0 ,\sum_pipe_out[7]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \sum_pipe_out_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(temp_sum[8]),
        .Q(Q[5]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \sum_pipe_out_reg[8]_i_1 
       (.CI(\sum_pipe_out_reg[7]_i_1_n_0 ),
        .CO(\NLW_sum_pipe_out_reg[8]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_sum_pipe_out_reg[8]_i_1_O_UNCONNECTED [3:1],temp_sum[8]}),
        .S({1'b0,1'b0,1'b0,p_0_in}));
endmodule

module hw2_pipe_stage2
   (\sum_pipe_out_reg[6] ,
    CO,
    \sum_pipe_out_reg[8] ,
    \c_pipe_out_reg[4] ,
    O,
    \sum_pipe_out_reg[8]_0 ,
    \sum_pipe_out_reg[8]_1 ,
    \c_pipe_out_reg[6] ,
    \result_reg[15]_0 ,
    \result_reg[2]_0 ,
    S,
    \result_reg[6]_0 ,
    \result_reg[6]_1 ,
    DI,
    \result[10]_i_13 ,
    \result_reg[3]_0 ,
    \result_reg[3]_1 ,
    \result[10]_i_8 ,
    \result[10]_i_8_0 ,
    \result[14]_i_25 ,
    \result[14]_i_25_0 ,
    \result_reg[10]_0 ,
    \result_reg[10]_1 ,
    \result_reg[14]_0 ,
    \result_reg[14]_1 ,
    \result_reg[15]_1 ,
    Q,
    \result_reg[10]_2 ,
    CLK,
    AR);
  output [1:0]\sum_pipe_out_reg[6] ;
  output [0:0]CO;
  output [2:0]\sum_pipe_out_reg[8] ;
  output [0:0]\c_pipe_out_reg[4] ;
  output [3:0]O;
  output [0:0]\sum_pipe_out_reg[8]_0 ;
  output [2:0]\sum_pipe_out_reg[8]_1 ;
  output \c_pipe_out_reg[6] ;
  output [15:0]\result_reg[15]_0 ;
  input [1:0]\result_reg[2]_0 ;
  input [1:0]S;
  input [3:0]\result_reg[6]_0 ;
  input [3:0]\result_reg[6]_1 ;
  input [2:0]DI;
  input [0:0]\result[10]_i_13 ;
  input [1:0]\result_reg[3]_0 ;
  input [1:0]\result_reg[3]_1 ;
  input [3:0]\result[10]_i_8 ;
  input [3:0]\result[10]_i_8_0 ;
  input [2:0]\result[14]_i_25 ;
  input [0:0]\result[14]_i_25_0 ;
  input [2:0]\result_reg[10]_0 ;
  input [3:0]\result_reg[10]_1 ;
  input [3:0]\result_reg[14]_0 ;
  input [3:0]\result_reg[14]_1 ;
  input [0:0]\result_reg[15]_1 ;
  input [5:0]Q;
  input [7:0]\result_reg[10]_2 ;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]CO;
  wire [2:0]DI;
  wire [3:0]O;
  wire [5:0]Q;
  wire [1:0]S;
  wire [0:0]\c_pipe_out_reg[4] ;
  wire \c_pipe_out_reg[6] ;
  wire [0:0]\result[10]_i_13 ;
  wire \result[10]_i_5_n_0 ;
  wire [3:0]\result[10]_i_8 ;
  wire [3:0]\result[10]_i_8_0 ;
  wire [2:0]\result[14]_i_25 ;
  wire [0:0]\result[14]_i_25_0 ;
  wire \result[14]_i_30_n_0 ;
  wire \result[14]_i_31_n_0 ;
  wire \result[15]_i_8_n_0 ;
  wire \result[15]_i_9_n_0 ;
  wire \result[2]_i_3_n_0 ;
  wire \result[2]_i_6_n_0 ;
  wire \result[2]_i_7_n_0 ;
  wire \result[3]_i_4_n_0 ;
  wire \result[3]_i_7_n_0 ;
  wire \result[3]_i_8_n_0 ;
  wire \result[6]_i_2_n_0 ;
  wire \result[6]_i_4_n_0 ;
  wire \result[6]_i_5_n_0 ;
  wire \result[6]_i_6_n_0 ;
  wire \result[6]_i_7_n_0 ;
  wire [2:0]\result_reg[10]_0 ;
  wire [3:0]\result_reg[10]_1 ;
  wire [7:0]\result_reg[10]_2 ;
  wire \result_reg[10]_i_1_n_0 ;
  wire [3:0]\result_reg[14]_0 ;
  wire [3:0]\result_reg[14]_1 ;
  wire \result_reg[14]_i_17_n_0 ;
  wire \result_reg[14]_i_1_n_0 ;
  wire [15:0]\result_reg[15]_0 ;
  wire [0:0]\result_reg[15]_1 ;
  wire [1:0]\result_reg[2]_0 ;
  wire \result_reg[2]_i_1_n_0 ;
  wire \result_reg[2]_i_1_n_4 ;
  wire [1:0]\result_reg[3]_0 ;
  wire [1:0]\result_reg[3]_1 ;
  wire \result_reg[3]_i_2_n_0 ;
  wire \result_reg[3]_i_2_n_5 ;
  wire \result_reg[3]_i_2_n_6 ;
  wire \result_reg[3]_i_2_n_7 ;
  wire [3:0]\result_reg[6]_0 ;
  wire [3:0]\result_reg[6]_1 ;
  wire \result_reg[6]_i_1_n_0 ;
  wire \result_reg[6]_i_3_n_0 ;
  wire \result_reg[6]_i_3_n_6 ;
  wire \result_reg[6]_i_3_n_7 ;
  wire [1:0]\sum_pipe_out_reg[6] ;
  wire [2:0]\sum_pipe_out_reg[8] ;
  wire [0:0]\sum_pipe_out_reg[8]_0 ;
  wire [2:0]\sum_pipe_out_reg[8]_1 ;
  wire [15:0]temp_result;
  wire [2:0]\NLW_result_reg[10]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_result_reg[14]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_result_reg[14]_i_14_CO_UNCONNECTED ;
  wire [3:3]\NLW_result_reg[14]_i_14_O_UNCONNECTED ;
  wire [2:0]\NLW_result_reg[14]_i_17_CO_UNCONNECTED ;
  wire [3:0]\NLW_result_reg[15]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_result_reg[15]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_result_reg[15]_i_4_CO_UNCONNECTED ;
  wire [3:3]\NLW_result_reg[15]_i_4_O_UNCONNECTED ;
  wire [2:0]\NLW_result_reg[2]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_result_reg[3]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_result_reg[6]_i_1_CO_UNCONNECTED ;
  wire [0:0]\NLW_result_reg[6]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_result_reg[6]_i_3_CO_UNCONNECTED ;

  LUT4 #(
    .INIT(16'h8000)) 
    \result[10]_i_14 
       (.I0(\sum_pipe_out_reg[6] [0]),
        .I1(\c_pipe_out_reg[4] ),
        .I2(\result_reg[10]_2 [6]),
        .I3(Q[1]),
        .O(\c_pipe_out_reg[6] ));
  LUT4 #(
    .INIT(16'h9666)) 
    \result[10]_i_5 
       (.I0(\sum_pipe_out_reg[6] [1]),
        .I1(O[0]),
        .I2(Q[0]),
        .I3(\result_reg[10]_2 [7]),
        .O(\result[10]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7000)) 
    \result[14]_i_30 
       (.I0(\result_reg[10]_2 [1]),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(\result_reg[10]_2 [2]),
        .O(\result[14]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hE75F78003000F000)) 
    \result[14]_i_31 
       (.I0(\result_reg[10]_2 [0]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(\result_reg[10]_2 [2]),
        .I4(\result_reg[10]_2 [1]),
        .I5(Q[5]),
        .O(\result[14]_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h7000)) 
    \result[15]_i_8 
       (.I0(\result_reg[10]_2 [4]),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(\result_reg[10]_2 [5]),
        .O(\result[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hE75F78003000F000)) 
    \result[15]_i_9 
       (.I0(\result_reg[10]_2 [3]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(\result_reg[10]_2 [5]),
        .I4(\result_reg[10]_2 [4]),
        .I5(Q[5]),
        .O(\result[15]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \result[2]_i_3 
       (.I0(\result_reg[10]_2 [1]),
        .I1(Q[1]),
        .I2(\result_reg[10]_2 [2]),
        .I3(Q[0]),
        .O(\result[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \result[2]_i_6 
       (.I0(Q[0]),
        .I1(\result_reg[10]_2 [2]),
        .I2(Q[1]),
        .I3(\result_reg[10]_2 [1]),
        .I4(\result_reg[10]_2 [0]),
        .I5(Q[2]),
        .O(\result[2]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \result[2]_i_7 
       (.I0(\result_reg[10]_2 [0]),
        .I1(Q[1]),
        .I2(\result_reg[10]_2 [1]),
        .I3(Q[0]),
        .O(\result[2]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[3]_i_1 
       (.I0(\result_reg[2]_i_1_n_4 ),
        .I1(\result_reg[3]_i_2_n_7 ),
        .O(temp_result[3]));
  LUT4 #(
    .INIT(16'h7888)) 
    \result[3]_i_4 
       (.I0(\result_reg[10]_2 [4]),
        .I1(Q[1]),
        .I2(\result_reg[10]_2 [5]),
        .I3(Q[0]),
        .O(\result[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \result[3]_i_7 
       (.I0(Q[0]),
        .I1(\result_reg[10]_2 [5]),
        .I2(Q[1]),
        .I3(\result_reg[10]_2 [4]),
        .I4(\result_reg[10]_2 [3]),
        .I5(Q[2]),
        .O(\result[3]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \result[3]_i_8 
       (.I0(\result_reg[10]_2 [3]),
        .I1(Q[1]),
        .I2(\result_reg[10]_2 [4]),
        .I3(Q[0]),
        .O(\result[3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[6]_i_2 
       (.I0(\sum_pipe_out_reg[6] [0]),
        .I1(\c_pipe_out_reg[4] ),
        .O(\result[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h9666)) 
    \result[6]_i_4 
       (.I0(\c_pipe_out_reg[4] ),
        .I1(\sum_pipe_out_reg[6] [0]),
        .I2(\result_reg[10]_2 [6]),
        .I3(Q[0]),
        .O(\result[6]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[6]_i_5 
       (.I0(\result_reg[6]_i_3_n_6 ),
        .I1(\result_reg[3]_i_2_n_5 ),
        .O(\result[6]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[6]_i_6 
       (.I0(\result_reg[6]_i_3_n_7 ),
        .I1(\result_reg[3]_i_2_n_6 ),
        .O(\result[6]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[6]_i_7 
       (.I0(\result_reg[2]_i_1_n_4 ),
        .I1(\result_reg[3]_i_2_n_7 ),
        .O(\result[6]_i_7_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(temp_result[0]),
        .Q(\result_reg[15]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(temp_result[10]),
        .Q(\result_reg[15]_0 [10]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 9x8}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \result_reg[10]_i_1 
       (.CI(\result_reg[6]_i_1_n_0 ),
        .CO({\result_reg[10]_i_1_n_0 ,\NLW_result_reg[10]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\result_reg[10]_0 ,\result[10]_i_5_n_0 }),
        .O(temp_result[10:7]),
        .S(\result_reg[10]_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(temp_result[11]),
        .Q(\result_reg[15]_0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(temp_result[12]),
        .Q(\result_reg[15]_0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(temp_result[13]),
        .Q(\result_reg[15]_0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(temp_result[14]),
        .Q(\result_reg[15]_0 [14]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 9x8}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \result_reg[14]_i_1 
       (.CI(\result_reg[10]_i_1_n_0 ),
        .CO({\result_reg[14]_i_1_n_0 ,\NLW_result_reg[14]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\result_reg[14]_0 ),
        .O(temp_result[14:11]),
        .S(\result_reg[14]_1 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 9x8}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \result_reg[14]_i_14 
       (.CI(\result_reg[6]_i_3_n_0 ),
        .CO({CO,\NLW_result_reg[14]_i_14_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,DI}),
        .O({\NLW_result_reg[14]_i_14_O_UNCONNECTED [3],\sum_pipe_out_reg[8] }),
        .S({1'b1,\result[14]_i_30_n_0 ,\result[14]_i_31_n_0 ,\result[10]_i_13 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 9x8}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \result_reg[14]_i_17 
       (.CI(\result_reg[3]_i_2_n_0 ),
        .CO({\result_reg[14]_i_17_n_0 ,\NLW_result_reg[14]_i_17_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\result[10]_i_8 ),
        .O(O),
        .S(\result[10]_i_8_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(temp_result[15]),
        .Q(\result_reg[15]_0 [15]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 9x8}}" *) 
  CARRY4 \result_reg[15]_i_1 
       (.CI(\result_reg[14]_i_1_n_0 ),
        .CO(\NLW_result_reg[15]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_result_reg[15]_i_1_O_UNCONNECTED [3:1],temp_result[15]}),
        .S({1'b0,1'b0,1'b0,\result_reg[15]_1 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 9x8}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \result_reg[15]_i_4 
       (.CI(\result_reg[14]_i_17_n_0 ),
        .CO({\sum_pipe_out_reg[8]_0 ,\NLW_result_reg[15]_i_4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,\result[14]_i_25 }),
        .O({\NLW_result_reg[15]_i_4_O_UNCONNECTED [3],\sum_pipe_out_reg[8]_1 }),
        .S({1'b1,\result[15]_i_8_n_0 ,\result[15]_i_9_n_0 ,\result[14]_i_25_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(temp_result[1]),
        .Q(\result_reg[15]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(temp_result[2]),
        .Q(\result_reg[15]_0 [2]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 9x8}}" *) 
  (* OPT_MODIFIED = "PROPCONST SWEEP " *) 
  CARRY4 \result_reg[2]_i_1 
       (.CI(1'b0),
        .CO({\result_reg[2]_i_1_n_0 ,\NLW_result_reg[2]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\result_reg[2]_0 [1],\result[2]_i_3_n_0 ,\result_reg[2]_0 [0],1'b0}),
        .O({\result_reg[2]_i_1_n_4 ,temp_result[2:0]}),
        .S({S[1],\result[2]_i_6_n_0 ,\result[2]_i_7_n_0 ,S[0]}));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(temp_result[3]),
        .Q(\result_reg[15]_0 [3]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 9x8}}" *) 
  (* OPT_MODIFIED = "PROPCONST SWEEP " *) 
  CARRY4 \result_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\result_reg[3]_i_2_n_0 ,\NLW_result_reg[3]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\result_reg[3]_0 [1],\result[3]_i_4_n_0 ,\result_reg[3]_0 [0],1'b0}),
        .O({\c_pipe_out_reg[4] ,\result_reg[3]_i_2_n_5 ,\result_reg[3]_i_2_n_6 ,\result_reg[3]_i_2_n_7 }),
        .S({\result_reg[3]_1 [1],\result[3]_i_7_n_0 ,\result[3]_i_8_n_0 ,\result_reg[3]_1 [0]}));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(temp_result[4]),
        .Q(\result_reg[15]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(temp_result[5]),
        .Q(\result_reg[15]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(temp_result[6]),
        .Q(\result_reg[15]_0 [6]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 9x8}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \result_reg[6]_i_1 
       (.CI(1'b0),
        .CO({\result_reg[6]_i_1_n_0 ,\NLW_result_reg[6]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\result[6]_i_2_n_0 ,\result_reg[6]_i_3_n_6 ,\result_reg[6]_i_3_n_7 ,\result_reg[2]_i_1_n_4 }),
        .O({temp_result[6:4],\NLW_result_reg[6]_i_1_O_UNCONNECTED [0]}),
        .S({\result[6]_i_4_n_0 ,\result[6]_i_5_n_0 ,\result[6]_i_6_n_0 ,\result[6]_i_7_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 9x8}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \result_reg[6]_i_3 
       (.CI(\result_reg[2]_i_1_n_0 ),
        .CO({\result_reg[6]_i_3_n_0 ,\NLW_result_reg[6]_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\result_reg[6]_0 ),
        .O({\sum_pipe_out_reg[6] ,\result_reg[6]_i_3_n_6 ,\result_reg[6]_i_3_n_7 }),
        .S(\result_reg[6]_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(temp_result[7]),
        .Q(\result_reg[15]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(temp_result[8]),
        .Q(\result_reg[15]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(temp_result[9]),
        .Q(\result_reg[15]_0 [9]));
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
