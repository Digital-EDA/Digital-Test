reset_scan_configuration

## ******************** 进行scan chain的插入 ******************** ##
set_dft_insertion_configuration -preserve_design_name   true
set_dft_insertion_configuration -synthesis_optimization none

set_scan_configuration -clock_mixing mix_clocks

set_dft_signal -view spec -type ScanDataIn  -port { SI0 } -hookup_pin SI0_PAD/C
set_dft_signal -view spec -type ScanDataIn  -port { SI1 } -hookup_pin SI1_PAD/C
set_dft_signal -view spec -type ScanDataIn  -port { SI2 } -hookup_pin SI2_PAD/C
set_dft_signal -view spec -type ScanDataIn  -port { SI3 } -hookup_pin SI3_PAD/C
set_dft_signal -view spec -type ScanDataIn  -port { SI4 } -hookup_pin SI4_PAD/C

set_dft_signal -view spec -type ScanDataOut -port { SO0 } -hookup_pin SO0_PAD/I
set_dft_signal -view spec -type ScanDataOut -port { SO1 } -hookup_pin SO1_PAD/I
set_dft_signal -view spec -type ScanDataOut -port { SO2 } -hookup_pin SO2_PAD/I
set_dft_signal -view spec -type ScanDataOut -port { SO3 } -hookup_pin SO3_PAD/I
set_dft_signal -view spec -type ScanDataOut -port { SO4 } -hookup_pin SO4_PAD/I

set_dft_signal -view spec -type ScanEnable  -port { SEN } -hookup_pin SEN_PAD/C

# set_dft_signal -view existing_dft -type ScanEnable -port SEN    -hookup_pin SEN_PAD/C
set_dft_signal -view existing_dft -type TestMode   -port SMODE  -hookup_pin SMODE_PAD/C
set_dft_signal -view existing_dft -type Reset      -port SRESET -hookup_pin SRESET_PAD/C  -active 0

set_dft_signal -view existing_dft -type ScanClock -port CLK -timing {45 55}

set_dft_signal -view spec -type TestMode -port SMODE
set_dft_signal -view spec -type TestData -port CLK
set_dft_signal -view spec -type TestData -port SRESET

set_dft_configuration -fix_clock enable
set_dft_configuration -fix_set   enable
set_dft_configuration -fix_reset enable

set_scan_configuration -chain_count 5

set_autofix_configuration -method mux -type clock -fix_data enable -control_signal SMODE
set_autofix_configuration -method mux -type reset -fix_data enable -control_signal SMODE -test_data SRESET

create_test_protocol

insert_dft

change_names -rules verilog -hierarchy
#保存综合后的设计
write -format ddc -hierarchy -output $RES_OUT/${CURR_DESIGN}.mapped.scan.ddc
#输出网表，自动布局布线需要
write -f verilog -hierarchy -output $RES_OUT/${CURR_DESIGN}.mapped.scan.v