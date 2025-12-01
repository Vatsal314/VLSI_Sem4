# Cadence Genus(TM) Synthesis Solution, Version 21.14-s082_1, built Jun 23 2022 14:32:08

# Date: Tue Feb 18 16:19:28 2025
# Host: mit-ecpg-cdn30 (x86_64 w/Linux 4.18.0-425.3.1.el8.x86_64) (20cores*28cpus*1physical cpu*Intel(R) Core(TM) i7-14700 33792KB)
# OS:   Red Hat Enterprise Linux release 8.7 (Ootpa)

read_libs /home/install/FOUNDRY/digital/90nm/dig/lib/slow.lib
read_hdl master_slave_jk_flipflop.v
elaborate
read_sdc master_slave_jk_flipflop.sdc
set_db syn_generic_effort medium
set_db syn_map_effort medium
set_db syn_opt_effort medium
syn_generic
syn_map
syn_opt
report_timing > master_slave_jk_flipflop_timing.rep
report_area > master_slave_jk_flipflop_area.rep
report_power > master_slave_jk_flipflop_power.rep
write_hdl > master_slave_jk_flipflop_netlist.v
write_sdc > master_slave_jk_flipflop_sdc.sdc
