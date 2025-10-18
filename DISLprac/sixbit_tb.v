`timescale 1ns/1ns
`include "sixbit.v"

module sixbit_tb();

reg [5:0]w;
wire [3:0]count;

sixbit sixbit_ins(w,count);

initial begin
    $dumpfile("sixbit_tb.vcd");
    $dumpvars(0,sixbit_tb);

    w=6'b101011;
    #10;
    w=6'b110000;
    #10;
    w=6'b010111;
    #10;
end
endmodule