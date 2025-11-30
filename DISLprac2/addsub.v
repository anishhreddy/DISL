`include "fourbitadder.v"
module addsub(a,b,cin,s,cout);

input [3:0]a,b;
input cin;
output [3:0]s;
output cout;

fourbitadder fourbitadder_ins(a,b^{4{cin}},cin,s,cout);

endmodule