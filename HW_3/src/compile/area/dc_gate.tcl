set Company       "NSYSU2025HDL"
set Designer        "Student"

#設定ADFP(16nm)製程路徑
set search_path     "/cad/CBDK/ADFP/Executable_Package/Collaterals/IP/stdcell/N16ADFP_StdCell/CCS/  $search_path"
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
set hdlin_ignore_timescale_rule true
history keep 100
alias h history

# --- [ 新增 ] 用於顯示進度的 Helper 函數 ---
proc print_status { msg } {
    puts "--- [clock format [clock seconds] -format {%Y-%m-%d %H:%M:%S}] --- $msg"
}
# ----------------------------------------

#Path_Top:Verilog放置的位置
#Path_Syn:合成後report.txt檔案要放置的根位置，需自行在目錄下創建名為dc_out_file之資料夾
#Dump_file_name:合成後產生檔案之名字
set Path_Top        "/MasterClass/M143010068_HDL/HW3/rtl/Thumb_pip.v"
set Path_Syn        "/MasterClass/M143010068_HDL/HW3/Gate_Level/area/dc_out_file/"
set Dump_file_name "thumb"
#設定Top module 名稱，需跟自行設計之電路的top module name相同
set Top           "thumb"
#Specify Clock，clock名需和top module中clk port相同
set Clk_pin         "clk"
set Clk_period      "4.75"

print_status "步驟 1/6: 開始分析 (Analyze) Verilog 檔案..."
# [ Read Design File ]
analyze -format verilog {
        /MasterClass/M143010068_HDL/HW3/rtl/Thumb_pip.v
    }
elaborate $Top
current_design $Top

print_status "步驟 2/6: 開始連結 (Link) 設計..."
link
print_status "連結 (Link) 完成。"


print_status "步驟 3/6: 正在設定時序約束 (Constraints)..."
# [ Setting Clock Constraints ]
create_clock -name $Clk_pin -period $Clk_period [get_ports $Clk_pin]
set_fix_hold                      [get_clocks $Clk_pin]
set_dont_touch_network            [get_clocks $Clk_pin]

set_clock_uncertainty           0.02    [get_clocks $Clk_pin]
set_clock_latency               0.2     [get_clocks $Clk_pin]
set_input_transition            0.5     [all_inputs]
set_clock_transition            0.1     [all_clocks]
set_ideal_network                 [get_ports $Clk_pin]

#Setting Input / Output Delay
set_input_delay         0       -clock $Clk_pin [remove_from_collection [all_inputs] [get_ports $Clk_pin]]
set_output_delay        0       -clock $Clk_pin [all_outputs]

# [ Setting Design Environment ]
set_operating_conditions    -min_library N16ADFP_StdCellff0p88v125c_ccs -min ff0p88v125c \
                            -max_library N16ADFP_StdCellss0p72vm40c_ccs -max ss0p72vm40c

set_wire_load_model -name ZeroWireload -library N16ADFP_StdCellss0p72vm40c_ccs  
set_wire_load_mode top
set_max_area 0

#----------------------------------------
# --- 修正 FFGEN (Tcl 語法) 和 VO-4 (assign) ---
print_status "正在設定 FFGEN/Assign 修正規則..."

# 1. 允許 DC 使用標準 DFF + MUX 來實現複雜 DFF
set compile_enable_register_merging true
set compile_map_enable_register_merging true
set compile_seqmap_max_bits_in_memory_register 1024 
set compile_seqmap_enable_mux_before_seq true
set compile_seqmap_enable_exact_match_for_mux true
set compile_seqmap_enable_output_inversion true


set high_fanout_net_threshold 0

uniquify
set_fix_multiple_port_nets -all -buffer_constants [get_designs *]
#----------------------------------------

print_status "步驟 4/6: --- 開始合成 (Compile) ---"
print_status "(這一步會花費最久的时间，請耐心等候...)"
compile
print_status "--- 合成 (Compile) 完成！ ---"


print_status "步驟 5/6: 正在變更命名規則 (Change Naming Rule)..."
#Change Naming Rule
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

print_status "步驟 6/6: 正在產生報告 (Report) 並寫入檔案..."
report_timing -significant_digits 6 -sort_by group

#Report
report_timing -path full -delay max -significant_digits 6 -sort_by group > $Path_Syn/1.timing_report_${Dump_file_name}.txt
report_area -hier -nosplit > $Path_Syn/2.area_report_${Dump_file_name}.txt
report_power -analysis_effort low > $Path_Syn/3.power_report_${Dump_file_name}.txt

# #Each Pipeline Delay  
 uplevel #0 { report_timing  -through { step1/* } -path full -delay max -nworst 1 -max_paths 1 -significant_digits 2 -sort_by group } > $Path_Syn/IF.txt
 uplevel #0 { report_timing  -through { step2/* } -path full -delay max -nworst 1 -max_paths 1 -significant_digits 2 -sort_by group } > $Path_Syn/ID.txt
 uplevel #0 { report_timing  -through { step3/* } -path full -delay max -nworst 1 -max_paths 1 -significant_digits 2 -sort_by group } > $Path_Syn/EXE.txt
 uplevel #0 { report_timing  -through { step4/* } -path full -delay max -nworst 1 -max_paths 1 -significant_digits 2 -sort_by group } > $Path_Syn/WB.txt

#Write out
report_timing -from [all_outputs]

#Write out
write -hierarchy -format ddc -output $Path_Syn/${Dump_file_name}.ddc
write -format verilog -hierarchy -output $Path_Syn/${Dump_file_name}.v
write_sdf -version 2.1 -context verilog $Path_Syn/${Dump_file_name}.sdf
write_sdc $Path_Syn/${Dump_file_name}.sdc

print_status "所有檔案寫入完畢。"

exit
