
/*
module dec_top (input [38:0] IN, 
    output wire [38:0] OUT, 
    output reg [6:0] SYN, 
    output reg ERR, SGL, DBL,
    input clk 
);


module enc_top (
    input [31:0] IN, 
    output reg [38:0] OUT,
    input clk   
);
*/

module enc_dec ( 
    input logic [31:0] in,
    input logic [38:0] in_dec,
    output logic [38:0] out_dec,
    input logic [38:0] error_vec,
    output logic [38:0] out_enc,
    output logic ERR, SGL, DBL,
    input clk
    );

enc_top enc_inst( 
        .IN(in),
        .OUT(out_enc),
        .clk(clk)
);

dec_top dec_inst(
    .IN(in_dec),
    .OUT(out_dec),
    .ERR(ERR),
    .SGL(SGL),
    .DBL(DBL),
    .clk(clk)
);

endmodule
