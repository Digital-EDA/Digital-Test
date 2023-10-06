# 将lib_path下的所有lib文件转换成db文件
set lib_path user/src/utils/RAM/2048FP

proc lib2db {path} {
    set dir [file dirname $path]
    set name [file rootname [file tail $path]]
    read_lib $path
    write_lib -format db ${name} -output $dir/db/${name}.db
}

foreach lib [glob $lib_path/*.lib] { 
    lib2db $lib
}

exit