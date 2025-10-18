`include "fourbitadder.v"

module sixbit(m,count);

input [5:0]m;
output [3:0]count;

wire sa,sb,ca,cb,carry;
wire [3:0]sum1,sum2;

fulladder stage0(m[0],m[1],m[2],sa,ca);
fulladder stage1(m[3],m[4],m[5],sb,cb);

assign sum1 =  {1'b0,1'b0,ca,sa};
assign sum2 = {1'b0,1'b0,cb,sb};

fourbitadder stage2(sum1,sum2,1'b0,count,carry);

endmodule