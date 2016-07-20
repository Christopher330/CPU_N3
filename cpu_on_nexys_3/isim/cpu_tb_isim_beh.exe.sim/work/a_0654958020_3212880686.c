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
static const char *ng0 = "G:/hwpractice/cpu_on_nexys_3/fetch_ctrl.vhd";
extern char *IEEE_P_3620187407;

char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );


static void work_a_0654958020_3212880686_p_0(char *t0)
{
    char t13[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned char t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    unsigned int t14;
    unsigned int t15;
    unsigned char t16;

LAB0:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5120);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(55, ng0);
    t1 = (t0 + 5184);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(56, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t8 = (t3 == (unsigned char)3);
    if (t8 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1152U);
    t8 = xsi_signal_has_event(t1);
    if (t8 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t8 = *((unsigned char *)t2);
    t10 = (t8 == (unsigned char)3);
    if (t10 == 1)
        goto LAB13;

LAB14:    t3 = (unsigned char)0;

LAB15:    if (t3 != 0)
        goto LAB10;

LAB12:
LAB11:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 3088U);
    t2 = *((char **)t1);
    t1 = (t0 + 5312);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t2, 23U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(71, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 5376);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t2, 16U);
    xsi_driver_first_trans_fast(t1);
    t1 = (t0 + 5008);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 5120);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(58, ng0);
    t1 = xsi_get_transient_memory(23U);
    memset(t1, 0, 23U);
    t2 = t1;
    memset(t2, (unsigned char)2, 23U);
    t4 = (t0 + 3088U);
    t5 = *((char **)t4);
    t4 = (t5 + 0);
    memcpy(t4, t1, 23U);
    xsi_set_current_line(59, ng0);
    t1 = xsi_get_transient_memory(23U);
    memset(t1, 0, 23U);
    t2 = t1;
    memset(t2, (unsigned char)2, 23U);
    t4 = (t0 + 5248);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t1, 23U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB3;

LAB5:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 3088U);
    t5 = *((char **)t2);
    t2 = (t0 + 5248);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t12 = *((char **)t9);
    memcpy(t12, t5, 23U);
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(62, ng0);
    t1 = (t0 + 3088U);
    t2 = *((char **)t1);
    t1 = (t0 + 7884U);
    t4 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t13, t2, t1, 1);
    t5 = (t0 + 3088U);
    t6 = *((char **)t5);
    t5 = (t6 + 0);
    t7 = (t13 + 12U);
    t14 = *((unsigned int *)t7);
    t15 = (1U * t14);
    memcpy(t5, t4, t15);
    goto LAB3;

LAB7:    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t10 = *((unsigned char *)t4);
    t11 = (t10 == (unsigned char)3);
    t3 = t11;
    goto LAB9;

LAB10:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 1512U);
    t5 = *((char **)t1);
    t1 = (t0 + 3088U);
    t6 = *((char **)t1);
    t1 = (t6 + 0);
    memcpy(t1, t5, 23U);
    xsi_set_current_line(67, ng0);
    t1 = (t0 + 5184);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB11;

LAB13:    t1 = (t0 + 1192U);
    t4 = *((char **)t1);
    t11 = *((unsigned char *)t4);
    t16 = (t11 == (unsigned char)2);
    t3 = t16;
    goto LAB15;

}

static void work_a_0654958020_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(73, ng0);

LAB3:    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t1 = (t0 + 5440);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 5024);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0654958020_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(74, ng0);

LAB3:    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 5504);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 23U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 5040);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0654958020_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0654958020_3212880686_p_0,(void *)work_a_0654958020_3212880686_p_1,(void *)work_a_0654958020_3212880686_p_2};
	xsi_register_didat("work_a_0654958020_3212880686", "isim/cpu_tb_isim_beh.exe.sim/work/a_0654958020_3212880686.didat");
	xsi_register_executes(pe);
}
