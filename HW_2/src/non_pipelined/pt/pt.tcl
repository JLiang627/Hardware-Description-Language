set company "VLSILAB"
set designer "OWEN"
#######################################################################
## Logical Library Settings
#######################################################################
set search_path      "/cad/CBDK/ADFP/Executable_Package/Collaterals/IP/stdcell/N16ADFP_StdCell/CCS/  $search_path"
set target_library   "N16ADFP_StdCellss0p72vm40c_ccs.db N16ADFP_StdCellff0p88v125c_ccs.db"
set link_library     "* $target_library"
set symbol_library   "generic.sdb"
set sh_source_uses_search_path true

######################################################################
# power analysis
######################################################################
# source saifmap.ptpx.tcl
# report_name_mapping
set power_enable_analysis true
set power_analysis_mode averaged
set power_report_leakage_breakdowns true

read_verilog /MasterClass/M143010068_HDL/HW2/non_pipelined/gate_level/Delay/hw2_nonpipe.v
current_design hw2_nonpipe
link

read_sdc /MasterClass/M143010068_HDL/HW2/non_pipelined/gate_level/Delay/hw2_nonpipe.sdc
read_sdf /MasterClass/M143010068_HDL/HW2/non_pipelined/gate_level/Delay/hw2_nonpipe.sdf

check_timing
update_timing
report_timing -from [all_inputs] -to [all_outputs] -max_paths 1 > report_timing_nonpipe.rpt

read_vcd -strip_path testbench/u_nonpipe /MasterClass/M143010068_HDL/HW2/non_pipelined/post_sim/hw2_nonpipe_post.vcd

check_power
update_power
report_power -hierarchy > report_power_average_vcd_hw2_nonpipe.rpt
#quit
exit
