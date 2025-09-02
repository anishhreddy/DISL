`include "MUX2to1.v"

module MUX4to1_2to1(w,s,f);

input[0:3] w;
input [1:0] s;
output f;
wire [0:1] c;

MUX2to1 MUX2to1_stage1a(w[0:1],s[0],c[0]);
MUX2to1 MUX2to1_stage1b(w[2:3],s[0],c[1]);

MUX2to1 MUX2to1_stage2(c,s[1],f);

endmodule

