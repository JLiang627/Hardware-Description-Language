#!/bin/tcsh

vcs -R -debug_access+all \
-sverilog \
/MasterClass/M143010068_HDL/HW3/rtl/Thumb_pip.v\
/MasterClass/M143010068_HDL/HW3/pre_sim/tb_thumb.v\
+full64 \
+access+r +vcs+fsdbon +fsdb+mda +fsdbfile+HW3_thumb_pipe.fsdb
