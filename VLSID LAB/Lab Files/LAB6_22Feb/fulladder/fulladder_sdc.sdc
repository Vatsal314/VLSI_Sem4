# ####################################################################

#  Created by Genus(TM) Synthesis Solution 21.14-s082_1 on Sat Feb 22 16:13:13 IST 2025

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design fulladder

set_load -pin_load 0.15 [get_ports y]
set_load -pin_load 0.15 [get_ports cout]
set_clock_gating_check -setup 0.0 
set_input_delay -add_delay -max 0.8 [get_ports a]
set_input_delay -add_delay -max 0.8 [get_ports b]
set_input_delay -add_delay -max 0.8 [get_ports c]
set_output_delay -add_delay -max 0.8 [get_ports y]
set_output_delay -add_delay -max 0.8 [get_ports cout]
set_max_capacitance 30.0 [get_ports a]
set_max_capacitance 30.0 [get_ports b]
set_max_capacitance 30.0 [get_ports c]
set_max_capacitance 30.0 [get_ports y]
set_max_capacitance 30.0 [get_ports cout]
set_input_transition 0.2 [get_ports a]
set_input_transition 0.2 [get_ports b]
set_input_transition 0.2 [get_ports c]
set_wire_load_mode "enclosed"
