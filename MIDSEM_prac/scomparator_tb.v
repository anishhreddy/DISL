`timescale 1ns/1ns
`include "scomparator.v"

module scomparator_tb();

reg [3:0]a,b;
reg cin;
wire XgtY,XltY,XeqY;

scomparator scomparator_ins(a,b,cin,XgtY,XltY,XeqY);
initial begin
    $dumpfile("scomparator_tb.vcd");
    $dumpvars(0,scomparator_tb);

    a=7;b=-8;cin=1;
    #10;

    a=-6;b=6;
    #10;

    a=6;b=2;
    #10;

    a=4;b=4;
    #10;

end
endmodule