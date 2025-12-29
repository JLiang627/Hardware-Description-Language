#!/bin/tcsh
echo "--- 開始 VCS 編譯 (日誌將同步顯示並儲存於 compile.log) ---"

vcs -R -error=noMPD -debug_access+all \
/MasterClass/M143010068_HDL/HW3/post_sim/area/tb_thumb.v \
/MasterClass/M143010068_HDL/HW3/Gate_Level/area/dc_out_file/thumb.v \
/cad/CBDK/ADFP/Executable_Package/Collaterals/IP/stdcell/N16ADFP_StdCell/VERILOG/N16ADFP_StdCell.v \
+full64 \
+access+r +vcs+fsdbon +fsdb+mda +fsdbfile+Thumb_pip_post.fsdb +neg_tchk +v2k
|& tee compile.log


if ( -e simv ) then
    echo "\n--- 編譯成功。開始執行模擬 (日誌將同步顯示並儲存於 sim.log) ---"
    
    # 【修正】
    # 同樣使用 '|& tee' 來同步輸出到螢幕和 sim.log
    ./simv |& tee sim.log
    
    echo "\n--- 模擬完成 ---"
    echo "請檢查 'sim.log' 檔案以查看最終模擬結果 "
else
    echo "\n!!! 編譯失敗 !!!"
    echo "請檢查 'compile.log' 檔案以查看編譯錯誤 
