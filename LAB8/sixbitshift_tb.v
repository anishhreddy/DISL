`include "sixbitshift.v"
`timescale 1ps/1ps

module sixbitshift_tb();

reg w,clk,clr;
wire [5:0]Q;

sixbitshift sixbitshift_ins(w,clk,clr,Q);

initial begin
    $dumpfile("sixbitshift_tb.vcd");
    $dumpvars(0,sixbitshift_tb);
end

initial begin
    clk = 0;
    forever #2 clk = ~clk;
end

initial begin
    clr = 0;
    #2;
    clr = 1;
    w = 1'b1;
    #2;
    w = 1'b1;
    #2;
    w = 1'b1;
    #4;
    w = 1'b1;
    #4;
    w = 1'b1;
    #4;
    w = 1'b1;
    #4;
    $finish;
end

endmodule