#intial setting
#->read_verilog -netlist xxx
set_app_var dc_allow_rtl_pg true
lappend DEFINE_LIST ""
analyze -format verilog -l work -define $DEFINE_LIST $RTL_FILE_LIST
#link design
elaborate $TOP
current_design $TOP
set_fix_multiple_port_nets -all -buffer_constants
link > ./rpt/00_link_design.log
set uniquify_naming_style ${TOP}_%s_%d
uniquify -force
check_design > ./rpt/01_check_design.log
write -format ddc -h -out ./result/${TOP}_elaborate.ddc
