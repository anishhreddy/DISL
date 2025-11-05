`include "q.v"
`timescale 1ps/1ps

module q_tb();

reg x,clk,reset;
wire A,B;

q q_ins(x,A,B,clk,reset);

initial begin
    $dumpfile("q_tb.vcd");
    $dumpvars(0,q_tb);
end

initial begin
    clk = 0;
    forever #2 clk = ~clk;
end

initial begin
    reset=1;#2;
    reset=0;
    x=0;#2;
    x=1;#2;
    x=0;#2;
    x=1;#2;
    x=0;#2;
    x=1;#2;
    x=0;#2;
    x=1;#2;
    x=0;#2;
    x=1;#2;
    $finish;
end

endmodule