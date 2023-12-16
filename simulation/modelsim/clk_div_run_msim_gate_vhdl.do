transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {clk_div.vho}

vcom -93 -work work {D:/proyectosQuartus/clk_div/tb_clk_div.vhd}

vsim -t 1ps -L altera -L cycloneive -L gate_work -L work -voptargs="+acc"  tb_clk_div

add wave *
view structure
view signals
run -all
