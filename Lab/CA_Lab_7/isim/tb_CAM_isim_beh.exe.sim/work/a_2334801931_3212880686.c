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
static const char *ng0 = "E:/ISE Workspace/CA_Lab_7/CAM.vhd";
extern char *IEEE_P_3620187407;



static void work_a_2334801931_3212880686_p_0(char *t0)
{
    char t24[16];
    char t32[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    int t6;
    int t7;
    char *t8;
    char *t9;
    unsigned char t10;
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
    int t25;
    unsigned int t26;
    unsigned char t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    int t33;
    int t34;
    int t35;
    unsigned int t36;
    unsigned int t37;

LAB0:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1472U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB14;

LAB15:    t3 = (unsigned char)0;

LAB16:    if (t3 != 0)
        goto LAB12;

LAB13:
LAB3:    t1 = (t0 + 3632);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 6206);
    *((int *)t1) = 0;
    t5 = (t0 + 6210);
    *((int *)t5) = 31;
    t6 = 0;
    t7 = 31;

LAB5:    if (t6 <= t7)
        goto LAB6;

LAB8:    goto LAB3;

LAB6:    xsi_set_current_line(70, ng0);
    t8 = (t0 + 6214);
    t10 = (5U != 5U);
    if (t10 == 1)
        goto LAB9;

LAB10:    t11 = (t0 + 6206);
    t12 = *((int *)t11);
    t13 = (t12 - 31);
    t14 = (t13 * -1);
    t15 = (5U * t14);
    t16 = (0U + t15);
    t17 = (t0 + 3712);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t8, 5U);
    xsi_driver_first_trans_delta(t17, t16, 5U, 0LL);

LAB7:    t1 = (t0 + 6206);
    t6 = *((int *)t1);
    t2 = (t0 + 6210);
    t7 = *((int *)t2);
    if (t6 == t7)
        goto LAB8;

LAB11:    t12 = (t6 + 1);
    t6 = t12;
    t5 = (t0 + 6206);
    *((int *)t5) = t6;
    goto LAB5;

LAB9:    xsi_size_not_matching(5U, 5U, 0);
    goto LAB10;

LAB12:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 3776);
    t8 = (t2 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t17 = *((char **)t11);
    *((unsigned char *)t17) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(76, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t10 = (t4 == (unsigned char)3);
    if (t10 == 1)
        goto LAB20;

LAB21:    t3 = (unsigned char)0;

LAB22:    if (t3 != 0)
        goto LAB17;

LAB19:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t10 = (t4 == (unsigned char)3);
    if (t10 == 1)
        goto LAB37;

LAB38:    t3 = (unsigned char)0;

LAB39:    if (t3 != 0)
        goto LAB35;

LAB36:
LAB18:    goto LAB3;

LAB14:    t2 = (t0 + 1512U);
    t5 = *((char **)t2);
    t10 = *((unsigned char *)t5);
    t22 = (t10 == (unsigned char)3);
    t3 = t22;
    goto LAB16;

LAB17:    xsi_set_current_line(78, ng0);
    t1 = (t0 + 6219);
    *((int *)t1) = 0;
    t8 = (t0 + 6223);
    *((int *)t8) = 31;
    t6 = 0;
    t7 = 31;

LAB23:    if (t6 <= t7)
        goto LAB24;

LAB26:    goto LAB18;

LAB20:    t1 = (t0 + 1032U);
    t5 = *((char **)t1);
    t22 = *((unsigned char *)t5);
    t23 = (t22 == (unsigned char)2);
    t3 = t23;
    goto LAB22;

LAB24:    xsi_set_current_line(79, ng0);
    t9 = (t0 + 1992U);
    t11 = *((char **)t9);
    t9 = (t0 + 6219);
    t12 = *((int *)t9);
    t13 = (t12 - 31);
    t14 = (t13 * -1);
    xsi_vhdl_check_range_of_index(31, 0, -1, *((int *)t9));
    t15 = (5U * t14);
    t16 = (0 + t15);
    t17 = (t11 + t16);
    t18 = (t24 + 0U);
    t19 = (t18 + 0U);
    *((int *)t19) = 4;
    t19 = (t18 + 4U);
    *((int *)t19) = 0;
    t19 = (t18 + 8U);
    *((int *)t19) = -1;
    t25 = (0 - 4);
    t26 = (t25 * -1);
    t26 = (t26 + 1);
    t19 = (t18 + 12U);
    *((unsigned int *)t19) = t26;
    t19 = (t0 + 1832U);
    t20 = *((char **)t19);
    t19 = (t0 + 5980U);
    t27 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t17, t24, t20, t19);
    if (t27 != 0)
        goto LAB27;

LAB29:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 6219);
    t12 = *((int *)t1);
    t13 = (t12 - 31);
    t14 = (t13 * -1);
    xsi_vhdl_check_range_of_index(31, 0, -1, *((int *)t1));
    t15 = (5U * t14);
    t16 = (0 + t15);
    t5 = (t2 + t16);
    t8 = (t24 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 4;
    t9 = (t8 + 4U);
    *((int *)t9) = 0;
    t9 = (t8 + 8U);
    *((int *)t9) = -1;
    t25 = (0 - 4);
    t26 = (t25 * -1);
    t26 = (t26 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t26;
    t9 = (t0 + 6227);
    t17 = (t32 + 0U);
    t18 = (t17 + 0U);
    *((int *)t18) = 0;
    t18 = (t17 + 4U);
    *((int *)t18) = 4;
    t18 = (t17 + 8U);
    *((int *)t18) = 1;
    t33 = (4 - 0);
    t26 = (t33 * 1);
    t26 = (t26 + 1);
    t18 = (t17 + 12U);
    *((unsigned int *)t18) = t26;
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t5, t24, t9, t32);
    if (t3 != 0)
        goto LAB31;

LAB32:
LAB28:
LAB25:    t1 = (t0 + 6219);
    t6 = *((int *)t1);
    t2 = (t0 + 6223);
    t7 = *((int *)t2);
    if (t6 == t7)
        goto LAB26;

LAB34:    t12 = (t6 + 1);
    t6 = t12;
    t5 = (t0 + 6219);
    *((int *)t5) = t6;
    goto LAB23;

LAB27:    xsi_set_current_line(80, ng0);
    t21 = (t0 + 3776);
    t28 = (t21 + 56U);
    t29 = *((char **)t28);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    *((unsigned char *)t31) = (unsigned char)3;
    xsi_driver_first_trans_fast(t21);
    xsi_set_current_line(81, ng0);
    goto LAB26;

LAB30:    goto LAB28;

LAB31:    xsi_set_current_line(85, ng0);
    t18 = (t0 + 1832U);
    t19 = *((char **)t18);
    t18 = (t0 + 6219);
    t34 = *((int *)t18);
    t35 = (t34 - 31);
    t26 = (t35 * -1);
    t36 = (5U * t26);
    t37 = (0U + t36);
    t20 = (t0 + 3712);
    t21 = (t20 + 56U);
    t28 = *((char **)t21);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    memcpy(t30, t19, 5U);
    xsi_driver_first_trans_delta(t20, t37, 5U, 0LL);
    xsi_set_current_line(86, ng0);
    goto LAB26;

LAB33:    goto LAB28;

LAB35:    xsi_set_current_line(93, ng0);
    t1 = (t0 + 3840);
    t8 = (t1 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t17 = *((char **)t11);
    *((unsigned char *)t17) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(94, ng0);
    t1 = (t0 + 6232);
    *((int *)t1) = 0;
    t2 = (t0 + 6236);
    *((int *)t2) = 31;
    t6 = 0;
    t7 = 31;

LAB40:    if (t6 <= t7)
        goto LAB41;

LAB43:    goto LAB18;

LAB37:    t1 = (t0 + 1192U);
    t5 = *((char **)t1);
    t22 = *((unsigned char *)t5);
    t23 = (t22 == (unsigned char)2);
    t3 = t23;
    goto LAB39;

LAB41:    xsi_set_current_line(95, ng0);
    t5 = (t0 + 1992U);
    t8 = *((char **)t5);
    t5 = (t0 + 6232);
    t12 = *((int *)t5);
    t13 = (t12 - 31);
    t14 = (t13 * -1);
    xsi_vhdl_check_range_of_index(31, 0, -1, *((int *)t5));
    t15 = (5U * t14);
    t16 = (0 + t15);
    t9 = (t8 + t16);
    t11 = (t24 + 0U);
    t17 = (t11 + 0U);
    *((int *)t17) = 4;
    t17 = (t11 + 4U);
    *((int *)t17) = 0;
    t17 = (t11 + 8U);
    *((int *)t17) = -1;
    t25 = (0 - 4);
    t26 = (t25 * -1);
    t26 = (t26 + 1);
    t17 = (t11 + 12U);
    *((unsigned int *)t17) = t26;
    t17 = (t0 + 1832U);
    t18 = *((char **)t17);
    t17 = (t0 + 5980U);
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t9, t24, t18, t17);
    if (t3 != 0)
        goto LAB44;

LAB46:
LAB45:
LAB42:    t1 = (t0 + 6232);
    t6 = *((int *)t1);
    t2 = (t0 + 6236);
    t7 = *((int *)t2);
    if (t6 == t7)
        goto LAB43;

LAB47:    t12 = (t6 + 1);
    t6 = t12;
    t5 = (t0 + 6232);
    *((int *)t5) = t6;
    goto LAB40;

LAB44:    xsi_set_current_line(96, ng0);
    t19 = (t0 + 3840);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t28 = (t21 + 56U);
    t29 = *((char **)t28);
    *((unsigned char *)t29) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t19);
    goto LAB45;

}


extern void work_a_2334801931_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2334801931_3212880686_p_0};
	xsi_register_didat("work_a_2334801931_3212880686", "isim/tb_CAM_isim_beh.exe.sim/work/a_2334801931_3212880686.didat");
	xsi_register_executes(pe);
}
