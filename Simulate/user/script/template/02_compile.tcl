#read sdc constraints
remove_sdc
source -echo -verbose /home/xian001/SY1301_XIAN/backend/user/cbai/datain/20180502_sdc/sy13_top_con.tcl > ./rpt/02_read_sdc.log
source -echo -verbose ./scr/sdc/get_mem.tcl >> ./rpt/02_read_sdc.log
source -echo -verbose /home/xian001/SY1301_XIAN/backend/user/cbai/datain/20180403_sdc/update_0410/scan_dont_touch.tcl >> ./rpt/02_read_sdc.log
#->source /home/xian001/SY1301_XIAN/backend/user/cbai/datain/20180403_sdc/sdc_update.tcl >> ./rpt/02_read_sdc.log
#->source ./scr/group_path.tcl
#group_path -name REG2REG -from [all_registers] -to [all_registers] -critical_range 0.5 -weight 10
#group_path -name FROM_MEM -from [all_registers] to [all_registers] -critical_range 0.5 -weight 10
#--dont touch   --------------------------------------------
#set_dont_touch ae210_chip
#set_dont_touch [get_cells * -hierarchical -filter "full_name =~ ae210_chip/ae210_core/*/*"] true
#set_dont_touch [get_nets * -hierarchical -filter "full_name =~ ae210_chip/ae210_core/*/*"] true
set_dont_touch ae210_chip
set_dont_touch u_mcu/u_sys_top
set_dont_touch u_mcu/u_aoss_wrap
set_operating_condition SS0P99V125C
#--add upf   --------------------------------------------
set mv_enabke_power_domain_power_net_check false
set upf_create_implicit_supply_sets false
set upf_iso_filter_elements_with_applies_to ENABLE
remove_upf
#->load_upf /home/xian001/SY1301_XIAN/backend/user/slpeng/pr/20180326/scripts/upf/rtl_20170721.upf > ./rpt/03_read_upf.log
#->load_upf /home/xian001/SY1301_XIAN/backend/user/cbai/datain/20180425_upf/syn13.0422.upf > ./rpt/03_read_upf.log
source -echo -verbose ./scr/create_vddq_en_pin.tcl > ./rpt/03_read_upf.log
load_upf /home/xian001/temp_work/upf/0423/sy13.upf >> ./rpt/03_read_upf.log
source -echo -verbose /home/xian001/SY1301_XIAN/backend/user/cbai/datain/20180425_upf/modify/set_voltage.0429.tcl >> ./rpt/03_read_upf.log
set mv_upf_check_pg_pins_of_target_lib_cells true
check_mv_design > ./rpt/check_mv_design.rpt

#start to compile
#setting
set_fix_multiple_port_nets -all -buffer_constants
set_max_area 0
set verilogout_equation false
set compile_seqmap_propagate_constants false
set compile_seqmap_propagate_high_effort false
set set_ultra_optimization "true"
set compile_seqmap_identify_shift_registers false
#--dont touch false for iso   --------------------------------------------
#->source ./scr/dont_touch_port.lst
#->set_dont_touch [get_nets -of [get_ports $iso_ports]] false
#compile
check_timing  > ./rpt/03_check_timing.rpt
#-- first compile  --------------------------------------------
#compile_ultra -timing_high_effort_script -no_autoungroup -no_seq_output_inversion -gate_clock -scan -no_design_rule
#compile_ultra -no_autoungroup -gate_clock -scan -no_auto_layer_optimization
compile_ultra -gate_clock -no_seq_output_inversion -scan -no_autoungroup -timing_high_effort_script
#->save_upf ./result/syn_done_v1.upf
#report

#change name & output verilog
source ./scr/change_name.tcl
write -hier -format verilog -out ./result/${TOP}.v
write -format ddc -h -out ./result/${TOP}.ddc
report_constraint -max_delay -nosplit -all_violators -significant_digits 3 > ./rpt/${TOP}.report_constraint.rpt
report_constraint -max_delay -nosplit -all_violators -max_delay -verbose > ./rpt/${TOP}.report_constraint_verbose.rpt
report_qor > ./rpt/${TOP}.qor

write_sdc -nosplit ./result/${TOP}.sdc
save_upf ./result/${TOP}.upf
#--dont touch list   --------------------------------------------
set_dont_touch [get_cells -hierarchical -filter "full_name =~ u_mcu/u_aoss_wrap/u_aoss_pad_ring/* && is_hierarchical == false"] true
set_dont_touch [get_nets -of [get_cells * -hierarchical -filter "full_name =~ *DLY*"]] true
#set_dont_touch [get_nets -of [get_cells -hierarchical -filter "full_name =~ u_mcu/u_aoss_wrap/u_aoss_pad_ring/* && is_hierarchical == false"]] true
set dont_touch_cells [get_cells -hier * -filter {@is_hierarchical==false && @dont_touch == true}]
foreach_in_collection cell $dont_touch_cells {
	redirect -append ./result/dont_touch.lst {puts [get_att [get_cells $cell] full_name]}
}
#set dont_touch_nets [get_nets -hierarchical -filter "dont_touch == true"]
set dont_touch_dly_nets [get_nets -of [get_cells * -hierarchical -filter "full_name =~ *DLY*"]]
foreach_in_collection net $dont_touch_dly_nets {
        redirect -append ./result/dont_touch.lst {puts [get_att [get_nets $net] full_name]}
}

report_clock_gating -nosplit > ./rpt/04_report_clock_gating.rpt
check_design > ./rpt/05_check_design.log
check_timing  > ./rpt/06_check_timing.rpt
source ./scr/gpio_timing.tcl
source ./scr/disconnect_net.tcl
write -hier -format verilog -out ./result/${TOP}_disconnect.v
set_svf -off
