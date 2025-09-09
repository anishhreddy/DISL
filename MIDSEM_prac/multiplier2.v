module multiplier2(m,q,s);

input [1:0]m,q;
output [3:0]s;

assign s[0] = m[0]&q[0];

wire [1:0]c;

halfadder halfadder_ins0(m[1]&q[0],m[0]&q[1],s[1],c[0]);
halfadder halfadder_ins1(m[1]&q[1],c[0],s[2],c[1]);

assign s[3]=c[1];

endmodule



module halfadder(a,b,sum,carry);

input a,b;
output sum,carry;

assign sum = a^b;
assign carry = a&b;

endmodule