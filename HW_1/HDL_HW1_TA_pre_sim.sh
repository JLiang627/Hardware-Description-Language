#!/bin/tcsh

vcs -R -debug_access+all \
/home/m123040033/ALU/pre_sim/testbench.v \
/home/m123040033/ALU/rtl/adder.v \
/home/m123040033/ALU/rtl/alignment.v \
/home/m123040033/ALU/rtl/FLP_adder.v \
/home/m123040033/ALU/rtl/norm_again.v \
/home/m123040033/ALU/rtl/norm.v \
/home/m123040033/ALU/rtl/rounding.v \
/home/m123040033/ALU/rtl/sub_exp.v \
+full64 \
+access+r +vcs+fsdbon +fsdb+mda +fsdbfile+FLP.fsdb +v2k
