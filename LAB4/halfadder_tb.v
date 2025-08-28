`timescale 1ns/1ns
`include "halfadder.v"

module halfadder_tb();

reg x,y;
wire sum,carry;

halfadder ins_halfadder(x,y,sum,carry);

initial
begin

$dumpfile("halfadder_tb.vcd");
$dumpvars(0,halfadder_tb);

x=0;y=0;
#10;
x=0;y=1;
#10;
x=1;y=0;
#10;
x=1;y=1;
#10;

end
endmodule