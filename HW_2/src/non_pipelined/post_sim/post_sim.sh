#!/bin/tcsh

vcs -R -error=noMPD -debug_access+all \
    /MasterClass/M143010068_HDL/HW2/non_pipelined/post_sim/testbench.v \
    \
    /MasterClass/M143010068_HDL/HW2/non_pipelined/gate_level/Delay/hw2_nonpipe.v \
    \
    /cad/CBDK/ADFP/Executable_Package/Collaterals/IP/stdcell/N16ADFP_StdCell/VERILOG/N16ADFP_StdCell.v \
    \
    +full64 \
    +access+r +vcs+fsdbon +fsdb+mda +fsdbfile+hw2_nonpipe.fsdb +neg_tchk +v2k
