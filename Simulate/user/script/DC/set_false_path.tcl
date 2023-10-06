#->set_false_path -through ae210_chip/ae210_core/ae210_cpu_subsystem/n10_core/reset_gen/core_reset_n_sync2_reg/Q
#->set_false_path -through ae210_chip/ae210_core/ae210_cpu_subsystem/u_ncesfp/fp_clk_gen/fpu_reset_n_sync2_reg/Q
#->set_false_path -through ae210_chip/ae210_rstgen/hresetn_sync2_reg/Q
#->set_false_path -through ae210_chip/ae210_core/u_rst_gate/i_rst_dma_reg/Q
#->set_false_path -through ae210_chip/ae210_core/u_rst_gate/i_rst_coa_reg/Q
#->set_false_path -through ae210_chip/ae210_core/u_rst_gate/i_rst_locsc0_reg/Q
#->set_false_path -through ae210_chip/ae210_core/u_rst_gate/i_rst_locsc1_reg/Q
#->set_false_path -through ae210_chip/ae210_core/u_rst_gate/i_rst_psram_reg/Q
#->set_false_path -through ae210_chip/ae210_core/u_rst_gate/i_rst_lcd_reg/Q
#->set_false_path -through ae210_chip/ae210_core/u_rst_gate/i_rst_ham_reg/Q
#->set_false_path -through ae210_chip/ae210_rstgen/presetn_sync2_reg/Q
#->set_false_path -through ae210_chip/ae210_core/ae210_cpu_subsystem/n10_core/reset_gen/bus_reset2_n_sync2_reg/Q
#->set_false_path -through ae210_chip/ae210_core/ae210_cpu_subsystem/n10_core/reset_gen/bus_reset_n_sync2_reg/Q
#->set_false_path -through ae210_chip/ae210_rstgen/U17/X
#->set_false_path -through ae210_chip/ae210_rstgen/por_hw_rstn_sync2_reg/Q
#->set_false_path -through ae210_chip/ae210_rstgen/presetn_sync1_reg/RD
#->set_false_path -through ae210_chip/ae210_rstgen/presetn_sync2_reg/RD
#->set_false_path -through ae210_chip/ae210_core/u_rst_gate/i_rst_i2c1_reg/Q
#->set_false_path -through ae210_chip/ae210_core/u_rst_gate/i_rst_uart2_reg/Q



set_false_path -to [get_pins -hierarchical -filter "full_name =~ */RD"]
set_false_path -to [get_pins -hierarchical -filter "full_name =~ */SD"]
set_false_path -from [get_clocks OSC*] -to [get_clocks {CORECLK_* SMU_CLK_* PCLK_* PLL*}]
set_false_path -from [get_clocks FCLK_*] -to [get_clocks {CORECLK_* HCLK_* PCLK_* SWCLK}]
set_false_path -from [get_clocks SWCLK] -to [get_clocks FCLK_*]
set_false_path -from [get_clocks HCLK_*] -to [get_clocks {FCLK_* OSC* HCLKDIV* rpc_rds_clk_* PCLK_*}]
set_false_path -from [get_clocks PCLK_*] -to [get_clocks {FCLK_* OSC*}]
#->set_false_path -from [get_clocks gpioa*] -to [get_clocks FLASH_TCK_*]
#->set_false_path -from [get_clocks FLASH_TCK_*] -to [get_clocks gpioa*]
set_false_path -from [get_clocks CORECLK_*] -to [get_clocks OSC*]
set_false_path -from [get_clocks PLL*] -to [get_clocks OSC*]
set_false_path -from [get_clocks test_clk] -to [get_clocks {OSC* FCLK_*}]
set_false_path -from [get_clocks FCLK_*] -to [get_clocks test_clk]
set_false_path -from [get_clocks SMU_CLK_*] -to [get_clocks OSC*]
set_false_path -from [get_clocks rpc_rds_clk_*] -to [get_clocks HCLK_*]
set_false_path -from [get_clocks VIR_EXT_CLK120M]
set_false_path -to [get_clocks VIR_EXT_CLK120M]
#->set_clock_groups  -name HCLK -physically_exclusive -group {HCLK_400M} -group {HCLK_200M} -group {HCLK_100M} -group {HCLK_50M}


set_multicycle_path -setup 2 -to [get_pins ae210_chip/ae210_core/u_locsc0/u_code2d_engine/grad0_reg_*/D]
set_multicycle_path -setup 2 -to [get_pins ae210_chip/ae210_core/u_locsc0/u_code2d_engine/grad1_reg_*/D]
set_multicycle_path -setup 2 -to [get_pins ae210_chip/ae210_core/u_locsc0/u_code2d_engine/grad2_reg_*/D]
set_multicycle_path -setup 2 -to [get_pins ae210_chip/ae210_core/u_locsc0/u_code2d_engine/grad3_reg_*/D]
set_multicycle_path -setup 2 -to [get_pins ae210_chip/ae210_core/u_locsc0/u_code2d_engine/grad4_reg_*/D]
set_multicycle_path -hold  1 -to [get_pins ae210_chip/ae210_core/u_locsc0/u_code2d_engine/grad0_reg_*/D]
set_multicycle_path -hold  1 -to [get_pins ae210_chip/ae210_core/u_locsc0/u_code2d_engine/grad1_reg_*/D]
set_multicycle_path -hold  1 -to [get_pins ae210_chip/ae210_core/u_locsc0/u_code2d_engine/grad2_reg_*/D]
set_multicycle_path -hold  1 -to [get_pins ae210_chip/ae210_core/u_locsc0/u_code2d_engine/grad3_reg_*/D]
set_multicycle_path -hold  1 -to [get_pins ae210_chip/ae210_core/u_locsc0/u_code2d_engine/grad4_reg_*/D]
set_multicycle_path -setup 2 -to [get_pins ae210_chip/ae210_core/u_locsc1/u_code2d_engine/grad0_reg_*/D]
set_multicycle_path -setup 2 -to [get_pins ae210_chip/ae210_core/u_locsc1/u_code2d_engine/grad1_reg_*/D]
set_multicycle_path -setup 2 -to [get_pins ae210_chip/ae210_core/u_locsc1/u_code2d_engine/grad2_reg_*/D]
set_multicycle_path -setup 2 -to [get_pins ae210_chip/ae210_core/u_locsc1/u_code2d_engine/grad3_reg_*/D]
set_multicycle_path -setup 2 -to [get_pins ae210_chip/ae210_core/u_locsc1/u_code2d_engine/grad4_reg_*/D]
set_multicycle_path -hold  1 -to [get_pins ae210_chip/ae210_core/u_locsc1/u_code2d_engine/grad0_reg_*/D]
set_multicycle_path -hold  1 -to [get_pins ae210_chip/ae210_core/u_locsc1/u_code2d_engine/grad1_reg_*/D]
set_multicycle_path -hold  1 -to [get_pins ae210_chip/ae210_core/u_locsc1/u_code2d_engine/grad2_reg_*/D]
set_multicycle_path -hold  1 -to [get_pins ae210_chip/ae210_core/u_locsc1/u_code2d_engine/grad3_reg_*/D]
set_multicycle_path -hold  1 -to [get_pins ae210_chip/ae210_core/u_locsc1/u_code2d_engine/grad4_reg_*/D]

