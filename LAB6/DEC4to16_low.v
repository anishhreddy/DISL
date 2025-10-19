`include "DEC2to4_low.v"
module DEC4to16_low(en,w,y);

input en;
input [3:0]w;
output [0:15]y;
wire [0:3]e;

DEC2to4_low stage0(en,w[3:2],e);
DEC2to4_low stage1a(~e[0],w[1:0],y[0:3]);
DEC2to4_low stage1b(~e[1],w[1:0],y[4:7]);
DEC2to4_low stage1c(~e[2],w[1:0],y[8:11]);
DEC2to4_low stage1d(~e[3],w[1:0],y[12:15]);

endmodule