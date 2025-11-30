`timescale 1ns/1ns
`include "MUX2to1.v"

module MUX2to1_tb();

reg [0:1]w;
reg s;
wire f;

MUX2to1 MUX2to2_ins(w,s,f);

initial begin
    $dumpfile("MUX2to1_tb.vcd");
    $dumpvars(0,MUX2to1_tb);

    w=2'b00;s=1'b0;
    #10;
    w=2'b01;s=1'b1;
    #10;
end

endmodule