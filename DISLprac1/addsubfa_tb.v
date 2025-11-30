`timescale 1ns/1ns
`include "addsubfa.v"

module addsubfa_tb();

reg [3:0]a,b;
reg cin;
wire [3:0]s;
wire cout;

addsubfa addsubfa_ins(a,b,cin,s,cout);

initial begin
    $dumpfile("addsubfa_tb.vcd");
    $dumpvars(0,addsubfa_tb);

    a=10;b=4;cin=1;
    #10;
    a=8;b=5;cin=0;
    #10;
    a=10;b=4;cin=0;
    #10;
    a=8;b=5;cin=1;
    #10;
end
endmodule