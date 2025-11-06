/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_640(char*, char *);
extern void execute_641(char*, char *);
extern void execute_1343(char*, char *);
extern void execute_1344(char*, char *);
extern void execute_1345(char*, char *);
extern void execute_1346(char*, char *);
extern void execute_1347(char*, char *);
extern void execute_1348(char*, char *);
extern void execute_4(char*, char *);
extern void execute_646(char*, char *);
extern void execute_670(char*, char *);
extern void execute_671(char*, char *);
extern void execute_672(char*, char *);
extern void execute_55(char*, char *);
extern void execute_674(char*, char *);
extern void execute_675(char*, char *);
extern void execute_676(char*, char *);
extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_1111(char*, char *);
extern void execute_1112(char*, char *);
extern void execute_92(char*, char *);
extern void execute_93(char*, char *);
extern void execute_94(char*, char *);
extern void execute_724(char*, char *);
extern void execute_725(char*, char *);
extern void execute_726(char*, char *);
extern void execute_727(char*, char *);
extern void execute_125(char*, char *);
extern void execute_757(char*, char *);
extern void execute_758(char*, char *);
extern void execute_759(char*, char *);
extern void execute_760(char*, char *);
extern void execute_756(char*, char *);
extern void execute_128(char*, char *);
extern void execute_129(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg(char*, char*, char*);
extern void execute_140(char*, char *);
extern void execute_141(char*, char *);
extern void execute_177(char*, char *);
extern void execute_178(char*, char *);
extern void execute_211(char*, char *);
extern void execute_808(char*, char *);
extern void execute_809(char*, char *);
extern void execute_810(char*, char *);
extern void execute_811(char*, char *);
extern void execute_812(char*, char *);
extern void execute_813(char*, char *);
extern void execute_814(char*, char *);
extern void execute_815(char*, char *);
extern void execute_807(char*, char *);
extern void execute_434(char*, char *);
extern void execute_960(char*, char *);
extern void execute_961(char*, char *);
extern void execute_959(char*, char *);
extern void execute_1044(char*, char *);
extern void execute_1045(char*, char *);
extern void execute_1046(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_1049(char*, char *);
extern void execute_1050(char*, char *);
extern void execute_1051(char*, char *);
extern void execute_1052(char*, char *);
extern void execute_1314(char*, char *);
extern void execute_1315(char*, char *);
extern void execute_1319(char*, char *);
extern void execute_1320(char*, char *);
extern void execute_1322(char*, char *);
extern void execute_1323(char*, char *);
extern void execute_1328(char*, char *);
extern void execute_1332(char*, char *);
extern void execute_643(char*, char *);
extern void execute_644(char*, char *);
extern void execute_645(char*, char *);
extern void execute_1349(char*, char *);
extern void execute_1350(char*, char *);
extern void execute_1351(char*, char *);
extern void execute_1352(char*, char *);
extern void execute_1353(char*, char *);
extern void transaction_25(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_26(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_34(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_35(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_36(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_37(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_38(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_39(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_40(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_41(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_42(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_43(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_44(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_45(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_46(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_47(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_48(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_49(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_50(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_51(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_52(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_53(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_54(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_55(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_56(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_57(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_58(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_59(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_60(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_61(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_62(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_63(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_66(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_67(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_68(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_69(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_70(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_71(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_72(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_73(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_75(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_76(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_77(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_78(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_79(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_80(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_81(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_82(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_83(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_84(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_85(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_86(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_87(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_88(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_89(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_91(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_92(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_93(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_94(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_95(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_96(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_97(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_98(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_172(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_173(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_174(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_175(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_176(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_177(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_178(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_179(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_180(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_181(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_182(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_183(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_184(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_186(char*, char*, unsigned, unsigned, unsigned);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_846(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_852(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_853(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_855(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_856(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_857(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_858(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_859(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_860(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_861(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_862(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_863(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_864(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_865(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_866(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_867(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_868(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_869(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_870(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_871(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_872(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_873(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_874(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_875(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_876(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_877(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_878(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_879(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_880(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_882(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_883(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_884(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_885(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_886(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_887(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_888(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_889(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_213(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_218(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_223(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_228(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_233(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_238(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_243(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_248(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_762(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_767(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_772(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_777(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_791(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_796(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_801(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_806(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_819(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1021(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1026(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1039(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1044(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1049(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1054(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1081(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1101(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1106(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1120(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1134(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1139(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1144(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1167(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1172(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1177(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[226] = {(funcp)execute_640, (funcp)execute_641, (funcp)execute_1343, (funcp)execute_1344, (funcp)execute_1345, (funcp)execute_1346, (funcp)execute_1347, (funcp)execute_1348, (funcp)execute_4, (funcp)execute_646, (funcp)execute_670, (funcp)execute_671, (funcp)execute_672, (funcp)execute_55, (funcp)execute_674, (funcp)execute_675, (funcp)execute_676, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_1111, (funcp)execute_1112, (funcp)execute_92, (funcp)execute_93, (funcp)execute_94, (funcp)execute_724, (funcp)execute_725, (funcp)execute_726, (funcp)execute_727, (funcp)execute_125, (funcp)execute_757, (funcp)execute_758, (funcp)execute_759, (funcp)execute_760, (funcp)execute_756, (funcp)execute_128, (funcp)execute_129, (funcp)vlog_simple_process_execute_0_fast_no_reg, (funcp)execute_140, (funcp)execute_141, (funcp)execute_177, (funcp)execute_178, (funcp)execute_211, (funcp)execute_808, (funcp)execute_809, (funcp)execute_810, (funcp)execute_811, (funcp)execute_812, (funcp)execute_813, (funcp)execute_814, (funcp)execute_815, (funcp)execute_807, (funcp)execute_434, (funcp)execute_960, (funcp)execute_961, (funcp)execute_959, (funcp)execute_1044, (funcp)execute_1045, (funcp)execute_1046, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_1049, (funcp)execute_1050, (funcp)execute_1051, (funcp)execute_1052, (funcp)execute_1314, (funcp)execute_1315, (funcp)execute_1319, (funcp)execute_1320, (funcp)execute_1322, (funcp)execute_1323, (funcp)execute_1328, (funcp)execute_1332, (funcp)execute_643, (funcp)execute_644, (funcp)execute_645, (funcp)execute_1349, (funcp)execute_1350, (funcp)execute_1351, (funcp)execute_1352, (funcp)execute_1353, (funcp)transaction_25, (funcp)transaction_26, (funcp)transaction_34, (funcp)transaction_35, (funcp)transaction_36, (funcp)transaction_37, (funcp)transaction_38, (funcp)transaction_39, (funcp)transaction_40, (funcp)transaction_41, (funcp)transaction_42, (funcp)transaction_43, (funcp)transaction_44, (funcp)transaction_45, (funcp)transaction_46, (funcp)transaction_47, (funcp)transaction_48, (funcp)transaction_49, (funcp)transaction_50, (funcp)transaction_51, (funcp)transaction_52, (funcp)transaction_53, (funcp)transaction_54, (funcp)transaction_55, (funcp)transaction_56, (funcp)transaction_57, (funcp)transaction_58, (funcp)transaction_59, (funcp)transaction_60, (funcp)transaction_61, (funcp)transaction_62, (funcp)transaction_63, (funcp)transaction_66, (funcp)transaction_67, (funcp)transaction_68, (funcp)transaction_69, (funcp)transaction_70, (funcp)transaction_71, (funcp)transaction_72, (funcp)transaction_73, (funcp)transaction_75, (funcp)transaction_76, (funcp)transaction_77, (funcp)transaction_78, (funcp)transaction_79, (funcp)transaction_80, (funcp)transaction_81, (funcp)transaction_82, (funcp)transaction_83, (funcp)transaction_84, (funcp)transaction_85, (funcp)transaction_86, (funcp)transaction_87, (funcp)transaction_88, (funcp)transaction_89, (funcp)transaction_91, (funcp)transaction_92, (funcp)transaction_93, (funcp)transaction_94, (funcp)transaction_95, (funcp)transaction_96, (funcp)transaction_97, (funcp)transaction_98, (funcp)transaction_172, (funcp)transaction_173, (funcp)transaction_174, (funcp)transaction_175, (funcp)transaction_176, (funcp)transaction_177, (funcp)transaction_178, (funcp)transaction_179, (funcp)transaction_180, (funcp)transaction_181, (funcp)transaction_182, (funcp)transaction_183, (funcp)transaction_184, (funcp)transaction_186, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_846, (funcp)transaction_852, (funcp)transaction_853, (funcp)transaction_855, (funcp)transaction_856, (funcp)transaction_857, (funcp)transaction_858, (funcp)transaction_859, (funcp)transaction_860, (funcp)transaction_861, (funcp)transaction_862, (funcp)transaction_863, (funcp)transaction_864, (funcp)transaction_865, (funcp)transaction_866, (funcp)transaction_867, (funcp)transaction_868, (funcp)transaction_869, (funcp)transaction_870, (funcp)transaction_871, (funcp)transaction_872, (funcp)transaction_873, (funcp)transaction_874, (funcp)transaction_875, (funcp)transaction_876, (funcp)transaction_877, (funcp)transaction_878, (funcp)transaction_879, (funcp)transaction_880, (funcp)transaction_882, (funcp)transaction_883, (funcp)transaction_884, (funcp)transaction_885, (funcp)transaction_886, (funcp)transaction_887, (funcp)transaction_888, (funcp)transaction_889, (funcp)transaction_213, (funcp)transaction_218, (funcp)transaction_223, (funcp)transaction_228, (funcp)transaction_233, (funcp)transaction_238, (funcp)transaction_243, (funcp)transaction_248, (funcp)transaction_762, (funcp)transaction_767, (funcp)transaction_772, (funcp)transaction_777, (funcp)transaction_791, (funcp)transaction_796, (funcp)transaction_801, (funcp)transaction_806, (funcp)transaction_819, (funcp)transaction_1021, (funcp)transaction_1026, (funcp)transaction_1039, (funcp)transaction_1044, (funcp)transaction_1049, (funcp)transaction_1054, (funcp)transaction_1081, (funcp)transaction_1101, (funcp)transaction_1106, (funcp)transaction_1120, (funcp)transaction_1134, (funcp)transaction_1139, (funcp)transaction_1144, (funcp)transaction_1167, (funcp)transaction_1172, (funcp)transaction_1177};
const int NumRelocateId= 226;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/pre_syn_testbench_func_impl/xsim.reloc",  (void **)funcTab, 226);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/pre_syn_testbench_func_impl/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void wrapper_func_0(char *dp)

{

}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/pre_syn_testbench_func_impl/xsim.reloc");
	wrapper_func_0(dp);

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstatiate();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/pre_syn_testbench_func_impl/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/pre_syn_testbench_func_impl/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/pre_syn_testbench_func_impl/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
