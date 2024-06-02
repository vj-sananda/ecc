xvlog -sv dec_top.sv
#exit if the command above fails
[ $? -ne 0 ] && exit

xvlog -sv tb.sv
[ $? -ne 0 ] && exit

xelab --debug all tb
[ $? -ne 0 ] && exit

xsim --runall tb
