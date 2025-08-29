`timescale 1ns/1ns
`include "fourbitcomparator.v"

module fourbitcomparator_tb();

reg [3:0]x,y;
wire XeqY,XgtY,XltY;

fourbitcomparator ins_fourbitcomparator(x,y,XeqY,XgtY,XltY);

initial
begin

$dumpfile("fourbitcomparator_tb.vcd");
$dumpvars(0,fourbitcomparator_tb);

//XgtY
x=8;
y=7;
#20;

//XltY
x=4;
y=5;
#20;

//XeqY
x=3;
y=3;
#20;

end
endmodule