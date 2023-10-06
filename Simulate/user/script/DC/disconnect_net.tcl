set float_pin_collections [get_pins -hierarchical -filter "full_name =~ *RTO* || full_name =~ *SNS*"]
set float_pins [get_att $float_pin_collections full_name]
foreach float_pin $float_pins {
	if {[sizeof_collection [all_connected $float_pin ]] != 0} {
		redirect ./all_float_pins {puts $float_pin} -append
		disconnect_net [all_connected $float_pin ] $float_pin
	}
}
