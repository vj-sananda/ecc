class ErrorVec ;
    //For non Xilinx Vivado can directly randomize value
    //using $countones function
    //local rand bit [38:0] value ;
    local bit [38:0] value ;
    local int num_bit_flips;

    local rand int flip_bit_posn_1;
    local rand int flip_bit_posn_2;
    
    constraint bit_posn_1 { flip_bit_posn_1 inside {[0:38]};}
    constraint bit_posn_2 { flip_bit_posn_2 inside {[0:38]};}
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

    function bit [38:0] flip(int num_flips);
        this.randomize();
        value = 'd0;
        value[flip_bit_posn_1] = 1;
        if ( num_flips == 2) 
            value[flip_bit_posn_2] = 1;
        return value;
    endfunction

endclass

module tb;

bit clk;
bit [31:0] in;
bit [38:0] error_vec;

logic ERR, SGL, DBL;
logic [38:0] out_enc;
logic [38:0] in_dec,out_dec;

//always #5 clk = ~clk ;

enc_dec inst(.*);

logic compare;

wire [31:0] out_corrected = out_dec[31:0];

assign compare = out_corrected == in ;
assign in_dec = out_enc ^ error_vec ;

ErrorVec vec = new ;

initial begin
    $dumpfile("dump.vcd");
    $dumpvars;


    repeat(100) begin
         #10 ;
         in = $random();
         error_vec = vec.flip(1);
         //void'(std::randomize(error_vec) with { $countones(error_vec) == 1 ;} );
    end

    repeat(100) begin
        #10;
        in = $random();
        error_vec = vec.flip(2);
        //void'(std::randomize(error_vec) with { $countones(error_vec) == 2 ;}) ;
    end

    #60;
    error_vec='d0;

    $finish;
end

endmodule

