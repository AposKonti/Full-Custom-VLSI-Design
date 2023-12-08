set WORKSPACE           [getenv WORKSPACE]
set my_lib_cells        [getenv my_lib_cells]
set my_lib_ff           [getenv my_lib_ff]
set VIRTUOSO_LIB_NAME   [getenv VIRTUOSO_LIB_NAME]

read_lib ${my_lib_cells}
write_lib ${VIRTUOSO_LIB_NAME} -format db -output ${WORKSPACE}/vlsi/lib/my_lib_cells.db

read_lib ${my_lib_ff}
write_lib ${VIRTUOSO_LIB_NAME} -format db -output ${WORKSPACE}/vlsi/lib/my_lib_ff.db

exit