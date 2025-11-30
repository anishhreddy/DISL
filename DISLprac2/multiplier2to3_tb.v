`timescale 1ns/1ns
`include "multiplier2to3.v"

module multiplier2to3_tb();

reg [2:0]m;
reg [1:0]p;
wire [4:0]s;

multiplier2to3 multiplier2to3_ins(m,p,s);

initial begin
    $dumpfile("multiplier2to3_tb.vcd");
    $dumpvars(0,multiplier2to3_tb);

    m=7;p=3;
    #10;
    m=6;p=1;
    #10;
    m=4;p=0;
    #10;
end
endmodule