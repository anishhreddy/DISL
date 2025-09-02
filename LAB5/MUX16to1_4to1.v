`include "MUX4to1.v"

module MUX16to1_4to1(w,s,f);

input [0:15]w;
input [3:0]s;

output f;

wire [0:3]x;

MUX4to1 stage0a(w[0:3],s[1:0],x[0]);
MUX4to1 stage0b(w[4:7],s[1:0],x[1]);
MUX4to1 stage0c(w[8:11],s[1:0],x[2]);
MUX4to1 stage0d(w[12:15],s[1:0],x[3]);

MUX4to1 stage1(x,s[3:2],f);

endmodule