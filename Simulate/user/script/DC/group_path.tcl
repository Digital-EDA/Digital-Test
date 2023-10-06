remove_path_group -all
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
