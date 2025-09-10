`include "fourbitadder.v"

module sixbitcount(w,count);

input [5:0]w;
output [3:0]count;

wire sa,ca,sb,cb,carry;
wire [3:0] sum1,sum2;

fulladder stage0(w[0],w[1],w[2],sa,ca);
fulladder stage1(w[3],w[4],w[5],sb,cb);

assign sum1 = {1'b0,1'b0,ca,sa};
assign sum2 = {1'b0,1'b0,cb,sb};

fourbitadder stage3(sum1,sum2,1'b0,count,carry);
endmodule