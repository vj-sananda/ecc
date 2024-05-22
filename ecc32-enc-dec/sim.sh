xvlog -sv ../sec_ded/encoder32/src/enc_top.v
xvlog -sv ../sec_ded/decoder32/src/dec_top.v
xvlog -sv ./enc_dec.sv

#exit if the command above fails
[ $? -ne 0 ] && exit

xvlog -sv tb.sv
[ $? -ne 0 ] && exit

xelab --debug all tb
[ $? -ne 0 ] && exit

xsim --runall tb
