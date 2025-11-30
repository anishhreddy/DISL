`include "halfadder.v"
`include "fulladder.v"

module multiplier2to3(m,p,s);

input [2:0]m;
input [1:0]p;

output [4:0]s;

wire [3:1]c;

assign s[0] = m[0]&p[0];

halfadder stage0((m[1]&p[0]),(m[0]&p[1]),s[1],c[1]);
fulladder stage1((m[2]&p[0]),(m[1]&p[1]),c[1],s[2],c[2]);
halfadder stage2((m[2]&p[1]),c[2],s[3],c[3]);

assign s[4] = c[3];

endmodule