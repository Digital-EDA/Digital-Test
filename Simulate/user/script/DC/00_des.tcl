#common setting
set TOP sy13
set_svf "./result/${TOP}.svf"
source ./scr/rtl_list_2.lst

#set library
#timing lib
set LIB_CORNER      wc
set USER_LIB_SET "9T_HVT_RVT_POK_SYNOPSYS"
#->source /home/xian001/SY1301_XIAN/backend/common/lib_common_synopsys_cbai.tcl
source /home/xian001/SY1301_XIAN/backend/common/lib_common_synopsys_cbai_update.tcl
#dc setting
set DW_PATH "/tools/synopsys/dc/J-2014.09-SP3/libraries/syn"
set search_path ". $search_path $DW_PATH"
set synthetic_library dw_foundation.sldb
set link_library "$link_library $synthetic_library"
define_design_lib work -path ./work
