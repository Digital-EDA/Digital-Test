set_fix_multiple_port_nets -all -buffer_constants [get_designs *]
set hdlout_internal_busses true
set bus_inference_style "%s\[%d\]"
set veriligout_no_tri true
define_name_rules verilog -check_bus_indexing -allowed {a-zA-Z0-9_} -remove_internal_net_bus -flatten_multi_dimension_busses -first_restricted "\\"
change_names -rules verilog -hier -verbose
