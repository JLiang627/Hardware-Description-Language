#!/bin/tcsh
vcs -R -error=noMPD -debug_access+all \
/MasterClass/M143010068_HDL/HW4/post_sim/HW4_TB_fixed.v\
/MasterClass/M143010068_HDL/HW4/SYN/Edge_syn.v\
/cad/CBDK/ADFP/Executable_Package/Collaterals/IP/stdcell/N16ADFP_StdCell/VERILOG/N16ADFP_StdCell.v \
+full64 \
+access+r +vcs+fsdbon +fsdb+mda +fsdbfile+HW4_post_edge.fsdb +neg_tchk +v2k

