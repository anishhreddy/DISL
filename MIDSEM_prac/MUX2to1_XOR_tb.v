`timescale 1ns/1ns
`include "MUX2to1_XOR.v"

module MUX2to1_XOR_tb();

reg [1:0]s;
wire f;

MUX2to1_XOR MUX2to1_XOR_ins(s,f);

initial begin
    $dumpfile("MUX2to1_XOR_tb.vcd");
    $dumpvars(0,MUX2to1_XOR_tb);

    s[0]=0;s[1]=0;
    #10;
    s[0]=1;s[1]=0;
    #10;
    s[0]=0;s[1]=1;
    #10;
    s[0]=1;s[1]=1;
    #10;
end
endmodule