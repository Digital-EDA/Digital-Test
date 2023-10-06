foreach one_lib_name [ list \
                    ${LIB_SC_9T_HVT_NAME_SYNOPSYS}  \
                    ${LIB_SC_9T_RVT_NAME_SYNOPSYS}  \
                  ] {
set_dont_use $one_lib_name/*_0P*
set_dont_use $one_lib_name/SE*_BUF_*1
set_dont_use $one_lib_name/SE*_INV_*1
set_dont_use $one_lib_name/*_12
set_dont_use $one_lib_name/*_16
set_dont_use $one_lib_name/*_20
set_dont_use $one_lib_name/*_24
set_dont_use $one_lib_name/*_32
set_dont_use $one_lib_name/*_64
set_dont_use $one_lib_name/*_*Y2_*
set_dont_use $one_lib_name/*CAP*
set_dont_use $one_lib_name/*_DEL*
set_dont_use $one_lib_name/*_CK*
set_dont_use $one_lib_name/*_TIE*
set_dont_use $one_lib_name/*_LD*
set_dont_use $one_lib_name/*_FSD*
set_dont_use $one_lib_name/SE*_CKGTNLT*
set_dont_use $one_lib_name/SE*_CKGTPLS*
}
remove_attribute ${LIB_SC_9T_HVT_NAME_SYNOPSYS}/*_LD* dont_use
remove_attribute ${LIB_SC_9T_RVT_NAME_SYNOPSYS}/*_LD* dont_use
