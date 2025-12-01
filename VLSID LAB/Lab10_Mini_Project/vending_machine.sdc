create_clock -name clk -period 2 -waveform {0 1} [get_ports "clk"]

set_input_delay -max 0.3 -clock clk [all_inputs]
set_output_delay -max 0.3 -clock clk [all_outputs]

set_input_transition 0.2 [all_inputs]
set_max_capacitance 30 [get_ports]

set_clock_transition -rise 0.1 [get_clocks "clk"]
set_clock_transition -fall 0.1 [get_clocks "clk"]

set clock uncertainty 0.01 [get_ports "clk"]

