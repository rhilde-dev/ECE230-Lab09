//ternary_16_mux_4_bits
module multiplexer(
    input [3:0] A, [3:0] B, [3:0] C, [3:0] D, Enable,
    input [1:0] Sel,
    output [3:0] Y
    );
    
//    wire w1,w2,w3,w4;
    
//    equivalence_check check(.select(Sel), .is_zero(w1), .is_one(w2), .is_two(w3), is_three(w4));

    assign Y = (Sel == 2'b00 ? A : // If 0
               Sel == 2'b01 ? B : // If 1
               Sel == 2'b10 ? C : D) & Enable; //If 2, then... else 3

endmodule
