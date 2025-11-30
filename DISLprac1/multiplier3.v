module multiplier3(m,p,s);

input [2:0]m,p;
output [5:0]s;

wire [5:1]c;
wire [1:0]x;

assign s[0] = m[0]&p[0];

halfadder stage0((m[1]&p[0]),(m[0]&p[1]),s[1],c[1]);
fulladder stage1((m[2]&p[0]),(m[1]&p[1]),c[1],x[0],c[2]);
halfadder stage2(x[0],(p[2]&m[0]),s[2],c[4]);
halfadder stage3((p[1]&m[2]),c[2],x[1],c[3]);
fulladder stage4(x[1],c[4],(p[2]&m[1]),s[3],c[5]);
fulladder stage5((m[2]&p[2]),c[5],c[3],s[4],s[5]);

endmodule


//halfadder
module halfadder(a,b,sum,carry);

input a,b;
output sum,carry;

assign sum = a^b;
assign carry = a&b;

endmodule


//fulladder
module fulladder(a,b,c,sum,carry);

input a,b,c;
output sum,carry;

assign sum=a^b^c;
assign carry=(a&b) | (b&c) | (c&a);

endmodule