#!/bin/tcsh

vcs -R -debug_access+all \
/MasterClass/M143010068_HDL/HW2/clock_gating/pre_sim/testbench.v \
/MasterClass/M143010068_HDL/HW2/clock_gating/rtl/hw2_clockgating.v \
/MasterClass/M143010068_HDL/HW2/clock_gating/rtl/hw2_clockgating_stage1.v \
/MasterClass/M143010068_HDL/HW2/clock_gating/rtl/hw2_clockgating_stage2.v \
+full64 \
+access+r +vcs+fsdbon +fsdb+mda +fsdbfile+HW2_clock_gating_pre.fsdb +v2k

