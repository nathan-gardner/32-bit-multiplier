transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/natha/Desktop/github/32-bit-multiplier-private/src/productregister.vhd}
vcom -93 -work work {C:/Users/natha/Desktop/github/32-bit-multiplier-private/src/multiplier32.vhd}
vcom -93 -work work {C:/Users/natha/Desktop/github/32-bit-multiplier-private/src/multiplicand32.vhd}
vcom -93 -work work {C:/Users/natha/Desktop/github/32-bit-multiplier-private/src/controlunit.vhd}
vcom -93 -work work {C:/Users/natha/Desktop/github/32-bit-multiplier-private/src/adder32.vhd}

vcom -93 -work work {C:/Users/natha/Desktop/github/32-bit-multiplier-private/testbenchs/multiplier32_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  multiplier32_tb

add wave *
view structure
view signals
run -all
