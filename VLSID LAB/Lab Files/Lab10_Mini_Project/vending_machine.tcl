read_libs /home/install/FOUNDRY/digital/90nm/dig/lib/slow.lib
read_hdl vending.v
elaborate
read_sdc vending_machine.sdc
set_db syn_generic_effort medium
set_db syn_map_effort medium
set_db syn_opt_effort medium
syn_generic
syn_map
syn_opt
report_timing > vm_timing.rep
report_area > vm_area.rep
report_power > vm_power.rep
write_hdl > vm_netlist.v
write_sdc > vm.sdc
gui_show
