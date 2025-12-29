#!/bin/tcsh

vcs -R -debug_access+all \
/MasterClass/M143010068_HDL/HW1/pre_sim/testbench.v\
/MasterClass/M143010068_HDL/HW1/RTL/adder_structure/adder_structure.v \
/MasterClass/M143010068_HDL/HW1/RTL/adder_structure_reg/adder_structure_reg.v \
/MasterClass/M143010068_HDL/HW1/RTL/adder_dataflow/adder_dataflow.v \
/MasterClass/M143010068_HDL/HW1/RTL/adder_dataflow_reg/adder_dataflow_reg.v \
/MasterClass/M143010068_HDL/HW1/RTL/adder_behavior/adder_behavior.v \
/MasterClass/M143010068_HDL/HW1/RTL/adder_behavior_reg/adder_behavior_reg.v \
/MasterClass/M143010068_HDL/HW1/RTL/adder_structure_reg/FA.v\
/MasterClass/M143010068_HDL/HW1/RTL/adder_structure/FA.v\
+full64 \
+access+r +vcs+fsdbon +fsdb+mda +fsdbfile+HW1_adder.fsdb
