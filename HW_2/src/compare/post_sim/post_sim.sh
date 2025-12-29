#!/bin/tcsh


vcs -R -error=noMPD -debug_access+all \
    /MasterClass/M143010068_HDL/HW2/compare/post_sim/testbench.v \
    \
    /MasterClass/M143010068_HDL/HW2/compare/gate_level/Delay/dc_out_file/multiply_add/multiply_add.v \
    /MasterClass/M143010068_HDL/HW2/compare/gate_level/Delay/dc_out_file/multiply_add_common_factor/multiply_add_common_factor.v \
    \
    /cad/CBDK/ADFP/Executable_Package/Collaterals/IP/stdcell/N16ADFP_StdCell/VERILOG/N16ADFP_StdCell.v \
    \
    +full64 \
    +access+r +vcs+fsdbon +fsdb+mda +fsdbfile+HW2_add_sub_post.fsdb +neg_tchk +v2k
