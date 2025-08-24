`timescale 1ns/1ns
`include "q1.v"

module q1_tb();

reg x1,x2,x3;
wire f;

q1 ins_q1(x1,x2,x3,f);

initial
begin

$dumpfile("q1_tb.vcd");
$dumpvars(0,q1_tb);

x1=0;x2=0;x3=0;
#10;
x1=0;x2=0;x3=1;
#10;
x1=0;x2=1;x3=0;
#10;
x1=1;x2=0;x3=0;
#10;
x1=0;x2=1;x3=1;
#10;
x1=1;x2=0;x3=1;
#10;
x1=1;x2=1;x3=0;
#10;
x1=1;x2=1;x3=1;
#10;

end
endmodule