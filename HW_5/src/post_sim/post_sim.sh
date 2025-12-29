#!/bin/tcsh

# 建立 Post-Sim 輸出資料夾
if (! -d "layer1_post") mkdir layer1_post
if (! -d "layer2_post") mkdir layer2_post

# 執行 VCS
vcs -R \
./post_sim_tb.v \
/MasterClass/M143010068_HDL/HW5/gate_level/Top_gate.v \
-v /cad/CBDK/ADFP/Executable_Package/Collaterals/IP/stdcell/N16ADFP_StdCell/VERILOG/N16ADFP_StdCell.v \
+full64 \
+maxdelays +neg_tchk
