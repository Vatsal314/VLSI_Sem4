# ####################################################################

#  Created by Genus(TM) Synthesis Solution 21.14-s082_1 on Sat Mar 01 14:45:21 IST 2025

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design q

set_load -pin_load 0.15 [get_ports q]
set_clock_gating_check -setup 0.0 
set_max_fanout 30.000 [current_design]
set_max_capacitance 30.0 [get_ports a]
set_max_capacitance 30.0 [get_ports b]
set_max_capacitance 30.0 [get_ports c]
set_max_capacitance 30.0 [get_ports q]
set_wire_load_mode "enclosed"
