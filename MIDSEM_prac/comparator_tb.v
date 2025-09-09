`timescale 1ns/1ns
`include "comparator.v"

module comparator_tb();

reg [3:0]x,y;
wire XeqY,XgtY,XltY;

comparator comparator_ins(x,y,XgtY,XltY,XeqY);

initial begin
    $dumpfile("comparator_tb.vcd");
    $dumpvars(0,comparator_tb);

    x=7;y=7;
    #10;
    x=6;y=7;
    #10;
    x=7;y=6;
    #10;
end
endmodule