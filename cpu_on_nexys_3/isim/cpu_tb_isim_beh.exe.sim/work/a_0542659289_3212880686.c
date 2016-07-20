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
static const char *ng0 = "G:/hwpractice/cpu_on_nexys_3/wrbk_ctrl.vhd";
extern char *IEEE_P_2592010699;
extern char *WORK_P_2155368921;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_1605435078_503743352(char *, unsigned char , unsigned char );
char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_0542659289_3212880686_p_0(char *t0)
{
    char t17[16];
    char t19[16];
    char t24[16];
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t18;
    char *t20;
    char *t21;
    int t22;
    unsigned int t23;
    char *t25;
    int t26;
    unsigned char t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    unsigned char t32;
    unsigned char t33;
    int t34;
    int t35;
    int t36;
    int t37;
    int t38;
    int t39;
    char *t40;
    static char *nl0[] = {&&LAB5, &&LAB5, &&LAB3, &&LAB4, &&LAB5, &&LAB5, &&LAB5, &&LAB5, &&LAB5};

LAB0:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = (7 - 15);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (char *)((nl0) + t7);
    goto **((char **)t8);

LAB2:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t7 = *((unsigned char *)t2);
    t27 = (t7 == (unsigned char)3);
    if (t27 != 0)
        goto LAB10;

LAB12:    t1 = (t0 + 992U);
    t27 = xsi_signal_has_event(t1);
    if (t27 == 1)
        goto LAB15;

LAB16:    t7 = (unsigned char)0;

LAB17:    if (t7 != 0)
        goto LAB13;

LAB14:
LAB11:    xsi_set_current_line(105, ng0);
    t1 = (t0 + 3848U);
    t2 = *((char **)t1);
    t7 = *((unsigned char *)t2);
    t1 = (t0 + 1032U);
    t8 = *((char **)t1);
    t27 = *((unsigned char *)t8);
    t32 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t7, t27);
    t1 = (t0 + 5608);
    t9 = (t1 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t32;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(106, ng0);
    t1 = (t0 + 3968U);
    t2 = *((char **)t1);
    t7 = *((unsigned char *)t2);
    t1 = (t0 + 1032U);
    t8 = *((char **)t1);
    t27 = *((unsigned char *)t8);
    t32 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t7, t27);
    t1 = (t0 + 5672);
    t9 = (t1 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t32;
    xsi_driver_first_trans_fast_port(t1);
    t1 = (t0 + 5272);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(59, ng0);
    t9 = (t0 + 8472);
    t11 = (t0 + 1352U);
    t12 = *((char **)t11);
    t13 = (15 - 7);
    t14 = (t13 * 1U);
    t15 = (0 + t14);
    t11 = (t12 + t15);
    t18 = ((IEEE_P_2592010699) + 4024);
    t20 = (t19 + 0U);
    t21 = (t20 + 0U);
    *((int *)t21) = 0;
    t21 = (t20 + 4U);
    *((int *)t21) = 14;
    t21 = (t20 + 8U);
    *((int *)t21) = 1;
    t22 = (14 - 0);
    t23 = (t22 * 1);
    t23 = (t23 + 1);
    t21 = (t20 + 12U);
    *((unsigned int *)t21) = t23;
    t21 = (t24 + 0U);
    t25 = (t21 + 0U);
    *((int *)t25) = 7;
    t25 = (t21 + 4U);
    *((int *)t25) = 0;
    t25 = (t21 + 8U);
    *((int *)t25) = -1;
    t26 = (0 - 7);
    t23 = (t26 * -1);
    t23 = (t23 + 1);
    t25 = (t21 + 12U);
    *((unsigned int *)t25) = t23;
    t16 = xsi_base_array_concat(t16, t17, t18, (char)97, t9, t19, (char)97, t11, t24, (char)101);
    t23 = (15U + 8U);
    t27 = (23U != t23);
    if (t27 == 1)
        goto LAB6;

LAB7:    t25 = (t0 + 5352);
    t28 = (t25 + 56U);
    t29 = *((char **)t28);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    memcpy(t31, t16, 23U);
    xsi_driver_first_trans_fast(t25);
    goto LAB2;

LAB4:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 8487);
    t8 = (t0 + 1352U);
    t9 = *((char **)t8);
    t4 = (15 - 7);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t8 = (t9 + t6);
    t11 = ((IEEE_P_2592010699) + 4024);
    t12 = (t19 + 0U);
    t16 = (t12 + 0U);
    *((int *)t16) = 0;
    t16 = (t12 + 4U);
    *((int *)t16) = 14;
    t16 = (t12 + 8U);
    *((int *)t16) = 1;
    t3 = (14 - 0);
    t13 = (t3 * 1);
    t13 = (t13 + 1);
    t16 = (t12 + 12U);
    *((unsigned int *)t16) = t13;
    t16 = (t24 + 0U);
    t18 = (t16 + 0U);
    *((int *)t18) = 7;
    t18 = (t16 + 4U);
    *((int *)t18) = 0;
    t18 = (t16 + 8U);
    *((int *)t18) = -1;
    t22 = (0 - 7);
    t13 = (t22 * -1);
    t13 = (t13 + 1);
    t18 = (t16 + 12U);
    *((unsigned int *)t18) = t13;
    t10 = xsi_base_array_concat(t10, t17, t11, (char)97, t1, t19, (char)97, t8, t24, (char)101);
    t13 = (15U + 8U);
    t7 = (23U != t13);
    if (t7 == 1)
        goto LAB8;

LAB9:    t18 = (t0 + 5352);
    t20 = (t18 + 56U);
    t21 = *((char **)t20);
    t25 = (t21 + 56U);
    t28 = *((char **)t25);
    memcpy(t28, t10, 23U);
    xsi_driver_first_trans_fast(t18);
    goto LAB2;

LAB5:    xsi_set_current_line(62, ng0);
    goto LAB2;

LAB6:    xsi_size_not_matching(23U, t23, 0);
    goto LAB7;

LAB8:    xsi_size_not_matching(23U, t13, 0);
    goto LAB9;

LAB10:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 3968U);
    t8 = *((char **)t1);
    t1 = (t8 + 0);
    *((unsigned char *)t1) = (unsigned char)2;
    goto LAB11;

LAB13:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 3848U);
    t9 = *((char **)t2);
    t2 = (t9 + 0);
    *((unsigned char *)t2) = (unsigned char)2;
    xsi_set_current_line(68, ng0);
    t1 = (t0 + 3968U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)2;
    xsi_set_current_line(69, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t4 = (15 - 15);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t8 = (t0 + 3728U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    memcpy(t8, t1, 5U);
    xsi_set_current_line(70, ng0);
    t1 = (t0 + 3728U);
    t2 = *((char **)t1);
    t1 = ((WORK_P_2155368921) + 2008U);
    t8 = *((char **)t1);
    t3 = xsi_mem_cmp(t8, t2, 5U);
    if (t3 == 1)
        goto LAB19;

LAB26:    t1 = ((WORK_P_2155368921) + 2248U);
    t9 = *((char **)t1);
    t22 = xsi_mem_cmp(t9, t2, 5U);
    if (t22 == 1)
        goto LAB20;

LAB27:    t1 = ((WORK_P_2155368921) + 1528U);
    t10 = *((char **)t1);
    t26 = xsi_mem_cmp(t10, t2, 5U);
    if (t26 == 1)
        goto LAB21;

LAB28:    t1 = ((WORK_P_2155368921) + 1408U);
    t11 = *((char **)t1);
    t34 = xsi_mem_cmp(t11, t2, 5U);
    if (t34 == 1)
        goto LAB21;

LAB29:    t1 = ((WORK_P_2155368921) + 1648U);
    t12 = *((char **)t1);
    t35 = xsi_mem_cmp(t12, t2, 5U);
    if (t35 == 1)
        goto LAB21;

LAB30:    t1 = ((WORK_P_2155368921) + 1768U);
    t16 = *((char **)t1);
    t36 = xsi_mem_cmp(t16, t2, 5U);
    if (t36 == 1)
        goto LAB21;

LAB31:    t1 = ((WORK_P_2155368921) + 1168U);
    t18 = *((char **)t1);
    t37 = xsi_mem_cmp(t18, t2, 5U);
    if (t37 == 1)
        goto LAB22;

LAB32:    t1 = ((WORK_P_2155368921) + 1288U);
    t20 = *((char **)t1);
    t38 = xsi_mem_cmp(t20, t2, 5U);
    if (t38 == 1)
        goto LAB23;

LAB33:    t1 = ((WORK_P_2155368921) + 2368U);
    t21 = *((char **)t1);
    t39 = xsi_mem_cmp(t21, t2, 5U);
    if (t39 == 1)
        goto LAB24;

LAB34:
LAB25:    xsi_set_current_line(101, ng0);
    t1 = (t0 + 3848U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)2;
    xsi_set_current_line(102, ng0);
    t1 = (t0 + 3968U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)2;

LAB18:    goto LAB11;

LAB15:    t2 = (t0 + 1032U);
    t8 = *((char **)t2);
    t32 = *((unsigned char *)t8);
    t33 = (t32 == (unsigned char)3);
    t7 = t33;
    goto LAB17;

LAB19:    xsi_set_current_line(72, ng0);
    t1 = (t0 + 1352U);
    t25 = *((char **)t1);
    t4 = (15 - 10);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t1 = (t25 + t6);
    t28 = (t0 + 5416);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    t31 = (t30 + 56U);
    t40 = *((char **)t31);
    memcpy(t40, t1, 3U);
    xsi_driver_first_trans_fast_port(t28);
    xsi_set_current_line(73, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 5480);
    t8 = (t1 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(74, ng0);
    t1 = (t0 + 3848U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)3;
    goto LAB18;

LAB20:    xsi_set_current_line(76, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t4 = (15 - 10);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t8 = (t0 + 5416);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 3U);
    xsi_driver_first_trans_fast_port(t8);
    xsi_set_current_line(77, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 5480);
    t8 = (t1 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(78, ng0);
    t1 = (t0 + 3848U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)3;
    goto LAB18;

LAB21:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t4 = (15 - 10);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t8 = (t0 + 5416);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 3U);
    xsi_driver_first_trans_fast_port(t8);
    xsi_set_current_line(81, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 5480);
    t8 = (t1 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(82, ng0);
    t1 = (t0 + 3848U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)3;
    goto LAB18;

LAB22:    xsi_set_current_line(84, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 5544);
    t8 = (t1 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t2, 23U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(85, ng0);
    t1 = (t0 + 3968U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)3;
    goto LAB18;

LAB23:    xsi_set_current_line(87, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t7 = *((unsigned char *)t2);
    t27 = (t7 == (unsigned char)3);
    if (t27 != 0)
        goto LAB36;

LAB38:    xsi_set_current_line(91, ng0);
    t1 = (t0 + 3968U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)2;

LAB37:    goto LAB18;

LAB24:    xsi_set_current_line(94, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t7 = *((unsigned char *)t2);
    t27 = (t7 == (unsigned char)3);
    if (t27 != 0)
        goto LAB41;

LAB43:    xsi_set_current_line(98, ng0);
    t1 = (t0 + 3968U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)2;

LAB42:    goto LAB18;

LAB35:;
LAB36:    xsi_set_current_line(88, ng0);
    t1 = (t0 + 1192U);
    t8 = *((char **)t1);
    t1 = (t0 + 8168U);
    t9 = (t0 + 3432U);
    t10 = *((char **)t9);
    t9 = (t0 + 8312U);
    t11 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t17, t8, t1, t10, t9);
    t12 = (t17 + 12U);
    t4 = *((unsigned int *)t12);
    t5 = (1U * t4);
    t32 = (23U != t5);
    if (t32 == 1)
        goto LAB39;

LAB40:    t16 = (t0 + 5544);
    t18 = (t16 + 56U);
    t20 = *((char **)t18);
    t21 = (t20 + 56U);
    t25 = *((char **)t21);
    memcpy(t25, t11, 23U);
    xsi_driver_first_trans_fast_port(t16);
    xsi_set_current_line(89, ng0);
    t1 = (t0 + 3968U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)3;
    goto LAB37;

LAB39:    xsi_size_not_matching(23U, t5, 0);
    goto LAB40;

LAB41:    xsi_set_current_line(95, ng0);
    t1 = (t0 + 1192U);
    t8 = *((char **)t1);
    t1 = (t0 + 8168U);
    t9 = (t0 + 3432U);
    t10 = *((char **)t9);
    t9 = (t0 + 8312U);
    t11 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t17, t8, t1, t10, t9);
    t12 = (t17 + 12U);
    t4 = *((unsigned int *)t12);
    t5 = (1U * t4);
    t32 = (23U != t5);
    if (t32 == 1)
        goto LAB44;

LAB45:    t16 = (t0 + 5544);
    t18 = (t16 + 56U);
    t20 = *((char **)t18);
    t21 = (t20 + 56U);
    t25 = *((char **)t21);
    memcpy(t25, t11, 23U);
    xsi_driver_first_trans_fast_port(t16);
    xsi_set_current_line(96, ng0);
    t1 = (t0 + 3968U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)3;
    goto LAB42;

LAB44:    xsi_size_not_matching(23U, t5, 0);
    goto LAB45;

}


extern void work_a_0542659289_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0542659289_3212880686_p_0};
	xsi_register_didat("work_a_0542659289_3212880686", "isim/cpu_tb_isim_beh.exe.sim/work/a_0542659289_3212880686.didat");
	xsi_register_executes(pe);
}
