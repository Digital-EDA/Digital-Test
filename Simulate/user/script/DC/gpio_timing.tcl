set gpio_ports [get_ports * -filter "full_name =~ *GPIO*"]
foreach_in_collection gpio_port $gpio_ports {
	report_timing -through $gpio_port -nosp >> ./rpt/GPIO_timing.rpt 
}
