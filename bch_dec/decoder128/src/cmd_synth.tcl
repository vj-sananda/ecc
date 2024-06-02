read_verilog -sv dec_top.sv

#Set any parameters here
#set_property generic {NUM_REQ=4} [current_fileset]

synth_design -top dec_top -part xc7a100tcsg324-1
report_timing_summary -report_unconstrained
write_verilog -force dec_top_gates.sv
quit
