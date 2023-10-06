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
set power_cg_gated_clock_net_naming_style "pckg_net_wc_suffix"
set power_cg_cell_naming_style "pckg_wc_midfix_wd_suffix"
set power_cg_module_naming_style "pckg_wp_wd_suffix"
#->set power_cg_auto_identify true
#->positive_edge_logic integrated
set_clock_gating_style \
        -sequential_cell latch \
        -control_point before \
        -control_signal scan_enable \
        -observation_point false \
        -positive_edge_logic integrated:${lib_icg_name}/${ICG_NAME} \
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

