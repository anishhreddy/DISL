`include "ENC4to2.v"
`timescale 1ps/1ps

module ENC4to2_tb();

reg [3:0]w;
wire z;
wire [1:0]y;

ENC4to2 ENC4to2_ins(w,z,y);

initial begin
    $dumpfile("ENC4to2_tb.vcd");
    $dumpvars(0,ENC4to2_tb);

    for (integer  i=0 ;i<16;i=i+1 ) begin
        w=i;
        #10;
    end
end
endmodule