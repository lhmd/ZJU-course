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
    unisims_ver_m_15469197826776211918_2316096324_init();
    unisims_ver_m_03367362533346577578_2449448540_init();
    unisims_ver_m_16176787317968387356_3476364530_init();
    unisims_ver_m_16269261957556079018_3852734344_init();
    unisims_ver_m_16176787317968387356_0970595058_init();
    work_m_15932566407326567011_2485692946_init();
    work_m_15307521470038951327_2368969555_init();
    work_m_07875705349798958368_3683860065_init();
    work_m_17797503306755619607_0531313387_init();
    work_m_16541823861846354283_2073120511_init();


    xsi_register_tops("work_m_17797503306755619607_0531313387");
    xsi_register_tops("work_m_16541823861846354283_2073120511");


    return xsi_run_simulation(argc, argv);

}
