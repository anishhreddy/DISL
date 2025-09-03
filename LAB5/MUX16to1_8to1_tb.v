`timescale 1ns/1ns
`include "MUX16to1_8to1.v"

module MUX16to1_8to1_tb();

reg[0:15] w;
reg [3:0] s;
wire f;

MUX16to1_8to1 MUX16to1_8to1_ins(w,s,f);

initial
begin

$dumpfile("MUX16to1_8to1_tb.vcd");
$dumpvars(0,MUX16to1_8to1_tb);


    w = 16'b1010_1100_1101_0001; s = 4'b0000;
    #10;
    w = 16'b1010_1100_1101_0001; s = 4'b0100;
    #10;
    w = 16'b1010_1100_1101_0001; s = 4'b0101;
    #10;
    w = 16'b1010_1100_1101_0001; s = 4'b1011;
    #10;
    w = 16'b1010_1100_1101_0001; s = 4'b1101;
    #10;

end
endmodule