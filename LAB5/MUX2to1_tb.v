`timescale 1ns/1ns
`include "MUX2to1.v"

module MUX2to1_tb();

reg [1:0]w;
reg s;
wire f;

MUX2to1 MUX2to1_ins(w,s,f);

initial
begin

$dumpfile("MUX2to1_tb.vcd");
$dumpvars(0,MUX2to1_tb);


//f=1;
w[0]=1;w[1]=0;
s=0;
#20;

//f=0
w[0]=0;w[1]=1;
s=0;
#20;


end
endmodule