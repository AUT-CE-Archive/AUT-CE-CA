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
static const char *ng0 = "E:/ISE Workspace/CA_Lab_9/CPU.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1547198987_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_1547270861_1035706684(char *, char *, char *, char *, char *, char *);
int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );
char *ieee_p_2592010699_sub_1306069469_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1735675855_503743352(char *, char *, char *, char *, char *, char *);
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
char *ieee_p_2592010699_sub_1837678034_503743352(char *, char *, char *, char *);
char *ieee_p_2592010699_sub_795620321_503743352(char *, char *, char *, char *, char *, char *);


static void work_a_1415465652_3212880686_p_0(char *t0)
{
    char t13[16];
    char t32[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    unsigned int t12;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    int t20;
    int t21;
    unsigned int t22;
    unsigned int t23;
    int t24;
    int t25;
    int t26;
    int t27;
    int t29;
    char *t30;
    unsigned int t33;
    unsigned int t34;

LAB0:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1792U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB17;

LAB18:
LAB3:    t1 = (t0 + 5224);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 8593);
    t6 = (8U != 8U);
    if (t6 == 1)
        goto LAB5;

LAB6:    t7 = (t0 + 5368);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 8U);
    xsi_driver_first_trans_delta(t7, 40U, 8U, 0LL);
    xsi_set_current_line(60, ng0);
    t1 = (t0 + 8601);
    t3 = (8U != 8U);
    if (t3 == 1)
        goto LAB7;

LAB8:    t5 = (t0 + 5368);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_delta(t5, 32U, 8U, 0LL);
    xsi_set_current_line(61, ng0);
    t1 = (t0 + 8609);
    t3 = (8U != 8U);
    if (t3 == 1)
        goto LAB9;

LAB10:    t5 = (t0 + 5368);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_delta(t5, 24U, 8U, 0LL);
    xsi_set_current_line(62, ng0);
    t1 = (t0 + 8617);
    t3 = (8U != 8U);
    if (t3 == 1)
        goto LAB11;

LAB12:    t5 = (t0 + 5368);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_delta(t5, 16U, 8U, 0LL);
    xsi_set_current_line(63, ng0);
    t1 = (t0 + 8625);
    t3 = (8U != 8U);
    if (t3 == 1)
        goto LAB13;

LAB14:    t5 = (t0 + 5368);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_delta(t5, 8U, 8U, 0LL);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 8633);
    t3 = (8U != 8U);
    if (t3 == 1)
        goto LAB15;

LAB16:    t5 = (t0 + 5368);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_delta(t5, 0U, 8U, 0LL);
    xsi_set_current_line(67, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t2 = t1;
    memset(t2, (unsigned char)2, 8U);
    t5 = (t0 + 2928U);
    t7 = *((char **)t5);
    t5 = (t7 + 0);
    memcpy(t5, t1, 8U);
    xsi_set_current_line(68, ng0);
    t1 = xsi_get_transient_memory(6U);
    memset(t1, 0, 6U);
    t2 = t1;
    memset(t2, (unsigned char)2, 6U);
    t5 = (t0 + 5432);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 6U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(69, ng0);
    t1 = xsi_get_transient_memory(3U);
    memset(t1, 0, 3U);
    t2 = t1;
    memset(t2, (unsigned char)2, 3U);
    t5 = (t0 + 5496);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 3U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(70, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t2 = t1;
    memset(t2, (unsigned char)2, 8U);
    t5 = (t0 + 5560);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(71, ng0);
    t1 = xsi_get_transient_memory(6U);
    memset(t1, 0, 6U);
    t2 = t1;
    memset(t2, (unsigned char)2, 6U);
    t5 = (t0 + 5624);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 6U);
    xsi_driver_first_trans_fast(t5);
    goto LAB3;

LAB5:    xsi_size_not_matching(8U, 8U, 0);
    goto LAB6;

LAB7:    xsi_size_not_matching(8U, 8U, 0);
    goto LAB8;

LAB9:    xsi_size_not_matching(8U, 8U, 0);
    goto LAB10;

LAB11:    xsi_size_not_matching(8U, 8U, 0);
    goto LAB12;

LAB13:    xsi_size_not_matching(8U, 8U, 0);
    goto LAB14;

LAB15:    xsi_size_not_matching(8U, 8U, 0);
    goto LAB16;

LAB17:    xsi_set_current_line(76, ng0);
    t2 = (t0 + 2472U);
    t5 = *((char **)t2);
    t2 = (t0 + 8641);
    t4 = 1;
    if (3U == 3U)
        goto LAB22;

LAB23:    t4 = 0;

LAB24:    if (t4 != 0)
        goto LAB19;

LAB21:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 2152U);
    t5 = *((char **)t1);
    t1 = (t0 + 8408U);
    t20 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t5, t1);
    t21 = (t20 - 5);
    t12 = (t21 * -1);
    xsi_vhdl_check_range_of_index(5, 0, -1, t20);
    t22 = (8U * t12);
    t23 = (0 + t22);
    t7 = (t2 + t23);
    t8 = (t0 + 2928U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    memcpy(t8, t7, 8U);
    xsi_set_current_line(81, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 5432);
    t5 = (t1 + 56U);
    t7 = *((char **)t5);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 6U);
    xsi_driver_first_trans_fast(t1);

LAB20:    xsi_set_current_line(85, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 8644);
    t20 = xsi_mem_cmp(t1, t2, 3U);
    if (t20 == 1)
        goto LAB29;

LAB37:    t7 = (t0 + 8647);
    t21 = xsi_mem_cmp(t7, t2, 3U);
    if (t21 == 1)
        goto LAB30;

LAB38:    t9 = (t0 + 8650);
    t24 = xsi_mem_cmp(t9, t2, 3U);
    if (t24 == 1)
        goto LAB31;

LAB39:    t11 = (t0 + 8653);
    t25 = xsi_mem_cmp(t11, t2, 3U);
    if (t25 == 1)
        goto LAB32;

LAB40:    t15 = (t0 + 8656);
    t26 = xsi_mem_cmp(t15, t2, 3U);
    if (t26 == 1)
        goto LAB33;

LAB41:    t17 = (t0 + 8659);
    t27 = xsi_mem_cmp(t17, t2, 3U);
    if (t27 == 1)
        goto LAB34;

LAB42:    t19 = (t0 + 8662);
    t29 = xsi_mem_cmp(t19, t2, 3U);
    if (t29 == 1)
        goto LAB35;

LAB43:
LAB36:    xsi_set_current_line(93, ng0);

LAB28:    xsi_set_current_line(97, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 8686);
    t3 = 1;
    if (3U == 3U)
        goto LAB56;

LAB57:    t3 = 0;

LAB58:    if ((!(t3)) != 0)
        goto LAB53;

LAB55:    xsi_set_current_line(100, ng0);
    t1 = (t0 + 2928U);
    t2 = *((char **)t1);
    t12 = (7 - 7);
    t22 = (t12 * 1U);
    t23 = (0 + t22);
    t1 = (t2 + t23);
    t5 = (t32 + 0U);
    t7 = (t5 + 0U);
    *((int *)t7) = 7;
    t7 = (t5 + 4U);
    *((int *)t7) = 5;
    t7 = (t5 + 8U);
    *((int *)t7) = -1;
    t20 = (5 - 7);
    t33 = (t20 * -1);
    t33 = (t33 + 1);
    t7 = (t5 + 12U);
    *((unsigned int *)t7) = t33;
    t7 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t13, t1, t32);
    t8 = (t13 + 12U);
    t33 = *((unsigned int *)t8);
    t34 = (1U * t33);
    t3 = (3U != t34);
    if (t3 == 1)
        goto LAB62;

LAB63:    t9 = (t0 + 5496);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t14 = (t11 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t7, 3U);
    xsi_driver_first_trans_fast(t9);

LAB54:    goto LAB3;

LAB19:    xsi_set_current_line(77, ng0);
    t10 = (t0 + 2152U);
    t11 = *((char **)t10);
    t10 = (t0 + 8408U);
    t14 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t13, t11, t10, 1);
    t15 = (t0 + 5624);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t14, 6U);
    xsi_driver_first_trans_fast(t15);
    xsi_set_current_line(78, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 2312U);
    t5 = *((char **)t1);
    t1 = (t0 + 8424U);
    t20 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t5, t1);
    t21 = (t20 - 5);
    t12 = (t21 * -1);
    xsi_vhdl_check_range_of_index(5, 0, -1, t20);
    t22 = (8U * t12);
    t23 = (0 + t22);
    t7 = (t2 + t23);
    t8 = (t0 + 2928U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    memcpy(t8, t7, 8U);
    goto LAB20;

LAB22:    t12 = 0;

LAB25:    if (t12 < 3U)
        goto LAB26;
    else
        goto LAB24;

LAB26:    t8 = (t5 + t12);
    t9 = (t2 + t12);
    if (*((unsigned char *)t8) != *((unsigned char *)t9))
        goto LAB23;

LAB27:    t12 = (t12 + 1);
    goto LAB25;

LAB29:    xsi_set_current_line(86, ng0);
    t30 = (t0 + 8665);
    xsi_report(t30, 3U, 0);
    xsi_set_current_line(86, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t12 = (7 - 7);
    t22 = (t12 * 1U);
    t23 = (0 + t22);
    t1 = (t2 + t23);
    t5 = (t32 + 0U);
    t7 = (t5 + 0U);
    *((int *)t7) = 7;
    t7 = (t5 + 4U);
    *((int *)t7) = 0;
    t7 = (t5 + 8U);
    *((int *)t7) = -1;
    t20 = (0 - 7);
    t33 = (t20 * -1);
    t33 = (t33 + 1);
    t7 = (t5 + 12U);
    *((unsigned int *)t7) = t33;
    t7 = (t0 + 2928U);
    t8 = *((char **)t7);
    t7 = (t0 + 8488U);
    t9 = ieee_p_1242562249_sub_1547198987_1035706684(IEEE_P_1242562249, t13, t1, t32, t8, t7);
    t10 = (t0 + 5560);
    t11 = (t10 + 56U);
    t14 = *((char **)t11);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t9, 8U);
    xsi_driver_first_trans_fast(t10);
    goto LAB28;

LAB30:    xsi_set_current_line(87, ng0);
    t1 = (t0 + 8668);
    xsi_report(t1, 3U, 0);
    xsi_set_current_line(87, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t12 = (7 - 7);
    t22 = (t12 * 1U);
    t23 = (0 + t22);
    t1 = (t2 + t23);
    t5 = (t32 + 0U);
    t7 = (t5 + 0U);
    *((int *)t7) = 7;
    t7 = (t5 + 4U);
    *((int *)t7) = 0;
    t7 = (t5 + 8U);
    *((int *)t7) = -1;
    t20 = (0 - 7);
    t33 = (t20 * -1);
    t33 = (t33 + 1);
    t7 = (t5 + 12U);
    *((unsigned int *)t7) = t33;
    t7 = (t0 + 2928U);
    t8 = *((char **)t7);
    t7 = (t0 + 8488U);
    t9 = ieee_p_1242562249_sub_1547270861_1035706684(IEEE_P_1242562249, t13, t1, t32, t8, t7);
    t10 = (t0 + 5560);
    t11 = (t10 + 56U);
    t14 = *((char **)t11);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t9, 8U);
    xsi_driver_first_trans_delta(t10, 0U, 8U, 0LL);
    goto LAB28;

LAB31:    xsi_set_current_line(88, ng0);
    t1 = (t0 + 8671);
    xsi_report(t1, 3U, 0);
    xsi_set_current_line(88, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t12 = (7 - 7);
    t22 = (t12 * 1U);
    t23 = (0 + t22);
    t1 = (t2 + t23);
    t5 = (t32 + 0U);
    t7 = (t5 + 0U);
    *((int *)t7) = 7;
    t7 = (t5 + 4U);
    *((int *)t7) = 0;
    t7 = (t5 + 8U);
    *((int *)t7) = -1;
    t20 = (0 - 7);
    t33 = (t20 * -1);
    t33 = (t33 + 1);
    t7 = (t5 + 12U);
    *((unsigned int *)t7) = t33;
    t7 = (t0 + 2928U);
    t8 = *((char **)t7);
    t7 = (t0 + 8488U);
    t9 = ieee_p_2592010699_sub_1735675855_503743352(IEEE_P_2592010699, t13, t1, t32, t8, t7);
    t10 = (t13 + 12U);
    t33 = *((unsigned int *)t10);
    t34 = (1U * t33);
    t3 = (8U != t34);
    if (t3 == 1)
        goto LAB45;

LAB46:    t11 = (t0 + 5560);
    t14 = (t11 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t9, 8U);
    xsi_driver_first_trans_delta(t11, 0U, 8U, 0LL);
    goto LAB28;

LAB32:    xsi_set_current_line(89, ng0);
    t1 = (t0 + 8674);
    xsi_report(t1, 3U, 0);
    xsi_set_current_line(89, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t12 = (7 - 7);
    t22 = (t12 * 1U);
    t23 = (0 + t22);
    t1 = (t2 + t23);
    t5 = (t32 + 0U);
    t7 = (t5 + 0U);
    *((int *)t7) = 7;
    t7 = (t5 + 4U);
    *((int *)t7) = 0;
    t7 = (t5 + 8U);
    *((int *)t7) = -1;
    t20 = (0 - 7);
    t33 = (t20 * -1);
    t33 = (t33 + 1);
    t7 = (t5 + 12U);
    *((unsigned int *)t7) = t33;
    t7 = (t0 + 2928U);
    t8 = *((char **)t7);
    t7 = (t0 + 8488U);
    t9 = ieee_p_2592010699_sub_1306069469_503743352(IEEE_P_2592010699, t13, t1, t32, t8, t7);
    t10 = (t13 + 12U);
    t33 = *((unsigned int *)t10);
    t34 = (1U * t33);
    t3 = (8U != t34);
    if (t3 == 1)
        goto LAB47;

LAB48:    t11 = (t0 + 5560);
    t14 = (t11 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t9, 8U);
    xsi_driver_first_trans_delta(t11, 0U, 8U, 0LL);
    goto LAB28;

LAB33:    xsi_set_current_line(90, ng0);
    t1 = (t0 + 8677);
    xsi_report(t1, 3U, 0);
    xsi_set_current_line(90, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t12 = (7 - 7);
    t22 = (t12 * 1U);
    t23 = (0 + t22);
    t1 = (t2 + t23);
    t5 = (t32 + 0U);
    t7 = (t5 + 0U);
    *((int *)t7) = 7;
    t7 = (t5 + 4U);
    *((int *)t7) = 0;
    t7 = (t5 + 8U);
    *((int *)t7) = -1;
    t20 = (0 - 7);
    t33 = (t20 * -1);
    t33 = (t33 + 1);
    t7 = (t5 + 12U);
    *((unsigned int *)t7) = t33;
    t7 = (t0 + 2928U);
    t8 = *((char **)t7);
    t7 = (t0 + 8488U);
    t9 = ieee_p_2592010699_sub_795620321_503743352(IEEE_P_2592010699, t13, t1, t32, t8, t7);
    t10 = (t13 + 12U);
    t33 = *((unsigned int *)t10);
    t34 = (1U * t33);
    t3 = (8U != t34);
    if (t3 == 1)
        goto LAB49;

LAB50:    t11 = (t0 + 5560);
    t14 = (t11 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t9, 8U);
    xsi_driver_first_trans_delta(t11, 0U, 8U, 0LL);
    goto LAB28;

LAB34:    xsi_set_current_line(91, ng0);
    t1 = (t0 + 8680);
    xsi_report(t1, 3U, 0);
    xsi_set_current_line(91, ng0);
    t1 = (t0 + 5560);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 0U, 1, 0LL);
    goto LAB28;

LAB35:    xsi_set_current_line(92, ng0);
    t1 = (t0 + 8683);
    xsi_report(t1, 3U, 0);
    xsi_set_current_line(92, ng0);
    t1 = (t0 + 2928U);
    t2 = *((char **)t1);
    t1 = (t0 + 8488U);
    t5 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t13, t2, t1);
    t7 = (t13 + 12U);
    t12 = *((unsigned int *)t7);
    t22 = (1U * t12);
    t3 = (8U != t22);
    if (t3 == 1)
        goto LAB51;

LAB52:    t8 = (t0 + 5560);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t14 = *((char **)t11);
    memcpy(t14, t5, 8U);
    xsi_driver_first_trans_fast(t8);
    goto LAB28;

LAB44:;
LAB45:    xsi_size_not_matching(8U, t34, 0);
    goto LAB46;

LAB47:    xsi_size_not_matching(8U, t34, 0);
    goto LAB48;

LAB49:    xsi_size_not_matching(8U, t34, 0);
    goto LAB50;

LAB51:    xsi_size_not_matching(8U, t22, 0);
    goto LAB52;

LAB53:    xsi_set_current_line(98, ng0);
    t9 = (t0 + 8689);
    t11 = (t0 + 5496);
    t14 = (t11 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t9, 3U);
    xsi_driver_first_trans_fast(t11);
    goto LAB54;

LAB56:    t12 = 0;

LAB59:    if (t12 < 3U)
        goto LAB60;
    else
        goto LAB58;

LAB60:    t7 = (t2 + t12);
    t8 = (t1 + t12);
    if (*((unsigned char *)t7) != *((unsigned char *)t8))
        goto LAB57;

LAB61:    t12 = (t12 + 1);
    goto LAB59;

LAB62:    xsi_size_not_matching(3U, t34, 0);
    goto LAB63;

}

static void work_a_1415465652_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(107, ng0);

LAB3:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 5688);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 6U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 5240);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1415465652_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(108, ng0);

LAB3:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = (7 - 7);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 5752);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast_port(t6);

LAB2:    t11 = (t0 + 5256);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1415465652_3212880686_p_3(char *t0)
{
    unsigned char t1;
    unsigned char t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned char t16;
    unsigned char t17;
    char *t18;
    unsigned char t20;
    unsigned int t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;

LAB0:    xsi_set_current_line(109, ng0);
    t4 = (t0 + 1832U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    if (t7 == 1)
        goto LAB11;

LAB12:    t4 = (t0 + 2472U);
    t8 = *((char **)t4);
    t4 = (t0 + 8692);
    t10 = 1;
    if (3U == 3U)
        goto LAB14;

LAB15:    t10 = 0;

LAB16:    t3 = t10;

LAB13:    if (t3 == 1)
        goto LAB8;

LAB9:    t14 = (t0 + 1352U);
    t15 = *((char **)t14);
    t16 = *((unsigned char *)t15);
    t17 = (t16 == (unsigned char)2);
    t2 = t17;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t14 = (t0 + 2472U);
    t18 = *((char **)t14);
    t14 = (t0 + 8695);
    t20 = 1;
    if (3U == 3U)
        goto LAB20;

LAB21:    t20 = 0;

LAB22:    t1 = t20;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB26:    t29 = (t0 + 5816);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    *((unsigned char *)t33) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t29);

LAB2:    t34 = (t0 + 5272);
    *((int *)t34) = 1;

LAB1:    return;
LAB3:    t24 = (t0 + 5816);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    *((unsigned char *)t28) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t24);
    goto LAB2;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB8:    t2 = (unsigned char)1;
    goto LAB10;

LAB11:    t3 = (unsigned char)1;
    goto LAB13;

LAB14:    t11 = 0;

LAB17:    if (t11 < 3U)
        goto LAB18;
    else
        goto LAB16;

LAB18:    t12 = (t8 + t11);
    t13 = (t4 + t11);
    if (*((unsigned char *)t12) != *((unsigned char *)t13))
        goto LAB15;

LAB19:    t11 = (t11 + 1);
    goto LAB17;

LAB20:    t21 = 0;

LAB23:    if (t21 < 3U)
        goto LAB24;
    else
        goto LAB22;

LAB24:    t22 = (t18 + t21);
    t23 = (t14 + t21);
    if (*((unsigned char *)t22) != *((unsigned char *)t23))
        goto LAB21;

LAB25:    t21 = (t21 + 1);
    goto LAB23;

LAB27:    goto LAB2;

}

static void work_a_1415465652_3212880686_p_4(char *t0)
{
    unsigned char t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    unsigned char t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned char t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;

LAB0:    xsi_set_current_line(110, ng0);
    t3 = (t0 + 1832U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 == 1)
        goto LAB8;

LAB9:    t3 = (t0 + 2472U);
    t7 = *((char **)t3);
    t3 = (t0 + 8698);
    t9 = 1;
    if (3U == 3U)
        goto LAB11;

LAB12:    t9 = 0;

LAB13:    t2 = (!(t9));

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t13 = (t0 + 1352U);
    t14 = *((char **)t13);
    t15 = *((unsigned char *)t14);
    t16 = (t15 == (unsigned char)2);
    t1 = t16;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB17:    t21 = (t0 + 5880);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    *((unsigned char *)t25) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t21);

LAB2:    t26 = (t0 + 5288);
    *((int *)t26) = 1;

LAB1:    return;
LAB3:    t13 = (t0 + 5880);
    t17 = (t13 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    *((unsigned char *)t20) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t13);
    goto LAB2;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB8:    t2 = (unsigned char)1;
    goto LAB10;

LAB11:    t10 = 0;

LAB14:    if (t10 < 3U)
        goto LAB15;
    else
        goto LAB13;

LAB15:    t11 = (t7 + t10);
    t12 = (t3 + t10);
    if (*((unsigned char *)t11) != *((unsigned char *)t12))
        goto LAB12;

LAB16:    t10 = (t10 + 1);
    goto LAB14;

LAB18:    goto LAB2;

}


extern void work_a_1415465652_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1415465652_3212880686_p_0,(void *)work_a_1415465652_3212880686_p_1,(void *)work_a_1415465652_3212880686_p_2,(void *)work_a_1415465652_3212880686_p_3,(void *)work_a_1415465652_3212880686_p_4};
	xsi_register_didat("work_a_1415465652_3212880686", "isim/zxc_isim_beh.exe.sim/work/a_1415465652_3212880686.didat");
	xsi_register_executes(pe);
}
