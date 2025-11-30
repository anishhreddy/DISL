`timescale 1ns/1ns
`include "fulladder.v"

module fulladder_tb();

reg a,b,c;
wire sum,carry;

fulladder fulladder_ins(a,b,c,sum,carry);

initial begin
    $dumpfile("fulladder_tb.vcd");
    $dumpvars(0,fulladder_tb);

    a=0;b=0;c=0;
    #10;
    a=0;b=0;c=1;
    #10;
    a=0;b=1;c=0;
    #10;
    a=0;b=1;c=1;
    #10;
    a=1;b=0;c=0;
    #10;
    a=1;b=0;c=1;
    #10;
    a=1;b=1;c=0;
    #10;
    a=1;b=1;c=1;
    #10;
end
endmodule