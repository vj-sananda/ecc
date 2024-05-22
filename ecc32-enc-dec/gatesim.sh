xvlog -sv --define GATES tb.sv
[ $? -ne 0 ] && exit

xvlog -sv find_first_one_gates.sv 
[ $? -ne 0 ] && exit

xvlog '/tools/Xilinx/Vivado/2021.1/data/verilog/src/glbl.v'
[ $? -ne 0 ] && exit

xelab --debug all -L simprims_ver tb glbl
[ $? -ne 0 ] && exit

xsim --runall work.tb#work.glbl
