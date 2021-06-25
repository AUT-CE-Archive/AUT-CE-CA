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
static const char *ng0 = "E:/ISE Workspace/CA_Lab_7/Dual_RAM.vhd";
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );


static void work_a_0848007034_3212880686_p_0(char *t0)
{
    char t8[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    int t6;
    int t7;
    char *t9;
    char *t10;
    char *t11;
    int t12;
    int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    unsigned char t22;
    unsigned char t23;
    unsigned char t24;
    unsigned char t25;
    unsigned char t26;
    unsigned char t27;
    unsigned char t28;
    char *t29;

LAB0:    xsi_set_current_line(75, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1472U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB12;

LAB13:    t3 = (unsigned char)0;

LAB14:    if (t3 != 0)
        goto LAB10;

LAB11:
LAB3:    t1 = (t0 + 4112);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 6853);
    *((int *)t1) = 0;
    t5 = (t0 + 6857);
    *((int *)t5) = 31;
    t6 = 0;
    t7 = 31;

LAB5:    if (t6 <= t7)
        goto LAB6;

LAB8:    goto LAB3;

LAB6:    xsi_set_current_line(78, ng0);
    t9 = (t0 + 6853);
    t10 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t8, *((int *)t9), 5);
    t11 = (t0 + 6853);
    t12 = *((int *)t11);
    t13 = (t12 - 31);
    t14 = (t13 * -1);
    t15 = (5U * t14);
    t16 = (0U + t15);
    t17 = (t0 + 4192);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t10, 5U);
    xsi_driver_first_trans_delta(t17, t16, 5U, 0LL);

LAB7:    t1 = (t0 + 6853);
    t6 = *((int *)t1);
    t2 = (t0 + 6857);
    t7 = *((int *)t2);
    if (t6 == t7)
        goto LAB8;

LAB9:    t12 = (t6 + 1);
    t6 = t12;
    t5 = (t0 + 6853);
    *((int *)t5) = t6;
    goto LAB5;

LAB10:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 1192U);
    t9 = *((char **)t2);
    t25 = *((unsigned char *)t9);
    t26 = (t25 == (unsigned char)3);
    if (t26 == 1)
        goto LAB18;

LAB19:    t24 = (unsigned char)0;

LAB20:    if (t24 != 0)
        goto LAB15;

LAB17:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t22 = (t4 == (unsigned char)3);
    if (t22 == 1)
        goto LAB23;

LAB24:    t3 = (unsigned char)0;

LAB25:    if (t3 != 0)
        goto LAB21;

LAB22:
LAB16:    goto LAB3;

LAB12:    t2 = (t0 + 1512U);
    t5 = *((char **)t2);
    t22 = *((unsigned char *)t5);
    t23 = (t22 == (unsigned char)3);
    t3 = t23;
    goto LAB14;

LAB15:    xsi_set_current_line(84, ng0);
    t2 = (t0 + 2472U);
    t11 = *((char **)t2);
    t2 = (t0 + 1672U);
    t17 = *((char **)t2);
    t2 = (t0 + 6568U);
    t6 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t17, t2);
    t7 = (t6 - 31);
    t14 = (t7 * -1);
    t15 = (5U * t14);
    t16 = (0U + t15);
    t18 = (t0 + 4192);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t29 = *((char **)t21);
    memcpy(t29, t11, 5U);
    xsi_driver_first_trans_delta(t18, t16, 5U, 0LL);
    goto LAB16;

LAB18:    t2 = (t0 + 1032U);
    t10 = *((char **)t2);
    t27 = *((unsigned char *)t10);
    t28 = (t27 == (unsigned char)2);
    t24 = t28;
    goto LAB20;

LAB21:    xsi_set_current_line(87, ng0);
    t1 = (t0 + 2632U);
    t9 = *((char **)t1);
    t1 = (t0 + 1832U);
    t10 = *((char **)t1);
    t1 = (t0 + 6584U);
    t6 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t10, t1);
    t7 = (t6 - 31);
    t14 = (t7 * -1);
    xsi_vhdl_check_range_of_index(31, 0, -1, t6);
    t15 = (5U * t14);
    t16 = (0 + t15);
    t11 = (t9 + t16);
    t17 = (t0 + 4256);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t11, 5U);
    xsi_driver_first_trans_fast_port(t17);
    goto LAB16;

LAB23:    t1 = (t0 + 1192U);
    t5 = *((char **)t1);
    t23 = *((unsigned char *)t5);
    t24 = (t23 == (unsigned char)2);
    t3 = t24;
    goto LAB25;

}


extern void work_a_0848007034_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0848007034_3212880686_p_0};
	xsi_register_didat("work_a_0848007034_3212880686", "isim/tb_Dual_RAM_isim_beh.exe.sim/work/a_0848007034_3212880686.didat");
	xsi_register_executes(pe);
}
