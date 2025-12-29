#!/bin/tcsh

vcs -R -error=noMPD -debug_access+all \
/MasterClass/M143010068_HDL/HW2/clock_gating/post_sim/testbench.v \
/MasterClass/M143010068_HDL/HW2/clock_gating/rtl/hw2_clockgating.v \
/MasterClass/M143010068_HDL/HW2/clock_gating/rtl/hw2_clockgating_stage1.v \
/MasterClass/M143010068_HDL/HW2/clock_gating/rtl/hw2_clockgating_stage2.v \
/cad/CBDK/ADFP/Executable_Package/Collaterals/IP/stdcell/N16ADFP_StdCell/VERILOG/N16ADFP_StdCell.v \
\
+full64 \
+access+r +vcs+fsdbon +fsdb+mda +fsdbfile+HW2_clock_gating_post.fsdb +neg_tchk +v2k

