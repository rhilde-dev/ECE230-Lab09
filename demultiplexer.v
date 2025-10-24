module demultiplexer(
    input [3:0] In, 
    input Enable,
    input [1:0] Sel,
    output [3:0] Aout,  Bout,  Cout,  Dout
    );
    
//    wire w1[1:0], w2[1:0], w3[1:0], w4[1:0];
    
//    equivalence_check check(.select(Sel), .is_zero(w1), .is_one(w2), .is_two(w3), is_three(w4));
    
    assign Aout = (Sel == 'b00) && Enable ? In : 4'b0000; //0
    assign Bout = (Sel == 'b01) && Enable ? In : 4'b0000; //1
    assign Cout = (Sel == 'b10) && Enable ? In : 4'b0000; //2
    assign Dout = (Sel == 'b11) && Enable ? In : 4'b0000; //3
    
endmodule
