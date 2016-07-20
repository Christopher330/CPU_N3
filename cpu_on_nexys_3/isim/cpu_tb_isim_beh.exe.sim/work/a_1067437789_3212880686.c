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
static const char *ng0 = "G:/hwpractice/cpu_on_nexys_3/io_ctrl.vhd";
extern char *IEEE_P_3620187407;
extern char *WORK_P_2155368921;

int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_1067437789_3212880686_p_0(char *t0)
{
    char t17[16];
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    int t18;
    unsigned int t19;
    int t20;
    char *t21;
    int t22;
    int t23;
    int t24;
    int t25;
    int t26;
    int t27;
    int t28;
    int t29;
    int t30;
    unsigned int t31;
    char *t32;

LAB0:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 992U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 3552);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(55, ng0);
    t4 = (t0 + 5696);
    t9 = (t0 + 3632);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t4, 2U);
    xsi_driver_first_trans_fast_port(t9);
    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t14 = (15 - 15);
    t15 = (t14 * 1U);
    t16 = (0 + t15);
    t2 = (t4 + t16);
    t5 = (t0 + 2128U);
    t8 = *((char **)t5);
    t5 = (t8 + 0);
    memcpy(t5, t2, 5U);
    xsi_set_current_line(57, ng0);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t14 = (15 - 1);
    t15 = (t14 * 1U);
    t16 = (0 + t15);
    t2 = (t4 + t16);
    t5 = (t17 + 0U);
    t8 = (t5 + 0U);
    *((int *)t8) = 1;
    t8 = (t5 + 4U);
    *((int *)t8) = 0;
    t8 = (t5 + 8U);
    *((int *)t8) = -1;
    t18 = (0 - 1);
    t19 = (t18 * -1);
    t19 = (t19 + 1);
    t8 = (t5 + 12U);
    *((unsigned int *)t8) = t19;
    t20 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t2, t17);
    t8 = (t0 + 2248U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    *((int *)t8) = t20;
    xsi_set_current_line(58, ng0);
    t2 = (t0 + 2128U);
    t4 = *((char **)t2);
    t2 = ((WORK_P_2155368921) + 2128U);
    t5 = *((char **)t2);
    t18 = xsi_mem_cmp(t5, t4, 5U);
    if (t18 == 1)
        goto LAB9;

LAB12:    t2 = ((WORK_P_2155368921) + 2248U);
    t8 = *((char **)t2);
    t20 = xsi_mem_cmp(t8, t4, 5U);
    if (t20 == 1)
        goto LAB10;

LAB13:
LAB11:    xsi_set_current_line(65, ng0);

LAB8:    goto LAB3;

LAB5:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB9:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 1192U);
    t9 = *((char **)t2);
    t14 = (15 - 1);
    t15 = (t14 * 1U);
    t16 = (0 + t15);
    t2 = (t9 + t16);
    t10 = (t0 + 3632);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t21 = *((char **)t13);
    memcpy(t21, t2, 2U);
    xsi_driver_first_trans_fast_port(t10);
    xsi_set_current_line(61, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t2 = (t0 + 3696);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t4, 8U);
    xsi_driver_first_trans_fast_port(t2);
    goto LAB8;

LAB10:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t14 = (15 - 1);
    t15 = (t14 * 1U);
    t16 = (0 + t15);
    t2 = (t4 + t16);
    t5 = (t0 + 3632);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t2, 2U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(64, ng0);
    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t2 = (t0 + 2248U);
    t5 = *((char **)t2);
    t18 = *((int *)t5);
    t20 = (t18 * 8);
    t22 = (t20 + 7);
    t14 = (31 - t22);
    t2 = (t0 + 2248U);
    t8 = *((char **)t2);
    t23 = *((int *)t8);
    t24 = (t23 * 8);
    xsi_vhdl_check_range_of_slice(31, 0, -1, t22, t24, -1);
    t15 = (t14 * 1U);
    t16 = (0 + t15);
    t2 = (t4 + t16);
    t9 = (t0 + 2248U);
    t10 = *((char **)t9);
    t25 = *((int *)t10);
    t26 = (t25 * 8);
    t27 = (t26 + 7);
    t9 = (t0 + 2248U);
    t11 = *((char **)t9);
    t28 = *((int *)t11);
    t29 = (t28 * 8);
    t30 = (t29 - t27);
    t19 = (t30 * -1);
    t19 = (t19 + 1);
    t31 = (1U * t19);
    t1 = (8U != t31);
    if (t1 == 1)
        goto LAB15;

LAB16:    t9 = (t0 + 3696);
    t12 = (t9 + 56U);
    t13 = *((char **)t12);
    t21 = (t13 + 56U);
    t32 = *((char **)t21);
    memcpy(t32, t2, 8U);
    xsi_driver_first_trans_fast_port(t9);
    goto LAB8;

LAB14:;
LAB15:    xsi_size_not_matching(8U, t31, 0);
    goto LAB16;

}


extern void work_a_1067437789_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1067437789_3212880686_p_0};
	xsi_register_didat("work_a_1067437789_3212880686", "isim/cpu_tb_isim_beh.exe.sim/work/a_1067437789_3212880686.didat");
	xsi_register_executes(pe);
}
