`include "fourbitadder.v"

module bcdadder(a,b,cin,sum,cout);

input [3:0]a,b;
input cin;

wire [3:0]z;
wire k,d;

output [3:0]sum;
output cout;

fourbitadder fourbitadder_ins(a,b,cin,z,k);

assign d = (k | z[3]&z[2] | z[3]&z[1]);

fourbitadder fourbitadder_ins0({1'b0,d,d,1'b0},z,cin,sum,cout);

endmodule
