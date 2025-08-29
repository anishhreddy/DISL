`include "halfadder.v"

module twobitmultiplier(m,p,s);

input [1:0]m,p;
output [3:0]s;

wire [2:1]c;

assign s[0] = (m[0]&p[0]);

halfadder stage0(m[1]&p[0] , m[0]&p[1] , s[1] , c[1]);
halfadder stage1(m[1]&p[1] , c[1] , s[2] , c[2]);

assign s[3] = c[2];

endmodule