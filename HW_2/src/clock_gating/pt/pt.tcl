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

read_verilog /MasterClass/M143010068_HDL/HW2/clock_gating/gate_level/Delay/hw2_clockgating.v
current_design hw2_clockgating
link

read_sdc /MasterClass/M143010068_HDL/HW2/clock_gating/gate_level/Delay/hw2_clockgating.sdc
read_sdf /MasterClass/M143010068_HDL/HW2/clock_gating/gate_level/Delay/hw2_clockgating.sdf

check_timing
update_timing

read_vcd -strip_path testbench/u_dut_clockgating /MasterClass/M143010068_HDL/HW2/clock_gating/post_sim/hw2_clockgating.vcd

check_power
update_power
report_power -hierarchy > report_power_average_vcd_hw2_clockgating.rpt

#quit
exit
