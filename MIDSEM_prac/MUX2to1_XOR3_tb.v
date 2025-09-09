`timescale 1ns/1ns
`include "MUX2to1_XOR3.v"

module MUX2to1_XOR3_tb();

reg a,b,c;
wire f;

MUX2to1_XOR3 MUX2to1_XOR3_ins(a,b,c,f);

initial begin
    $dumpfile("MUX2to1_XOR3_tb.vcd");
    $dumpvars(0,MUX2to1_XOR3_tb);

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