`include "DEC2to4.v"
module DEC3to8_2to4(en,w,y);

input en;
input [2:0]w;
output [0:7]y;

DEC2to4 stage0((en&~w[2]),w[1:0],y[0:3]);
DEC2to4 stage1((en&w[2]),w[1:0],y[4:7]);

endmodule