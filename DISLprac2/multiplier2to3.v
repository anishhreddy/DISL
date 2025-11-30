module multiplier2to3(m,p,s);

input [2:0]m;
input [1:0]p;

output [4:0]s;

wire [3:1]c;

assign s[0] = m[0]&p[0];

halfadder halfadder0((m[1]&p[0]),(m[0]&p[1]),s[1],c[1]);
fulladder fulladder1((m[2]&p[0]),(m[1]&p[1]),c[1],s[2],c[2]);
halfadder halfadder2((m[2]&p[1]),c[2],s[3],c[3]);

assign s[4] = c[3];

endmodule


module halfadder(a,b,sum,carry);

input a,b;
output sum,carry;

assign sum = a^b;
assign carry = a&b;

endmodule

module fulladder(a,b,c,sum,carry);

input a,b,c;
output sum,carry;

assign sum = a^b^c;
assign carry = a&b | b&c | c&a;

endmodule
