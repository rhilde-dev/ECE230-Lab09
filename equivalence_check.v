module equivalence_check(
    input [1:0] select,
    output is_zero, is_one, is_two, is_three
);

    assign is_zero  = ~select[0] && ~select[1]; // 0b00
    assign is_one   =  select[0] && ~select[1]; // 0b01
    assign is_two   = ~select[0] &&  select[1]; // 0b10
    assign is_three =  select[0] &&  select[1]; // 0b11

//    assign is_zero  = select == 0;
//    assign is_one   = select == 1;
//    assign is_two   = select == 2;
//    assign is_three = select == 3;
endmodule

