class ErrorVec ;
    //For non Xilinx Vivado can directly randomize value
    //using $countones function
    //local rand bit [38:0] value ;
    local bit [271:0] value ;
    local int num_bit_flips;

    local rand int flip_bit_posn_1;
    local rand int flip_bit_posn_2;

    constraint bit_posn_1 { flip_bit_posn_1 inside {[0:271]};}
    constraint bit_posn_2 { flip_bit_posn_2 inside {[0:271]};}
    constraint uniq_posns { flip_bit_posn_1 != flip_bit_posn_2;}

    /*
    //Xilinx vivado xsim simulator doesn't support $countones in constraint
    constraint flip_bits { $countones(value)== num_bit_flips;}
    function bit [38:0] flip(int num_flips);
        this.num_bit_flips = num_flips;
        this.randomize();
        return value;
    endfunction
    */

    function bit [271:0] flip(int num_flips);
        this.randomize();
        value = 'd0;
        $display("flip_bit_posn_1 = %d",flip_bit_posn_1);
        value[flip_bit_posn_1] = 1;
        if ( num_flips == 2) begin
            value[flip_bit_posn_2] = 1;
            $display("flip_bit_posn_2 = %d",flip_bit_posn_2);
        end
        return value;
    endfunction

endclass

module tb;

bit [255:0] in;
bit [271:0] error_vec;

logic ERR, SGL, DBL;
logic [271:0] out_enc;
logic [271:0] in_dec,out_dec;
logic [15:0] SYN;

enc_dec inst(.*);

logic compare;

wire [255:0] out_corrected = out_dec[255:0];

assign compare = out_corrected == in ;
assign in_dec = out_enc ^ error_vec ;

ErrorVec vec = new ;

initial begin
    $dumpfile("dump.vcd");
    $dumpvars;

    //$monitor("%t: SYN = %b, IN = %h, OUT_CORR = %h",$time,SYN,in,out_corrected);
    $monitor("%t: ERR=%b, SGL=%b, DBL=%b",$time,ERR,SGL,DBL);

    repeat(1000) begin
         #10 ;
         void'(std::randomize(in));
         error_vec = vec.flip(1);
         //void'(std::randomize(error_vec) with { $countones(error_vec) == 1 ;} );
         assert(compare);
    end

    repeat(5) begin
        #10;
        void'(std::randomize(in));
        error_vec = vec.flip(2);
        //void'(std::randomize(error_vec) with { $countones(error_vec) == 2 ;}) ;
        assert(compare);
    end

    #60;
    error_vec='d0;

    $finish;
end

endmodule

