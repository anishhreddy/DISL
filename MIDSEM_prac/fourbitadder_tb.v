`timescale 1ns/1ns
`include "fourbitadder.v"

module fourbitadder_tb();

reg [3:0]a,b;
reg cin;
wire [3:0]s;
wire cout;

fourbitadder fourbitadder_ins(a,b,cin,s,cout);

initial begin
    $dumpfile("fourbitadder_tb.vcd");
    $dumpvars(0,fourbitadder_tb);

    a=8;b=5;cin=0;
    #10;
    a=3;b=4;cin=0;
    #10;
end
endmodule