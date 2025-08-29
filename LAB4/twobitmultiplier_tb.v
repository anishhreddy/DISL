`timescale 1ns/1ns
`include "twobitmultiplier.v"

module twobitmultiplier_tb();

reg [1:0]m,p;
wire [3:0]s;

twobitmultiplier ins_twobitmultiplier(m,p,s);

initial
begin

$dumpfile("twobitmultiplier_tb.vcd");
$dumpvars(0,twobitmultiplier_tb);

//3 x 2 = 6
m[0]=1;m[1]=1;
p[0]=0;p[1]=1;
#20;

//3 x 3 = 9;
m=3;
p=3;
#20;

end
endmodule