`include "q2.v"
`timescale 1ns/1ns

module q2_tb();

reg x,clk,reset;
wire A,B;

q2 q2_ins(x,A,B,clk,reset);

initial begin
    $dumpfile("q2_tb.vcd");
    $dumpvars(0,q2_tb);
end

initial begin
    clk= 0;
    forever #2 clk = ~clk;
end

initial begin
    reset = 1; x = 0; #5;      
    reset = 0; #20;            

    x = 0; #40;                
    x = 1; #40;                
    x = 0; #40;
    x = 1; #40;

    $finish;
end

endmodule