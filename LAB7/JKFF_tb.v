`include "JKFF.v"
`timescale 1ps/1ps

module JKFF_tb();

reg J,K,clk,reset;
wire Q;

JKFF JKFF_ins(J,K,clk,reset,Q);

initial begin
    $dumpfile("JKFF_tb.vcd");
    $dumpvars(0,JKFF_tb);
end

initial begin
    clk = 0;
    forever #2 clk = ~clk;
end

initial begin
    J=0;K=0;reset=1;
    #2;
    J=0;K=1;reset=1;
    #2;
    J=1;K=0;reset=1;
    #2;
    J=1;K=1;reset=1;
    #2;
    J=0;K=0;reset=0;
    #2;
    J=0;K=1;reset=0;
    #2;
    J=1;K=0;reset=0;
    #2;
    J=1;K=1;reset=0;
    #2;
    $finish;
end

endmodule