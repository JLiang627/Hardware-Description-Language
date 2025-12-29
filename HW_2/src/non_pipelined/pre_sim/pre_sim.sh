#!/bin/tcsh

vcs -R -debug_access+all \
/MasterClass/M143010068_HDL/HW2/non_pipelined/pre_sim/testbench.v \
/MasterClass/M143010068_HDL/HW2/non_pipelined/rtl/hw2_nonpipe.v \
+full64 \
+access+r +vcs+fsdbon +fsdb+mda +fsdbfile+hw2_nonpipe.fsdb +v2k

