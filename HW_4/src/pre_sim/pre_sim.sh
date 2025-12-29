#!/bin/tcsh

vcs -R -debug_access+all \
/MasterClass/M143010068_HDL/HW4/pre_sim/HW4_TB_fixed.v\
/MasterClass/M143010068_HDL/HW4/rtl/Edge.v\
+full64 \
+access+r +vcs+fsdbon +fsdb+mda +fsdbfile+HW4_pre_edge.fsdb
