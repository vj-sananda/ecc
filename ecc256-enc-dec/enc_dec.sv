
module enc_dec (
    input logic [255:0] in,
    input logic [271:0] in_dec,
    output logic [271:0] out_dec,
    input logic [271:0] error_vec,
    output logic [271:0] out_enc,
    output logic ERR, SGL, DBL,
    output logic [15:0] SYN
    );

enc_top enc_inst(
        .IN(in),
        .OUT(out_enc)
);

dec_top dec_inst(
    .IN(in_dec),
    .OUT(out_dec),
    .ERR(ERR),
    .SGL(SGL),
    .DBL(DBL),
    .SYN(SYN)
);

endmodule
