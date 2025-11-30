`timescale 1ns/1ns
`include "bcdadder.v"

module bcdadder_tb();

reg [3:0]a,b;
reg cin;
wire [3:0]sum;
wire cout;

bcdadder bcdadder_ins(a,b,cin,sum,cout);

initial begin
    $dumpfile("bcdadder_tb.vcd");
    $dumpvars(0,bcdadder_tb);

    a=8;b=6;cin=0;
    #10;
    a=6;b=5;cin=0;
    #10;
end
endmodule