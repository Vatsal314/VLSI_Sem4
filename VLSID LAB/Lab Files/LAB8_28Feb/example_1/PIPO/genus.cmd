# Cadence Genus(TM) Synthesis Solution, Version 21.14-s082_1, built Jun 23 2022 14:32:08

# Date: Tue Feb 18 14:57:02 2025
# Host: mit-ecpg-cdn30 (x86_64 w/Linux 4.18.0-425.3.1.el8.x86_64) (20cores*28cpus*1physical cpu*Intel(R) Core(TM) i7-14700 33792KB)
# OS:   Red Hat Enterprise Linux release 8.7 (Ootpa)

read_libs /home/install/FOUNDRY/digital/90nm/dig/lib/slow.lib
read_hdl pipo_seq.v
elaborate
read_sdc pipo_seq.sdc
read_sdc constraints_top.sdc
set_db syn_generic_effort medium
set_db syn_map_effort medium
set_db syn_opt_effort medium
syn_generic
syn_map
syn_opt
report_timing > counter_timing.rep
report_timing > pipo_timing.rep
report_area > pipo_area.rep
report_timing > pipo_seq_timing.rep
report_area > pipo_seq_area.rep
report_power > pipo_seq_power.rep
write_hdl > pipo_seq_netlist.v
write_sdc > pipo_seq_sdc.sdc
