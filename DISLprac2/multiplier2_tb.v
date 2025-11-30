`timescale 1ns/1ns
`include "multiplier2.v"

module multiplier2_tb();

reg [1:0]m;
reg [1:0]q;
wire [3:0]s;

multiplier2 multiplier2_ins(m,q,s);

initial begin
    $dumpfile("multiplier2_tb.vcd");
    $dumpvars(0,multiplier2_tb);

    m=2;q=3;
    #10;
    m=3;q=3;
    #10;
end
endmodule