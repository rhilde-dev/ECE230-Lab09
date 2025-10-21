module top(
    input [15:0] sw,
    btnL, btnU, btnD, btnR, btnC,
    output [15:0] led
    );
    
    wire w1, con_mux, con_demux;
    
    assign con_mux = {btnU, btnL};
    
    multiplexer mux (
        .A(sw[3:0]), //CEO
        .B(sw[7:4]), //My data
        .C(sw[11:8]), //Fred
        .D(sw[15:12]), //Jill
        .Enable(btnC),
        .Sel(con),
        .Y(w1)
    );
    
    assign con_demux = {btnR, btnD};
    
    demultiplexer demux (
        .In(w1),
        .Sel(con_demux),
        .Aout(led[3:0]), //data at library
        .Bout(led[7:4]), //data at fire department
        .Cout(led[11:8]), //data at school
        .Dout(led[15:12]) //data at the rib shack
    );

    
    
    
endmodule

