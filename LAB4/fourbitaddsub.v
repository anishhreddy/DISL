`include "fourbitadder.v"

module fourbitaddsub(x,y,cin,s,cout);

input [3:0]x,y;
input cin;
output [3:0]s;
output cout;

fourbitadder fourbitadder_ins(x,y^{4{cin}},cin,s,cout);

endmodule