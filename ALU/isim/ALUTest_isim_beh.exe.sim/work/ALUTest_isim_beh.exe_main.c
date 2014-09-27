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
    work_m_00000000004251141464_1710705532_init();
    work_m_00000000001108239303_4066052315_init();
    work_m_00000000003405401984_0833183191_init();
    work_m_00000000001281650710_2138810698_init();
    work_m_00000000000725278736_0886308060_init();
    work_m_00000000002214890027_4139500737_init();
    work_m_00000000002013452923_2073120511_init();


    xsi_register_tops("work_m_00000000002214890027_4139500737");
    xsi_register_tops("work_m_00000000002013452923_2073120511");


    return xsi_run_simulation(argc, argv);

}
