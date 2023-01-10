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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    unisims_ver_m_00000000001508379050_3852734344_init();
    unisims_ver_m_00000000000924517765_2161410271_init();
    unisims_ver_m_00000000000236260522_2449448540_init();
    unisims_ver_m_00000000002123152668_3476364530_init();
    unisims_ver_m_00000000001162476414_3090295908_init();
    unisims_ver_m_00000000001762375489_0643217863_init();
    work_m_00000000003747177492_2173740203_init();
    work_m_00000000000719912754_0398647821_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000000719912754_0398647821");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
