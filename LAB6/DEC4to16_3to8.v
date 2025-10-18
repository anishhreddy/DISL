`include "DEC3to8.v"

module DEC4to16_3to8(en,w,y);

input en;
input [3:0]w;
output [0:15]y;

DEC3to8 stage0((en&~w[3]),w[2:0],y[0:7]);
DEC3to8 stage1((en&w[3]),w[2:0],y[8:15]);

endmodule