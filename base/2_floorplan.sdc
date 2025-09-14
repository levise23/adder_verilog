###############################################################################
# Created by write_sdc
###############################################################################
current_design adder
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name CLK -period 1.5000 [get_ports {clk}]
set_clock_uncertainty 0.1000 CLK
set_input_delay 0.8000 -clock [get_clocks {CLK}] -add_delay [get_ports {a[0]}]
set_input_delay 0.8000 -clock [get_clocks {CLK}] -add_delay [get_ports {a[1]}]
set_input_delay 0.8000 -clock [get_clocks {CLK}] -add_delay [get_ports {a[2]}]
set_input_delay 0.8000 -clock [get_clocks {CLK}] -add_delay [get_ports {a[3]}]
set_input_delay 0.8000 -clock [get_clocks {CLK}] -add_delay [get_ports {b[0]}]
set_input_delay 0.8000 -clock [get_clocks {CLK}] -add_delay [get_ports {b[1]}]
set_input_delay 0.8000 -clock [get_clocks {CLK}] -add_delay [get_ports {b[2]}]
set_input_delay 0.8000 -clock [get_clocks {CLK}] -add_delay [get_ports {b[3]}]
set_input_delay 0.8000 -clock [get_clocks {CLK}] -add_delay [get_ports {rst_n}]
set_output_delay 0.8000 -clock [get_clocks {CLK}] -add_delay [get_ports {sum[0]}]
set_output_delay 0.8000 -clock [get_clocks {CLK}] -add_delay [get_ports {sum[1]}]
set_output_delay 0.8000 -clock [get_clocks {CLK}] -add_delay [get_ports {sum[2]}]
set_output_delay 0.8000 -clock [get_clocks {CLK}] -add_delay [get_ports {sum[3]}]
set_output_delay 0.8000 -clock [get_clocks {CLK}] -add_delay [get_ports {sum[4]}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0500 [get_ports {sum[4]}]
set_load -pin_load 0.0500 [get_ports {sum[3]}]
set_load -pin_load 0.0500 [get_ports {sum[2]}]
set_load -pin_load 0.0500 [get_ports {sum[1]}]
set_load -pin_load 0.0500 [get_ports {sum[0]}]
###############################################################################
# Design Rules
###############################################################################
set_max_transition 0.2000 [current_design]
set_max_fanout 8.0000 [current_design]
