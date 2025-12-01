# ####################################################################

#  Created by Genus(TM) Synthesis Solution 21.14-s082_1 on Tue Mar 11 14:38:44 IST 2025

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design pipo

create_clock -name "clk" -period 2.0 -waveform {0.0 1.0} [get_ports clk]
set_clock_transition 0.1 [get_clocks clk]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks clk] -add_delay -max 0.3 [get_ports {pi[3]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 0.3 [get_ports {pi[2]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 0.3 [get_ports {pi[1]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 0.3 [get_ports {pi[0]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 0.3 [get_ports {po[3]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 0.3 [get_ports {po[2]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 0.3 [get_ports {po[1]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 0.3 [get_ports {po[0]}]
set_wire_load_mode "enclosed"
set_clock_uncertainty -setup 0.01 [get_ports clk]
set_clock_uncertainty -hold 0.01 [get_ports clk]
