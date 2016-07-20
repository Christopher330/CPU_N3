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
static const char *ng0 = "G:/hwpractice/cpu_on_nexys_3/stor_ctrl.vhd";
extern char *WORK_P_2155368921;
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1605435078_503743352(char *, unsigned char , unsigned char );


static void work_a_0875277778_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    int t10;
    char *t11;
    int t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 992U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 2568U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t2 = (t0 + 1032U);
    t5 = *((char **)t2);
    t3 = *((unsigned char *)t5);
    t6 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t1, t3);
    t2 = (t0 + 4280);
    t8 = (t2 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t13 = *((char **)t11);
    *((unsigned char *)t13) = t6;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(68, ng0);
    t2 = (t0 + 2448U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t2 = (t0 + 1032U);
    t5 = *((char **)t2);
    t3 = *((unsigned char *)t5);
    t6 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t1, t3);
    t2 = (t0 + 4344);
    t8 = (t2 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t13 = *((char **)t11);
    *((unsigned char *)t13) = t6;
    xsi_driver_first_trans_fast_port(t2);
    t2 = (t0 + 4120);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(53, ng0);
    t4 = (t0 + 1192U);
    t8 = *((char **)t4);
    t4 = ((WORK_P_2155368921) + 1888U);
    t9 = *((char **)t4);
    t10 = xsi_mem_cmp(t9, t8, 5U);
    if (t10 == 1)
        goto LAB9;

LAB12:    t4 = ((WORK_P_2155368921) + 2008U);
    t11 = *((char **)t4);
    t12 = xsi_mem_cmp(t11, t8, 5U);
    if (t12 == 1)
        goto LAB10;

LAB13:
LAB11:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 2448U);
    t4 = *((char **)t2);
    t2 = (t4 + 0);
    *((unsigned char *)t2) = (unsigned char)2;
    xsi_set_current_line(64, ng0);
    t2 = (t0 + 2568U);
    t4 = *((char **)t2);
    t2 = (t4 + 0);
    *((unsigned char *)t2) = (unsigned char)2;

LAB8:    goto LAB3;

LAB5:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB9:    xsi_set_current_line(55, ng0);
    t4 = (t0 + 1352U);
    t13 = *((char **)t4);
    t4 = (t0 + 4216);
    t14 = (t4 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t13, 23U);
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(56, ng0);
    t2 = (t0 + 2448U);
    t4 = *((char **)t2);
    t2 = (t4 + 0);
    *((unsigned char *)t2) = (unsigned char)3;
    xsi_set_current_line(57, ng0);
    t2 = (t0 + 2568U);
    t4 = *((char **)t2);
    t2 = (t4 + 0);
    *((unsigned char *)t2) = (unsigned char)2;
    goto LAB8;

LAB10:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t2 = (t0 + 4216);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t4, 23U);
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(60, ng0);
    t2 = (t0 + 2448U);
    t4 = *((char **)t2);
    t2 = (t4 + 0);
    *((unsigned char *)t2) = (unsigned char)2;
    xsi_set_current_line(61, ng0);
    t2 = (t0 + 2568U);
    t4 = *((char **)t2);
    t2 = (t4 + 0);
    *((unsigned char *)t2) = (unsigned char)3;
    goto LAB8;

LAB14:;
}

static void work_a_0875277778_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(70, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 4408);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4136);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0875277778_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0875277778_3212880686_p_0,(void *)work_a_0875277778_3212880686_p_1};
	xsi_register_didat("work_a_0875277778_3212880686", "isim/cpu_tb_isim_beh.exe.sim/work/a_0875277778_3212880686.didat");
	xsi_register_executes(pe);
}
