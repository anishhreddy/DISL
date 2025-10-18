`timescale 1ns/1ns
`include "halfadder.v"

module halfadder_tb();

reg a,b;
wire sum,carry;

halfadder halfadder_ins(a,b,sum,carry);

initial begin
    $dumpfile("halfadder_tb.vcd");
    $dumpvars(0,halfadder_tb);

    a=0;b=0;
    #10;
    a=0;b=1;
    #10;
    a=1;b=0;
    #10;
    a=1;b=1;
    #10;
end
endmodule