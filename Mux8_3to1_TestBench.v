/*
Title : Demux8_3to1_TestBench.v 
Author : Nathaniel Therrien
Description : A testbench for the Demux8_3to1 module. Tests the module's response to input changes and select code changes.
*/

module Mux8_3to1_TestBench();
    // Testbench Variables
    reg [7:0] one_in;
    reg [7:0] two_in;
    reg [7:0] three_in;
    reg [1:0] select;
    wire [7:0] data_out;

    Mux8_3to1 uut1 (.I1(one_in), .I2(two_in), .I3(three_in), .S(select), .Q(data_out));

    initial begin
        // Monitor Format
        $monitor("%t : \nInput One : %b\nInput Two : %b\nInput Three : %b\nSelect : %b\nOutput : %b\n", $time, one_in, two_in, three_in, select, data_out);

        // HERE'S THE BIG ONE
        one_in = 1; two_in = 2; three_in = 3; select = 0;
        #10;
        one_in = 1; two_in = 2; three_in = 3; select = 1;
        #10;
        one_in = 1; two_in = 2; three_in = 3; select = 2;
        #10;
        one_in = 1; two_in = 2; three_in = 3; select = 3;
        #10;
        one_in = 1; two_in = 2; three_in = 33; select = 3;
        #10;
    end

endmodule
