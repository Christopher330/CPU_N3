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
static const char *ng0 = "G:/hwpractice/cpu_on_nexys_3/alu_ctrl.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;
extern char *WORK_P_2155368921;

unsigned char ieee_p_2592010699_sub_1605435078_503743352(char *, unsigned char , unsigned char );
int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);
char *ieee_p_3620187407_sub_674691591_3965413181(char *, char *, char *, char *, unsigned char );
char *ieee_p_3620187407_sub_674763465_3965413181(char *, char *, char *, char *, unsigned char );
char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_767740470_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_2635823028_3212880686_p_0(char *t0)
{
    char t16[16];
    char t17[16];
    char t21[16];
    char t28[16];
    char t30[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    int t15;
    char *t18;
    int t19;
    unsigned int t20;
    char *t22;
    int t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    char *t27;
    char *t29;
    char *t31;
    char *t32;
    int t33;
    unsigned int t34;
    unsigned int t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    int t40;
    int t41;
    int t42;
    int t43;
    char *t44;

LAB0:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1152U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    xsi_set_current_line(99, ng0);
    t1 = (t0 + 4048U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 1192U);
    t5 = *((char **)t1);
    t4 = *((unsigned char *)t5);
    t6 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t3, t4);
    t1 = (t0 + 5696);
    t8 = (t1 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t6;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(100, ng0);
    t1 = (t0 + 3808U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5888);
    t5 = (t1 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(101, ng0);
    t1 = (t0 + 3928U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5952);
    t5 = (t1 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t3;
    xsi_driver_first_trans_fast_port(t1);
    t1 = (t0 + 5600);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 3808U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((unsigned char *)t1) = (unsigned char)2;
    xsi_set_current_line(63, ng0);
    t1 = (t0 + 3928U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)2;
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 4048U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)2;
    goto LAB3;

LAB5:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 5696);
    t8 = (t2 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(67, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t12 = (15 - 15);
    t13 = (t12 * 1U);
    t14 = (0 + t13);
    t1 = (t2 + t14);
    t5 = (t0 + 3088U);
    t8 = *((char **)t5);
    t5 = (t8 + 0);
    memcpy(t5, t1, 5U);
    xsi_set_current_line(68, ng0);
    t1 = (t0 + 9285);
    t5 = (t0 + 2792U);
    t8 = *((char **)t5);
    t15 = (7 - 7);
    t12 = (t15 * -1);
    t13 = (8U * t12);
    t14 = (0 + t13);
    t5 = (t8 + t14);
    t10 = ((IEEE_P_2592010699) + 4024);
    t11 = (t17 + 0U);
    t18 = (t11 + 0U);
    *((int *)t18) = 0;
    t18 = (t11 + 4U);
    *((int *)t18) = 6;
    t18 = (t11 + 8U);
    *((int *)t18) = 1;
    t19 = (6 - 0);
    t20 = (t19 * 1);
    t20 = (t20 + 1);
    t18 = (t11 + 12U);
    *((unsigned int *)t18) = t20;
    t18 = (t21 + 0U);
    t22 = (t18 + 0U);
    *((int *)t22) = 7;
    t22 = (t18 + 4U);
    *((int *)t22) = 0;
    t22 = (t18 + 8U);
    *((int *)t22) = -1;
    t23 = (0 - 7);
    t20 = (t23 * -1);
    t20 = (t20 + 1);
    t22 = (t18 + 12U);
    *((unsigned int *)t22) = t20;
    t9 = xsi_base_array_concat(t9, t16, t10, (char)97, t1, t17, (char)97, t5, t21, (char)101);
    t22 = (t0 + 1352U);
    t24 = *((char **)t22);
    t20 = (15 - 7);
    t25 = (t20 * 1U);
    t26 = (0 + t25);
    t22 = (t24 + t26);
    t29 = ((IEEE_P_2592010699) + 4024);
    t31 = (t30 + 0U);
    t32 = (t31 + 0U);
    *((int *)t32) = 7;
    t32 = (t31 + 4U);
    *((int *)t32) = 0;
    t32 = (t31 + 8U);
    *((int *)t32) = -1;
    t33 = (0 - 7);
    t34 = (t33 * -1);
    t34 = (t34 + 1);
    t32 = (t31 + 12U);
    *((unsigned int *)t32) = t34;
    t27 = xsi_base_array_concat(t27, t28, t29, (char)97, t9, t16, (char)97, t22, t30, (char)101);
    t34 = (7U + 8U);
    t35 = (t34 + 8U);
    t3 = (23U != t35);
    if (t3 == 1)
        goto LAB10;

LAB11:    t32 = (t0 + 5760);
    t36 = (t32 + 56U);
    t37 = *((char **)t36);
    t38 = (t37 + 56U);
    t39 = *((char **)t38);
    memcpy(t39, t27, 23U);
    xsi_driver_first_trans_fast_port(t32);
    xsi_set_current_line(69, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t1 = (t0 + 1352U);
    t5 = *((char **)t1);
    t12 = (15 - 10);
    t13 = (t12 * 1U);
    t14 = (0 + t13);
    t1 = (t5 + t14);
    t8 = (t16 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 10;
    t9 = (t8 + 4U);
    *((int *)t9) = 8;
    t9 = (t8 + 8U);
    *((int *)t9) = -1;
    t15 = (8 - 10);
    t20 = (t15 * -1);
    t20 = (t20 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t20;
    t19 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t1, t16);
    t23 = (t19 - 7);
    t20 = (t23 * -1);
    xsi_vhdl_check_range_of_index(7, 0, -1, t19);
    t25 = (8U * t20);
    t26 = (0 + t25);
    t9 = (t2 + t26);
    t10 = (t0 + 3208U);
    t11 = *((char **)t10);
    t10 = (t11 + 0);
    memcpy(t10, t9, 8U);
    xsi_set_current_line(70, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t1 = (t0 + 1352U);
    t5 = *((char **)t1);
    t12 = (15 - 2);
    t13 = (t12 * 1U);
    t14 = (0 + t13);
    t1 = (t5 + t14);
    t8 = (t16 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 2;
    t9 = (t8 + 4U);
    *((int *)t9) = 0;
    t9 = (t8 + 8U);
    *((int *)t9) = -1;
    t15 = (0 - 2);
    t20 = (t15 * -1);
    t20 = (t20 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t20;
    t19 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t1, t16);
    t23 = (t19 - 7);
    t20 = (t23 * -1);
    xsi_vhdl_check_range_of_index(7, 0, -1, t19);
    t25 = (8U * t20);
    t26 = (0 + t25);
    t9 = (t2 + t26);
    t10 = (t0 + 3328U);
    t11 = *((char **)t10);
    t10 = (t11 + 0);
    memcpy(t10, t9, 8U);
    xsi_set_current_line(71, ng0);
    t1 = (t0 + 3208U);
    t2 = *((char **)t1);
    t1 = (t0 + 3448U);
    t5 = *((char **)t1);
    t12 = (8 - 7);
    t13 = (t12 * 1U);
    t14 = (0 + t13);
    t1 = (t5 + t14);
    memcpy(t1, t2, 8U);
    xsi_set_current_line(71, ng0);
    t1 = (t0 + 3448U);
    t2 = *((char **)t1);
    t15 = (8 - 8);
    t12 = (t15 * -1);
    t13 = (1U * t12);
    t14 = (0 + t13);
    t1 = (t2 + t14);
    *((unsigned char *)t1) = (unsigned char)2;
    xsi_set_current_line(72, ng0);
    t1 = (t0 + 3328U);
    t2 = *((char **)t1);
    t1 = (t0 + 3568U);
    t5 = *((char **)t1);
    t12 = (8 - 7);
    t13 = (t12 * 1U);
    t14 = (0 + t13);
    t1 = (t5 + t14);
    memcpy(t1, t2, 8U);
    xsi_set_current_line(72, ng0);
    t1 = (t0 + 3568U);
    t2 = *((char **)t1);
    t15 = (8 - 8);
    t12 = (t15 * -1);
    t13 = (1U * t12);
    t14 = (0 + t13);
    t1 = (t2 + t14);
    *((unsigned char *)t1) = (unsigned char)2;
    xsi_set_current_line(73, ng0);
    t1 = (t0 + 3088U);
    t2 = *((char **)t1);
    t1 = ((WORK_P_2155368921) + 1528U);
    t5 = *((char **)t1);
    t15 = xsi_mem_cmp(t5, t2, 5U);
    if (t15 == 1)
        goto LAB13;

LAB22:    t1 = ((WORK_P_2155368921) + 1408U);
    t8 = *((char **)t1);
    t19 = xsi_mem_cmp(t8, t2, 5U);
    if (t19 == 1)
        goto LAB14;

LAB23:    t1 = ((WORK_P_2155368921) + 1648U);
    t9 = *((char **)t1);
    t23 = xsi_mem_cmp(t9, t2, 5U);
    if (t23 == 1)
        goto LAB15;

LAB24:    t1 = ((WORK_P_2155368921) + 1768U);
    t10 = *((char **)t1);
    t33 = xsi_mem_cmp(t10, t2, 5U);
    if (t33 == 1)
        goto LAB16;

LAB25:    t1 = ((WORK_P_2155368921) + 1288U);
    t11 = *((char **)t1);
    t40 = xsi_mem_cmp(t11, t2, 5U);
    if (t40 == 1)
        goto LAB17;

LAB26:    t1 = ((WORK_P_2155368921) + 1888U);
    t18 = *((char **)t1);
    t41 = xsi_mem_cmp(t18, t2, 5U);
    if (t41 == 1)
        goto LAB18;

LAB27:    t1 = ((WORK_P_2155368921) + 2128U);
    t22 = *((char **)t1);
    t42 = xsi_mem_cmp(t22, t2, 5U);
    if (t42 == 1)
        goto LAB19;

LAB28:    t1 = ((WORK_P_2155368921) + 2248U);
    t24 = *((char **)t1);
    t43 = xsi_mem_cmp(t24, t2, 5U);
    if (t43 == 1)
        goto LAB20;

LAB29:
LAB21:    xsi_set_current_line(94, ng0);

LAB12:    xsi_set_current_line(96, ng0);
    t1 = (t0 + 3688U);
    t2 = *((char **)t1);
    t12 = (8 - 7);
    t13 = (t12 * 1U);
    t14 = (0 + t13);
    t1 = (t2 + t14);
    t5 = (t0 + 5824);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(97, ng0);
    t1 = (t0 + 3688U);
    t2 = *((char **)t1);
    t15 = (8 - 8);
    t12 = (t15 * -1);
    t13 = (1U * t12);
    t14 = (0 + t13);
    t1 = (t2 + t14);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 3808U);
    t8 = *((char **)t5);
    t5 = (t8 + 0);
    *((unsigned char *)t5) = t3;
    goto LAB3;

LAB7:    t2 = (t0 + 1192U);
    t5 = *((char **)t2);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t3 = t7;
    goto LAB9;

LAB10:    xsi_size_not_matching(23U, t35, 0);
    goto LAB11;

LAB13:    xsi_set_current_line(75, ng0);
    t1 = (t0 + 3448U);
    t27 = *((char **)t1);
    t1 = (t0 + 9116U);
    t29 = (t0 + 3568U);
    t31 = *((char **)t29);
    t29 = (t0 + 9116U);
    t32 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t17, t27, t1, t31, t29);
    t36 = (t0 + 3808U);
    t37 = *((char **)t36);
    t3 = *((unsigned char *)t37);
    t36 = ieee_p_3620187407_sub_674691591_3965413181(IEEE_P_3620187407, t16, t32, t17, t3);
    t38 = (t0 + 3688U);
    t39 = *((char **)t38);
    t38 = (t39 + 0);
    t44 = (t16 + 12U);
    t12 = *((unsigned int *)t44);
    t13 = (1U * t12);
    memcpy(t38, t36, t13);
    xsi_set_current_line(76, ng0);
    t1 = (t0 + 3688U);
    t2 = *((char **)t1);
    t1 = (t0 + 9116U);
    t5 = (t0 + 9292);
    t9 = (t16 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 0;
    t10 = (t9 + 4U);
    *((int *)t10) = 8;
    t10 = (t9 + 8U);
    *((int *)t10) = 1;
    t15 = (8 - 0);
    t12 = (t15 * 1);
    t12 = (t12 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t12;
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t16);
    if (t3 != 0)
        goto LAB31;

LAB33:    xsi_set_current_line(76, ng0);
    t1 = (t0 + 3928U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)2;

LAB32:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 4048U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)2;
    goto LAB12;

LAB14:    xsi_set_current_line(79, ng0);
    t1 = (t0 + 3448U);
    t2 = *((char **)t1);
    t1 = (t0 + 9116U);
    t5 = (t0 + 3568U);
    t8 = *((char **)t5);
    t5 = (t0 + 9116U);
    t9 = ieee_p_3620187407_sub_767740470_3965413181(IEEE_P_3620187407, t17, t2, t1, t8, t5);
    t10 = (t0 + 3808U);
    t11 = *((char **)t10);
    t3 = *((unsigned char *)t11);
    t10 = ieee_p_3620187407_sub_674763465_3965413181(IEEE_P_3620187407, t16, t9, t17, t3);
    t18 = (t0 + 3688U);
    t22 = *((char **)t18);
    t18 = (t22 + 0);
    t24 = (t16 + 12U);
    t12 = *((unsigned int *)t24);
    t13 = (1U * t12);
    memcpy(t18, t10, t13);
    xsi_set_current_line(80, ng0);
    t1 = (t0 + 3688U);
    t2 = *((char **)t1);
    t1 = (t0 + 9116U);
    t5 = (t0 + 9301);
    t9 = (t16 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 0;
    t10 = (t9 + 4U);
    *((int *)t10) = 8;
    t10 = (t9 + 8U);
    *((int *)t10) = 1;
    t15 = (8 - 0);
    t12 = (t15 * 1);
    t12 = (t12 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t12;
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t16);
    if (t3 != 0)
        goto LAB34;

LAB36:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 3928U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)2;

LAB35:    xsi_set_current_line(81, ng0);
    t1 = (t0 + 4048U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)2;
    goto LAB12;

LAB15:    xsi_set_current_line(83, ng0);
    t1 = (t0 + 3808U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 1352U);
    t5 = *((char **)t1);
    t12 = (15 - 7);
    t13 = (t12 * 1U);
    t14 = (0 + t13);
    t1 = (t5 + t14);
    t9 = ((IEEE_P_2592010699) + 4024);
    t10 = (t17 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 7;
    t11 = (t10 + 4U);
    *((int *)t11) = 0;
    t11 = (t10 + 8U);
    *((int *)t11) = -1;
    t15 = (0 - 7);
    t20 = (t15 * -1);
    t20 = (t20 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t20;
    t8 = xsi_base_array_concat(t8, t16, t9, (char)99, t3, (char)97, t1, t17, (char)101);
    t11 = (t0 + 3688U);
    t18 = *((char **)t11);
    t11 = (t18 + 0);
    t20 = (1U + 8U);
    memcpy(t11, t8, t20);
    xsi_set_current_line(83, ng0);
    t1 = (t0 + 4048U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)2;
    goto LAB12;

LAB16:    xsi_set_current_line(85, ng0);
    t1 = (t0 + 3808U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 3328U);
    t5 = *((char **)t1);
    t8 = ((IEEE_P_2592010699) + 4024);
    t9 = (t0 + 9100U);
    t1 = xsi_base_array_concat(t1, t16, t8, (char)99, t3, (char)97, t5, t9, (char)101);
    t10 = (t0 + 3688U);
    t11 = *((char **)t10);
    t10 = (t11 + 0);
    t12 = (1U + 8U);
    memcpy(t10, t1, t12);
    xsi_set_current_line(85, ng0);
    t1 = (t0 + 4048U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)2;
    goto LAB12;

LAB17:    xsi_set_current_line(87, ng0);
    t1 = (t0 + 3808U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 3208U);
    t5 = *((char **)t1);
    t8 = ((IEEE_P_2592010699) + 4024);
    t9 = (t0 + 9100U);
    t1 = xsi_base_array_concat(t1, t16, t8, (char)99, t3, (char)97, t5, t9, (char)101);
    t10 = (t0 + 3688U);
    t11 = *((char **)t10);
    t10 = (t11 + 0);
    t12 = (1U + 8U);
    memcpy(t10, t1, t12);
    xsi_set_current_line(87, ng0);
    t1 = (t0 + 4048U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)2;
    goto LAB12;

LAB18:    xsi_set_current_line(89, ng0);
    t1 = (t0 + 3808U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 3208U);
    t5 = *((char **)t1);
    t8 = ((IEEE_P_2592010699) + 4024);
    t9 = (t0 + 9100U);
    t1 = xsi_base_array_concat(t1, t16, t8, (char)99, t3, (char)97, t5, t9, (char)101);
    t10 = (t0 + 3688U);
    t11 = *((char **)t10);
    t10 = (t11 + 0);
    t12 = (1U + 8U);
    memcpy(t10, t1, t12);
    xsi_set_current_line(89, ng0);
    t1 = (t0 + 4048U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)2;
    goto LAB12;

LAB19:    xsi_set_current_line(91, ng0);
    t1 = (t0 + 3808U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 3208U);
    t5 = *((char **)t1);
    t8 = ((IEEE_P_2592010699) + 4024);
    t9 = (t0 + 9100U);
    t1 = xsi_base_array_concat(t1, t16, t8, (char)99, t3, (char)97, t5, t9, (char)101);
    t10 = (t0 + 3688U);
    t11 = *((char **)t10);
    t10 = (t11 + 0);
    t12 = (1U + 8U);
    memcpy(t10, t1, t12);
    xsi_set_current_line(91, ng0);
    t1 = (t0 + 4048U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)3;
    goto LAB12;

LAB20:    xsi_set_current_line(93, ng0);
    t1 = (t0 + 3808U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 3208U);
    t5 = *((char **)t1);
    t8 = ((IEEE_P_2592010699) + 4024);
    t9 = (t0 + 9100U);
    t1 = xsi_base_array_concat(t1, t16, t8, (char)99, t3, (char)97, t5, t9, (char)101);
    t10 = (t0 + 3688U);
    t11 = *((char **)t10);
    t10 = (t11 + 0);
    t12 = (1U + 8U);
    memcpy(t10, t1, t12);
    xsi_set_current_line(93, ng0);
    t1 = (t0 + 4048U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)3;
    goto LAB12;

LAB30:;
LAB31:    xsi_set_current_line(76, ng0);
    t10 = (t0 + 3928U);
    t11 = *((char **)t10);
    t10 = (t11 + 0);
    *((unsigned char *)t10) = (unsigned char)3;
    goto LAB32;

LAB34:    xsi_set_current_line(80, ng0);
    t10 = (t0 + 3928U);
    t11 = *((char **)t10);
    t10 = (t11 + 0);
    *((unsigned char *)t10) = (unsigned char)3;
    goto LAB35;

}

static void work_a_2635823028_3212880686_p_1(char *t0)
{
    char t17[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned char t8;
    unsigned int t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    int t18;
    unsigned int t19;
    int t20;
    int t21;
    unsigned int t22;
    unsigned int t23;

LAB0:    xsi_set_current_line(106, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB7;

LAB8:
LAB3:    t1 = (t0 + 5616);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(107, ng0);
    t1 = xsi_get_transient_memory(64U);
    memset(t1, 0, 64U);
    t5 = t1;
    t6 = (t0 + 9310);
    t8 = (8U != 0);
    if (t8 == 1)
        goto LAB5;

LAB6:    t10 = (t0 + 6016);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 64U);
    xsi_driver_first_trans_fast(t10);
    goto LAB3;

LAB5:    t9 = (64U / 8U);
    xsi_mem_set_data(t5, t6, 8U, t9);
    goto LAB6;

LAB7:    xsi_set_current_line(109, ng0);
    t1 = (t0 + 2152U);
    t5 = *((char **)t1);
    t1 = (t0 + 1352U);
    t6 = *((char **)t1);
    t9 = (15 - 10);
    t15 = (t9 * 1U);
    t16 = (0 + t15);
    t1 = (t6 + t16);
    t7 = (t17 + 0U);
    t10 = (t7 + 0U);
    *((int *)t10) = 10;
    t10 = (t7 + 4U);
    *((int *)t10) = 8;
    t10 = (t7 + 8U);
    *((int *)t10) = -1;
    t18 = (8 - 10);
    t19 = (t18 * -1);
    t19 = (t19 + 1);
    t10 = (t7 + 12U);
    *((unsigned int *)t10) = t19;
    t20 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t1, t17);
    t21 = (t20 - 7);
    t19 = (t21 * -1);
    t22 = (8U * t19);
    t23 = (0U + t22);
    t10 = (t0 + 6016);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t5, 8U);
    xsi_driver_first_trans_delta(t10, t23, 8U, 0LL);
    goto LAB3;

}


extern void work_a_2635823028_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2635823028_3212880686_p_0,(void *)work_a_2635823028_3212880686_p_1};
	xsi_register_didat("work_a_2635823028_3212880686", "isim/cpu_tb_isim_beh.exe.sim/work/a_2635823028_3212880686.didat");
	xsi_register_executes(pe);
}
