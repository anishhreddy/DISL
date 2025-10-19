`include "DEC2to4_low.v"
`timescale 1ns/1ns

module  DEC2to4_low_tb();

reg en;
reg [1:0]w;
wire [0:3]y;

DEC2to4_low DEC2to4_low_ins(en,w,y);

initial begin
    $dumpfile("DEC2to4_low_tb.vcd");
    $dumpvars(0,DEC2to4_low_tb);

    for(integer i=0;i<4;i=i+1) begin
       en=0;w=i;
       #10; 
    end
    for (integer i=0;i<4;i++) begin
        en=1;w=i;
        #10; 
    end
end


endmodule