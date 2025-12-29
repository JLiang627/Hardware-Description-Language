set Company 		"NSYSU2025HDL"
set Designer 		"Student"

# 設定ADFP(16nm)製程路徑
set search_path      "/cad/CBDK/ADFP/Executable_Package/Collaterals/IP/stdcell/N16ADFP_StdCell/CCS/  $search_path"
set target_library   "N16ADFP_StdCellss0p72vm40c_ccs.db N16ADFP_StdCellff0p88v125c_ccs.db"

set link_library    "* $target_library dw_foundation.sldb"
set symbol_library  "tsmc040.sdb generic.sdb"
set synthetic_library "dw_foundation.sldb"
set hdlin_translate_off_skip_text "TRUE"
set edifout_netlist_only "TRUE"
set verilogout_no_tri true
set hdlin_enable_presto_for_vhdl "TRUE"
set sh_enable_line_editing true
set sh_line_editing_mode emacs
history keep 100
alias h history

# =========================================================
#  設定路徑與參數
# =========================================================

# Path_RTL: Verilog 原始碼位置
set Path_RTL		"/MasterClass/M143010068_HDL/HW5/rtl"

# Path_Syn: 合成後報告與 Netlist 輸出位置
set Path_Syn		"/MasterClass/M143010068_HDL/HW5/gate_level"

# 設定 Top Module 名稱
set Top				"Top"

# 設定 Clock 資訊
set Clk_pin			"clk"
set Clk_period		"2"

# =========================================================
#  Read Design (Analyze + Elaborate)
# =========================================================

# 讀取 RTL 檔案 (根據你目前的檔案結構更新)
analyze -format verilog [list \
    $Path_RTL/ReLU.v \
    $Path_RTL/AdderTree.v \
    $Path_RTL/PE.v \
    $Path_RTL/LineBuffer.v \
    $Path_RTL/Pipeline.v \
    $Path_RTL/Top.v \
]

elaborate $Top
current_design $Top

# 檢查連結是否正確
link

# =========================================================
#  Setting Constraints
# =========================================================

# Setting Clock
create_clock -name $Clk_pin -period $Clk_period [get_ports $Clk_pin]
set_fix_hold                [get_clocks $Clk_pin]
set_dont_touch_network      [get_clocks $Clk_pin]
set_ideal_network           [get_ports $Clk_pin]

# Setting Input / Output Delay
set_input_delay     0    -clock $Clk_pin [remove_from_collection [all_inputs] [get_ports $Clk_pin]]
set_output_delay    0    -clock $Clk_pin [all_outputs]

# Setting Operating Conditions
set_operating_conditions    -min_library N16ADFP_StdCellff0p88v125c_ccs -min ff0p88v125c \
                            -max_library N16ADFP_StdCellss0p72vm40c_ccs -max ss0p72vm40c

set_wire_load_model -name ZeroWireload -library N16ADFP_StdCellss0p72vm40c_ccs                          
set_wire_load_mode top

# Area Optimization (作業要求不需特別做 Optimization，但通常設為 0 以盡量縮小)
# set_max_area 0

# =========================================================
#  Compile
# =========================================================

compile

# =========================================================
#  Fix Naming Rule (for Gate-Level Netlist)
# =========================================================

set bus_inference_style {%s[%d]}
set bus_naming_style {%s[%d]}
set hdlout_internal_busses true
change_names -hierarchy -rule verilog
define_name_rules name_rule -allowed "A-Z a-z 0-9 _" -max_length 255 -type cell
define_name_rules name_rule -allowed "A-Z a-z 0-9 _[]" -max_length 255 -type net
define_name_rules name_rule -map {{"\\*cell\\*""cell"}} 
define_name_rules name_rule -case_insensitive
change_names -hierarchy -rules name_rule
remove_unconnected_ports -blast_buses [get_cells -hierarchical *]

# =========================================================
#  Reports & Output
# =========================================================

# Timing Report
report_timing -path full -delay max -significant_digits 6 -sort_by group > $Path_Syn/timing_report.txt

# Area Report (作業要求的 Area 資訊)
report_area -hier -nosplit > $Path_Syn/area_report.txt

# Power Report
report_power -analysis_effort low > $Path_Syn/power_report.txt

# Write Output Files
# 1. DDC (Synopsys Database)
write -hierarchy -format ddc -output $Path_Syn/${Top}.ddc

# 2. Gate-Level Verilog (給 Post-Sim 使用，命名為 Top_gate.v)
write -format verilog -hierarchy -output $Path_Syn/${Top}_gate.v

# 3. SDF (Standard Delay Format，給 Post-Sim 使用，命名為 Top.sdf)
write_sdf -version 2.1 -context verilog $Path_Syn/${Top}.sdf

# 4. SDC (Constraints)
write_sdc $Path_Syn/${Top}.sdc

exit