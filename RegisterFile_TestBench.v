/*
Title       : RegisterFile_TestBench.v
Author      : Nathaniel Therrien
Description : A testbench for the RegisterFile module.
*/

module RegisterFile_TestBench();
    // Testbench Variables
    reg [7:0] data_in;
    reg [1:0] input_select;
    wire [7:0] data_out;
    reg [1:0] output_select;
    reg clk;

    RegisterFile uut1 (.I(data_in), .IS(input_select), .Q(data_out), .QS(output_select), .clock(clk));

    initial begin
        // Monitor Format
        $monitor("%t : \nInput : %b\nInput Select : %b\nOutput : %b\nOutput Select : %b\nClock : %b", $time, data_in, input_select, data_out, output_select, clk);

        // HERE'S THE BIG ONE
        data_in = 1; input_select = 1; output_select = 1; clk = 0;
        #10;
        data_in = 1; input_select = 1; output_select = 1; clk = 1;
        #10;
        data_in = 2; input_select = 2; output_select = 2; clk = 0;
        #10;
        data_in = 2; input_select = 2; output_select = 2; clk = 1;
        #10;
        data_in = 3; input_select = 3; output_select = 3; clk = 0;
        #10;
        data_in = 3; input_select = 3; output_select = 3; clk = 1;
        #10;
        data_in = 2; input_select = 2; output_select = 1; clk = 0;
        #10;
        data_in = 2; input_select = 2; output_select = 2; clk = 1;
        #10;
        data_in = 2; input_select = 2; output_select = 3; clk = 0;
        #10;
    end

endmodule
