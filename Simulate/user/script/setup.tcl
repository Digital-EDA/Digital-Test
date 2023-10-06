# 本脚本用于搭建设计
# 1. 导入lib
# 2. 导入设计

## ******************** 设置全局环境 ******************** ##
set RTL_PATH  /home/project/ASIC/FFT_IFFT_IP/user/src
set PRJ_PATH  /home/project/ASIC/FFT_IFFT_IP/prj
set ROOT_PATH /home/project/ASIC/FFT_IFFT_IP
set VERSION   v0.3

set F_TEMP -40

## current design / top name
set CURR_DESIGN     "top"

set RPT_DIR         RPT$VERSION
set OUT_DIR         OUT$VERSION

set RPT_OUT [format "%s%s" $PRJ_PATH/ $RPT_DIR]
set RES_OUT [format "%s%s" $PRJ_PATH/ $OUT_DIR]

sh rm -rf $RPT_OUT $RES_OUT
sh mkdir -p $RPT_OUT $RES_OUT

## ******************** 指定设计库文件 ******************** ##
# 设置library寻找的路径 优先导入std和io
set search_path { \
    /home/project/ASIC/library/smic180/std/SCC018UG_HD_RVT_V0p3a/syn/1.8v/liberty_ff \
    /home/project/ASIC/library/smic180/std/SCC018UG_HD_RVT_V0p3a/syn/1.8v/liberty_tt \
    /home/project/ASIC/library/smic180/std/SCC018UG_HD_RVT_V0p3a/syn/1.8v/liberty_ss \
    /home/project/ASIC/library/smic180/io/SP018D18RP_V0p7/syn/1p8v \
}

# 依次导入mem library path
foreach mem_path [glob $RTL_PATH/utils/{RAM}/*] {
    lappend search_path $mem_path/db
}

# 设置STD library
# SMIC180 G-MS工艺  SCC018UG_UHD_RVT ------- 1.8V
set lib_fast     scc018ug_hd_rvt_ff_v1p98_${F_TEMP}c_basic     
set lib_type     scc018ug_hd_rvt_tt_v1p8_25c_basic     
set lib_slow     scc018ug_hd_rvt_ss_v1p62_125c_basic   

# 设置IO library
# SMIC180 G-MS工艺  SP018D18RP ---- 1.8V core + 1.8V IO + 2.5VT + L
set io_fast     SP018D18RP_V0p6_max
set io_type     SP018D18RP_V0p6_typ
set io_slow     SP018D18RP_V0p6_min

set target_library   [list ${lib_fast}.db]
set link_library     [list "*" ${lib_fast}.db ${io_fast}.db]

# 设置MEM library
set mem_fast     _ff_1.98_${F_TEMP}
set mem_type     _tt_1.8_25
set mem_slow     _ss_1.62_-40

# 导入MEM library 
foreach mem_lib [glob $RTL_PATH/utils/{RAM}/*/db/*$mem_fast.db] {
    lappend link_library [file tail $mem_lib]
}

## ******************** 指定设计源文件 ******************** ##
# proc findFiles { path result args } {
#     if {![file exists $path] || ![file isdirectory $path]} {
#         return -code err "File not exits or not a directory"
#     }

#     # puts $args
#     set paramList  [lindex $args 0 end]
#     # puts $paramList

#     # set files [glob -nocomplain -directory $path/ -tails *]
#     set files [glob -nocomplain -directory $path/ *]
#     foreach i_file $files {
#         if {[file isfile $i_file]} {
#             set fileExtName [file extension $i_file]
#             foreach i_args $args {
#                 # puts $fileExtName
#                 # puts $i_args
#                 if {$fileExtName == $i_args} {
#                     # puts $i_file
#                     set result [linsert [lindex $result end] end $i_file]
#                 }
#             } 
#         } elseif {[file isdirectory $i_file]} {
#             # recursion 
#             foreach element [findFiles $i_file $result $paramList] {
#                 set result [linsert [lindex $result end] end $element]
#             }  
#             # puts "once"
#             # set result [concat $result [findFiles $i_file $result $paramList]]
#         }
#     }
    
#     foreach elem $result {
#         puts $elem
#     } 
#     return $result
# }

# set res {}
# set res [findFiles $RTL_PATH $res ".v"]
# # foreach elem $res {
# #     puts $elem
# # } 

# exit
# source user/script/setup.tcl