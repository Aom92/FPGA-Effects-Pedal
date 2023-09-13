module NCO(clk, outsin);

input clk;
output [15:0] outsin;

    Oscilator u0 (
        .clk       (clk),       // clk.clk
        .reset_n   (1'b1),    // rst.reset_n
        .clken     (1'b1),     //  in.clken
        .phi_inc_i (32'd635), //    .phi_inc_i
        .fsin_o    (outsin),    // out.fsin_o
        .out_valid () //    .out_valid
        
    );

    endmodule