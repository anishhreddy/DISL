`timescale 1ns/1ns
`include "fourbitaddsub.v"

module fourbitaddsub_tb();

reg [3:0]x,y;
reg cin;
wire [3:0]sum;
wire cout;

fourbitaddsub ins_fourbitaddsub(x,y,cin,sum,cout);

initial
begin

$dumpfile("fourbitaddsub_tb.vcd");
$dumpvars(0,fourbitaddsub_tb);

//8+6 = 14

x=8;
y=6;
cin=0;
#20;

//6-5 = 1;
x=5;
y=6;
cin=1;
#20;

end
endmodule