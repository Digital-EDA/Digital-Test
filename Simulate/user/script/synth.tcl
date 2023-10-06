## ******************** 设置综合环境 ******************** ##
source /home/project/ASIC/FFT_IFFT_IP/user/script/setup.tcl

set DO_SCAN 0

## ******************** common  setting ******************** ##
#dc common setting
set_host_options -max_cores 8
set compile_enable_register_merging false
set svf_file_records_change_names_changes true
set enable_recovery_removal_arcs true
set case_analysis_with_logic_constants true
set timing_enable_multiple_clocks_per_reg "true"
set compile_instance_name_prefix "U"
set verilogout_no_tri true
set verilogout_show_unconnected_pins true
set bind_unused_hierarchical_pins false

#CLOCK gating setting
set compile_clock_gating_through_hierarchy false
#->set power_cg_auto_identify true
#->positive_edge_logic integrated
set_clock_gating_style \
        -sequential_cell latch \
        -control_point before \
        -control_signal scan_enable \
        -observation_point false \
        -max_fanout 16 \
        -minimum_bitwidth 4
#--append   --------------------------------------------
set pwr_hdlc_split_cg_cells                 true
set timing_scgc_override_library_setup_hold true
set power_keep_license_after_power_commands true
set verilogout_equation false
set compile_seqmap_propagate_constants false
set compile_seqmap_propagate_high_effort false
set set_ultra_optimization "true"
set compile_seqmap_identify_shift_registers false
set compile_seqmap_no_scan_cell true
set compile_seqmap_propagate_constants false
set compile_delete_unloaded_seqential_cells false
set timing_report_unconstrained_paths true
set hdlin_enable_vpp                            true
set power_keep_license_after_power_command      true
set single_group_per_sheet                      true
set auto_wire_load_selection false

set timing_disable_recovery_removal_checks false
set enable_recovery_removal_arcs true

# 开始记录DC综合的变动
set_svf $RES_OUT/$CURR_DESIGN.svf
set_app_var dc_allow_rtl_pg true

## ******************** 读取设计源文件 ******************** ##
#读入设计
analyze -format verilog { \
    /home/project/ASIC/FFT_IFFT_IP/user/src/top.v \
    /home/project/ASIC/FFT_IFFT_IP/user/src/FFT_FLOW.v \
    /home/project/ASIC/FFT_IFFT_IP/user/src/send.v \
    /home/project/ASIC/FFT_IFFT_IP/user/src/sum.v \
    /home/project/ASIC/FFT_IFFT_IP/user/src/utils/ram.v \
    /home/project/ASIC/FFT_IFFT_IP/user/src/utils/SPI_M2S.v \
    /home/project/ASIC/FFT_IFFT_IP/user/src/utils/math/cmult.v \
    /home/project/ASIC/FFT_IFFT_IP/user/src/utils/RAM/2048FP/RAM2048.v \
    /home/project/ASIC/FFT_IFFT_IP/user/src/Flow_FFT_IFFT/top/FFT_IFFT.v \
    /home/project/ASIC/FFT_IFFT_IP/user/src/Flow_FFT_IFFT/top/fft.v \
    /home/project/ASIC/FFT_IFFT_IP/user/src/Flow_FFT_IFFT/stage/BF_stage.v \
    /home/project/ASIC/FFT_IFFT_IP/user/src/Flow_FFT_IFFT/stage/fft_stage.v \
    /home/project/ASIC/FFT_IFFT_IP/user/src/Flow_FFT_IFFT/utils/BF_op.v \
    /home/project/ASIC/FFT_IFFT_IP/user/src/Flow_FFT_IFFT/utils/ftrans_I.v \
    /home/project/ASIC/FFT_IFFT_IP/user/src/Flow_FFT_IFFT/utils/ftrans_II.v \
    /home/project/ASIC/FFT_IFFT_IP/user/src/Flow_FFT_IFFT/utils/ftwiddle.v \
}
elaborate $CURR_DESIGN -architecture verilog
current_design $CURR_DESIGN
set_fix_multiple_port_nets -all -buffer_constants
set hdlout_internal_busses true
set bus_inference_style "%s\[%d\]"
# define_name rules verilog -check_bus_indexing -allowed {a-XA-Z0-9_}
link > $RPT_OUT/00_link_design.log
set uniquify_naming_style ${CURR_DESIGN}_%s_%d
uniquify -force
check_design > $RPT_OUT/01_check_design.log
report_attributes -design
set_dont_touch u_FFT_FLOW/u_FFT_IFFT/FFT_INST.fft_ins/stagX[*].u_fft_stage/LARGER_THAN_2.BF_inst_I/u_ram/RAM_GEN.RAM*_IP.u_RAM*
set_dont_touch *_PAD*
set_dont_touch [get_ports CLK -filter {@port_direction == in} -quiet]
set_dont_touch u_FFT_FLOW/u_sum/u*_RAM2048/u*_FRAM512
set_dont_use scc018ug_hd_rvt_ff_v1p98_-40c_basic/PULLHD0 
set_dont_use scc018ug_hd_rvt_ff_v1p98_-40c_basic/PULLHD1
## ******************** 进行设计约束 ******************** ##
# sdc
read_sdc /home/project/ASIC/FFT_IFFT_IP/user/data/constraint/timing.sdc
set_operating_conditions -max ff_v1p98_${F_TEMP}c -library $lib_fast
set_app_var auto_wire_load_selection false
# set_wire_load_model -name ForQA
# set_wire_load_mode enclosed  

# 设置输入transtion，注：需要将输入时钟信号去除
set_input_transition 0.89 [remove_from_collection [all_inputs] [get_clocks clk]]

echo "INFO : Defining Reset : RSTN"
set_drive 0 [get_ports RSTN -filter {@port_direction == in} -quiet]
set_false_path -from [get_ports RSTN -filter {@port_direction == in} -quiet]
set_ideal_network -no_propagate [get_nets -of_object [get_ports RSTN -filter {@port_direction == in} -quiet] -quiet]
set_ideal_network -no_propagate [get_nets -of_object [get_ports CLK -filter {@port_direction == in} -quiet] -quiet]

# set_ideal_network -no_propagate [get_nets -of_object [get_ports rstn -filter {@port_direction == in} -quiet] -quiet]
# set_ideal_network -no_propagate [get_nets -of_object [get_ports iclk -filter {@port_direction == in} -quiet] -quiet]
# 对时序进行分组
# set ports_clock_root [filter_collection [get_attribute [get_clocks] sources] object_class==port]
# group_path -name reg2out -from [all_registers -clock_pins] -to [all_outputs]
# group_path -name in2reg  -from [remove_from_collection [all_inputs] $ports_clock_root] -to [all_registers -data_pins]
# group_path -name in2out  -from [remove_from_collection [all_inputs] $ports_clock_root] -to [all_outputs]

set clock_ports [get_ports -quiet [all_fanout -clock_tree -flat]]
set all_inputs [all_inputs]
set all_outputs [all_outputs]
set all_nonclk_inputs [remove_from_collection $all_inputs $clock_ports]
set all_nonclk_outputs [remove_from_collection $all_outputs $clock_ports]
set all_icgs [get_cells -hier -filter "is_integrated_clock_gating_cell == true"]
set all_reg [all_registers]
set all_reg [remove_from_collection $all_reg $all_icgs]

group_path -from $all_reg -to $all_reg -name reg2reg
group_path -from $all_reg -to $all_nonclk_outputs -name reg2out
group_path -from $all_nonclk_inputs -to $all_reg -name in2reg
group_path -from $all_nonclk_inputs -to $all_nonclk_outputs -name in2out
#group_path -from $all_reg -to $all_icgs -name reg2gate
report_path_group

set_critical_range 3 [current_design]

#设置在RTL代码中用上升沿沿触发的寄存器采用使用集成门控时钟单元。
#设置该门控单元在DFT时的控制点放在门逻辑中的锁存器之前。
#设置一个门控单元所驱动的最大负载数目，定义CG单元最大扇出的一个目的是减少CG后面的时钟延迟
#门控时钟单元的扇出越大，它到达寄存器的延迟越长
#此外，还有用来约束重新平衡
#设置进行时钟门控的寄存器阵列的最小宽度（一个门控时钟至少要触发4个寄存器）
#基于锁存器的离散门控单元
# set_clock_gating_style \
#         -positive_edge_logic {integrated:saed90nm_max_hth_cg_lvt/CGLPPRX8_LVT} \
#         -control_point before \
#         -max_fanout 32 \
#         -no_sharing \
#         -minimum_bitwidth 4 \
#         -sequential_cell latch

## ******************** 映射门级单元及优化 ******************** ##
#综合并插入门控时钟单元
compile_ultra -incremental -scan -gate_clock

## ******************** 检查综合结果并输出报告 ******************** ##
#报出所有违规，包括setup, hold check, drv, clock gating check等
report_constraint -all_violators  > $RPT_OUT/all_vios.rpt
check_design > $RPT_OUT/05_check_design.log
check_timing > $RPT_OUT/06_check_timing.rpt

#为formality进行停止记录数据（形式验证）
set_svf -off

#因为DC和其它的XX命名规则不同，为了避免出现问题，在产生网表之前先要定义一些命名规则。
change_names -rules verilog -hierarchy
uniquify -force

#保存综合后的设计
write -format ddc -hierarchy -output $RES_OUT/${CURR_DESIGN}.ddc
#输出网表，自动布局布线需要
write -f verilog -hierarchy -output $RES_OUT/${CURR_DESIGN}.v

## ******************** 进行scan chain的插入 ******************** ##
source /home/project/ASIC/FFT_IFFT_IP/user/script/scan.tcl

exit