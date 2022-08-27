/*
Title       : AND8.v
Author      : Nathaniel Therrien
Description : Verilog module for bitwise AND on 8-bit values.
*/

module AND8(A, B, O);
    // Module IO
    input [7:0] A, B;
    output [7:0] O;

    // Module Logic
    and(O[0], A[0], B[0]);
    and(O[1], A[1], B[1]);
    and(O[2], A[2], B[2]);
    and(O[3], A[3], B[3]);
    and(O[4], A[4], B[4]);
    and(O[5], A[5], B[5]);
    and(O[6], A[6], B[6]);
    and(O[7], A[7], B[7]);

endmodule
