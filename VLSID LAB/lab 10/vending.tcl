read_libs /home/install/FOUNDRY/digital/90nm/dig/lib/slow.lib
read_hdl vending.v
elaborate
read_sdc vending.sdc
set_db syn_generic_effort medium
set_db syn_map_effort medium
set_db syn_opt_effort medium
syn_generic
syn_map
syn_opt
report_timing > vending_timing.rep
report_area > vending_area.rep
report_power > vending_pwr.rep
write_hdl > vending_net.v
write_sdc > vm.sdc
gui_show
