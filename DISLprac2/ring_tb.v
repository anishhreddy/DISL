`include "ring.v"
`timescale 1ps/1ps

module ring_tb();

reg clk,clr;
wire [3:0]Q;

ring ring_ins(clk,clr,Q);

initial begin
    $dumpfile("ring_tb.vcd");
    $dumpvars(0,ring_tb);
end

initial begin
    clk = 0;
    forever #2 clk = ~clk;
end

initial begin

    clr = 1;#2;
    clr = 0;
    #20;
    $finish;
end

endmodule