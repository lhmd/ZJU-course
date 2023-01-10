/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "E:/SOPHOMORE_AW/Digital Logic Design/lab/lab5/D_74LS138_SCH/D_74LS138_SCH_sim.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};
static int ng3[] = {7, 0};

static void NetReassign_47_1(char *);
static void NetReassign_48_2(char *);
static void NetReassign_49_3(char *);
static void NetReassign_52_4(char *);
static void NetReassign_53_5(char *);
static void NetReassign_54_6(char *);
static void NetReassign_57_7(char *);
static void NetReassign_58_8(char *);
static void NetReassign_59_9(char *);


static void Initial_33_0(char *t0)
{
    char t6[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    t1 = (t0 + 1904U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(33, ng0);

LAB4:    xsi_set_current_line(34, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1288);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(35, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 828);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(36, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 920);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(38, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1012);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(39, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1104);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(40, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1196);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(41, ng0);
    t2 = (t0 + 1804);
    xsi_process_wait(t2, 50000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(43, ng0);
    xsi_set_current_line(43, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1380);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB6:    t2 = (t0 + 1380);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t6, 0, 8);
    xsi_vlog_signed_leq(t6, 32, t4, 32, t5, 32);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB7;

LAB8:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 1012);
    xsi_set_assignedflag(t2);
    t3 = (t0 + 4736);
    *((int *)t3) = 1;
    NetReassign_47_1(t0);
    xsi_set_current_line(48, ng0);
    t2 = (t0 + 1104);
    xsi_set_assignedflag(t2);
    t3 = (t0 + 4740);
    *((int *)t3) = 1;
    NetReassign_48_2(t0);
    xsi_set_current_line(49, ng0);
    t2 = (t0 + 1196);
    xsi_set_assignedflag(t2);
    t3 = (t0 + 4744);
    *((int *)t3) = 1;
    NetReassign_49_3(t0);
    xsi_set_current_line(50, ng0);
    t2 = (t0 + 1804);
    xsi_process_wait(t2, 50000LL);
    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB7:    xsi_set_current_line(43, ng0);

LAB9:    xsi_set_current_line(44, ng0);
    t13 = (t0 + 1380);
    t14 = (t13 + 36U);
    t15 = *((char **)t14);
    t16 = (t0 + 920);
    xsi_vlogvar_assign_value(t16, t15, 0, 0, 1);
    t17 = (t0 + 828);
    xsi_vlogvar_assign_value(t17, t15, 1, 0, 1);
    t18 = (t0 + 1288);
    xsi_vlogvar_assign_value(t18, t15, 2, 0, 1);
    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1804);
    xsi_process_wait(t2, 50000LL);
    *((char **)t1) = &&LAB10;
    goto LAB1;

LAB10:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 1380);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t6, 0, 8);
    xsi_vlog_signed_add(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 1380);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    goto LAB6;

LAB11:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 1012);
    xsi_set_assignedflag(t2);
    t3 = (t0 + 4748);
    *((int *)t3) = 1;
    NetReassign_52_4(t0);
    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1104);
    xsi_set_assignedflag(t2);
    t3 = (t0 + 4752);
    *((int *)t3) = 1;
    NetReassign_53_5(t0);
    xsi_set_current_line(54, ng0);
    t2 = (t0 + 1196);
    xsi_set_assignedflag(t2);
    t3 = (t0 + 4756);
    *((int *)t3) = 1;
    NetReassign_54_6(t0);
    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1804);
    xsi_process_wait(t2, 50000LL);
    *((char **)t1) = &&LAB12;
    goto LAB1;

LAB12:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 1012);
    xsi_set_assignedflag(t2);
    t3 = (t0 + 4760);
    *((int *)t3) = 1;
    NetReassign_57_7(t0);
    xsi_set_current_line(58, ng0);
    t2 = (t0 + 1104);
    xsi_set_assignedflag(t2);
    t3 = (t0 + 4764);
    *((int *)t3) = 1;
    NetReassign_58_8(t0);
    xsi_set_current_line(59, ng0);
    t2 = (t0 + 1196);
    xsi_set_assignedflag(t2);
    t3 = (t0 + 4768);
    *((int *)t3) = 1;
    NetReassign_59_9(t0);
    xsi_set_current_line(60, ng0);
    t2 = (t0 + 1804);
    xsi_process_wait(t2, 50000LL);
    *((char **)t1) = &&LAB13;
    goto LAB1;

LAB13:    goto LAB1;

}

static void NetReassign_47_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 2048U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(47, ng0);
    t3 = 0;
    t2 = ((char*)((ng1)));
    t4 = (t0 + 4736);
    if (*((int *)t4) > 0)
        goto LAB4;

LAB5:
LAB1:    return;
LAB4:    t5 = (t0 + 1012);
    xsi_vlogvar_assignassignvalue(t5, t2, 0, 0, 0, 1, ((int*)(t4)));
    t3 = 1;
    goto LAB5;

}

static void NetReassign_48_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 2192U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(48, ng0);
    t3 = 0;
    t2 = ((char*)((ng1)));
    t4 = (t0 + 4740);
    if (*((int *)t4) > 0)
        goto LAB4;

LAB5:
LAB1:    return;
LAB4:    t5 = (t0 + 1104);
    xsi_vlogvar_assignassignvalue(t5, t2, 0, 0, 0, 1, ((int*)(t4)));
    t3 = 1;
    goto LAB5;

}

static void NetReassign_49_3(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 2336U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(49, ng0);
    t3 = 0;
    t2 = ((char*)((ng1)));
    t4 = (t0 + 4744);
    if (*((int *)t4) > 0)
        goto LAB4;

LAB5:
LAB1:    return;
LAB4:    t5 = (t0 + 1196);
    xsi_vlogvar_assignassignvalue(t5, t2, 0, 0, 0, 1, ((int*)(t4)));
    t3 = 1;
    goto LAB5;

}

static void NetReassign_52_4(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 2480U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(52, ng0);
    t3 = 0;
    t2 = ((char*)((ng2)));
    t4 = (t0 + 4748);
    if (*((int *)t4) > 0)
        goto LAB4;

LAB5:
LAB1:    return;
LAB4:    t5 = (t0 + 1012);
    xsi_vlogvar_assignassignvalue(t5, t2, 0, 0, 0, 1, ((int*)(t4)));
    t3 = 1;
    goto LAB5;

}

static void NetReassign_53_5(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 2624U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(53, ng0);
    t3 = 0;
    t2 = ((char*)((ng2)));
    t4 = (t0 + 4752);
    if (*((int *)t4) > 0)
        goto LAB4;

LAB5:
LAB1:    return;
LAB4:    t5 = (t0 + 1104);
    xsi_vlogvar_assignassignvalue(t5, t2, 0, 0, 0, 1, ((int*)(t4)));
    t3 = 1;
    goto LAB5;

}

static void NetReassign_54_6(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 2768U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(54, ng0);
    t3 = 0;
    t2 = ((char*)((ng1)));
    t4 = (t0 + 4756);
    if (*((int *)t4) > 0)
        goto LAB4;

LAB5:
LAB1:    return;
LAB4:    t5 = (t0 + 1196);
    xsi_vlogvar_assignassignvalue(t5, t2, 0, 0, 0, 1, ((int*)(t4)));
    t3 = 1;
    goto LAB5;

}

static void NetReassign_57_7(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 2912U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(57, ng0);
    t3 = 0;
    t2 = ((char*)((ng2)));
    t4 = (t0 + 4760);
    if (*((int *)t4) > 0)
        goto LAB4;

LAB5:
LAB1:    return;
LAB4:    t5 = (t0 + 1012);
    xsi_vlogvar_assignassignvalue(t5, t2, 0, 0, 0, 1, ((int*)(t4)));
    t3 = 1;
    goto LAB5;

}

static void NetReassign_58_8(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 3056U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(58, ng0);
    t3 = 0;
    t2 = ((char*)((ng1)));
    t4 = (t0 + 4764);
    if (*((int *)t4) > 0)
        goto LAB4;

LAB5:
LAB1:    return;
LAB4:    t5 = (t0 + 1104);
    xsi_vlogvar_assignassignvalue(t5, t2, 0, 0, 0, 1, ((int*)(t4)));
    t3 = 1;
    goto LAB5;

}

static void NetReassign_59_9(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 3200U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(59, ng0);
    t3 = 0;
    t2 = ((char*)((ng2)));
    t4 = (t0 + 4768);
    if (*((int *)t4) > 0)
        goto LAB4;

LAB5:
LAB1:    return;
LAB4:    t5 = (t0 + 1196);
    xsi_vlogvar_assignassignvalue(t5, t2, 0, 0, 0, 1, ((int*)(t4)));
    t3 = 1;
    goto LAB5;

}


extern void work_m_00000000002369084126_1880772334_init()
{
	static char *pe[] = {(void *)Initial_33_0,(void *)NetReassign_47_1,(void *)NetReassign_48_2,(void *)NetReassign_49_3,(void *)NetReassign_52_4,(void *)NetReassign_53_5,(void *)NetReassign_54_6,(void *)NetReassign_57_7,(void *)NetReassign_58_8,(void *)NetReassign_59_9};
	xsi_register_didat("work_m_00000000002369084126_1880772334", "isim/D_74LS138_D_74LS138_sch_tb_isim_beh.exe.sim/work/m_00000000002369084126_1880772334.didat");
	xsi_register_executes(pe);
}
