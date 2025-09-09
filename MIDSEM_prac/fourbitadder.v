module fourbitadder(a,b,cin,s,cout);

input [3:0]a,b;
input cin;
output [3:0]s;
output cout;

wire [3:1]c;

fulladder stage0(a[0],b[0],cin,s[0],c[1]);
fulladder stage1(a[1],b[1],c[1],s[1],c[2]);
fulladder stage2(a[2],b[2],c[2],s[2],c[3]);
fulladder stage3(a[3],b[3],c[3],s[3],cout);

endmodule


module fulladder(a,b,c,sum,carry);

input a,b,c;
output sum,carry;

assign sum = a^b^c;
assign carry = a&b | b&c | c&a;

endmodule