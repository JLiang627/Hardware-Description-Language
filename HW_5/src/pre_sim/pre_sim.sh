#!/bin/tcsh

if (! -d "layer1") mkdir layer1
if (! -d "layer2") mkdir layer2

vcs -R -j8 -debug_access+all \
./pre_sim_tb.v \
/MasterClass/M143010068_HDL/HW5/rtl/Top.v \
/MasterClass/M143010068_HDL/HW5/rtl/LineBuffer.v \
/MasterClass/M143010068_HDL/HW5/rtl/Pipeline.v \
/MasterClass/M143010068_HDL/HW5/rtl/PE.v \
/MasterClass/M143010068_HDL/HW5/rtl/AdderTree.v \
/MasterClass/M143010068_HDL/HW5/rtl/ReLU.v \
+full64 \
+access+r +vcs+fsdbon +fsdb+mda +fsdbfile+HW5_Wave.fsdb
