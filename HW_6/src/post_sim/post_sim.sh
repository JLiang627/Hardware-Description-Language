#!/bin/bash

vcs -R -debug_access+all \
    ./post_sim_tb.v \
    ../gate_level/dc_out_file/FMA_NoPipe_syn.v \
    /MasterClass/M143010068_HDL/HW6_4PE/rtl/sram_4096x16m16.v \
    /MasterClass/M143010068_HDL/HW6_4PE/rtl/sram_4096x64m16.v \
    /cad/CBDK/CBDK_TSMC40_Arm_f2.0/CIC/Verilog/sc9_cln40g_base_rvt.v \
    /cad/CBDK/CBDK_TSMC40_Arm_f2.0/CIC/Verilog/sc9_cln40g_base_rvt_udp.v \
    +full64 \
    +access+r \
    +vcs+fsdbon +fsdb+mda +fsdbfile+HW6_Post.fsdb \
    +define+SDF \
    +neg_tchk \
    -l post_sim.log