`timescale 1ns/1ns
`include "addsub.v"

module addsub_tb();

reg [3:0]a,b;
reg cin;
wire [3:0]s;
wire cout;

addsub addsub_ins(a,b,cin,s,cout);

initial begin
    $dumpfile("addsub_tb.vcd");
    $dumpvars(0,addsub_tb);

    a=8;b=4;cin=1;
    #10;
    a=10;b=4;cin=0;
    #10;
end
endmodule