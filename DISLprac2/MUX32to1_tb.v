`timescale 1ns/1ns
`include "MUX32to1.v"

module MUX32to1_tb();

reg [0:31]w;
reg [4:0]s;
wire f;

MUX32to1 MUX32to1_ins(w,s,f);

initial begin
    $dumpfile("MUX32to1_tb.vcd");
    $dumpvars(0,MUX32to1_tb);

w = 32'hdeadbeef; s = 5'b00000;
#10;
w = 32'hdeadbeef; s = 5'b01100; // Selects w[12]
#10;
w = 32'hdeadbeef; s = 5'b11111; // Selects w[31]
#10;

end
endmodule