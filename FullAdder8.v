/*
Title       : FullAdder8.v
Author      : Nathaniel Therrien
Description : Verilog modules for full 8 bit adder and its supporting modules.
*/

module FullAdder1(A, B, Cin, S, Cout);
    // Module IO
    input A, B, Cin;
    output S, Cout;

    // Internal Wires
    // wire1 - A xor B
    // wire2 - A and B
    // wire3 - (A xor B) and Cin
    wire wire1;
    wire wire2;
    wire wire3;

    // Module Logic
    xor(wire1, A, B);
    and(wire2, A, B);
    and(wire3, wire1, Cin);
    xor(S, wire1, Cin);
    or(Cout, wire2, wire3);
    
endmodule

module FullAdder8(A, B, Cin, S, Cout);
    // Module IO
    input [7:0] A, B;
    input Cin;
    output [7:0] S;
    output Cout;

    // Internal Wires
    wire carry_zero;
    wire carry_one;
    wire carry_two;
    wire carry_three;
    wire carry_four;
    wire carry_five;
    wire carry_six;

    // Module Logic
    FullAdder1 zero (.A(A[0]), .B(B[0]), .Cin(Cin), .S(S[0]), .Cout(carry_zero));
    FullAdder1 one (.A(A[1]), .B(B[1]), .Cin(carry_zero), .S(S[1]), .Cout(carry_one));
    FullAdder1 two (.A(A[2]), .B(B[2]), .Cin(carry_one), .S(S[2]), .Cout(carry_two));
    FullAdder1 three (.A(A[3]), .B(B[3]), .Cin(carry_two), .S(S[3]), .Cout(carry_three));
    FullAdder1 four (.A(A[4]), .B(B[4]), .Cin(carry_three), .S(S[4]), .Cout(carry_four));
    FullAdder1 five (.A(A[5]), .B(B[5]), .Cin(carry_four), .S(S[5]), .Cout(carry_five));
    FullAdder1 six (.A(A[6]), .B(B[6]), .Cin(carry_five), .S(S[6]), .Cout(carry_six));
    FullAdder1 seven (.A(A[7]), .B(B[7]), .Cin(carry_six), .S(S[7]), .Cout(Cout));

endmodule