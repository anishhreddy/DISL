`timescale 1ns/1ns
`include "MUX8to1.v"

module MUX8to1_tb();

reg[0:7] w;
reg [2:0] s;
wire f;

MUX8to1 MUX8to1_ins(w,s,f);

initial
begin

$dumpfile("MUX8to1_tb.vcd");
$dumpvars(0,MUX8to1_tb);


//case 1:
    w = 8'b1010_1010; s = 3'b000;
    #10;
    w = 8'b1010_1010; s = 3'b001;
    #10;
    w = 8'b1010_1010; s = 3'b010;
    #10;
    w = 8'b1010_1010;  s = 3'b011;
    #10;
    w = 8'b1010_1010;  s = 3'b100;
    #10;
    w = 8'b1010_1010;  s = 3'b101;
    #10;
    w = 8'b1010_1010;  s = 3'b110;
    #10;
    w = 8'b1010_1010;  s = 3'b111;
    #10;

end
endmodule