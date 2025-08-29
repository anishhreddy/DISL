`timescale 1ns/1ns
`include "bcdadder.v"

module bcdadder_tb();

reg [3:0]x,y;
reg cin;
wire [3:0]sum;
wire cout;

bcdadder ins_bcdadder(x,y,cin,sum,cout);

initial
begin

$dumpfile("bcdadder_tb.vcd");
$dumpvars(0,bcdadder_tb);

//8+7 = 15
x=8;
y=7;
cin=0;
#20;

//6+5 = 11;
x=6;
y=5;
cin=0;
#20;

end
endmodule