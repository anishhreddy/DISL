`include "q1.v"
`timescale 1ns/1ns

module q1_tb();

reg E,x,clk,reset;
wire A,B;

q1 q1_ins(E,x,A,B,clk,reset);

initial begin
    $dumpfile("q1_tb.vcd");
    $dumpvars(0,q1_tb);
end

initial begin
    clk = 0;
    forever #2 clk = ~clk;
end

initial begin
    E = 0; x = 0; reset = 1; #10;
    E = 0; x = 0; reset = 0; #10;
    E = 0; x = 1; reset = 0; #10;
    E = 1; x = 0; reset = 0; #10;
    E = 1; x = 1; reset = 0; #10;
    E = 0; x = 0; reset = 0; #10;
    E = 0; x = 1; reset = 0; #10;
    E = 1; x = 0; reset = 0; #10;
    E = 1; x = 1; reset = 0; #10;
    $finish;
end
endmodule