#setting
source ./scr/00_des.tcl
source ./scr/common_setting.tcl
source -verbose -echo /home/xian001/SY1301_XIAN/backend/user/cbai/datain/common/dont_use.tcl > ./rpt/dont_use.rpt
#->source ./scr/dont_use.tcl

#run DC
source ./scr/01_read_verilog.tcl
source ./scr/02_compile.tcl
