`include "N_Bit_PIPO.v"
`timescale 1ns/1ns

module N_Bit_PIPO_tb();
parameter n = 4; 
reg [n-1:0]D;
reg clk;
wire [n-1:0]Q;

N_Bit_PIPO N_Bit_PIPO(D,clk,Q);

initial begin
    $dumpfile("N_Bit_PIPO_tb.vcd");
    $dumpvars(0,N_Bit_PIPO_tb);
end

initial begin
    clk = 0;
    forever #1 clk = ~clk;
end

initial begin
    D = 12; #10;
    D = 8; #10;
    D = 7; #10;
    D = 15; #10;
    $finish;
end
endmodule