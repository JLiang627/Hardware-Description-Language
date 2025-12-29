#!/bin/bash


# °õ¦æ VCS
vcs -R -debug_access+all \
    /MasterClass/M143010068_HDL/HW6_4PE/rtl/sram_4096x16m16.v \
    /MasterClass/M143010068_HDL/HW6_4PE/rtl/sram_4096x64m16.v \
    /MasterClass/M143010068_HDL/HW6_4PE/rtl/LineBuffer.v \
    /MasterClass/M143010068_HDL/HW6_4PE/rtl/PE.v \
    /MasterClass/M143010068_HDL/HW6_4PE/rtl/ReLU.v \
    /MasterClass/M143010068_HDL/HW6_4PE/rtl/AdderTree.v \
    /MasterClass/M143010068_HDL/HW6_4PE/rtl/sram_control.v \
    /MasterClass/M143010068_HDL/HW6_4PE/rtl/Top.v \
    ./pre_sim_tb.v \
    +full64 \
    +notimingcheck \
    +access+r \
    +vcs+fsdbon +fsdb+mda +fsdbfile+HW6_Pre.fsdb \
    -l sim.log
