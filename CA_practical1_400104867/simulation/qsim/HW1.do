onerror {exit -code 1}
vlib work
vlog -work work HW1.vo
vlog -work work test.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.CarrySelectAdder16Bit_vlg_vec_tst -voptargs="+acc"
vcd file -direction HW1.msim.vcd
vcd add -internal CarrySelectAdder16Bit_vlg_vec_tst/*
vcd add -internal CarrySelectAdder16Bit_vlg_vec_tst/i1/*
run -all
quit -f
