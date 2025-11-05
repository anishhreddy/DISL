`include "up.v"
`timescale 1ps/1ps

module up_tb();

reg clk,reset;
wire A,B,C;

up up_ins(A,B,C,clk,reset);

initial begin
    $dumpfile("up_tb.vcd");
    $dumpvars(0,up_tb);
end

initial begin
    clk = 0;
    forever #2 clk = ~clk;
end

initial begin
    reset=1;#2;
    reset=0;
    #20;
end

endmodule