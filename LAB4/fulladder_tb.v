`timescale 1ns/1ns
`include "fulladder.v"

module fulladder_tb();

reg x,y,z;
wire sum,carry;

fulladder ins_fulladder(x,y,z,sum,carry);

initial
begin

$dumpfile("fulladder_tb.vcd");
$dumpvars(0,fulladder_tb);

x=0;y=0;z=0;
#10;
x=0;y=0;z=1;
#10;
x=0;y=1;z=0;
#10;
x=0;y=1;z=1;
#10;
x=1;y=0;z=0;
#10;
x=1;y=0;z=1;
#10;
x=1;y=1;z=0;
#10;
x=1;y=1;z=1;
#10;


end
endmodule