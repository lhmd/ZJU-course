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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/OneDrive - zju.edu.cn/ZJUer/DigitalLogicExp/lab12/My74LS161/my74LS161.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {0U, 0U};
static unsigned int ng3[] = {1U, 0U};
static unsigned int ng4[] = {15U, 0U};



static void Always_32_0(char *t0)
{
    char t4[8];
    char t31[8];
    char t36[8];
    char t53[8];
    char t67[8];
    char t74[8];
    char t106[8];
    char t114[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    char *t42;
    char *t43;
    char *t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    char *t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    char *t60;
    char *t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    char *t65;
    char *t66;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    char *t73;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    char *t78;
    char *t79;
    char *t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    char *t88;
    char *t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    int t98;
    int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    unsigned int t105;
    char *t107;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    unsigned int t112;
    char *t113;
    unsigned int t115;
    unsigned int t116;
    unsigned int t117;
    char *t118;
    char *t119;
    char *t120;
    unsigned int t121;
    unsigned int t122;
    unsigned int t123;
    unsigned int t124;
    unsigned int t125;
    unsigned int t126;
    unsigned int t127;
    char *t128;
    char *t129;
    unsigned int t130;
    unsigned int t131;
    unsigned int t132;
    int t133;
    unsigned int t134;
    unsigned int t135;
    unsigned int t136;
    int t137;
    unsigned int t138;
    unsigned int t139;
    unsigned int t140;
    unsigned int t141;
    char *t142;
    unsigned int t143;
    unsigned int t144;
    unsigned int t145;
    unsigned int t146;
    unsigned int t147;
    char *t148;
    char *t149;
    char *t150;
    char *t151;

LAB0:    t1 = (t0 + 3328U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 3648);
    *((int *)t2) = 1;
    t3 = (t0 + 3360);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(32, ng0);

LAB5:    xsi_set_current_line(33, ng0);
    t5 = (t0 + 1528U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB9;

LAB7:    if (*((unsigned int *)t5) == 0)
        goto LAB6;

LAB8:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB9:    t13 = (t4 + 4);
    t14 = (t6 + 4);
    t15 = *((unsigned int *)t6);
    t16 = (~(t15));
    *((unsigned int *)t4) = t16;
    *((unsigned int *)t13) = 0;
    if (*((unsigned int *)t14) != 0)
        goto LAB11;

LAB10:    t21 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t21 & 1U);
    t22 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t22 & 1U);
    t23 = (t4 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t4);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB12;

LAB13:    xsi_set_current_line(38, ng0);

LAB20:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB24;

LAB22:    if (*((unsigned int *)t2) == 0)
        goto LAB21;

LAB23:    t5 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t5) = 1;

LAB24:    t6 = (t4 + 4);
    t12 = (t3 + 4);
    t15 = *((unsigned int *)t3);
    t16 = (~(t15));
    *((unsigned int *)t4) = t16;
    *((unsigned int *)t6) = 0;
    if (*((unsigned int *)t12) != 0)
        goto LAB26;

LAB25:    t21 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t21 & 1U);
    t22 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t22 & 1U);
    memset(t31, 0, 8);
    t13 = (t4 + 4);
    t24 = *((unsigned int *)t13);
    t25 = (~(t24));
    t26 = *((unsigned int *)t4);
    t27 = (t26 & t25);
    t28 = (t27 & 1U);
    if (t28 != 0)
        goto LAB27;

LAB28:    if (*((unsigned int *)t13) != 0)
        goto LAB29;

LAB30:    t23 = (t31 + 4);
    t32 = *((unsigned int *)t31);
    t33 = (!(t32));
    t34 = *((unsigned int *)t23);
    t35 = (t33 || t34);
    if (t35 > 0)
        goto LAB31;

LAB32:    memcpy(t114, t31, 8);

LAB33:    t142 = (t114 + 4);
    t143 = *((unsigned int *)t142);
    t144 = (~(t143));
    t145 = *((unsigned int *)t114);
    t146 = (t145 & t144);
    t147 = (t146 != 0);
    if (t147 > 0)
        goto LAB61;

LAB62:    xsi_set_current_line(44, ng0);

LAB65:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 2248);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng3)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 4, t5, 4, t6, 4);
    t12 = (t0 + 2248);
    xsi_vlogvar_assign_value(t12, t4, 0, 0, 4);

LAB63:    xsi_set_current_line(47, ng0);

LAB66:    xsi_set_current_line(48, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB70;

LAB68:    if (*((unsigned int *)t2) == 0)
        goto LAB67;

LAB69:    t5 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t5) = 1;

LAB70:    t6 = (t4 + 4);
    t12 = (t3 + 4);
    t15 = *((unsigned int *)t3);
    t16 = (~(t15));
    *((unsigned int *)t4) = t16;
    *((unsigned int *)t6) = 0;
    if (*((unsigned int *)t12) != 0)
        goto LAB72;

LAB71:    t21 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t21 & 1U);
    t22 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t22 & 1U);
    t13 = (t4 + 4);
    t24 = *((unsigned int *)t13);
    t25 = (~(t24));
    t26 = *((unsigned int *)t4);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB73;

LAB74:
LAB75:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 2248);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng4)));
    memset(t4, 0, 8);
    t12 = (t5 + 4);
    t13 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = *((unsigned int *)t6);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t12);
    t11 = *((unsigned int *)t13);
    t15 = (t10 ^ t11);
    t16 = (t9 | t15);
    t17 = *((unsigned int *)t12);
    t18 = *((unsigned int *)t13);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB80;

LAB77:    if (t19 != 0)
        goto LAB79;

LAB78:    *((unsigned int *)t4) = 1;

LAB80:    t23 = (t0 + 2408);
    xsi_vlogvar_assign_value(t23, t4, 0, 0, 1);

LAB14:    goto LAB2;

LAB6:    *((unsigned int *)t4) = 1;
    goto LAB9;

LAB11:    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t14);
    *((unsigned int *)t4) = (t17 | t18);
    t19 = *((unsigned int *)t13);
    t20 = *((unsigned int *)t14);
    *((unsigned int *)t13) = (t19 | t20);
    goto LAB10;

LAB12:    xsi_set_current_line(33, ng0);

LAB15:    xsi_set_current_line(34, ng0);
    t29 = ((char*)((ng1)));
    t30 = (t0 + 2248);
    xsi_vlogvar_assign_value(t30, t29, 0, 0, 4);
    xsi_set_current_line(35, ng0);
    t2 = (t0 + 2248);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng2)));
    memset(t4, 0, 8);
    t12 = (t5 + 4);
    t13 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = *((unsigned int *)t6);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t12);
    t11 = *((unsigned int *)t13);
    t15 = (t10 ^ t11);
    t16 = (t9 | t15);
    t17 = *((unsigned int *)t12);
    t18 = *((unsigned int *)t13);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB19;

LAB16:    if (t19 != 0)
        goto LAB18;

LAB17:    *((unsigned int *)t4) = 1;

LAB19:    t23 = (t0 + 2408);
    xsi_vlogvar_assign_value(t23, t4, 0, 0, 1);
    goto LAB14;

LAB18:    t14 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB19;

LAB21:    *((unsigned int *)t4) = 1;
    goto LAB24;

LAB26:    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t12);
    *((unsigned int *)t4) = (t17 | t18);
    t19 = *((unsigned int *)t6);
    t20 = *((unsigned int *)t12);
    *((unsigned int *)t6) = (t19 | t20);
    goto LAB25;

LAB27:    *((unsigned int *)t31) = 1;
    goto LAB30;

LAB29:    t14 = (t31 + 4);
    *((unsigned int *)t31) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB30;

LAB31:    t29 = (t0 + 1208U);
    t30 = *((char **)t29);
    memset(t36, 0, 8);
    t29 = (t30 + 4);
    t37 = *((unsigned int *)t29);
    t38 = (~(t37));
    t39 = *((unsigned int *)t30);
    t40 = (t39 & t38);
    t41 = (t40 & 1U);
    if (t41 != 0)
        goto LAB37;

LAB35:    if (*((unsigned int *)t29) == 0)
        goto LAB34;

LAB36:    t42 = (t36 + 4);
    *((unsigned int *)t36) = 1;
    *((unsigned int *)t42) = 1;

LAB37:    t43 = (t36 + 4);
    t44 = (t30 + 4);
    t45 = *((unsigned int *)t30);
    t46 = (~(t45));
    *((unsigned int *)t36) = t46;
    *((unsigned int *)t43) = 0;
    if (*((unsigned int *)t44) != 0)
        goto LAB39;

LAB38:    t51 = *((unsigned int *)t36);
    *((unsigned int *)t36) = (t51 & 1U);
    t52 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t52 & 1U);
    memset(t53, 0, 8);
    t54 = (t36 + 4);
    t55 = *((unsigned int *)t54);
    t56 = (~(t55));
    t57 = *((unsigned int *)t36);
    t58 = (t57 & t56);
    t59 = (t58 & 1U);
    if (t59 != 0)
        goto LAB40;

LAB41:    if (*((unsigned int *)t54) != 0)
        goto LAB42;

LAB43:    t61 = (t53 + 4);
    t62 = *((unsigned int *)t53);
    t63 = *((unsigned int *)t61);
    t64 = (t62 || t63);
    if (t64 > 0)
        goto LAB44;

LAB45:    memcpy(t74, t53, 8);

LAB46:    memset(t106, 0, 8);
    t107 = (t74 + 4);
    t108 = *((unsigned int *)t107);
    t109 = (~(t108));
    t110 = *((unsigned int *)t74);
    t111 = (t110 & t109);
    t112 = (t111 & 1U);
    if (t112 != 0)
        goto LAB54;

LAB55:    if (*((unsigned int *)t107) != 0)
        goto LAB56;

LAB57:    t115 = *((unsigned int *)t31);
    t116 = *((unsigned int *)t106);
    t117 = (t115 | t116);
    *((unsigned int *)t114) = t117;
    t118 = (t31 + 4);
    t119 = (t106 + 4);
    t120 = (t114 + 4);
    t121 = *((unsigned int *)t118);
    t122 = *((unsigned int *)t119);
    t123 = (t121 | t122);
    *((unsigned int *)t120) = t123;
    t124 = *((unsigned int *)t120);
    t125 = (t124 != 0);
    if (t125 == 1)
        goto LAB58;

LAB59:
LAB60:    goto LAB33;

LAB34:    *((unsigned int *)t36) = 1;
    goto LAB37;

LAB39:    t47 = *((unsigned int *)t36);
    t48 = *((unsigned int *)t44);
    *((unsigned int *)t36) = (t47 | t48);
    t49 = *((unsigned int *)t43);
    t50 = *((unsigned int *)t44);
    *((unsigned int *)t43) = (t49 | t50);
    goto LAB38;

LAB40:    *((unsigned int *)t53) = 1;
    goto LAB43;

LAB42:    t60 = (t53 + 4);
    *((unsigned int *)t53) = 1;
    *((unsigned int *)t60) = 1;
    goto LAB43;

LAB44:    t65 = (t0 + 1368U);
    t66 = *((char **)t65);
    memset(t67, 0, 8);
    t65 = (t66 + 4);
    t68 = *((unsigned int *)t65);
    t69 = (~(t68));
    t70 = *((unsigned int *)t66);
    t71 = (t70 & t69);
    t72 = (t71 & 1U);
    if (t72 != 0)
        goto LAB47;

LAB48:    if (*((unsigned int *)t65) != 0)
        goto LAB49;

LAB50:    t75 = *((unsigned int *)t53);
    t76 = *((unsigned int *)t67);
    t77 = (t75 & t76);
    *((unsigned int *)t74) = t77;
    t78 = (t53 + 4);
    t79 = (t67 + 4);
    t80 = (t74 + 4);
    t81 = *((unsigned int *)t78);
    t82 = *((unsigned int *)t79);
    t83 = (t81 | t82);
    *((unsigned int *)t80) = t83;
    t84 = *((unsigned int *)t80);
    t85 = (t84 != 0);
    if (t85 == 1)
        goto LAB51;

LAB52:
LAB53:    goto LAB46;

LAB47:    *((unsigned int *)t67) = 1;
    goto LAB50;

LAB49:    t73 = (t67 + 4);
    *((unsigned int *)t67) = 1;
    *((unsigned int *)t73) = 1;
    goto LAB50;

LAB51:    t86 = *((unsigned int *)t74);
    t87 = *((unsigned int *)t80);
    *((unsigned int *)t74) = (t86 | t87);
    t88 = (t53 + 4);
    t89 = (t67 + 4);
    t90 = *((unsigned int *)t53);
    t91 = (~(t90));
    t92 = *((unsigned int *)t88);
    t93 = (~(t92));
    t94 = *((unsigned int *)t67);
    t95 = (~(t94));
    t96 = *((unsigned int *)t89);
    t97 = (~(t96));
    t98 = (t91 & t93);
    t99 = (t95 & t97);
    t100 = (~(t98));
    t101 = (~(t99));
    t102 = *((unsigned int *)t80);
    *((unsigned int *)t80) = (t102 & t100);
    t103 = *((unsigned int *)t80);
    *((unsigned int *)t80) = (t103 & t101);
    t104 = *((unsigned int *)t74);
    *((unsigned int *)t74) = (t104 & t100);
    t105 = *((unsigned int *)t74);
    *((unsigned int *)t74) = (t105 & t101);
    goto LAB53;

LAB54:    *((unsigned int *)t106) = 1;
    goto LAB57;

LAB56:    t113 = (t106 + 4);
    *((unsigned int *)t106) = 1;
    *((unsigned int *)t113) = 1;
    goto LAB57;

LAB58:    t126 = *((unsigned int *)t114);
    t127 = *((unsigned int *)t120);
    *((unsigned int *)t114) = (t126 | t127);
    t128 = (t31 + 4);
    t129 = (t106 + 4);
    t130 = *((unsigned int *)t128);
    t131 = (~(t130));
    t132 = *((unsigned int *)t31);
    t133 = (t132 & t131);
    t134 = *((unsigned int *)t129);
    t135 = (~(t134));
    t136 = *((unsigned int *)t106);
    t137 = (t136 & t135);
    t138 = (~(t133));
    t139 = (~(t137));
    t140 = *((unsigned int *)t120);
    *((unsigned int *)t120) = (t140 & t138);
    t141 = *((unsigned int *)t120);
    *((unsigned int *)t120) = (t141 & t139);
    goto LAB60;

LAB61:    xsi_set_current_line(40, ng0);

LAB64:    xsi_set_current_line(41, ng0);
    t148 = (t0 + 2248);
    t149 = (t148 + 56U);
    t150 = *((char **)t149);
    t151 = (t0 + 2248);
    xsi_vlogvar_assign_value(t151, t150, 0, 0, 4);
    goto LAB63;

LAB67:    *((unsigned int *)t4) = 1;
    goto LAB70;

LAB72:    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t12);
    *((unsigned int *)t4) = (t17 | t18);
    t19 = *((unsigned int *)t6);
    t20 = *((unsigned int *)t12);
    *((unsigned int *)t6) = (t19 | t20);
    goto LAB71;

LAB73:    xsi_set_current_line(49, ng0);

LAB76:    xsi_set_current_line(50, ng0);
    t14 = (t0 + 1848U);
    t23 = *((char **)t14);
    t14 = (t0 + 2248);
    xsi_vlogvar_assign_value(t14, t23, 0, 0, 4);
    goto LAB75;

LAB79:    t14 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB80;

}


extern void work_m_00000000002988346330_4184838040_init()
{
	static char *pe[] = {(void *)Always_32_0};
	xsi_register_didat("work_m_00000000002988346330_4184838040", "isim/my74LS161_sim_isim_beh.exe.sim/work/m_00000000002988346330_4184838040.didat");
	xsi_register_executes(pe);
}
