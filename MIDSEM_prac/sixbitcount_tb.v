`timescale 1ns/1ns
`include "sixbitcount.v"

module sixbitcount_tb();

reg [5:0]w;
wire [3:0]count;

sixbitcount sixbitcount_ins(w,count);

initial begin
    $dumpfile("sixbitcount_tb.vcd");
    $dumpvars(0,sixbitcount_tb);

    w=6'b010110;
    #10;
    w=6'b111111;
    #10;
    w=6'b010111;
    #10;
    w=6'b010000;
    #10;
end
endmodule