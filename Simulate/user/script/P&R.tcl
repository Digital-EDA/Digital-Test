source /home/project/ASIC/FFT_IFFT_IP/user/script/setup.tcl

## ******************** 设置综合环境 ******************** ##
set PR_PATH    /home/project/ASIC/FFT_IFFT_IP/prj/P&R

set LIB_PATH    /home/project/ASIC/library/smic180/std
set STD_NAME    SCC018UG_UHD_RVT_V0p4a

#导入milkway
set tf_path $LIB_PATH/$STD_NAME/astro/tf
set mw_path $LIB_PATH/$STD_NAME/astro/scc018ug_uhd_rvt
set tluplus $LIB_PATH/$STD_NAME/astro/tluplus

create_mw_lib   MWlib.mw \
    -technology $tf_path \
    -mw_reference_library  $mw_path -open

#导入网表文件
import_designs $RES_OUT/$CURR_DESIGN.ddc  \
    -format ddc \
    -top $CURR_DESIGN  

uniquify_fp_mw_cel
current_design $CURR_DESIGN

#导入RC参数文件和.map文件
set_tlu_plus_files  \
    -max_tluplus    $tluplus/smiclog018_6lm_cell_max.tluplus  \
    -min_tluplus    $tluplus/smiclog018_6lm_cell_min.tluplus \
    -tech2itf_map   $tluplus/smic18_6lm_lef_smic18_6lm_tf.map   

report_tlu_plus_files  > $RPT_OUT/report_tlu_plus.rpt
check_tlu_plus_files   > $RPT_OUT/check_tlu_plus.rpt

remove_sdc
read_sdc /home/project/ASIC/FFT_IFFT_IP/user/data/constraint/timing.sdc
set_clock_uncertainty 2  [all_clocks]

remove_propagated_clock  [all_clocks]
check_timing 

save_mw_cel
start_gui