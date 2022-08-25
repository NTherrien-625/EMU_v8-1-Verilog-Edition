/*
Title : Mux8_3to1.v
Author : Nathaniel Therrien
Descrption : A verilog module for a 3 to 1 multiplexer, input 0 does not exist.
*/

module Mux8_3to1(I1, I2, I3, S, Q);
    input [7:0] I1;
    input [7:0] I2;
    input [7:0] I3;
    input [1:0] S;
    output [7:0] Q;
    reg [7:0] Q;

    always @ (I1 or I2 or I3 or S) begin
        case (S)
            2'b01 : Q <= I1;
            2'b10 : Q <= I2;
            2'b11 : Q <= I3; 
        endcase
    end

endmodule
