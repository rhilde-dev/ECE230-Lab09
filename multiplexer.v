//ternary_16_mux_4_bits
module multiplexer(
    input [3:0] A, B, C, D, 
    input Enable,
    input [1:0] Sel,
    output [3:0] Y
    );
    
//    wire w1,w2,w3,w4;
    
//    equivalence_check check(.select(Sel), .is_zero(w1), .is_one(w2), .is_two(w3), is_three(w4));

    assign Y = (Sel == 2'b00) && Enable ? A : // If 0
               (Sel == 2'b01) && Enable ? B : // If 1
               (Sel == 2'b10) && Enable ? C : 
               (Sel == 2'b11) && Enable ? D:
               4'b0000; //If 2, then... else 3

endmodule
