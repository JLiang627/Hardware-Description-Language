#!/bin/tcsh


vcs -R -error=noMPD -debug_access+all \
    /MasterClass/M143010068_HDL/HW2/add_sub/post_sim/testbench.v \
    \
    /MasterClass/M143010068_HDL/HW2/add_sub/gate_level/Delay/dc_out_file/add_sub_1/add_sub_1.v \
    /MasterClass/M143010068_HDL/HW2/add_sub/gate_level/Delay/dc_out_file/add_sub_2/add_sub_2.v \
    /MasterClass/M143010068_HDL/HW2/add_sub/gate_level/Delay/dc_out_file/add_sub_3/add_sub_3.v \
    \
    /cad/CBDK/ADFP/Executable_Package/Collaterals/IP/stdcell/N16ADFP_StdCell/VERILOG/N16ADFP_StdCell.v \
    \
    +full64 \
    +access+r +vcs+fsdbon +fsdb+mda +fsdbfile+HW2_add_sub_post.fsdb +neg_tchk +v2k
