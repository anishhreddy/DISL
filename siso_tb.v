`include "siso.v"
`timescale 1ps/1ps

module siso_tb();

reg clk,reset,w;
wire [3:0]Q;

siso siso_ins(w,clk,reset,Q);

initial begin
    $dumpfile("siso_tb.vcd");
    $dumpvars(0,siso_tb);
end

initial begin
    clk = 0;
    forever #2 clk = ~clk;
end

initial begin
    reset=1;#2;
    reset=0;
    w=1;#2;
    w=1;#2;
    w=1;#2;
    w=1;#2;
    w=1;#2;
    w=1;#2;
    $finish;
end

endmodule