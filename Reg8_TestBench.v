/*
Title :
Author : 
Description : 
*/

module Reg8_TestBench();
    reg [7:0] data_in;
    reg clk, en_in;
    wire [7:0] data_out;

    Reg8 uut1 (.I(data_in), .Q(data_out), .E(en_in), .clock(clk));

    initial begin
        // Monitor Format
        $monitor("%t : \nInput : %b\nClock : %b\nEnable : %b\nOutput : %b\n", $time, data_in, clk, en_in, data_out);
        
        // HERE'S THE BIG ONE
        data_in = 00000000; en_in = 0; clk = 0;
        #10;
        data_in = 00000000; en_in = 0; clk = 1;
        #10;
        data_in = 00000000; en_in = 1; clk = 0;
        #10;
        data_in = 00000000; en_in = 1; clk = 1;
        #10;

        data_in = 00000001; en_in = 0; clk = 0;
        #10;
        data_in = 00000001; en_in = 0; clk = 1;
        #10;
        data_in = 00000001; en_in = 1; clk = 0;
        #10;
        data_in = 00000001; en_in = 1; clk = 1;
        #10;

        data_in = 00000010; en_in = 0; clk = 0;
        #10;
        data_in = 00000010; en_in = 0; clk = 1;
        #10;
        data_in = 00000010; en_in = 1; clk = 0;
        #10;
        data_in = 00000010; en_in = 1; clk = 1;
        #10;

        data_in = 00000011; en_in = 0; clk = 0;
        #10;
        data_in = 00000011; en_in = 0; clk = 1;
        #10;
        data_in = 00000011; en_in = 1; clk = 0;
        #10;
        data_in = 00000011; en_in = 1; clk = 1;
        #10;
        end
endmodule
