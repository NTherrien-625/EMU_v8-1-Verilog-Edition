/*
Title : Demux8_1to3.v
Author : Nathaniel Therrien
Descrption : A verilog module for a 3 to 1 demultiplexer, select 0 leads to nothing.
*/

module Demux8_1to3(I, S, Q1, Q2, Q3);
    input [7:0] I;
    input [1:0] S;
    output [7:0] Q1;
    output [7:0] Q2;
    output [7:0] Q3;
    reg [7:0] Q1;
    reg [7:0] Q2;
    reg [7:0] Q3;

    always @ (I or S) begin
        case (S)
            2'b01 : begin
                Q1 <= I; Q2 <= 0; Q3 <= 0;
            end
            2'b10 : begin
                Q1 <= 0; Q2 <= I; Q3 <= 0;
            end
            2'b11 : begin
                Q1 <= 0; Q2 <= 0; Q3 <= I;
            end
        endcase
    end
    
endmodule