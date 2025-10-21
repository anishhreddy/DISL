`include "johnson_counter_5bit.v"
`timescale 1ns/1ns

module johnson_counter_5bit_tb();

reg clk,clr;
wire [4:0]Q;

johnson_counter_5bit johnson_counter_5bit_ins(Q,clk,clr);

initial begin
    $dumpfile("johnson_counter_5bit_tb.vcd");
    $dumpvars(0,johnson_counter_5bit_tb);
end

initial begin
    clk = 0;
    forever #2 clk = ~clk;
end

initial begin
    clr = 1; #4;
    clr = 0; #40;
    $finish;
end
endmodule