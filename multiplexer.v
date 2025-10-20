//ternary_16_mux_4_bits
module multiplexer(
    input [3:0] A, [3:0] B, [3:0] C, [3:0] D, Enable,
    input [1:0] Sel,
    output [3:0] Y
    );
    
    wire w[3:0];
    
    equivalence_check check(.select(Sel), .is_zero(w[0]), .is_one(w[1]), .is_two(w[2]), is_three(w[3]));

    assign Y = (w[0] == 'b00 ? 'b00 : // If 0
               w[1] == 'b01 ? 'b01 : // If 1
               w[2] == 'b10 ? 'b10 : 'b11) & Enable; //If 2, then... else 3

endmodule
