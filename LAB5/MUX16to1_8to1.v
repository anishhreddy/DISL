`include "MUX8to1.v"
`include "MUX2to1.v"
module MUX16to1_8to1(w,s,f);

input [0:15]w;
input [3:0]s;

output f;

wire [0:1]x;

MUX8to1 stage0a(w[0:7],s[2:0],x[0]);
MUX8to1 stage0b(w[8:15],s[2:0],x[1]);

MUX2to1 stage1(x,s[3],f);

endmodule