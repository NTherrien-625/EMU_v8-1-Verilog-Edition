/*
Title       : RegisterFile.v
Author      : Nathaniel Therrien
Description : A verilog module for the EMU_v8-1 register control unit.
*/

module RegisterFile(I, IS, Q, QS, clock);
    // Module IO
    input [7:0] I;
    input [1:0] IS;
    output [7:0] Q;
    wire [7:0] Q;
    input [1:0] QS;
    input clock;

    // Internal "Wires"
    wire [7:0] demux_out_one;
    wire [7:0] demux_out_two;
    wire [7:0] demux_out_three;
    wire r1_we;
    wire r2_we;
    wire r3_we;
    wire [7:0] r1_out;
    wire [7:0] r2_out;
    wire [7:0] r3_out;

    // Input Demux
    Demux8_1to3 demux (.I(I), .S(IS), .Q1(demux_out_one), .Q2(demux_out_two), .Q3(demux_out_three));

    and(r1_we, ~IS[1], IS[0]);
    and(r2_we, IS[1], ~IS[0]);
    and(r3_we, IS[1], IS[0]);

    // Registers
    Reg8 r1 (.I(demux_out_one), .Q(r1_out), .E(r1_we), .clock(clock));
    Reg8 r2 (.I(demux_out_two), .Q(r2_out), .E(r2_we), .clock(clock));
    Reg8 r3 (.I(demux_out_three), .Q(r3_out), .E(r3_we), .clock(clock));

    // Output Mux
    Mux8_3to1 mux (.I1(r1_out), .I2(r2_out), .I3(r3_out), .S(QS), .Q(Q));

endmodule
