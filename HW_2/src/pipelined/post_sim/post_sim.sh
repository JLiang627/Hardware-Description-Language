#!/bin/tcsh

vcs -R -error=noMPD -debug_access+all \
/MasterClass/M143010068_HDL/HW2/pipelined/post_sim/testbench.v \
/MasterClass/M143010068_HDL/HW2/pipelined/rtl/hw2_pipe.v \
/MasterClass/M143010068_HDL/HW2/pipelined/rtl/hw2_pipe_stage1.v \
/MasterClass/M143010068_HDL/HW2/pipelined/rtl/hw2_pipe_stage2.v \
/cad/CBDK/ADFP/Executable_Package/Collaterals/IP/stdcell/N16ADFP_StdCell/VERILOG/N16ADFP_StdCell.v \
\
+full64 \
+access+r +vcs+fsdbon +fsdb+mda +fsdbfile+pipelined_post.fsdb +neg_tchk +v2k

