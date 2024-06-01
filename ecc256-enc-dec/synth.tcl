read_verilog -sv enc_dec.sv
read_verilog -sv enc_top.sv
read_verilog -sv dec_top.sv
synth_design -top enc_dec -part xc7a100tcsg324-1
report_timing_summary -report_unconstrained
write_verilog -force enc_dec_gates.sv
quit

