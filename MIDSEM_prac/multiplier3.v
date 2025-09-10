//3bitmultiplier
module multiplier3(a,b,s);

input [2:0]a,b;
output [5:0]s;

wire [5:1]c;
wire [1:0]x;

assign s[0] = a[0]&b[0];

halfadder stage0((a[0]&b[1]),(a[1]&b[0]),s[1],c[1]);
fulladder stage1((a[2]&b[0]),(a[1]&b[1]),c[1],x[0],c[2]);
halfadder stage2(x[0],(a[0]&b[2]),s[2],c[4]);
halfadder stage3(c[2],(a[2]&b[1]),x[1],c[3]);
fulladder stage4(x[1],(b[2]&a[1]),c[4],s[3],c[5]);
fulladder stage5(c[3],(a[2]&b[2]),c[5],s[4],s[5]);

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

assign sum = a^b^c;
assign carry = a&b | b&c | c&a;

endmodule