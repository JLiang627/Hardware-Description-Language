// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sat Nov  1 15:11:00 2025
// Host        : DESKTOP-EBUR9LD running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/airlab/Documents/HDL/HW_2/VivodoUsed/pipelined/HDL_HW2/HDL_HW2.sim/sim_1/impl/func/xsim/testbench_func_impl.v
// Design      : hw2_pipe
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Stage1
   (S,
    Q,
    \c_out_reg[7]_0 ,
    \add_sub_out_reg[7]_0 ,
    \add_sub_out_reg[7]_1 ,
    \c_out_reg[4]_0 ,
    \add_sub_out_reg[7]_2 ,
    \add_sub_out_reg[1]_0 ,
    \add_sub_out_reg[5]_0 ,
    \add_sub_out_reg[7]_3 ,
    \add_sub_out_reg[7]_4 ,
    DI,
    \d_reg[15]_i_12 ,
    \d_reg[15]_i_14 ,
    \d_reg[15]_i_14_0 ,
    b_IBUF,
    s_IBUF,
    a_IBUF,
    D,
    CLK,
    AR);
  output [2:0]S;
  output [8:0]Q;
  output [7:0]\c_out_reg[7]_0 ;
  output [0:0]\add_sub_out_reg[7]_0 ;
  output [0:0]\add_sub_out_reg[7]_1 ;
  output [1:0]\c_out_reg[4]_0 ;
  output [0:0]\add_sub_out_reg[7]_2 ;
  output [0:0]\add_sub_out_reg[1]_0 ;
  output [2:0]\add_sub_out_reg[5]_0 ;
  output [1:0]\add_sub_out_reg[7]_3 ;
  output [0:0]\add_sub_out_reg[7]_4 ;
  input [0:0]DI;
  input \d_reg[15]_i_12 ;
  input [0:0]\d_reg[15]_i_14 ;
  input \d_reg[15]_i_14_0 ;
  input [7:0]b_IBUF;
  input s_IBUF;
  input [7:0]a_IBUF;
  input [7:0]D;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [7:0]D;
  wire [0:0]DI;
  wire [8:0]Q;
  wire [2:0]S;
  wire _carry__0_i_1_n_0;
  wire _carry__0_i_2_n_0;
  wire _carry__0_i_3_n_0;
  wire _carry__0_i_4_n_0;
  wire _carry__0_i_5_n_0;
  wire _carry__0_n_0;
  wire _carry_i_1_n_0;
  wire _carry_i_2_n_0;
  wire _carry_i_3_n_0;
  wire _carry_i_4_n_0;
  wire _carry_i_5_n_0;
  wire _carry_n_0;
  wire [7:0]a_IBUF;
  wire [0:0]\add_sub_out_reg[1]_0 ;
  wire [2:0]\add_sub_out_reg[5]_0 ;
  wire [0:0]\add_sub_out_reg[7]_0 ;
  wire [0:0]\add_sub_out_reg[7]_1 ;
  wire [0:0]\add_sub_out_reg[7]_2 ;
  wire [1:0]\add_sub_out_reg[7]_3 ;
  wire [0:0]\add_sub_out_reg[7]_4 ;
  wire [8:0]add_sub_result;
  wire [7:0]b_IBUF;
  wire [1:0]\c_out_reg[4]_0 ;
  wire [7:0]\c_out_reg[7]_0 ;
  wire \d_reg[15]_i_12 ;
  wire [0:0]\d_reg[15]_i_14 ;
  wire \d_reg[15]_i_14_0 ;
  wire s_IBUF;
  wire [2:0]NLW__carry_CO_UNCONNECTED;
  wire [2:0]NLW__carry__0_CO_UNCONNECTED;
  wire [3:0]NLW__carry__1_CO_UNCONNECTED;
  wire [3:1]NLW__carry__1_O_UNCONNECTED;

  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 _carry
       (.CI(1'b0),
        .CO({_carry_n_0,NLW__carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(_carry_i_1_n_0),
        .DI(a_IBUF[3:0]),
        .O(add_sub_result[3:0]),
        .S({_carry_i_2_n_0,_carry_i_3_n_0,_carry_i_4_n_0,_carry_i_5_n_0}));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 _carry__0
       (.CI(_carry_n_0),
        .CO({_carry__0_n_0,NLW__carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({_carry__0_i_1_n_0,a_IBUF[6:4]}),
        .O(add_sub_result[7:4]),
        .S({_carry__0_i_2_n_0,_carry__0_i_3_n_0,_carry__0_i_4_n_0,_carry__0_i_5_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    _carry__0_i_1
       (.I0(b_IBUF[7]),
        .I1(s_IBUF),
        .O(_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    _carry__0_i_2
       (.I0(b_IBUF[7]),
        .I1(s_IBUF),
        .I2(a_IBUF[7]),
        .O(_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    _carry__0_i_3
       (.I0(a_IBUF[6]),
        .I1(b_IBUF[6]),
        .I2(s_IBUF),
        .O(_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    _carry__0_i_4
       (.I0(a_IBUF[5]),
        .I1(b_IBUF[5]),
        .I2(s_IBUF),
        .O(_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    _carry__0_i_5
       (.I0(a_IBUF[4]),
        .I1(b_IBUF[4]),
        .I2(s_IBUF),
        .O(_carry__0_i_5_n_0));
  CARRY4 _carry__1
       (.CI(_carry__0_n_0),
        .CO(NLW__carry__1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW__carry__1_O_UNCONNECTED[3:1],add_sub_result[8]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT1 #(
    .INIT(2'h1)) 
    _carry_i_1
       (.I0(s_IBUF),
        .O(_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    _carry_i_2
       (.I0(a_IBUF[3]),
        .I1(b_IBUF[3]),
        .I2(s_IBUF),
        .O(_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    _carry_i_3
       (.I0(a_IBUF[2]),
        .I1(b_IBUF[2]),
        .I2(s_IBUF),
        .O(_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    _carry_i_4
       (.I0(a_IBUF[1]),
        .I1(b_IBUF[1]),
        .I2(s_IBUF),
        .O(_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    _carry_i_5
       (.I0(a_IBUF[0]),
        .I1(b_IBUF[0]),
        .I2(s_IBUF),
        .O(_carry_i_5_n_0));
  FDCE #(
    .INIT(1'b0)) 
    \add_sub_out_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(add_sub_result[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \add_sub_out_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(add_sub_result[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \add_sub_out_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(add_sub_result[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \add_sub_out_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(add_sub_result[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \add_sub_out_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(add_sub_result[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \add_sub_out_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(add_sub_result[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \add_sub_out_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(add_sub_result[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \add_sub_out_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(add_sub_result[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \add_sub_out_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(add_sub_result[8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \c_out_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[0]),
        .Q(\c_out_reg[7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \c_out_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[1]),
        .Q(\c_out_reg[7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \c_out_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[2]),
        .Q(\c_out_reg[7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \c_out_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[3]),
        .Q(\c_out_reg[7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \c_out_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[4]),
        .Q(\c_out_reg[7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \c_out_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[5]),
        .Q(\c_out_reg[7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \c_out_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[6]),
        .Q(\c_out_reg[7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \c_out_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[7]),
        .Q(\c_out_reg[7]_0 [7]));
  LUT4 #(
    .INIT(16'h0888)) 
    \d[15]_i_16 
       (.I0(Q[7]),
        .I1(\c_out_reg[7]_0 [6]),
        .I2(Q[6]),
        .I3(\c_out_reg[7]_0 [7]),
        .O(\add_sub_out_reg[7]_4 ));
  LUT5 #(
    .INIT(32'hA63355FF)) 
    \d[15]_i_21 
       (.I0(Q[7]),
        .I1(\c_out_reg[7]_0 [7]),
        .I2(Q[5]),
        .I3(\c_out_reg[7]_0 [6]),
        .I4(Q[6]),
        .O(\add_sub_out_reg[7]_3 [1]));
  LUT5 #(
    .INIT(32'hA63355FF)) 
    \d[15]_i_22 
       (.I0(Q[6]),
        .I1(\c_out_reg[7]_0 [7]),
        .I2(Q[4]),
        .I3(\c_out_reg[7]_0 [6]),
        .I4(Q[5]),
        .O(\add_sub_out_reg[7]_3 [0]));
  LUT4 #(
    .INIT(16'h0888)) 
    \d[15]_i_23 
       (.I0(Q[7]),
        .I1(\c_out_reg[7]_0 [5]),
        .I2(Q[8]),
        .I3(\c_out_reg[7]_0 [4]),
        .O(\add_sub_out_reg[7]_2 ));
  LUT4 #(
    .INIT(16'h43FF)) 
    \d[15]_i_25 
       (.I0(\c_out_reg[7]_0 [4]),
        .I1(Q[7]),
        .I2(Q[8]),
        .I3(\c_out_reg[7]_0 [5]),
        .O(\c_out_reg[4]_0 [1]));
  LUT6 #(
    .INIT(64'h25404FBFF03FCF3F)) 
    \d[15]_i_26 
       (.I0(\c_out_reg[7]_0 [3]),
        .I1(Q[6]),
        .I2(\c_out_reg[7]_0 [5]),
        .I3(Q[7]),
        .I4(\c_out_reg[7]_0 [4]),
        .I5(Q[8]),
        .O(\c_out_reg[4]_0 [0]));
  LUT4 #(
    .INIT(16'h0888)) 
    \d[15]_i_27 
       (.I0(Q[7]),
        .I1(\c_out_reg[7]_0 [2]),
        .I2(Q[8]),
        .I3(\c_out_reg[7]_0 [1]),
        .O(\add_sub_out_reg[7]_0 ));
  LUT4 #(
    .INIT(16'h43FF)) 
    \d[15]_i_30 
       (.I0(\c_out_reg[7]_0 [1]),
        .I1(Q[7]),
        .I2(Q[8]),
        .I3(\c_out_reg[7]_0 [2]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h25404FBFF03FCF3F)) 
    \d[15]_i_31 
       (.I0(\c_out_reg[7]_0 [0]),
        .I1(Q[6]),
        .I2(\c_out_reg[7]_0 [2]),
        .I3(Q[7]),
        .I4(\c_out_reg[7]_0 [1]),
        .I5(Q[8]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \d[15]_i_32 
       (.I0(DI),
        .I1(Q[7]),
        .I2(\c_out_reg[7]_0 [1]),
        .I3(\d_reg[15]_i_12 ),
        .I4(\c_out_reg[7]_0 [0]),
        .I5(Q[8]),
        .O(S[0]));
  LUT4 #(
    .INIT(16'h8FFF)) 
    \d[15]_i_36 
       (.I0(Q[1]),
        .I1(\c_out_reg[7]_0 [6]),
        .I2(Q[0]),
        .I3(\c_out_reg[7]_0 [7]),
        .O(\add_sub_out_reg[1]_0 ));
  LUT5 #(
    .INIT(32'hA63355FF)) 
    \d[15]_i_37 
       (.I0(Q[5]),
        .I1(\c_out_reg[7]_0 [7]),
        .I2(Q[3]),
        .I3(\c_out_reg[7]_0 [6]),
        .I4(Q[4]),
        .O(\add_sub_out_reg[5]_0 [2]));
  LUT5 #(
    .INIT(32'hA63355FF)) 
    \d[15]_i_38 
       (.I0(Q[4]),
        .I1(\c_out_reg[7]_0 [7]),
        .I2(Q[2]),
        .I3(\c_out_reg[7]_0 [6]),
        .I4(Q[3]),
        .O(\add_sub_out_reg[5]_0 [1]));
  LUT5 #(
    .INIT(32'h660C6AC0)) 
    \d[15]_i_39 
       (.I0(Q[3]),
        .I1(\c_out_reg[7]_0 [7]),
        .I2(Q[1]),
        .I3(\c_out_reg[7]_0 [6]),
        .I4(Q[2]),
        .O(\add_sub_out_reg[5]_0 [0]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \d[15]_i_45 
       (.I0(\d_reg[15]_i_14 ),
        .I1(Q[7]),
        .I2(\c_out_reg[7]_0 [4]),
        .I3(\d_reg[15]_i_14_0 ),
        .I4(\c_out_reg[7]_0 [3]),
        .I5(Q[8]),
        .O(\add_sub_out_reg[7]_1 ));
endmodule

module Stage2
   (DI,
    \add_sub_out_reg[5] ,
    \c_out_reg[2] ,
    \c_out_reg[5] ,
    \d_reg[15]_0 ,
    \d[11]_i_4_0 ,
    S,
    \d[11]_i_4_1 ,
    \d[15]_i_4_0 ,
    \d[15]_i_4_1 ,
    \d[11]_i_4_2 ,
    \d[11]_i_4_3 ,
    \d[15]_i_4_2 ,
    \d[15]_i_4_3 ,
    \d_reg[15]_i_10_0 ,
    Q,
    CLK,
    AR);
  output [0:0]DI;
  output [0:0]\add_sub_out_reg[5] ;
  output \c_out_reg[2] ;
  output \c_out_reg[5] ;
  output [15:0]\d_reg[15]_0 ;
  input [0:0]\d[11]_i_4_0 ;
  input [2:0]S;
  input [0:0]\d[11]_i_4_1 ;
  input [0:0]\d[15]_i_4_0 ;
  input [1:0]\d[15]_i_4_1 ;
  input [0:0]\d[11]_i_4_2 ;
  input [2:0]\d[11]_i_4_3 ;
  input [0:0]\d[15]_i_4_2 ;
  input [1:0]\d[15]_i_4_3 ;
  input [7:0]\d_reg[15]_i_10_0 ;
  input [8:0]Q;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]DI;
  wire [8:0]Q;
  wire [2:0]S;
  wire [0:0]\add_sub_out_reg[5] ;
  wire \c_out_reg[2] ;
  wire \c_out_reg[5] ;
  wire \d[11]_i_12_n_0 ;
  wire \d[11]_i_13_n_0 ;
  wire \d[11]_i_14_n_0 ;
  wire \d[11]_i_15_n_0 ;
  wire \d[11]_i_16_n_0 ;
  wire \d[11]_i_17_n_0 ;
  wire \d[11]_i_18_n_0 ;
  wire \d[11]_i_19_n_0 ;
  wire \d[11]_i_20_n_0 ;
  wire \d[11]_i_21_n_0 ;
  wire \d[11]_i_22_n_0 ;
  wire \d[11]_i_23_n_0 ;
  wire \d[11]_i_2_n_0 ;
  wire \d[11]_i_3_n_0 ;
  wire [0:0]\d[11]_i_4_0 ;
  wire [0:0]\d[11]_i_4_1 ;
  wire [0:0]\d[11]_i_4_2 ;
  wire [2:0]\d[11]_i_4_3 ;
  wire \d[11]_i_4_n_0 ;
  wire \d[11]_i_5_n_0 ;
  wire \d[11]_i_6_n_0 ;
  wire \d[11]_i_7_n_0 ;
  wire \d[11]_i_8_n_0 ;
  wire \d[11]_i_9_n_0 ;
  wire \d[15]_i_15_n_0 ;
  wire \d[15]_i_17_n_0 ;
  wire \d[15]_i_18_n_0 ;
  wire \d[15]_i_19_n_0 ;
  wire \d[15]_i_20_n_0 ;
  wire \d[15]_i_24_n_0 ;
  wire \d[15]_i_28_n_0 ;
  wire \d[15]_i_2_n_0 ;
  wire \d[15]_i_33_n_0 ;
  wire \d[15]_i_34_n_0 ;
  wire \d[15]_i_35_n_0 ;
  wire \d[15]_i_3_n_0 ;
  wire \d[15]_i_40_n_0 ;
  wire \d[15]_i_42_n_0 ;
  wire \d[15]_i_43_n_0 ;
  wire \d[15]_i_44_n_0 ;
  wire \d[15]_i_46_n_0 ;
  wire \d[15]_i_47_n_0 ;
  wire \d[15]_i_48_n_0 ;
  wire [0:0]\d[15]_i_4_0 ;
  wire [1:0]\d[15]_i_4_1 ;
  wire [0:0]\d[15]_i_4_2 ;
  wire [1:0]\d[15]_i_4_3 ;
  wire \d[15]_i_4_n_0 ;
  wire \d[15]_i_51_n_0 ;
  wire \d[15]_i_52_n_0 ;
  wire \d[15]_i_53_n_0 ;
  wire \d[15]_i_5_n_0 ;
  wire \d[15]_i_6_n_0 ;
  wire \d[15]_i_7_n_0 ;
  wire \d[15]_i_8_n_0 ;
  wire \d[15]_i_9_n_0 ;
  wire \d[3]_i_10_n_0 ;
  wire \d[3]_i_11_n_0 ;
  wire \d[3]_i_12_n_0 ;
  wire \d[3]_i_13_n_0 ;
  wire \d[3]_i_15_n_0 ;
  wire \d[3]_i_16_n_0 ;
  wire \d[3]_i_3_n_0 ;
  wire \d[3]_i_7_n_0 ;
  wire \d[3]_i_8_n_0 ;
  wire \d[3]_i_9_n_0 ;
  wire \d[7]_i_10_n_0 ;
  wire \d[7]_i_11_n_0 ;
  wire \d[7]_i_12_n_0 ;
  wire \d[7]_i_13_n_0 ;
  wire \d[7]_i_14_n_0 ;
  wire \d[7]_i_15_n_0 ;
  wire \d[7]_i_17_n_0 ;
  wire \d[7]_i_18_n_0 ;
  wire \d[7]_i_19_n_0 ;
  wire \d[7]_i_20_n_0 ;
  wire \d[7]_i_2_n_0 ;
  wire \d[7]_i_4_n_0 ;
  wire \d[7]_i_5_n_0 ;
  wire \d[7]_i_6_n_0 ;
  wire \d[7]_i_7_n_0 ;
  wire \d[7]_i_8_n_0 ;
  wire \d[7]_i_9_n_0 ;
  wire \d_reg[11]_i_10_n_4 ;
  wire \d_reg[11]_i_10_n_5 ;
  wire \d_reg[11]_i_11_n_0 ;
  wire \d_reg[11]_i_11_n_4 ;
  wire \d_reg[11]_i_11_n_5 ;
  wire \d_reg[11]_i_11_n_6 ;
  wire \d_reg[11]_i_11_n_7 ;
  wire \d_reg[11]_i_1_n_0 ;
  wire \d_reg[11]_i_1_n_4 ;
  wire \d_reg[11]_i_1_n_5 ;
  wire \d_reg[11]_i_1_n_6 ;
  wire \d_reg[11]_i_1_n_7 ;
  wire [15:0]\d_reg[15]_0 ;
  wire [7:0]\d_reg[15]_i_10_0 ;
  wire \d_reg[15]_i_10_n_4 ;
  wire \d_reg[15]_i_10_n_5 ;
  wire \d_reg[15]_i_10_n_6 ;
  wire \d_reg[15]_i_10_n_7 ;
  wire \d_reg[15]_i_11_n_5 ;
  wire \d_reg[15]_i_11_n_6 ;
  wire \d_reg[15]_i_11_n_7 ;
  wire \d_reg[15]_i_12_n_4 ;
  wire \d_reg[15]_i_12_n_5 ;
  wire \d_reg[15]_i_12_n_6 ;
  wire \d_reg[15]_i_12_n_7 ;
  wire \d_reg[15]_i_13_n_0 ;
  wire \d_reg[15]_i_13_n_4 ;
  wire \d_reg[15]_i_13_n_5 ;
  wire \d_reg[15]_i_13_n_6 ;
  wire \d_reg[15]_i_13_n_7 ;
  wire \d_reg[15]_i_14_n_0 ;
  wire \d_reg[15]_i_14_n_4 ;
  wire \d_reg[15]_i_14_n_5 ;
  wire \d_reg[15]_i_14_n_6 ;
  wire \d_reg[15]_i_14_n_7 ;
  wire \d_reg[15]_i_1_n_4 ;
  wire \d_reg[15]_i_1_n_5 ;
  wire \d_reg[15]_i_1_n_6 ;
  wire \d_reg[15]_i_1_n_7 ;
  wire \d_reg[3]_i_14_n_4 ;
  wire \d_reg[3]_i_1_n_0 ;
  wire \d_reg[3]_i_1_n_4 ;
  wire \d_reg[3]_i_1_n_5 ;
  wire \d_reg[3]_i_1_n_6 ;
  wire \d_reg[3]_i_1_n_7 ;
  wire \d_reg[3]_i_2_n_0 ;
  wire \d_reg[3]_i_2_n_4 ;
  wire \d_reg[3]_i_2_n_5 ;
  wire \d_reg[3]_i_2_n_6 ;
  wire \d_reg[3]_i_2_n_7 ;
  wire \d_reg[7]_i_1_n_0 ;
  wire \d_reg[7]_i_1_n_4 ;
  wire \d_reg[7]_i_1_n_5 ;
  wire \d_reg[7]_i_1_n_6 ;
  wire \d_reg[7]_i_1_n_7 ;
  wire \d_reg[7]_i_3_n_0 ;
  wire \d_reg[7]_i_3_n_4 ;
  wire \d_reg[7]_i_3_n_5 ;
  wire \d_reg[7]_i_3_n_6 ;
  wire \d_reg[7]_i_3_n_7 ;
  wire [2:0]\NLW_d_reg[11]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_d_reg[11]_i_10_CO_UNCONNECTED ;
  wire [1:0]\NLW_d_reg[11]_i_10_O_UNCONNECTED ;
  wire [2:0]\NLW_d_reg[11]_i_11_CO_UNCONNECTED ;
  wire [3:0]\NLW_d_reg[15]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_d_reg[15]_i_10_CO_UNCONNECTED ;
  wire [3:0]\NLW_d_reg[15]_i_11_CO_UNCONNECTED ;
  wire [3:3]\NLW_d_reg[15]_i_11_O_UNCONNECTED ;
  wire [3:0]\NLW_d_reg[15]_i_12_CO_UNCONNECTED ;
  wire [2:0]\NLW_d_reg[15]_i_13_CO_UNCONNECTED ;
  wire [2:0]\NLW_d_reg[15]_i_14_CO_UNCONNECTED ;
  wire [2:0]\NLW_d_reg[3]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_d_reg[3]_i_14_CO_UNCONNECTED ;
  wire [2:0]\NLW_d_reg[3]_i_14_O_UNCONNECTED ;
  wire [2:0]\NLW_d_reg[3]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_d_reg[7]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_d_reg[7]_i_3_CO_UNCONNECTED ;

  LUT4 #(
    .INIT(16'h7888)) 
    \d[11]_i_12 
       (.I0(Q[1]),
        .I1(\d_reg[15]_i_10_0 [6]),
        .I2(Q[0]),
        .I3(\d_reg[15]_i_10_0 [7]),
        .O(\d[11]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \d[11]_i_13 
       (.I0(\d_reg[15]_i_10_0 [6]),
        .I1(Q[0]),
        .O(\d[11]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \d[11]_i_14 
       (.I0(Q[1]),
        .I1(\d_reg[15]_i_10_0 [5]),
        .I2(Q[2]),
        .I3(\d_reg[15]_i_10_0 [4]),
        .I4(Q[3]),
        .I5(\d_reg[15]_i_10_0 [3]),
        .O(\d[11]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \d[11]_i_15 
       (.I0(Q[3]),
        .I1(\d_reg[15]_i_10_0 [3]),
        .I2(\d_reg[15]_i_10_0 [5]),
        .I3(Q[1]),
        .I4(\d_reg[15]_i_10_0 [4]),
        .I5(Q[2]),
        .O(\d[11]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \d[11]_i_16 
       (.I0(Q[1]),
        .I1(\d_reg[15]_i_10_0 [4]),
        .I2(Q[0]),
        .I3(\d_reg[15]_i_10_0 [5]),
        .O(\d[11]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \d[11]_i_17 
       (.I0(\d_reg[15]_i_10_0 [3]),
        .I1(Q[1]),
        .O(\d[11]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    \d[11]_i_18 
       (.I0(\d[11]_i_14_n_0 ),
        .I1(Q[3]),
        .I2(\d_reg[15]_i_10_0 [4]),
        .I3(\d[11]_i_22_n_0 ),
        .I4(\d_reg[15]_i_10_0 [3]),
        .I5(Q[4]),
        .O(\d[11]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h636C6C6C936C6C6C)) 
    \d[11]_i_19 
       (.I0(Q[2]),
        .I1(\d[11]_i_23_n_0 ),
        .I2(\d_reg[15]_i_10_0 [4]),
        .I3(Q[1]),
        .I4(\d_reg[15]_i_10_0 [5]),
        .I5(Q[0]),
        .O(\d[11]_i_19_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \d[11]_i_2 
       (.I0(\d_reg[15]_i_13_n_5 ),
        .I1(\d_reg[15]_i_14_n_5 ),
        .I2(\d_reg[15]_i_12_n_5 ),
        .O(\d[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \d[11]_i_20 
       (.I0(\d_reg[15]_i_10_0 [5]),
        .I1(Q[0]),
        .I2(\d_reg[15]_i_10_0 [4]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(\d_reg[15]_i_10_0 [3]),
        .O(\d[11]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \d[11]_i_21 
       (.I0(Q[1]),
        .I1(\d_reg[15]_i_10_0 [3]),
        .I2(Q[0]),
        .I3(\d_reg[15]_i_10_0 [4]),
        .O(\d[11]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \d[11]_i_22 
       (.I0(\d_reg[15]_i_10_0 [5]),
        .I1(Q[2]),
        .O(\d[11]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \d[11]_i_23 
       (.I0(\d_reg[15]_i_10_0 [3]),
        .I1(Q[3]),
        .O(\d[11]_i_23_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \d[11]_i_3 
       (.I0(\d_reg[15]_i_13_n_6 ),
        .I1(\d_reg[15]_i_14_n_6 ),
        .I2(\d_reg[15]_i_12_n_6 ),
        .O(\d[11]_i_3_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \d[11]_i_4 
       (.I0(\d_reg[15]_i_13_n_7 ),
        .I1(\d_reg[15]_i_14_n_7 ),
        .I2(\d_reg[15]_i_12_n_7 ),
        .O(\d[11]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \d[11]_i_5 
       (.I0(\d_reg[11]_i_10_n_4 ),
        .I1(\d_reg[11]_i_11_n_4 ),
        .I2(\d_reg[7]_i_3_n_4 ),
        .O(\d[11]_i_5_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \d[11]_i_6 
       (.I0(\d_reg[15]_i_13_n_4 ),
        .I1(\d_reg[15]_i_14_n_4 ),
        .I2(\d_reg[15]_i_12_n_4 ),
        .I3(\d[11]_i_2_n_0 ),
        .O(\d[11]_i_6_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \d[11]_i_7 
       (.I0(\d_reg[15]_i_13_n_5 ),
        .I1(\d_reg[15]_i_14_n_5 ),
        .I2(\d_reg[15]_i_12_n_5 ),
        .I3(\d[11]_i_3_n_0 ),
        .O(\d[11]_i_7_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \d[11]_i_8 
       (.I0(\d_reg[15]_i_13_n_6 ),
        .I1(\d_reg[15]_i_14_n_6 ),
        .I2(\d_reg[15]_i_12_n_6 ),
        .I3(\d[11]_i_4_n_0 ),
        .O(\d[11]_i_8_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \d[11]_i_9 
       (.I0(\d_reg[15]_i_13_n_7 ),
        .I1(\d_reg[15]_i_14_n_7 ),
        .I2(\d_reg[15]_i_12_n_7 ),
        .I3(\d[11]_i_5_n_0 ),
        .O(\d[11]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h0777)) 
    \d[15]_i_15 
       (.I0(Q[7]),
        .I1(\d_reg[15]_i_10_0 [7]),
        .I2(Q[8]),
        .I3(\d_reg[15]_i_10_0 [6]),
        .O(\d[15]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h8777)) 
    \d[15]_i_17 
       (.I0(\d_reg[15]_i_10_0 [7]),
        .I1(Q[6]),
        .I2(\d_reg[15]_i_10_0 [6]),
        .I3(Q[7]),
        .O(\d[15]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h8777)) 
    \d[15]_i_18 
       (.I0(\d_reg[15]_i_10_0 [7]),
        .I1(Q[5]),
        .I2(\d_reg[15]_i_10_0 [6]),
        .I3(Q[6]),
        .O(\d[15]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hE35F)) 
    \d[15]_i_19 
       (.I0(\d_reg[15]_i_10_0 [6]),
        .I1(Q[7]),
        .I2(Q[8]),
        .I3(\d_reg[15]_i_10_0 [7]),
        .O(\d[15]_i_19_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \d[15]_i_2 
       (.I0(\d_reg[15]_i_10_n_5 ),
        .I1(\d_reg[15]_i_11_n_5 ),
        .O(\d[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h4FC0B0C0)) 
    \d[15]_i_20 
       (.I0(Q[6]),
        .I1(\d_reg[15]_i_10_0 [7]),
        .I2(Q[7]),
        .I3(\d_reg[15]_i_10_0 [6]),
        .I4(Q[8]),
        .O(\d[15]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h8000F888F888F888)) 
    \d[15]_i_24 
       (.I0(Q[6]),
        .I1(\d_reg[15]_i_10_0 [5]),
        .I2(Q[7]),
        .I3(\d_reg[15]_i_10_0 [4]),
        .I4(Q[8]),
        .I5(\d_reg[15]_i_10_0 [3]),
        .O(\d[15]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h8000F888F888F888)) 
    \d[15]_i_28 
       (.I0(Q[6]),
        .I1(\d_reg[15]_i_10_0 [2]),
        .I2(Q[7]),
        .I3(\d_reg[15]_i_10_0 [1]),
        .I4(Q[8]),
        .I5(\d_reg[15]_i_10_0 [0]),
        .O(\d[15]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \d[15]_i_29 
       (.I0(Q[5]),
        .I1(\d_reg[15]_i_10_0 [2]),
        .I2(Q[6]),
        .I3(\d_reg[15]_i_10_0 [1]),
        .I4(Q[7]),
        .I5(\d_reg[15]_i_10_0 [0]),
        .O(DI));
  (* HLUTNM = "lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \d[15]_i_3 
       (.I0(\d_reg[15]_i_10_n_6 ),
        .I1(\d_reg[15]_i_11_n_6 ),
        .O(\d[15]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8777)) 
    \d[15]_i_33 
       (.I0(\d_reg[15]_i_10_0 [7]),
        .I1(Q[4]),
        .I2(\d_reg[15]_i_10_0 [6]),
        .I3(Q[5]),
        .O(\d[15]_i_33_n_0 ));
  LUT4 #(
    .INIT(16'h8777)) 
    \d[15]_i_34 
       (.I0(\d_reg[15]_i_10_0 [7]),
        .I1(Q[3]),
        .I2(\d_reg[15]_i_10_0 [6]),
        .I3(Q[4]),
        .O(\d[15]_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h8777)) 
    \d[15]_i_35 
       (.I0(\d_reg[15]_i_10_0 [7]),
        .I1(Q[2]),
        .I2(\d_reg[15]_i_10_0 [6]),
        .I3(Q[3]),
        .O(\d[15]_i_35_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  (* OPT_MODIFIED = "PROPCONST " *) 
  LUT2 #(
    .INIT(4'h8)) 
    \d[15]_i_4 
       (.I0(\d_reg[15]_i_10_n_7 ),
        .I1(\d_reg[15]_i_11_n_7 ),
        .O(\d[15]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hC8B737B7)) 
    \d[15]_i_40 
       (.I0(Q[0]),
        .I1(\d_reg[15]_i_10_0 [7]),
        .I2(Q[1]),
        .I3(\d_reg[15]_i_10_0 [6]),
        .I4(Q[2]),
        .O(\d[15]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \d[15]_i_41 
       (.I0(Q[5]),
        .I1(\d_reg[15]_i_10_0 [5]),
        .I2(Q[6]),
        .I3(\d_reg[15]_i_10_0 [4]),
        .I4(Q[7]),
        .I5(\d_reg[15]_i_10_0 [3]),
        .O(\add_sub_out_reg[5] ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \d[15]_i_42 
       (.I0(Q[4]),
        .I1(\d_reg[15]_i_10_0 [5]),
        .I2(Q[5]),
        .I3(\d_reg[15]_i_10_0 [4]),
        .I4(Q[6]),
        .I5(\d_reg[15]_i_10_0 [3]),
        .O(\d[15]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \d[15]_i_43 
       (.I0(Q[3]),
        .I1(\d_reg[15]_i_10_0 [5]),
        .I2(Q[4]),
        .I3(\d_reg[15]_i_10_0 [4]),
        .I4(Q[5]),
        .I5(\d_reg[15]_i_10_0 [3]),
        .O(\d[15]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \d[15]_i_44 
       (.I0(Q[2]),
        .I1(\d_reg[15]_i_10_0 [5]),
        .I2(Q[3]),
        .I3(\d_reg[15]_i_10_0 [4]),
        .I4(Q[4]),
        .I5(\d_reg[15]_i_10_0 [3]),
        .O(\d[15]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    \d[15]_i_46 
       (.I0(\d[15]_i_42_n_0 ),
        .I1(Q[6]),
        .I2(\d_reg[15]_i_10_0 [4]),
        .I3(\d[15]_i_51_n_0 ),
        .I4(\d_reg[15]_i_10_0 [3]),
        .I5(Q[7]),
        .O(\d[15]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    \d[15]_i_47 
       (.I0(\d[15]_i_43_n_0 ),
        .I1(Q[5]),
        .I2(\d_reg[15]_i_10_0 [4]),
        .I3(\d[15]_i_52_n_0 ),
        .I4(\d_reg[15]_i_10_0 [3]),
        .I5(Q[6]),
        .O(\d[15]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    \d[15]_i_48 
       (.I0(\d[15]_i_44_n_0 ),
        .I1(Q[4]),
        .I2(\d_reg[15]_i_10_0 [4]),
        .I3(\d[15]_i_53_n_0 ),
        .I4(\d_reg[15]_i_10_0 [3]),
        .I5(Q[5]),
        .O(\d[15]_i_48_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \d[15]_i_49 
       (.I0(\d_reg[15]_i_10_0 [2]),
        .I1(Q[6]),
        .O(\c_out_reg[2] ));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \d[15]_i_5 
       (.I0(\d_reg[15]_i_13_n_4 ),
        .I1(\d_reg[15]_i_14_n_4 ),
        .I2(\d_reg[15]_i_12_n_4 ),
        .O(\d[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \d[15]_i_50 
       (.I0(\d_reg[15]_i_10_0 [5]),
        .I1(Q[6]),
        .O(\c_out_reg[5] ));
  LUT2 #(
    .INIT(4'h8)) 
    \d[15]_i_51 
       (.I0(\d_reg[15]_i_10_0 [5]),
        .I1(Q[5]),
        .O(\d[15]_i_51_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \d[15]_i_52 
       (.I0(\d_reg[15]_i_10_0 [5]),
        .I1(Q[4]),
        .O(\d[15]_i_52_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \d[15]_i_53 
       (.I0(\d_reg[15]_i_10_0 [5]),
        .I1(Q[3]),
        .O(\d[15]_i_53_n_0 ));
  (* OPT_MODIFIED = "PROPCONST " *) 
  LUT2 #(
    .INIT(4'h6)) 
    \d[15]_i_6 
       (.I0(\d[15]_i_2_n_0 ),
        .I1(\d_reg[15]_i_10_n_4 ),
        .O(\d[15]_i_6_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \d[15]_i_7 
       (.I0(\d_reg[15]_i_10_n_5 ),
        .I1(\d_reg[15]_i_11_n_5 ),
        .I2(\d[15]_i_3_n_0 ),
        .O(\d[15]_i_7_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \d[15]_i_8 
       (.I0(\d_reg[15]_i_10_n_6 ),
        .I1(\d_reg[15]_i_11_n_6 ),
        .I2(\d[15]_i_4_n_0 ),
        .O(\d[15]_i_8_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  (* OPT_MODIFIED = "PROPCONST " *) 
  LUT3 #(
    .INIT(8'h96)) 
    \d[15]_i_9 
       (.I0(\d_reg[15]_i_10_n_7 ),
        .I1(\d_reg[15]_i_11_n_7 ),
        .I2(\d[15]_i_5_n_0 ),
        .O(\d[15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h636C6C6C936C6C6C)) 
    \d[3]_i_10 
       (.I0(Q[2]),
        .I1(\d[3]_i_15_n_0 ),
        .I2(\d_reg[15]_i_10_0 [1]),
        .I3(Q[1]),
        .I4(\d_reg[15]_i_10_0 [2]),
        .I5(Q[0]),
        .O(\d[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \d[3]_i_11 
       (.I0(\d_reg[15]_i_10_0 [2]),
        .I1(Q[0]),
        .I2(\d_reg[15]_i_10_0 [1]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(\d_reg[15]_i_10_0 [0]),
        .O(\d[3]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \d[3]_i_12 
       (.I0(Q[1]),
        .I1(\d_reg[15]_i_10_0 [0]),
        .I2(Q[0]),
        .I3(\d_reg[15]_i_10_0 [1]),
        .O(\d[3]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \d[3]_i_13 
       (.I0(\d_reg[15]_i_10_0 [0]),
        .I1(Q[0]),
        .O(\d[3]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \d[3]_i_15 
       (.I0(\d_reg[15]_i_10_0 [0]),
        .I1(Q[3]),
        .O(\d[3]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \d[3]_i_16 
       (.I0(\d_reg[15]_i_10_0 [3]),
        .I1(Q[0]),
        .O(\d[3]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \d[3]_i_3 
       (.I0(\d_reg[3]_i_14_n_4 ),
        .I1(\d_reg[3]_i_2_n_4 ),
        .O(\d[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \d[3]_i_7 
       (.I0(Q[3]),
        .I1(\d_reg[15]_i_10_0 [0]),
        .I2(\d_reg[15]_i_10_0 [2]),
        .I3(Q[1]),
        .I4(\d_reg[15]_i_10_0 [1]),
        .I5(Q[2]),
        .O(\d[3]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \d[3]_i_8 
       (.I0(Q[1]),
        .I1(\d_reg[15]_i_10_0 [1]),
        .I2(Q[0]),
        .I3(\d_reg[15]_i_10_0 [2]),
        .O(\d[3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \d[3]_i_9 
       (.I0(\d_reg[15]_i_10_0 [0]),
        .I1(Q[1]),
        .O(\d[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \d[7]_i_10 
       (.I0(Q[2]),
        .I1(\d_reg[15]_i_10_0 [2]),
        .I2(Q[3]),
        .I3(\d_reg[15]_i_10_0 [1]),
        .I4(Q[4]),
        .I5(\d_reg[15]_i_10_0 [0]),
        .O(\d[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \d[7]_i_11 
       (.I0(Q[1]),
        .I1(\d_reg[15]_i_10_0 [2]),
        .I2(Q[2]),
        .I3(\d_reg[15]_i_10_0 [1]),
        .I4(Q[3]),
        .I5(\d_reg[15]_i_10_0 [0]),
        .O(\d[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    \d[7]_i_12 
       (.I0(\d[7]_i_8_n_0 ),
        .I1(Q[6]),
        .I2(\d_reg[15]_i_10_0 [1]),
        .I3(\d[7]_i_17_n_0 ),
        .I4(\d_reg[15]_i_10_0 [0]),
        .I5(Q[7]),
        .O(\d[7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    \d[7]_i_13 
       (.I0(\d[7]_i_9_n_0 ),
        .I1(Q[5]),
        .I2(\d_reg[15]_i_10_0 [1]),
        .I3(\d[7]_i_18_n_0 ),
        .I4(\d_reg[15]_i_10_0 [0]),
        .I5(Q[6]),
        .O(\d[7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    \d[7]_i_14 
       (.I0(\d[7]_i_10_n_0 ),
        .I1(Q[4]),
        .I2(\d_reg[15]_i_10_0 [1]),
        .I3(\d[7]_i_19_n_0 ),
        .I4(\d_reg[15]_i_10_0 [0]),
        .I5(Q[5]),
        .O(\d[7]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    \d[7]_i_15 
       (.I0(\d[7]_i_11_n_0 ),
        .I1(Q[3]),
        .I2(\d_reg[15]_i_10_0 [1]),
        .I3(\d[7]_i_20_n_0 ),
        .I4(\d_reg[15]_i_10_0 [0]),
        .I5(Q[4]),
        .O(\d[7]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \d[7]_i_17 
       (.I0(\d_reg[15]_i_10_0 [2]),
        .I1(Q[5]),
        .O(\d[7]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \d[7]_i_18 
       (.I0(\d_reg[15]_i_10_0 [2]),
        .I1(Q[4]),
        .O(\d[7]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \d[7]_i_19 
       (.I0(\d_reg[15]_i_10_0 [2]),
        .I1(Q[3]),
        .O(\d[7]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \d[7]_i_2 
       (.I0(\d_reg[7]_i_3_n_4 ),
        .I1(\d_reg[11]_i_10_n_4 ),
        .I2(\d_reg[11]_i_11_n_4 ),
        .O(\d[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \d[7]_i_20 
       (.I0(\d_reg[15]_i_10_0 [2]),
        .I1(Q[2]),
        .O(\d[7]_i_20_n_0 ));
  (* OPT_MODIFIED = "PROPCONST " *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \d[7]_i_4 
       (.I0(\d[7]_i_2_n_0 ),
        .I1(\d_reg[11]_i_11_n_5 ),
        .I2(\d_reg[11]_i_10_n_5 ),
        .O(\d[7]_i_4_n_0 ));
  (* OPT_MODIFIED = "PROPCONST " *) 
  LUT3 #(
    .INIT(8'h96)) 
    \d[7]_i_5 
       (.I0(\d_reg[11]_i_10_n_5 ),
        .I1(\d_reg[11]_i_11_n_5 ),
        .I2(\d_reg[7]_i_3_n_5 ),
        .O(\d[7]_i_5_n_0 ));
  (* OPT_MODIFIED = "PROPCONST " *) 
  LUT2 #(
    .INIT(4'h6)) 
    \d[7]_i_6 
       (.I0(\d_reg[7]_i_3_n_6 ),
        .I1(\d_reg[11]_i_11_n_6 ),
        .O(\d[7]_i_6_n_0 ));
  (* OPT_MODIFIED = "PROPCONST " *) 
  LUT2 #(
    .INIT(4'h6)) 
    \d[7]_i_7 
       (.I0(\d_reg[11]_i_11_n_7 ),
        .I1(\d_reg[7]_i_3_n_7 ),
        .O(\d[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \d[7]_i_8 
       (.I0(Q[4]),
        .I1(\d_reg[15]_i_10_0 [2]),
        .I2(Q[5]),
        .I3(\d_reg[15]_i_10_0 [1]),
        .I4(Q[6]),
        .I5(\d_reg[15]_i_10_0 [0]),
        .O(\d[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \d[7]_i_9 
       (.I0(Q[3]),
        .I1(\d_reg[15]_i_10_0 [2]),
        .I2(Q[4]),
        .I3(\d_reg[15]_i_10_0 [1]),
        .I4(Q[5]),
        .I5(\d_reg[15]_i_10_0 [0]),
        .O(\d[7]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \d_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\d_reg[3]_i_1_n_7 ),
        .Q(\d_reg[15]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \d_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\d_reg[11]_i_1_n_5 ),
        .Q(\d_reg[15]_0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \d_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\d_reg[11]_i_1_n_4 ),
        .Q(\d_reg[15]_0 [11]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 9x8}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \d_reg[11]_i_1 
       (.CI(\d_reg[7]_i_1_n_0 ),
        .CO({\d_reg[11]_i_1_n_0 ,\NLW_d_reg[11]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\d[11]_i_2_n_0 ,\d[11]_i_3_n_0 ,\d[11]_i_4_n_0 ,\d[11]_i_5_n_0 }),
        .O({\d_reg[11]_i_1_n_4 ,\d_reg[11]_i_1_n_5 ,\d_reg[11]_i_1_n_6 ,\d_reg[11]_i_1_n_7 }),
        .S({\d[11]_i_6_n_0 ,\d[11]_i_7_n_0 ,\d[11]_i_8_n_0 ,\d[11]_i_9_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 9x8}}" *) 
  (* OPT_MODIFIED = "PROPCONST " *) 
  CARRY4 \d_reg[11]_i_10 
       (.CI(1'b0),
        .CO(\NLW_d_reg[11]_i_10_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\d_reg[11]_i_10_n_4 ,\d_reg[11]_i_10_n_5 ,\NLW_d_reg[11]_i_10_O_UNCONNECTED [1:0]}),
        .S({\d[11]_i_12_n_0 ,\d[11]_i_13_n_0 ,1'b0,1'b0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 9x8}}" *) 
  (* OPT_MODIFIED = "PROPCONST SWEEP " *) 
  CARRY4 \d_reg[11]_i_11 
       (.CI(1'b0),
        .CO({\d_reg[11]_i_11_n_0 ,\NLW_d_reg[11]_i_11_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\d[11]_i_14_n_0 ,\d[11]_i_15_n_0 ,\d[11]_i_16_n_0 ,\d[11]_i_17_n_0 }),
        .O({\d_reg[11]_i_11_n_4 ,\d_reg[11]_i_11_n_5 ,\d_reg[11]_i_11_n_6 ,\d_reg[11]_i_11_n_7 }),
        .S({\d[11]_i_18_n_0 ,\d[11]_i_19_n_0 ,\d[11]_i_20_n_0 ,\d[11]_i_21_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \d_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\d_reg[15]_i_1_n_7 ),
        .Q(\d_reg[15]_0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \d_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\d_reg[15]_i_1_n_6 ),
        .Q(\d_reg[15]_0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \d_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\d_reg[15]_i_1_n_5 ),
        .Q(\d_reg[15]_0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \d_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\d_reg[15]_i_1_n_4 ),
        .Q(\d_reg[15]_0 [15]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 9x8}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \d_reg[15]_i_1 
       (.CI(\d_reg[11]_i_1_n_0 ),
        .CO(\NLW_d_reg[15]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({\d[15]_i_2_n_0 ,\d[15]_i_3_n_0 ,\d[15]_i_4_n_0 ,\d[15]_i_5_n_0 }),
        .O({\d_reg[15]_i_1_n_4 ,\d_reg[15]_i_1_n_5 ,\d_reg[15]_i_1_n_6 ,\d_reg[15]_i_1_n_7 }),
        .S({\d[15]_i_6_n_0 ,\d[15]_i_7_n_0 ,\d[15]_i_8_n_0 ,\d[15]_i_9_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 9x8}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \d_reg[15]_i_10 
       (.CI(\d_reg[15]_i_13_n_0 ),
        .CO(\NLW_d_reg[15]_i_10_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({\d[15]_i_15_n_0 ,\d[15]_i_4_2 ,\d[15]_i_17_n_0 ,\d[15]_i_18_n_0 }),
        .O({\d_reg[15]_i_10_n_4 ,\d_reg[15]_i_10_n_5 ,\d_reg[15]_i_10_n_6 ,\d_reg[15]_i_10_n_7 }),
        .S({\d[15]_i_19_n_0 ,\d[15]_i_20_n_0 ,\d[15]_i_4_3 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 9x8}}" *) 
  (* OPT_MODIFIED = "PROPCONST SWEEP " *) 
  CARRY4 \d_reg[15]_i_11 
       (.CI(\d_reg[15]_i_14_n_0 ),
        .CO(\NLW_d_reg[15]_i_11_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\d[15]_i_4_0 ,\d[15]_i_24_n_0 }),
        .O({\NLW_d_reg[15]_i_11_O_UNCONNECTED [3],\d_reg[15]_i_11_n_5 ,\d_reg[15]_i_11_n_6 ,\d_reg[15]_i_11_n_7 }),
        .S({1'b0,1'b0,\d[15]_i_4_1 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 9x8}}" *) 
  (* OPT_MODIFIED = "PROPCONST SWEEP " *) 
  CARRY4 \d_reg[15]_i_12 
       (.CI(\d_reg[7]_i_3_n_0 ),
        .CO(\NLW_d_reg[15]_i_12_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\d[11]_i_4_0 ,\d[15]_i_28_n_0 ,DI}),
        .O({\d_reg[15]_i_12_n_4 ,\d_reg[15]_i_12_n_5 ,\d_reg[15]_i_12_n_6 ,\d_reg[15]_i_12_n_7 }),
        .S({1'b0,S}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 9x8}}" *) 
  (* OPT_MODIFIED = "PROPCONST SWEEP " *) 
  CARRY4 \d_reg[15]_i_13 
       (.CI(1'b0),
        .CO({\d_reg[15]_i_13_n_0 ,\NLW_d_reg[15]_i_13_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\d[15]_i_33_n_0 ,\d[15]_i_34_n_0 ,\d[15]_i_35_n_0 ,\d[11]_i_4_2 }),
        .O({\d_reg[15]_i_13_n_4 ,\d_reg[15]_i_13_n_5 ,\d_reg[15]_i_13_n_6 ,\d_reg[15]_i_13_n_7 }),
        .S({\d[11]_i_4_3 ,\d[15]_i_40_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 9x8}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \d_reg[15]_i_14 
       (.CI(\d_reg[11]_i_11_n_0 ),
        .CO({\d_reg[15]_i_14_n_0 ,\NLW_d_reg[15]_i_14_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\add_sub_out_reg[5] ,\d[15]_i_42_n_0 ,\d[15]_i_43_n_0 ,\d[15]_i_44_n_0 }),
        .O({\d_reg[15]_i_14_n_4 ,\d_reg[15]_i_14_n_5 ,\d_reg[15]_i_14_n_6 ,\d_reg[15]_i_14_n_7 }),
        .S({\d[11]_i_4_1 ,\d[15]_i_46_n_0 ,\d[15]_i_47_n_0 ,\d[15]_i_48_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \d_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\d_reg[3]_i_1_n_6 ),
        .Q(\d_reg[15]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \d_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\d_reg[3]_i_1_n_5 ),
        .Q(\d_reg[15]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \d_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\d_reg[3]_i_1_n_4 ),
        .Q(\d_reg[15]_0 [3]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 9x8}}" *) 
  (* OPT_MODIFIED = "PROPCONST SWEEP " *) 
  CARRY4 \d_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\d_reg[3]_i_1_n_0 ,\NLW_d_reg[3]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\d_reg[3]_i_2_n_4 ,\d_reg[3]_i_2_n_5 ,\d_reg[3]_i_2_n_6 ,\d_reg[3]_i_2_n_7 }),
        .O({\d_reg[3]_i_1_n_4 ,\d_reg[3]_i_1_n_5 ,\d_reg[3]_i_1_n_6 ,\d_reg[3]_i_1_n_7 }),
        .S({\d[3]_i_3_n_0 ,\d_reg[3]_i_2_n_5 ,\d_reg[3]_i_2_n_6 ,\d_reg[3]_i_2_n_7 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 9x8}}" *) 
  (* OPT_MODIFIED = "PROPCONST " *) 
  CARRY4 \d_reg[3]_i_14 
       (.CI(1'b0),
        .CO(\NLW_d_reg[3]_i_14_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\d_reg[3]_i_14_n_4 ,\NLW_d_reg[3]_i_14_O_UNCONNECTED [2:0]}),
        .S({\d[3]_i_16_n_0 ,1'b0,1'b0,1'b0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 9x8}}" *) 
  (* OPT_MODIFIED = "PROPCONST SWEEP " *) 
  CARRY4 \d_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\d_reg[3]_i_2_n_0 ,\NLW_d_reg[3]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\d[3]_i_7_n_0 ,\d[3]_i_8_n_0 ,\d[3]_i_9_n_0 ,1'b0}),
        .O({\d_reg[3]_i_2_n_4 ,\d_reg[3]_i_2_n_5 ,\d_reg[3]_i_2_n_6 ,\d_reg[3]_i_2_n_7 }),
        .S({\d[3]_i_10_n_0 ,\d[3]_i_11_n_0 ,\d[3]_i_12_n_0 ,\d[3]_i_13_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \d_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\d_reg[7]_i_1_n_7 ),
        .Q(\d_reg[15]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \d_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\d_reg[7]_i_1_n_6 ),
        .Q(\d_reg[15]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \d_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\d_reg[7]_i_1_n_5 ),
        .Q(\d_reg[15]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \d_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\d_reg[7]_i_1_n_4 ),
        .Q(\d_reg[15]_0 [7]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 9x8}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \d_reg[7]_i_1 
       (.CI(\d_reg[3]_i_1_n_0 ),
        .CO({\d_reg[7]_i_1_n_0 ,\NLW_d_reg[7]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\d[7]_i_2_n_0 ,\d_reg[7]_i_3_n_5 ,\d_reg[7]_i_3_n_6 ,\d_reg[7]_i_3_n_7 }),
        .O({\d_reg[7]_i_1_n_4 ,\d_reg[7]_i_1_n_5 ,\d_reg[7]_i_1_n_6 ,\d_reg[7]_i_1_n_7 }),
        .S({\d[7]_i_4_n_0 ,\d[7]_i_5_n_0 ,\d[7]_i_6_n_0 ,\d[7]_i_7_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 9x8}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \d_reg[7]_i_3 
       (.CI(\d_reg[3]_i_2_n_0 ),
        .CO({\d_reg[7]_i_3_n_0 ,\NLW_d_reg[7]_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\d[7]_i_8_n_0 ,\d[7]_i_9_n_0 ,\d[7]_i_10_n_0 ,\d[7]_i_11_n_0 }),
        .O({\d_reg[7]_i_3_n_4 ,\d_reg[7]_i_3_n_5 ,\d_reg[7]_i_3_n_6 ,\d_reg[7]_i_3_n_7 }),
        .S({\d[7]_i_12_n_0 ,\d[7]_i_13_n_0 ,\d[7]_i_14_n_0 ,\d[7]_i_15_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \d_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\d_reg[11]_i_1_n_7 ),
        .Q(\d_reg[15]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \d_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\d_reg[11]_i_1_n_6 ),
        .Q(\d_reg[15]_0 [9]));
endmodule

(* ECO_CHECKSUM = "1d6f5912" *) 
(* NotValidForBitStream *)
module hw2_pipe
   (clk,
    reset,
    a,
    b,
    c,
    s,
    d);
  input clk;
  input reset;
  input [7:0]a;
  input [7:0]b;
  input [7:0]c;
  input s;
  output [15:0]d;

  wire [7:0]a;
  wire [7:0]a_IBUF;
  wire [8:0]add_sub_out;
  wire [7:0]b;
  wire [7:0]b_IBUF;
  wire [7:0]c;
  wire [7:0]c_IBUF;
  wire [7:0]c_out;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [15:0]d;
  wire [15:0]d_OBUF;
  wire reset;
  wire reset_IBUF;
  wire s;
  wire s_IBUF;
  wire stage1_inst_n_0;
  wire stage1_inst_n_1;
  wire stage1_inst_n_2;
  wire stage1_inst_n_20;
  wire stage1_inst_n_21;
  wire stage1_inst_n_22;
  wire stage1_inst_n_23;
  wire stage1_inst_n_24;
  wire stage1_inst_n_25;
  wire stage1_inst_n_26;
  wire stage1_inst_n_27;
  wire stage1_inst_n_28;
  wire stage1_inst_n_29;
  wire stage1_inst_n_30;
  wire stage1_inst_n_31;
  wire stage2_inst_n_0;
  wire stage2_inst_n_1;
  wire stage2_inst_n_2;
  wire stage2_inst_n_3;

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
  Stage1 stage1_inst
       (.AR(reset_IBUF),
        .CLK(clk_IBUF_BUFG),
        .D(c_IBUF),
        .DI(stage2_inst_n_0),
        .Q(add_sub_out),
        .S({stage1_inst_n_0,stage1_inst_n_1,stage1_inst_n_2}),
        .a_IBUF(a_IBUF),
        .\add_sub_out_reg[1]_0 (stage1_inst_n_25),
        .\add_sub_out_reg[5]_0 ({stage1_inst_n_26,stage1_inst_n_27,stage1_inst_n_28}),
        .\add_sub_out_reg[7]_0 (stage1_inst_n_20),
        .\add_sub_out_reg[7]_1 (stage1_inst_n_21),
        .\add_sub_out_reg[7]_2 (stage1_inst_n_24),
        .\add_sub_out_reg[7]_3 ({stage1_inst_n_29,stage1_inst_n_30}),
        .\add_sub_out_reg[7]_4 (stage1_inst_n_31),
        .b_IBUF(b_IBUF),
        .\c_out_reg[4]_0 ({stage1_inst_n_22,stage1_inst_n_23}),
        .\c_out_reg[7]_0 (c_out),
        .\d_reg[15]_i_12 (stage2_inst_n_2),
        .\d_reg[15]_i_14 (stage2_inst_n_1),
        .\d_reg[15]_i_14_0 (stage2_inst_n_3),
        .s_IBUF(s_IBUF));
  Stage2 stage2_inst
       (.AR(reset_IBUF),
        .CLK(clk_IBUF_BUFG),
        .DI(stage2_inst_n_0),
        .Q(add_sub_out),
        .S({stage1_inst_n_0,stage1_inst_n_1,stage1_inst_n_2}),
        .\add_sub_out_reg[5] (stage2_inst_n_1),
        .\c_out_reg[2] (stage2_inst_n_2),
        .\c_out_reg[5] (stage2_inst_n_3),
        .\d[11]_i_4_0 (stage1_inst_n_20),
        .\d[11]_i_4_1 (stage1_inst_n_21),
        .\d[11]_i_4_2 (stage1_inst_n_25),
        .\d[11]_i_4_3 ({stage1_inst_n_26,stage1_inst_n_27,stage1_inst_n_28}),
        .\d[15]_i_4_0 (stage1_inst_n_24),
        .\d[15]_i_4_1 ({stage1_inst_n_22,stage1_inst_n_23}),
        .\d[15]_i_4_2 (stage1_inst_n_31),
        .\d[15]_i_4_3 ({stage1_inst_n_29,stage1_inst_n_30}),
        .\d_reg[15]_0 (d_OBUF),
        .\d_reg[15]_i_10_0 (c_out));
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
