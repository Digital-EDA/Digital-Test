# u_mcu/u_sys_top/u_sys/uEFC/u_vddq_en_1/X is floating signal.

create_cell dummyBuf ts40n7khpdt_ss0p99v125c/PEH_BUF_PSW_1P5
#->connect_pin -from u_mcu/u_sys_top/u_sys/uEFC/u_vddq_en_1/X -to dummyBuf/A -port vddq_en_X
connect_pin -from u_mcu/u_sys_top/VDDQ_FUSE_PG_en -to dummyBuf/A -port vddq_fuse_pg_en_X
#->remove_cell dummyBuf
set_dont_touch [get_cells dummyBuf] true

