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
    work_m_00000000000134944852_3393431456_init();
    work_m_00000000001125518582_1179789468_init();
    work_m_00000000001743896794_0160347379_init();
    work_m_00000000001125518582_2567435684_init();
    work_m_00000000003110624216_1907121043_init();
    work_m_00000000002331204315_1277932046_init();
    work_m_00000000002036421706_1169263499_init();
    work_m_00000000002013452923_2073120511_init();


    xsi_register_tops("work_m_00000000002036421706_1169263499");
    xsi_register_tops("work_m_00000000002013452923_2073120511");


    return xsi_run_simulation(argc, argv);

}
