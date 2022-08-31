/*
Title       : OR8.v
Author      : Nathaniel Therrien
Description : Verilog module for bitwise OR on 8-bit values.
*/

module OR8(A, B, O);
    // Module IO
    input [7:0] A, B;
    output [7:0] O;

    // Module Logic
    or(O[0], A[0], B[0]);
    or(O[1], A[1], B[1]);
    or(O[2], A[2], B[2]);
    or(O[3], A[3], B[3]);
    or(O[4], A[4], B[4]);
    or(O[5], A[5], B[5]);
    or(O[6], A[6], B[6]);
    or(O[7], A[7], B[7]);

endmodule
