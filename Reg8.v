/*
Title       : Reg8.v
Author      : Nathaniel Therrien
Description : A verilog module for an 8 bit register with an enable bit.
*/

module Reg8(I, Q, E, clock);
    input [7:0] I;
    input E, clock;
    output [7:0] Q;
    reg [7:0] Q;

    always @(posedge clock)
    if (E) begin
        Q <= I;
    end
endmodule
