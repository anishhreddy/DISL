`include "fulladder.v"

module fourbitadder(x,y,cin,sum,cout);

input [3:0]x,y;
input cin;
output [3:0]sum;
output cout;

wire [3:1]c;

fulladder stage0(x[0],y[0],cin,sum[0],c[1]);
fulladder stage1(x[1],y[1],c[1],sum[1],c[2]);
fulladder stage2(x[2],y[2],c[2],sum[2],c[3]);
fulladder stage3(x[3],y[3],c[3],sum[3],cout);

endmodule