module mux(
    input [3:0] CEO, You, Fred, Jill,
    input [1:0] Sel,
    input Enable,
    output [3:0] Y
);

    assign Y = !Enable ? 4'b0000 :
               Sel == 2'b00 ? CEO :
               Sel == 2'b01 ? You :
               Sel == 2'b10 ? Fred :
                              Jill;

endmodule
