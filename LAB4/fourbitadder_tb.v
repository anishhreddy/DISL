`timescale 1ns/1ns
`include "fourbitadder.v"

module fourbitadder_tb();

reg [3:0]x,y;
reg cin;
wire [3:0]sum;
wire cout;

fourbitadder ins_fourbitadder(x,y,cin,sum,cout);

initial
begin

$dumpfile("fourbitadder_tb.vcd");
$dumpvars(0,fourbitadder_tb);

//8+6 = 14

x[0]=0;x[1]=0;x[2]=0;x[3]=1;
y[0]=0;y[1]=1;y[2]=1;y[3]=0;
cin=0;
#20;

//6+5 = 11;
x=6;
y=5;
cin=0;
#20;

end
endmodule