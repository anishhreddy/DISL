`include "DEC4to16_low.v"
`timescale 1ps/1ps

module DEC4to16_low_tb();

reg en;
reg [3:0]w;
wire [0:15]y;

DEC4to16_low DEC4to16_low_ins(en,w,y);

initial begin
    $dumpfile("DEC4to16_low_tb.vcd");
    $dumpvars(0,DEC4to16_low_tb);

    for (integer i = 0 ; i<16 ;i=i+1 ) begin
        en=0;w=i;
        #10;
    end
    for (integer i = 0 ; i<16 ;i=i+1 ) begin
        en=1;w=i;
        #10;
    end
end

endmodule