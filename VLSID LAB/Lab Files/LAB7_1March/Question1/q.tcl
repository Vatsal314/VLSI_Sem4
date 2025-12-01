read_libs /home/install/FOUNDRY/digital/90nm/dig/lib/slow.lib
read_hdl q.v
elaborate
set_db syn_generic_effort medium
set_db syn_map_effort medium
set_db syn_opt_effort medium
syn_generic
syn_map
syn_opt
report_timing -unconstrained > q_timing.rep
report_area > q_area.rep
report_power > q_power.rep
write_hdl > q_netlist.v
gui_show
