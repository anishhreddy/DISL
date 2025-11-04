`include "q3.v"
`timescale 1ps/1ps

module q3_tb();

reg clk,reset,x;
wire A,B,y;

q3 q3_ins(A,B,x,y,clk,reset);

initial begin
    $dumpfile("q3_tb.vcd");
    $dumpvars(0,q3_tb);
end

initial begin
    clk = 0;
    forever #2 clk = ~clk;
end

initial begin
    reset=1;
    x=0;#2;
    reset=0;
    x=1;#2;
    x=0;#2;
    x=1;#2;
    x=0;#2;
    x=1;#2;
    x=0;#2;
    x=1;#2;
    x=0;#2;
    x=1;#2;
    x=0;#2;
    $finish;
end
    
endmodule