set_input_delay -max 0.8 [all_inputs]
set_output_delay -max 0.8 [all_outputs]
set_input_transition 0.2 [all_inputs]
set_max_capacitance 30 [get_ports]
set_input_transition 0.12[all_inputs]
set_load 0.15 [all_outputs]
set_maxfanout 30.00 [current_design]

