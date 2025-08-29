`include "fourbitadder.v"
module bcdadder(x,y,cin,s,cout);

input [3:0]x,y;
input cin;
output [3:0]s;
output cout;

wire [3:0]z;
wire k,a;

fourbitadder stage0(x,y,cin,z,k);

assign a = (k | (z[3]&z[2]) | (z[3]&z[1]));

fourbitadder stage1(z,{1'b0 ,a,a,1'b0},cin,s,cout);

endmodule