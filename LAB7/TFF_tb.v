`include "TFF.v"
`timescale 1ps/1ps

module TFF_tb();

reg T,clk,reset;
wire Q;

TFF TFF_ins(T,clk,reset,Q);

initial begin
    $dumpfile("TFF_tb.vcd");
    $dumpvars(0,TFF_tb);
end

initial begin
    clk = 0;
    forever #2 clk = ~clk;
end

initial begin
    T=0;reset=0;
    #1;
    T=1;reset=0;
    #2;
    T=0;reset=1;
    #2;
    T=1;reset=1;
    #4;
    T=0;reset=1;
    #4;
    T=1;reset=1;
    #4;
    T=0;reset=1;
    $finish;
end

endmodule