`timescale 1ns/1ns
`include "MUX4to1.v"

module MUX4to1_tb();

reg [0:3]w;
reg [1:0]s;
wire f;

MUX4to1 MUX4to1_ins(w,s,f);

initial begin
    $dumpfile("MUX4to1_tb.vcd");
    $dumpvars(0,MUX4to1_tb);

    w=4'b1010;s=2'b00;
    #10;
    w=4'b1010;s=2'b01;
    #10;
    w=4'b1010;s=2'b10;
    #10;
    w=4'b1010;s=2'b11;
    #10;

end
endmodule

