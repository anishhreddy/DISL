`include "SRFF.v"
`timescale 1ns/1ns

module SRFF_tb();

reg S,R,clk,reset;
wire Q;

SRFF SRFF_ins(S,R,clk,Q,reset);

initial begin
    $dumpfile("SRFF_tb.vcd");
    $dumpvars(0,SRFF_tb);
end

initial begin
    clk = 0;
    forever #1 clk = ~clk;
end

initial begin
    S = 0; R = 0; reset = 0;
    #2;
    S = 0; R = 1; reset = 0;
    #2;
    S = 1; R = 0; reset = 0;
    #2;
    S = 1; R = 1; reset = 0;
    #2;

    S = 0; R = 0; reset = 1;
    #2;
    S = 0; R = 1; reset = 1;
    #2;
    S = 1; R = 0; reset = 1;
    #2;
    S = 1; R = 1; reset = 1;
    #2;
    $finish;
end
endmodule

