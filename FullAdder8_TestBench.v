/*
Title       : FullAdder8_TestBench.v
Author      : Nathaniel Therrien
Description : Testbench for FullAdder8 module and its supporting modules.
*/

module FullAdder8_TestBench();
    // 8-Bit Testbench Variables
    reg [7:0] A, B;
    reg Cin;
    wire [7:0] S;
    wire cout;

    FullAdder8 uut1 (.A(A), .B(B), .Cin(Cin), .S(S), .Cout(Cout));

    initial begin
        // Monitor Format
        $monitor("Time : %t\nA : %b\nB : %b\nSum : %b\nCarry : %b\n", $time, A, B, S, Cout);

        // HERE'S THE BIG ONE
        A = 10; B = 15; Cin = 0;
        #10;
        A = 255; B = 1;
        #10;
        A = 1; B = 255;
        #10;
    end

endmodule
