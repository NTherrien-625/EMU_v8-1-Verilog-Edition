/*
Title : Demux8_3to1_TestBench.v 
Author : Nathaniel Therrien
Description : A testbench for the Demux8_3to1 module. Tests the module's response to input changes and select code changes.
*/

module Demux8_3to1_TestBench();
    // Testbench Variables
    reg [7:0] data_in;
    reg [1:0] select;
    wire [7:0] one_out;
    wire [7:0] two_out;
    wire [7:0] three_out;

    Demux8_3to1 uut1 (.I(data_in), .S(select), .Q1(one_out), .Q2(two_out), .Q3(three_out));

    initial begin
        // Monitor Format
        $monitor("%t : \nInput : %b\nSelect : %b\nQ1 : %b\nQ2 : %b\nQ3 : %b\n", $time, data_in, select, one_out, two_out, three_out);

        // HERE'S THE BIG ONE
        data_in = 5; select = 00;
        #10;
        select = 01;
        #10;
        select = 10;
        #10;
        select = 11;
        #10;
        data_in = 15;
        #10;
    end

endmodule