# Create clock constraints
create_clock -name clk -period 10.000 [get_ports {clk}]

# Define input and output delays if necessary
set_input_delay -clock clk -max 2 [get_ports {input_signal}]
set_input_delay -clock clk -min 0 [get_ports {input_signal}]
set_output_delay -clock clk -max 2 [get_ports {output_signal}]
set_output_delay -clock clk -min 0 [get_ports {output_signal}]

# Define timing exceptions
set_multicycle_path 2 -from [get_ports {clk}] -to [get_ports {output_signal}]
set_false_path -from [get_ports {input_signal}] -to [get_ports {output_signal}]

