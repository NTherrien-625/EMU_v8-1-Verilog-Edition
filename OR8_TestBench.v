/*
Title       : OR8_TestBench.v
Author      : Nathaniel Therrien
Description : Testbench for the OR8 verilog module.
*/

module OR8_TestBench();
    // Testbench Variables
    reg [7:0] A, B;
    wire [7:0] O;

    OR8 uut1 (.A(A), .B(B), .O(O));

    initial begin
        // Monitor Format
        $monitor("Time : %t\nA : %b\nB : %b\nO : %b", $time, A, B, O);

        // HERE'S THE BIG ONE
        A = 8'b00000000; B = 8'b11111111;
        #10;
        A = 8'b10101010;
        #10;
        A = 8'b11111111;
        #10;
    end

endmodule
