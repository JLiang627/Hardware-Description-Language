#!/bin/tcsh

vcs -R -error=noMPD -debug_access+all \
/home/m123040033/HDL/post_sim/TB.v \
/home/m123040033/HDL/behavior/adder_behavior.v \
/home/m123040033/HDL/behavior_reg/adder_behavior_reg.v \
/home/m123040033/HDL/dataflow/adder_dataflow.v \
/home/m123040033/HDL/dataflow_reg/adder_dataflow_reg.v \
/home/m123040033/HDL/structure/adder_structure.v \
/home/m123040033/HDL/structure_reg/adder_structure_reg.v \
/cad/CBDK/ADFP/Executable_Package/Collaterals/IP/stdcell/N16ADFP_StdCell/VERILOG/N16ADFP_StdCell.v \
+full64 \
+access+r +vcs+fsdbon +fsdb+mda +fsdbfile+6adder.fsdb +neg_tchk
