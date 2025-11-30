`timescale 1ns/1ns
`include "multiplier3.v"

module multiplier3_tb();

reg [2:0]a,b;
wire[5:0]s;

multiplier3 multiplier3_ins(a,b,s);

initial begin
    $dumpfile("multiplier3_tb.vcd");
    $dumpvars(0,multiplier3_tb);

    a=7;b=7;
    #10;
    a=7;b=6;
    #10;
    a=6;b=6;
    #10;
    a=5;b=4;
    #10;
    a=3;b=2;
    #10;
end
endmodule