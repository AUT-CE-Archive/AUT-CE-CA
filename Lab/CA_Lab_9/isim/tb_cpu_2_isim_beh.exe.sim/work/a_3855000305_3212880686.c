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
static const char *ng0 = "E:/ISE Workspace/CA_Lab_9/CPU_2.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

char *ieee_p_2592010699_sub_1306069469_503743352(char *, char *, char *, char *, char *, char *);
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
char *ieee_p_2592010699_sub_1837678034_503743352(char *, char *, char *, char *);
unsigned char ieee_p_3620187407_sub_4042748798_3965413181(char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );
char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_3855000305_3212880686_p_0(char *t0)
{
    char t11[16];
    char t14[16];
    char t27[16];
    char t29[16];
    char t30[16];
    char t31[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    int t12;
    unsigned int t13;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned char t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    unsigned int t24;
    int t25;
    int t26;
    unsigned int t28;
    char *t32;
    char *t33;
    unsigned int t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    unsigned int t40;
    unsigned char t41;

LAB0:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1792U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 4944);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(53, ng0);
    t1 = xsi_get_transient_memory(6U);
    memset(t1, 0, 6U);
    t5 = t1;
    memset(t5, (unsigned char)2, 6U);
    t6 = (t0 + 5088);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 6U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(54, ng0);
    t1 = (t0 + 7710);
    t5 = (t0 + 5152);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(55, ng0);
    t1 = xsi_get_transient_memory(9U);
    memset(t1, 0, 9U);
    t2 = t1;
    memset(t2, (unsigned char)2, 9U);
    t5 = (t0 + 5216);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 9U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(56, ng0);
    t1 = xsi_get_transient_memory(6U);
    memset(t1, 0, 6U);
    t2 = t1;
    memset(t2, (unsigned char)2, 6U);
    t5 = (t0 + 5280);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 6U);
    xsi_driver_first_trans_fast(t5);
    goto LAB3;

LAB5:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 2472U);
    t5 = *((char **)t2);
    t2 = (t0 + 7660U);
    t6 = (t0 + 7713);
    t8 = (t11 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 0;
    t9 = (t8 + 4U);
    *((int *)t9) = 2;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t12 = (2 - 0);
    t13 = (t12 * 1);
    t13 = (t13 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t13;
    t4 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t5, t2, t6, t11);
    if (t4 != 0)
        goto LAB7;

LAB9:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 5088);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 6U);
    xsi_driver_first_trans_fast(t1);

LAB8:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 7716);
    t12 = xsi_mem_cmp(t1, t2, 3U);
    if (t12 == 1)
        goto LAB13;

LAB17:    t6 = (t0 + 7719);
    t25 = xsi_mem_cmp(t6, t2, 3U);
    if (t25 == 1)
        goto LAB14;

LAB18:    t8 = (t0 + 7722);
    t26 = xsi_mem_cmp(t8, t2, 3U);
    if (t26 == 1)
        goto LAB15;

LAB19:
LAB16:    xsi_set_current_line(72, ng0);

LAB12:    xsi_set_current_line(76, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 7660U);
    t5 = (t0 + 7736);
    t7 = (t11 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 2;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t12 = (2 - 0);
    t13 = (t12 * 1);
    t13 = (t13 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t13;
    t3 = ieee_p_3620187407_sub_4042748798_3965413181(IEEE_P_3620187407, t2, t1, t5, t11);
    if (t3 != 0)
        goto LAB25;

LAB27:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t13 = (7 - 7);
    t17 = (t13 * 1U);
    t24 = (0 + t17);
    t1 = (t2 + t24);
    t5 = (t11 + 0U);
    t6 = (t5 + 0U);
    *((int *)t6) = 7;
    t6 = (t5 + 4U);
    *((int *)t6) = 6;
    t6 = (t5 + 8U);
    *((int *)t6) = -1;
    t12 = (6 - 7);
    t28 = (t12 * -1);
    t28 = (t28 + 1);
    t6 = (t5 + 12U);
    *((unsigned int *)t6) = t28;
    t6 = (t0 + 7742);
    t8 = (t14 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 0;
    t9 = (t8 + 4U);
    *((int *)t9) = 1;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t25 = (1 - 0);
    t28 = (t25 * 1);
    t28 = (t28 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t28;
    t4 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t1, t11, t6, t14);
    if (t4 == 1)
        goto LAB30;

LAB31:    t3 = (unsigned char)0;

LAB32:    if (t3 != 0)
        goto LAB28;

LAB29:    xsi_set_current_line(78, ng0);
    t1 = (t0 + 7747);
    t5 = (t0 + 1032U);
    t6 = *((char **)t5);
    t13 = (7 - 7);
    t17 = (t13 * 1U);
    t24 = (0 + t17);
    t5 = (t6 + t24);
    t7 = (t14 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 7;
    t8 = (t7 + 4U);
    *((int *)t8) = 6;
    t8 = (t7 + 8U);
    *((int *)t8) = -1;
    t12 = (6 - 7);
    t28 = (t12 * -1);
    t28 = (t28 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t28;
    t8 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t11, t5, t14);
    t10 = ((IEEE_P_2592010699) + 4024);
    t15 = (t29 + 0U);
    t16 = (t15 + 0U);
    *((int *)t16) = 0;
    t16 = (t15 + 4U);
    *((int *)t16) = 0;
    t16 = (t15 + 8U);
    *((int *)t16) = 1;
    t25 = (0 - 0);
    t28 = (t25 * 1);
    t28 = (t28 + 1);
    t16 = (t15 + 12U);
    *((unsigned int *)t16) = t28;
    t9 = xsi_base_array_concat(t9, t27, t10, (char)97, t1, t29, (char)97, t8, t11, (char)101);
    t16 = (t11 + 12U);
    t28 = *((unsigned int *)t16);
    t34 = (1U * t28);
    t40 = (1U + t34);
    t3 = (3U != t40);
    if (t3 == 1)
        goto LAB33;

LAB34:    t19 = (t0 + 5152);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t9, 3U);
    xsi_driver_first_trans_fast(t19);

LAB26:    goto LAB3;

LAB7:    xsi_set_current_line(61, ng0);
    t9 = (t0 + 2152U);
    t10 = *((char **)t9);
    t9 = (t0 + 7628U);
    t15 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t14, t10, t9, 1);
    t16 = (t14 + 12U);
    t13 = *((unsigned int *)t16);
    t17 = (1U * t13);
    t18 = (6U != t17);
    if (t18 == 1)
        goto LAB10;

LAB11:    t19 = (t0 + 5280);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t15, 6U);
    xsi_driver_first_trans_fast(t19);
    xsi_set_current_line(62, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t13 = (7 - 5);
    t17 = (t13 * 1U);
    t24 = (0 + t17);
    t1 = (t2 + t24);
    t5 = (t0 + 5088);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 6U);
    xsi_driver_first_trans_fast(t5);
    goto LAB8;

LAB10:    xsi_size_not_matching(6U, t17, 0);
    goto LAB11;

LAB13:    xsi_set_current_line(69, ng0);
    t10 = (t0 + 7725);
    xsi_report(t10, 3U, 0);
    xsi_set_current_line(69, ng0);
    t1 = (t0 + 7728);
    t5 = (t0 + 1992U);
    t6 = *((char **)t5);
    t13 = (8 - 7);
    t17 = (t13 * 1U);
    t24 = (0 + t17);
    t5 = (t6 + t24);
    t8 = ((IEEE_P_2592010699) + 4024);
    t9 = (t27 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 0;
    t10 = (t9 + 4U);
    *((int *)t10) = 0;
    t10 = (t9 + 8U);
    *((int *)t10) = 1;
    t12 = (0 - 0);
    t28 = (t12 * 1);
    t28 = (t28 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t28;
    t10 = (t29 + 0U);
    t15 = (t10 + 0U);
    *((int *)t15) = 7;
    t15 = (t10 + 4U);
    *((int *)t15) = 0;
    t15 = (t10 + 8U);
    *((int *)t15) = -1;
    t25 = (0 - 7);
    t28 = (t25 * -1);
    t28 = (t28 + 1);
    t15 = (t10 + 12U);
    *((unsigned int *)t15) = t28;
    t7 = xsi_base_array_concat(t7, t14, t8, (char)97, t1, t27, (char)97, t5, t29, (char)101);
    t15 = (t0 + 7729);
    t19 = (t0 + 1032U);
    t20 = *((char **)t19);
    t21 = ((IEEE_P_2592010699) + 4024);
    t22 = (t31 + 0U);
    t23 = (t22 + 0U);
    *((int *)t23) = 0;
    t23 = (t22 + 4U);
    *((int *)t23) = 0;
    t23 = (t22 + 8U);
    *((int *)t23) = 1;
    t26 = (0 - 0);
    t28 = (t26 * 1);
    t28 = (t28 + 1);
    t23 = (t22 + 12U);
    *((unsigned int *)t23) = t28;
    t23 = (t0 + 7580U);
    t19 = xsi_base_array_concat(t19, t30, t21, (char)97, t15, t31, (char)97, t20, t23, (char)101);
    t32 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t11, t7, t14, t19, t30);
    t33 = (t11 + 12U);
    t28 = *((unsigned int *)t33);
    t34 = (1U * t28);
    t3 = (9U != t34);
    if (t3 == 1)
        goto LAB21;

LAB22:    t35 = (t0 + 5216);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    t38 = (t37 + 56U);
    t39 = *((char **)t38);
    memcpy(t39, t32, 9U);
    xsi_driver_first_trans_fast(t35);
    goto LAB12;

LAB14:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 7730);
    xsi_report(t1, 3U, 0);
    xsi_set_current_line(70, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t13 = (8 - 7);
    t17 = (t13 * 1U);
    t24 = (0 + t17);
    t1 = (t2 + t24);
    t5 = (t14 + 0U);
    t6 = (t5 + 0U);
    *((int *)t6) = 7;
    t6 = (t5 + 4U);
    *((int *)t6) = 0;
    t6 = (t5 + 8U);
    *((int *)t6) = -1;
    t12 = (0 - 7);
    t28 = (t12 * -1);
    t28 = (t28 + 1);
    t6 = (t5 + 12U);
    *((unsigned int *)t6) = t28;
    t6 = (t0 + 1032U);
    t7 = *((char **)t6);
    t6 = (t0 + 7580U);
    t8 = ieee_p_2592010699_sub_1306069469_503743352(IEEE_P_2592010699, t11, t1, t14, t7, t6);
    t9 = (t11 + 12U);
    t28 = *((unsigned int *)t9);
    t34 = (1U * t28);
    t3 = (8U != t34);
    if (t3 == 1)
        goto LAB23;

LAB24:    t10 = (t0 + 5216);
    t15 = (t10 + 56U);
    t16 = *((char **)t15);
    t19 = (t16 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t8, 8U);
    xsi_driver_first_trans_delta(t10, 1U, 8U, 0LL);
    goto LAB12;

LAB15:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 7733);
    xsi_report(t1, 3U, 0);
    xsi_set_current_line(71, ng0);
    t1 = (t0 + 5216);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 0U, 1, 0LL);
    goto LAB12;

LAB20:;
LAB21:    xsi_size_not_matching(9U, t34, 0);
    goto LAB22;

LAB23:    xsi_size_not_matching(8U, t34, 0);
    goto LAB24;

LAB25:    xsi_set_current_line(76, ng0);
    t8 = (t0 + 7739);
    t10 = (t0 + 5152);
    t15 = (t10 + 56U);
    t16 = *((char **)t15);
    t19 = (t16 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t8, 3U);
    xsi_driver_first_trans_fast(t10);
    goto LAB26;

LAB28:    xsi_set_current_line(77, ng0);
    t15 = (t0 + 7744);
    t19 = (t0 + 5152);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t15, 3U);
    xsi_driver_first_trans_fast(t19);
    goto LAB26;

LAB30:    t9 = (t0 + 1992U);
    t10 = *((char **)t9);
    t26 = (8 - 8);
    t28 = (t26 * -1);
    t34 = (1U * t28);
    t40 = (0 + t34);
    t9 = (t10 + t40);
    t18 = *((unsigned char *)t9);
    t41 = (t18 == (unsigned char)3);
    t3 = t41;
    goto LAB32;

LAB33:    xsi_size_not_matching(3U, t40, 0);
    goto LAB34;

}

static void work_a_3855000305_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(84, ng0);

LAB3:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 5344);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 6U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4960);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3855000305_3212880686_p_2(char *t0)
{
    char t5[16];
    char *t1;
    char *t2;
    char *t3;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned char t10;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;

LAB0:    xsi_set_current_line(85, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 7660U);
    t3 = (t0 + 7748);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 2;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (2 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t10 = ieee_p_3620187407_sub_4042748798_3965413181(IEEE_P_3620187407, t2, t1, t3, t5);
    if (t10 != 0)
        goto LAB3;

LAB4:
LAB5:    t17 = (t0 + 1992U);
    t18 = *((char **)t17);
    t9 = (8 - 7);
    t19 = (t9 * 1U);
    t20 = (0 + t19);
    t17 = (t18 + t20);
    t21 = (t0 + 5408);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t17, 8U);
    xsi_driver_first_trans_fast_port(t21);

LAB2:    t26 = (t0 + 4976);
    *((int *)t26) = 1;

LAB1:    return;
LAB3:    t7 = (t0 + 7751);
    t12 = (t0 + 5408);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 8U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_3855000305_3212880686_p_3(char *t0)
{
    char t11[16];
    char t23[16];
    unsigned char t1;
    unsigned char t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t12;
    char *t13;
    int t14;
    unsigned int t15;
    unsigned char t16;
    char *t17;
    unsigned char t18;
    unsigned char t19;
    char *t20;
    char *t21;
    char *t24;
    char *t25;
    int t26;
    unsigned char t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;

LAB0:    xsi_set_current_line(86, ng0);
    t4 = (t0 + 1832U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    if (t7 == 1)
        goto LAB11;

LAB12:    t4 = (t0 + 2472U);
    t8 = *((char **)t4);
    t4 = (t0 + 7660U);
    t9 = (t0 + 7759);
    t12 = (t11 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 0;
    t13 = (t12 + 4U);
    *((int *)t13) = 2;
    t13 = (t12 + 8U);
    *((int *)t13) = 1;
    t14 = (2 - 0);
    t15 = (t14 * 1);
    t15 = (t15 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t15;
    t16 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t8, t4, t9, t11);
    t3 = t16;

LAB13:    if (t3 == 1)
        goto LAB8;

LAB9:    t13 = (t0 + 1672U);
    t17 = *((char **)t13);
    t18 = *((unsigned char *)t17);
    t19 = (t18 == (unsigned char)2);
    t2 = t19;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t13 = (t0 + 2472U);
    t20 = *((char **)t13);
    t13 = (t0 + 7660U);
    t21 = (t0 + 7762);
    t24 = (t23 + 0U);
    t25 = (t24 + 0U);
    *((int *)t25) = 0;
    t25 = (t24 + 4U);
    *((int *)t25) = 2;
    t25 = (t24 + 8U);
    *((int *)t25) = 1;
    t26 = (2 - 0);
    t15 = (t26 * 1);
    t15 = (t15 + 1);
    t25 = (t24 + 12U);
    *((unsigned int *)t25) = t15;
    t27 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t20, t13, t21, t23);
    t1 = t27;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB14:    t32 = (t0 + 5472);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    t35 = (t34 + 56U);
    t36 = *((char **)t35);
    *((unsigned char *)t36) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t32);

LAB2:    t37 = (t0 + 4992);
    *((int *)t37) = 1;

LAB1:    return;
LAB3:    t25 = (t0 + 5472);
    t28 = (t25 + 56U);
    t29 = *((char **)t28);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    *((unsigned char *)t31) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t25);
    goto LAB2;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB8:    t2 = (unsigned char)1;
    goto LAB10;

LAB11:    t3 = (unsigned char)1;
    goto LAB13;

LAB15:    goto LAB2;

}

static void work_a_3855000305_3212880686_p_4(char *t0)
{
    char t10[16];
    unsigned char t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t11;
    char *t12;
    int t13;
    unsigned int t14;
    unsigned char t15;
    char *t16;
    unsigned char t17;
    unsigned char t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;

LAB0:    xsi_set_current_line(87, ng0);
    t3 = (t0 + 1832U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 == 1)
        goto LAB8;

LAB9:    t3 = (t0 + 2472U);
    t7 = *((char **)t3);
    t3 = (t0 + 7660U);
    t8 = (t0 + 7765);
    t11 = (t10 + 0U);
    t12 = (t11 + 0U);
    *((int *)t12) = 0;
    t12 = (t11 + 4U);
    *((int *)t12) = 2;
    t12 = (t11 + 8U);
    *((int *)t12) = 1;
    t13 = (2 - 0);
    t14 = (t13 * 1);
    t14 = (t14 + 1);
    t12 = (t11 + 12U);
    *((unsigned int *)t12) = t14;
    t15 = ieee_p_3620187407_sub_4042748798_3965413181(IEEE_P_3620187407, t7, t3, t8, t10);
    t2 = t15;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t12 = (t0 + 1672U);
    t16 = *((char **)t12);
    t17 = *((unsigned char *)t16);
    t18 = (t17 == (unsigned char)2);
    t1 = t18;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB11:    t23 = (t0 + 5536);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    *((unsigned char *)t27) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t23);

LAB2:    t28 = (t0 + 5008);
    *((int *)t28) = 1;

LAB1:    return;
LAB3:    t12 = (t0 + 5536);
    t19 = (t12 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    *((unsigned char *)t22) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t12);
    goto LAB2;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB8:    t2 = (unsigned char)1;
    goto LAB10;

LAB12:    goto LAB2;

}


extern void work_a_3855000305_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3855000305_3212880686_p_0,(void *)work_a_3855000305_3212880686_p_1,(void *)work_a_3855000305_3212880686_p_2,(void *)work_a_3855000305_3212880686_p_3,(void *)work_a_3855000305_3212880686_p_4};
	xsi_register_didat("work_a_3855000305_3212880686", "isim/tb_cpu_2_isim_beh.exe.sim/work/a_3855000305_3212880686.didat");
	xsi_register_executes(pe);
}
