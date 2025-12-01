# Cadence Genus(TM) Synthesis Solution, Version 21.14-s082_1, built Jun 23 2022 14:32:08

# Date: Sat Mar 01 14:22:29 2025
# Host: mit-ecpg-cdn30 (x86_64 w/Linux 4.18.0-425.3.1.el8.x86_64) (20cores*28cpus*1physical cpu*Intel(R) Core(TM) i7-14700 33792KB)
# OS:   Red Hat Enterprise Linux release 8.7 (Ootpa)

read_libs /home/install/FOUNDRy/digital/90nm/dig/lib/slow.lib
read_libs/home/install/FOUNDRY/digital/90m/dig/lib/slow.lib
read_libs /home/install/FOUNDRY/digital/90nm/dig/lib/slow.lib
read_hdl fa.v
elaborate
read_sdc fa_sdc.sdc
read_sdc fa_sdc.sdc
set_db syn_generic_effort medium
set_dyb syn_map_effort medium
set_db syn_map_effort medium
set_db syn_opt_effort medium
syn_generic
syn_map
syn_opt
report_timing > fulladder.rep
report_area > fulladder.area
report_power > fulladderpwr.rep
report_area > fulladderarea.rep
write_hdl> fanet.v
write_sdc> fa.sdc
gui_show
