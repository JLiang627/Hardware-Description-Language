wvSetPosition -win $_nWave1 {("G1" 0)}
wvResizeWindow -win $_nWave1 54 237 960 332
wvOpenFile -win $_nWave1 \
           {/MasterClass/M143010068_HDL/HW3/post_sim/delay/Thumb_pip_post.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/tb_thumb"
wvGetSignalSetScope -win $_nWave1 "/tb_thumb/UUT"
wvGetSignalSetScope -win $_nWave1 "/tb_thumb/UUT/step1"
wvGetSignalSetScope -win $_nWave1 "/tb_thumb/UUT/step2"
wvGetSignalSetScope -win $_nWave1 "/tb_thumb"
wvGetSignalSetScope -win $_nWave1 "/tb_thumb/UUT"
wvGetSignalSetScope -win $_nWave1 "/tb_thumb/UUT/step1"
wvGetSignalSetScope -win $_nWave1 "/tb_thumb/UUT/step3"
wvGetSignalSetScope -win $_nWave1 "/tb_thumb/UUT/step2"
wvGetSignalSetScope -win $_nWave1 "/tb_thumb/UUT/step3"
wvGetSignalSetScope -win $_nWave1 "/tb_thumb/UUT/step1"
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/tb_thumb/UUT/step1/IF_IR\[15:0\]} \
{/tb_thumb/UUT/step1/IF_PC\[31:0\]} \
{/tb_thumb/UUT/step1/PC\[31:0\]} \
{/tb_thumb/UUT/step1/branch_taken} \
{/tb_thumb/UUT/step1/branch_target\[31:0\]} \
{/tb_thumb/UUT/step1/clk} \
{/tb_thumb/UUT/step1/instruction\[15:0\]} \
{/tb_thumb/UUT/step1/n_Logic1_} \
{/tb_thumb/UUT/step1/read_instruction_n} \
{/tb_thumb/UUT/step1/reset_n} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvResizeWindow -win $_nWave1 54 237 960 332
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 )} 
wvSetPosition -win $_nWave1 {("G1" 10)}
wvGetSignalSetScope -win $_nWave1 "/tb_thumb/UUT/step2"
wvSetPosition -win $_nWave1 {("G1" 23)}
wvSetPosition -win $_nWave1 {("G1" 23)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/tb_thumb/UUT/step1/IF_IR\[15:0\]} \
{/tb_thumb/UUT/step1/IF_PC\[31:0\]} \
{/tb_thumb/UUT/step1/PC\[31:0\]} \
{/tb_thumb/UUT/step1/branch_taken} \
{/tb_thumb/UUT/step1/branch_target\[31:0\]} \
{/tb_thumb/UUT/step1/clk} \
{/tb_thumb/UUT/step1/instruction\[15:0\]} \
{/tb_thumb/UUT/step1/n_Logic1_} \
{/tb_thumb/UUT/step1/read_instruction_n} \
{/tb_thumb/UUT/step1/reset_n} \
{/tb_thumb/UUT/step2/ID_PC\[31:0\]} \
{/tb_thumb/UUT/step2/ID_Rd\[31:0\]} \
{/tb_thumb/UUT/step2/ID_Rd_code\[2:0\]} \
{/tb_thumb/UUT/step2/ID_Rm_Rs\[31:0\]} \
{/tb_thumb/UUT/step2/ID_Rn\[31:0\]} \
{/tb_thumb/UUT/step2/ID_cond\[3:0\]} \
{/tb_thumb/UUT/step2/ID_imm_offset\[10:0\]} \
{/tb_thumb/UUT/step2/ID_opcode\[5:0\]} \
{/tb_thumb/UUT/step2/IF_IR\[15:0\]} \
{/tb_thumb/UUT/step2/IF_PC\[31:0\]} \
{/tb_thumb/UUT/step2/R_arr\[255:0\]} \
{/tb_thumb/UUT/step2/branch_taken} \
{/tb_thumb/UUT/step2/reset_n} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 11 12 13 14 15 16 17 18 19 20 21 22 23 )} \
           
wvSetPosition -win $_nWave1 {("G1" 23)}
wvGetSignalSetScope -win $_nWave1 "/tb_thumb/UUT/step3"
wvSetPosition -win $_nWave1 {("G1" 41)}
wvSetPosition -win $_nWave1 {("G1" 41)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/tb_thumb/UUT/step1/IF_IR\[15:0\]} \
{/tb_thumb/UUT/step1/IF_PC\[31:0\]} \
{/tb_thumb/UUT/step1/PC\[31:0\]} \
{/tb_thumb/UUT/step1/branch_taken} \
{/tb_thumb/UUT/step1/branch_target\[31:0\]} \
{/tb_thumb/UUT/step1/clk} \
{/tb_thumb/UUT/step1/instruction\[15:0\]} \
{/tb_thumb/UUT/step1/n_Logic1_} \
{/tb_thumb/UUT/step1/read_instruction_n} \
{/tb_thumb/UUT/step1/reset_n} \
{/tb_thumb/UUT/step2/ID_PC\[31:0\]} \
{/tb_thumb/UUT/step2/ID_Rd\[31:0\]} \
{/tb_thumb/UUT/step2/ID_Rd_code\[2:0\]} \
{/tb_thumb/UUT/step2/ID_Rm_Rs\[31:0\]} \
{/tb_thumb/UUT/step2/ID_Rn\[31:0\]} \
{/tb_thumb/UUT/step2/ID_cond\[3:0\]} \
{/tb_thumb/UUT/step2/ID_imm_offset\[10:0\]} \
{/tb_thumb/UUT/step2/ID_opcode\[5:0\]} \
{/tb_thumb/UUT/step2/IF_IR\[15:0\]} \
{/tb_thumb/UUT/step2/IF_PC\[31:0\]} \
{/tb_thumb/UUT/step2/R_arr\[255:0\]} \
{/tb_thumb/UUT/step2/branch_taken} \
{/tb_thumb/UUT/step2/reset_n} \
{/tb_thumb/UUT/step3/ALU_out\[32:0\]} \
{/tb_thumb/UUT/step3/DR\[31:0\]} \
{/tb_thumb/UUT/step3/EX_ALU_out\[31:0\]} \
{/tb_thumb/UUT/step3/EX_Rd_code\[2:0\]} \
{/tb_thumb/UUT/step3/EX_imm_offset\[7:0\]} \
{/tb_thumb/UUT/step3/EX_opcode\[5:0\]} \
{/tb_thumb/UUT/step3/ID_PC\[31:0\]} \
{/tb_thumb/UUT/step3/ID_Rd\[31:0\]} \
{/tb_thumb/UUT/step3/ID_Rd_code\[2:0\]} \
{/tb_thumb/UUT/step3/ID_Rm_Rs\[31:0\]} \
{/tb_thumb/UUT/step3/ID_Rn\[31:0\]} \
{/tb_thumb/UUT/step3/ID_cond\[3:0\]} \
{/tb_thumb/UUT/step3/ID_imm_offset\[10:0\]} \
{/tb_thumb/UUT/step3/ID_opcode\[5:0\]} \
{/tb_thumb/UUT/step3/LR\[31:0\]} \
{/tb_thumb/UUT/step3/read_data_n} \
{/tb_thumb/UUT/step3/reset_n} \
{/tb_thumb/UUT/step3/write_data_n} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 24 25 26 27 28 29 30 31 32 33 34 35 36 37 \
           38 39 40 41 )} 
wvSetPosition -win $_nWave1 {("G1" 41)}
wvGetSignalSetScope -win $_nWave1 "/tb_thumb/UUT/step4"
wvSetPosition -win $_nWave1 {("G1" 49)}
wvSetPosition -win $_nWave1 {("G1" 49)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/tb_thumb/UUT/step1/IF_IR\[15:0\]} \
{/tb_thumb/UUT/step1/IF_PC\[31:0\]} \
{/tb_thumb/UUT/step1/PC\[31:0\]} \
{/tb_thumb/UUT/step1/branch_taken} \
{/tb_thumb/UUT/step1/branch_target\[31:0\]} \
{/tb_thumb/UUT/step1/clk} \
{/tb_thumb/UUT/step1/instruction\[15:0\]} \
{/tb_thumb/UUT/step1/n_Logic1_} \
{/tb_thumb/UUT/step1/read_instruction_n} \
{/tb_thumb/UUT/step1/reset_n} \
{/tb_thumb/UUT/step2/ID_PC\[31:0\]} \
{/tb_thumb/UUT/step2/ID_Rd\[31:0\]} \
{/tb_thumb/UUT/step2/ID_Rd_code\[2:0\]} \
{/tb_thumb/UUT/step2/ID_Rm_Rs\[31:0\]} \
{/tb_thumb/UUT/step2/ID_Rn\[31:0\]} \
{/tb_thumb/UUT/step2/ID_cond\[3:0\]} \
{/tb_thumb/UUT/step2/ID_imm_offset\[10:0\]} \
{/tb_thumb/UUT/step2/ID_opcode\[5:0\]} \
{/tb_thumb/UUT/step2/IF_IR\[15:0\]} \
{/tb_thumb/UUT/step2/IF_PC\[31:0\]} \
{/tb_thumb/UUT/step2/R_arr\[255:0\]} \
{/tb_thumb/UUT/step2/branch_taken} \
{/tb_thumb/UUT/step2/reset_n} \
{/tb_thumb/UUT/step3/ALU_out\[32:0\]} \
{/tb_thumb/UUT/step3/DR\[31:0\]} \
{/tb_thumb/UUT/step3/EX_ALU_out\[31:0\]} \
{/tb_thumb/UUT/step3/EX_Rd_code\[2:0\]} \
{/tb_thumb/UUT/step3/EX_imm_offset\[7:0\]} \
{/tb_thumb/UUT/step3/EX_opcode\[5:0\]} \
{/tb_thumb/UUT/step3/ID_PC\[31:0\]} \
{/tb_thumb/UUT/step3/ID_Rd\[31:0\]} \
{/tb_thumb/UUT/step3/ID_Rd_code\[2:0\]} \
{/tb_thumb/UUT/step3/ID_Rm_Rs\[31:0\]} \
{/tb_thumb/UUT/step3/ID_Rn\[31:0\]} \
{/tb_thumb/UUT/step3/ID_cond\[3:0\]} \
{/tb_thumb/UUT/step3/ID_imm_offset\[10:0\]} \
{/tb_thumb/UUT/step3/ID_opcode\[5:0\]} \
{/tb_thumb/UUT/step3/LR\[31:0\]} \
{/tb_thumb/UUT/step3/read_data_n} \
{/tb_thumb/UUT/step3/reset_n} \
{/tb_thumb/UUT/step3/write_data_n} \
{/tb_thumb/UUT/step4/EX_ALU_out\[31:0\]} \
{/tb_thumb/UUT/step4/EX_Rd_code\[2:0\]} \
{/tb_thumb/UUT/step4/EX_imm_offset\[7:1\]} \
{/tb_thumb/UUT/step4/EX_opcode\[5:0\]} \
{/tb_thumb/UUT/step4/R_arr\[255:0\]} \
{/tb_thumb/UUT/step4/\\EX_imm_offset\[7:1\] } \
{/tb_thumb/UUT/step4/clk} \
{/tb_thumb/UUT/step4/data\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 42 43 44 45 46 47 48 49 )} 
wvSetPosition -win $_nWave1 {("G1" 49)}
wvSetPosition -win $_nWave1 {("G1" 49)}
wvSetPosition -win $_nWave1 {("G1" 49)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/tb_thumb/UUT/step1/IF_IR\[15:0\]} \
{/tb_thumb/UUT/step1/IF_PC\[31:0\]} \
{/tb_thumb/UUT/step1/PC\[31:0\]} \
{/tb_thumb/UUT/step1/branch_taken} \
{/tb_thumb/UUT/step1/branch_target\[31:0\]} \
{/tb_thumb/UUT/step1/clk} \
{/tb_thumb/UUT/step1/instruction\[15:0\]} \
{/tb_thumb/UUT/step1/n_Logic1_} \
{/tb_thumb/UUT/step1/read_instruction_n} \
{/tb_thumb/UUT/step1/reset_n} \
{/tb_thumb/UUT/step2/ID_PC\[31:0\]} \
{/tb_thumb/UUT/step2/ID_Rd\[31:0\]} \
{/tb_thumb/UUT/step2/ID_Rd_code\[2:0\]} \
{/tb_thumb/UUT/step2/ID_Rm_Rs\[31:0\]} \
{/tb_thumb/UUT/step2/ID_Rn\[31:0\]} \
{/tb_thumb/UUT/step2/ID_cond\[3:0\]} \
{/tb_thumb/UUT/step2/ID_imm_offset\[10:0\]} \
{/tb_thumb/UUT/step2/ID_opcode\[5:0\]} \
{/tb_thumb/UUT/step2/IF_IR\[15:0\]} \
{/tb_thumb/UUT/step2/IF_PC\[31:0\]} \
{/tb_thumb/UUT/step2/R_arr\[255:0\]} \
{/tb_thumb/UUT/step2/branch_taken} \
{/tb_thumb/UUT/step2/reset_n} \
{/tb_thumb/UUT/step3/ALU_out\[32:0\]} \
{/tb_thumb/UUT/step3/DR\[31:0\]} \
{/tb_thumb/UUT/step3/EX_ALU_out\[31:0\]} \
{/tb_thumb/UUT/step3/EX_Rd_code\[2:0\]} \
{/tb_thumb/UUT/step3/EX_imm_offset\[7:0\]} \
{/tb_thumb/UUT/step3/EX_opcode\[5:0\]} \
{/tb_thumb/UUT/step3/ID_PC\[31:0\]} \
{/tb_thumb/UUT/step3/ID_Rd\[31:0\]} \
{/tb_thumb/UUT/step3/ID_Rd_code\[2:0\]} \
{/tb_thumb/UUT/step3/ID_Rm_Rs\[31:0\]} \
{/tb_thumb/UUT/step3/ID_Rn\[31:0\]} \
{/tb_thumb/UUT/step3/ID_cond\[3:0\]} \
{/tb_thumb/UUT/step3/ID_imm_offset\[10:0\]} \
{/tb_thumb/UUT/step3/ID_opcode\[5:0\]} \
{/tb_thumb/UUT/step3/LR\[31:0\]} \
{/tb_thumb/UUT/step3/read_data_n} \
{/tb_thumb/UUT/step3/reset_n} \
{/tb_thumb/UUT/step3/write_data_n} \
{/tb_thumb/UUT/step4/EX_ALU_out\[31:0\]} \
{/tb_thumb/UUT/step4/EX_Rd_code\[2:0\]} \
{/tb_thumb/UUT/step4/EX_imm_offset\[7:1\]} \
{/tb_thumb/UUT/step4/EX_opcode\[5:0\]} \
{/tb_thumb/UUT/step4/R_arr\[255:0\]} \
{/tb_thumb/UUT/step4/\\EX_imm_offset\[7:1\] } \
{/tb_thumb/UUT/step4/clk} \
{/tb_thumb/UUT/step4/data\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 42 43 44 45 46 47 48 49 )} 
wvSetPosition -win $_nWave1 {("G1" 49)}
wvGetSignalClose -win $_nWave1
wvResizeWindow -win $_nWave1 0 23 1920 1009
wvSelectAll -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 \
           40 41 42 43 44 45 46 47 48 49 )} 
wvSetRadix -win $_nWave1 -format UDec
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvResizeWindow -win $_nWave1 0 23 1920 1009
wvScrollDown -win $_nWave1 4
wvScrollUp -win $_nWave1 4
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 2
wvScrollUp -win $_nWave1 3
wvScrollDown -win $_nWave1 1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 48)}
wvSetCursor -win $_nWave1 9449968.966369 -snap {("G1" 24)}
wvSetCursor -win $_nWave1 15649991.805550 -snap {("G1" 25)}
wvSetCursor -win $_nWave1 15450005.846660
wvSetCursor -win $_nWave1 15449991.970034
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 11761025.339507 -snap {("G1" 17)}
wvScrollDown -win $_nWave1 6
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 7
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSetCursor -win $_nWave1 11267920.077523 -snap {("G1" 28)}
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvScrollDown -win $_nWave1 4
wvScrollDown -win $_nWave1 3
wvScrollUp -win $_nWave1 2
wvSelectSignal -win $_nWave1 {( "G1" 29 30 31 32 33 34 35 36 37 38 39 40 41 42 \
           43 44 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 32)}
wvResizeWindow -win $_nWave1 0 23 1920 1009
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 31)}
wvExit
