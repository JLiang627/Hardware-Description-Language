#!/bin/tcsh

vcs -R -debug_access+all \
/MasterClass/M143010068_HDL/HW2/compare/pre_sim/testbench.v \
/MasterClass/M143010068_HDL/HW2/compare/rtl/multiply_add.v \
/MasterClass/M143010068_HDL/HW2/compare/rtl/multiply_add_common_factor.v \
+full64 \
+access+r +vcs+fsdbon +fsdb+mda +fsdbfile+HW2_add_sub.fsdb +v2k

