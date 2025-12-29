#!/bin/tcsh

vcs -R -debug_access+all \
/MasterClass/M143010068_HDL/HW2/pipelined/pre_sim/testbench.v \
/MasterClass/M143010068_HDL/HW2/pipelined/rtl/hw2_pipe.v \
/MasterClass/M143010068_HDL/HW2/pipelined/rtl/hw2_pipe_stage1.v \
/MasterClass/M143010068_HDL/HW2/pipelined/rtl/hw2_pipe_stage2.v \
+full64 \
+access+r +vcs+fsdbon +fsdb+mda +fsdbfile+hw2_nonpipe.fsdb +v2k

