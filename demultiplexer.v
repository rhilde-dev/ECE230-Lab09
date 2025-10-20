module demultiplexer(
    input [3:0] In, Enable,
    input [1:0] Sel,
    output [3:0] Aout, [3:0] Bout, [3:0] Cout, [3:0] Dout
    );
    
    wire w[3:0];
    
    equivalence_check check(.select(Sel), .is_zero(w[0]), .is_one(w[1]), .is_two(w[2]), is_three(w[3]));
    
    assign Aout = (w[0] == 'b00 ? In : 0) & Enable; //0
    assign Bout = (w[1] == 'b01 ? In : 0) & Enable; //1
    assign Cout = (w[2] == 'b10 ? In : 0) & Enable; //2
    assign Dout = (w[3] == 'b11 ? In : 0) & Enable; //3
    
endmodule
