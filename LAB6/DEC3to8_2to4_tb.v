`include "DEC3to8_2to4.v"
`timescale 1ns/1ns

module DEC3to8_2to4_tb();

reg en;
reg [2:0]w;
wire [0:7]y;

DEC3to8_2to4 DEC3to8_2to4_ins(en,w,y);

initial begin

    $dumpfile("DEC3to8_2to4_tb.vcd");
    $dumpvars(0,DEC3to8_2to4_tb);

    for (integer i=0;i<8;i=i+1) begin
        en=0;w=i;
        #10;
    end
    for (integer i=0;i<8;i=i+1) begin
        en=1;w=i;
        #10;
    end
end
endmodule