create_clock -period 10.000 -name sys_clk [get_ports clk]

# Ignore timing analysis on the asynchronous/external I/O ports
set_false_path -from [get_ports reset]
set_false_path -to [get_ports {count[*]}]