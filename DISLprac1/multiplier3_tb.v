`timescale 1ns/1ns;
`include "multiplier3.v"

module multiplier3_tb();

reg [2:0]m,p;
wire [5:0]s;

multiplier3 multiplier3_ins(m,p,s);

initial begin
    $dumpfile("multiplier3_tb.vcd");
    $dumpvars(0,multiplier3_tb);

    m=7;p=7;
    #10;
    m=7;p=6;
    #10;
end
endmodule