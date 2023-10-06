#################clock################
set CLOCKS_LIST [ list \
    hclk       2.5 0  1.25 \
    hclk2      2.5 0  1.25 \
    core_clk   2.5 0  1.25 \
    pclk       5.0 0  2.5 \
    uart2_clk  5.0 0  2.5 \
    T4CLK      5.0 0  2.5 \
    T5CLK      5.0 0  2.5 \
    T6CLK      5.0 0  2.5 \
    T7CLK      5.0 0  2.5 \
]
#->hclkdiv3   7.5 0  3.75
set  pre_clock_margin 0.8

foreach [ list CKPORT PRD R F ] $CLOCKS_LIST {
	echo "INFO : Defining Clock: $CKPORT"
	lappend CLOCKS_NAME_LIST $CKPORT
        set PRD_WM  [expr $PRD * $pre_clock_margin]
        set RW_WM   [expr $R   * $pre_clock_margin]
        set FW_WM   [expr $F   * $pre_clock_margin]
	create_clock -name $CKPORT [get_ports $CKPORT] -period $PRD_WM -waveform [list $RW_WM $FW_WM]
        set_dont_touch_network $CKPORT
        set_ideal_network $CKPORT
        set_clock_uncertainty [ expr 0.03 * $PRD_WM] [ get_clocks $CKPORT ]
}
echo "INFO : Clocks Defined : $CLOCKS_NAME_LIST"
set_clock_transition 0.2 [all_clocks]

################reset##############
set RESETS_LIST [ list \
        hresetn \
        hreset2_n \
        core_resetn \
        presetn \
	globalresetn \
]
#-> WdtResetn
if { [ llength RESETS_LIST ] > 0 } {
    foreach RstName $RESETS_LIST {
      #/***********************************************************************/
      #/*   create reset
      #/***********************************************************************/
      echo "INFO : Defining Reset : $RstName"
      set_drive 0 [get_ports $RstName -filter {@port_direction == in} -quiet]
      set_false_path -from [get_ports $RstName -filter {@port_direction == in} -quiet]
      set_ideal_network -no_propagate [get_nets -of_object [get_ports $RstName -filter {@port_direction == in} -quiet] -quiet]
    }
}

##########input/output delay##############
set clkname hclk
set CLKPERIOD [ get_attribute [get_clocks $clkname] period ]
set InputMaxDelay  [ expr $CLKPERIOD * 0.7 ]

set OutputMaxDelay [ expr $CLKPERIOD * 0.7 ]
#--Option
set InputMinDelay  [ expr $CLKPERIOD * 0 ]
set OutputMinDelay [ expr $CLKPERIOD * 0 ]
set MaxDelay 0.2

set AllInputNoClkRst [remove_from_collection [all_inputs] [list hresetn hreset2_n core_resetn presetn uart_rstn hclk hclk2 core_clk pclk uart2_clk T4CLK T5CLK T6CLK T7CLK scan_enable scan_test] ]
set AllOutput [ all_outputs ]

set_input_delay $InputMaxDelay -max -clock $clkname $AllInputNoClkRst
set_input_delay $InputMinDelay -min -clock $clkname $AllInputNoClkRst

set_output_delay $OutputMaxDelay -max -clock $clkname $AllOutput
set_output_delay $OutputMinDelay -min -clock $clkname $AllOutput


set OutputMaxDelay_0p4 [ expr $CLKPERIOD * 0.4 ]
set_max_delay [ expr $MaxDelay + $InputMaxDelay + $OutputMaxDelay ] -from $AllInputNoClkRst -to $AllOutput

########################exceptions###############
#false path
#->set_false_path -from [get_clock  hclkdiv3] -to [get_clocks {list uart2_clk pclk T4CLK T5CLK T6CLK T7CLK}]
#->set_false_path -from [get_clocks {list uart2_clk pclk T4CLK T5CLK T6CLK T7CLK} ] -to [get_clock  hclkdiv3]
#multi cycle path
set_multicycle_path 2 -setup -end -from [get_clocks [list pclk uart2_clk]] -to [get_clocks  [list hclk hclk2 core_clk]]
set_multicycle_path 1 -hold  -end -from [get_clocks [list pclk uart2_clk]] -to [get_clocks [list hclk hclk2 core_clk]]

set_multicycle_path 2 -setup -start -to [get_clocks [list pclk uart2_clk]] -from [get_clocks [list hclk hclk2 core_clk]]
set_multicycle_path 1 -hold  -start -to [get_clocks [list pclk uart2_clk]] -from [get_clocks [list hclk hclk2 core_clk]]


#->set_multicycle_path 3 -setup -end -from [get_clocks hclkdiv3] -to [get_clocks {list hclk hclk2 core_clk}]
#->set_multicycle_path 2 -hold  -end -from [get_clocks hclkdiv3] -to [get_clocks {list hclk hclk2 core_clk }]

#->set_multicycle_path 3 -setup -start -to [get_clocks hclkdiv3] -from [get_clocks {list hclk hclk2 core_clk }]
#->set_multicycle_path 2 -hold  -start -to [get_clocks hclkdiv3] -from [get_clocks {list hclk hclk2 core_clk }]

set_multicycle_path 2 -setup -from [get_pins u_sram*/*u_sram8Kx64_*/CLK ] -to [get_pins  u_sram*/Q_reg*/data_in]
set_multicycle_path 1 -hold  -from [get_pins u_sram*/*u_sram8Kx64_*/CLK ] -to [get_pins  u_sram*/Q_reg*/data_in]



set mem_cells [get_cells -hierarchical -filter "ref_name == sadsls7k41p8192x64m8b4w1c0p0d0t0ss10"]

foreach_in_collection mem_cell $mem_cells {
	set mem_cell_full_name [get_attribute [get_cells $mem_cell] full_name]
	echo "$mem_cell_full_name"
	set_multicycle_path  2 -setup -from [get_pins $mem_cell_full_name/CLK]
	set_multicycle_path  1 -hold  -from [get_pins $mem_cell_full_name/CLK]
}
