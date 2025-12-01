create_clock -name clk -period 10 [get_ports clk]

set_input_delay -max 2 [get_ports {data_in[3:0]}] -clock [get_clocks clk]
set_output_delay -max 2 [get_ports {data_out[3:0]}] -clock [get_clocks clk]

set_multicycle_path 2 -from [get_ports {data_in[3:0]}] -to [get_ports {data_out[3:0]}]
set_multicycle_path 2 -from [get_ports {shift_left}] -to [get_ports {data_out[3:0]}]
set_multicycle_path 2 -from [get_ports {shift_right}] -to [get_ports {data_out[3:0]}]

set_false_path -from [get_ports {async_reset}] -to [get_clocks clk]

set_input_delay -max 1 [get_ports {S1 S0}] -clock [get_clocks clk]

set_max_delay 5 -from [get_ports {data_in[3:0]}] -to [get_ports {data_out[3:0]}]

