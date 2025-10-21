module demultiplexer(
    input [3:0] In, Enable,
    input [1:0] Sel,
    output [3:0] Aout, [3:0] Bout, [3:0] Cout, [3:0] Dout
    );
    
//    wire w1[1:0], w2[1:0], w3[1:0], w4[1:0];
    
//    equivalence_check check(.select(Sel), .is_zero(w1), .is_one(w2), .is_two(w3), is_three(w4));
    
    assign Aout = (Sel == 'b00 ? In : 0) & Enable; //0
    assign Bout = (Sel == 'b01 ? In : 0) & Enable; //1
    assign Cout = (Sel == 'b10 ? In : 0) & Enable; //2
    assign Dout = (Sel == 'b11 ? In : 0) & Enable; //3
    
endmodule
