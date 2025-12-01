# Master-Slave JK Flip-Flop Timing Constraints

# Define the clock period
create_clock -name clk -period 10 [get_ports clk]   # Clock period of 10 ns

# Define input delays for J and K inputs
set_input_delay -max 2.5 -min 1.5 -clock clk [get_ports J]   # Input delay for J
set_input_delay -max 2.5 -min 1.5 -clock clk [get_ports K]   # Input delay for K

# Define output delays for Q and Q'
set_output_delay -max 3.0 -min 2.0 -clock clk [get_ports Q]   # Output delay for Q
set_output_delay -max 3.0 -min 2.0 -clock clk [get_ports Q_n] # Output delay for Q'

# Specify setup and hold times
set_max_delay -from [get_ports J] -to [get_ports Q] 3.5       # Maximum delay from J to Q
set_min_delay -from [get_ports J] -to [get_ports Q] 1.0        # Minimum delay from J to Q
set_max_delay -from [get_ports K] -to [get_ports Q_n] 3.5      # Maximum delay from K to Q'
set_min_delay -from [get_ports K] -to [get_ports Q_n] 1.0       # Minimum delay from K to Q'

# Define clock-to-Q timing
set_clock_to_q -max 4.0 [get_clocks clk]   # Maximum clock-to-Q delay
set_clock_to_q -min 2.0 [get_clocks clk]   # Minimum clock-to-Q delay

# End of SDC file

