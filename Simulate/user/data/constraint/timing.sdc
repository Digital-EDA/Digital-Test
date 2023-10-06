# 设置周期 curr : 200MHz
set T 5
set_case_analysis 1 [get_ports MODE]
# 首先创建时钟
create_clock -name clk -period $T [get_ports CLK]

### note: ------ margin 余量约束设置严格一点

# 路径、器件等造成的延迟
set_clock_latency       1.2 [get_clocks clk]  

# 边沿跳变的压摆率导致的延迟与不确定
set_clock_transition    0.4 [get_clocks clk]  

# jitter抖动造成的不稳定
set_clock_uncertainty   [expr $T*0.25] [get_clocks clk]    

# reg_to_reg

# input/output_to_reg
# 告诉EDA，模块外部有多大的延迟，软件自动计算内部的延迟(设置的值一般都是经验值)
# Tclk-q : FF传输时间
# Tm  : 最大外部延迟
# clk : 同步的时钟
# A : 输入的端口
# B : 输出的端口
# max 60% min 0
set InputMaxDelay  [ expr $T * 0.6 ]
set OutputMaxDelay [ expr $T * 0.6 ]
#--Option
set InputMinDelay  [ expr $T * 0 ]
set OutputMinDelay [ expr $T * 0 ]

set_input_delay $InputMaxDelay -max [all_inputs] -clock [get_clocks clk]   
set_input_delay $InputMinDelay -min [all_inputs] -clock [get_clocks clk]   

set_output_delay $OutputMaxDelay -max [all_outputs] -clock [get_clocks clk]   
set_output_delay $OutputMinDelay -min [all_outputs] -clock [get_clocks clk]   

# env attributes
# 导入模型的R&C，让DC去估算延迟
# set_load [load of lib/cell_pin] [all_port]
# set_driving_cell -lib_cell and2a0 [all_port]

set_max_transition  0.5 [current_design]
# set_max_capacitance # 不必设置直接遵循lib里的约束即可
set_max_fanout 64 [current_design]

# false path
# set_false_path -from [get_ports RSTN]

#set_multicycle_path -setup  2 -from A -to B
#set_multicycle_path -hold   1 -from A -to B

set compile_enable_constant_propagation_with_no_boundary_opt false
set timing_enable_multiple_clocks_per_reg true
set enable_recovery_removal_arcs true

set_max_leakage_power 0 
set_max_area 0

