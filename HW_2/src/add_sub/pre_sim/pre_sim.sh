#!/bin/tcsh

vcs -R -debug_access+all \
/MasterClass/M143010068_HDL/HW2/add_sub/pre_sim/testbench.v \
/MasterClass/M143010068_HDL/HW2/add_sub/rtl/add_sub_1.v \
/MasterClass/M143010068_HDL/HW2/add_sub/rtl/add_sub_2.v \
/MasterClass/M143010068_HDL/HW2/add_sub/rtl/add_sub_3.v \
+full64 \
+access+r +vcs+fsdbon +fsdb+mda +fsdbfile+HW2_add_sub.fsdb +v2k

