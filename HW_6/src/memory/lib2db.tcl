# ==============================================================================
#  Library Compiler Script for 4096x16 Memory (Fixed Filename)
# ==============================================================================

# ------------------------------------------------------------------------------
# 【修正重點】根據您的 ls 結果，檔名開頭是 sram_4096x16m16
# ------------------------------------------------------------------------------
set MEM_NAME "sram_4096x16m16"

# ------------------------------------------------------------------------------
# 1. Typical Corner (TT, 0.90V, 25C)
# ------------------------------------------------------------------------------
echo "Processing TT Corner (25C)..."
# Library Object 名稱 (通常不含 _syn)
set LIB_OBJ_TT "${MEM_NAME}_nldm_tt_0p90v_0p90v_25c"
# 讀取 .lib
read_lib ${LIB_OBJ_TT}_syn.lib
# 寫出 .db
write_lib -format db ${LIB_OBJ_TT} -output ${LIB_OBJ_TT}_syn.db
# 移除記憶體
remove_lib ${LIB_OBJ_TT}

# ------------------------------------------------------------------------------
# 2. Worst Corner (SS, 0.81V, 125C)
# ------------------------------------------------------------------------------
echo "Processing SS Worst Corner (125C)..."
set LIB_OBJ_SS1 "${MEM_NAME}_nldm_ss_0p81v_0p81v_125c"
read_lib ${LIB_OBJ_SS1}_syn.lib
write_lib -format db ${LIB_OBJ_SS1} -output ${LIB_OBJ_SS1}_syn.db
remove_lib ${LIB_OBJ_SS1}

# ------------------------------------------------------------------------------
# 3. Low Temp Worst Corner (SS, 0.81V, -40C)
# ------------------------------------------------------------------------------
echo "Processing SS Low Temp Corner (-40C)..."
set LIB_OBJ_SS2 "${MEM_NAME}_nldm_ss_0p81v_0p81v_m40c"
read_lib ${LIB_OBJ_SS2}_syn.lib
write_lib -format db ${LIB_OBJ_SS2} -output ${LIB_OBJ_SS2}_syn.db
remove_lib ${LIB_OBJ_SS2}

# ------------------------------------------------------------------------------
# 4. Fast Corner (FF, 0.99V, 125C)
# ------------------------------------------------------------------------------
echo "Processing FF Fast Corner (125C)..."
set LIB_OBJ_FF1 "${MEM_NAME}_nldm_ff_0p99v_0p99v_125c"
read_lib ${LIB_OBJ_FF1}_syn.lib
write_lib -format db ${LIB_OBJ_FF1} -output ${LIB_OBJ_FF1}_syn.db
remove_lib ${LIB_OBJ_FF1}

# ------------------------------------------------------------------------------
# 5. Low Temp Fast Corner (FF, 0.99V, -40C)
# ------------------------------------------------------------------------------
echo "Processing FF Low Temp Corner (-40C)..."
set LIB_OBJ_FF2 "${MEM_NAME}_nldm_ff_0p99v_0p99v_m40c"
read_lib ${LIB_OBJ_FF2}_syn.lib
write_lib -format db ${LIB_OBJ_FF2} -output ${LIB_OBJ_FF2}_syn.db
remove_lib ${LIB_OBJ_FF2}

echo "All Done! .db files generated."
exit