`timescale 1ns/1ns
`include "majority.v"

module majority_tb();

reg a,b,c,d;
wire f;

majority majority_ins(a,c,b,d,f);

initial begin
    $dumpfile("majority_tb.vcd");
    $dumpvars(0,majority_tb);

    a=1'b0;b=1'b0;c=1'b0;d=1'b0;
    #10;
    a=1'b0;b=1'b1;c=1'b0;d=1'b0;
    #10;
    a=1'b1;b=1'b0;c=1'b0;d=1'b0;
    #10;
    a=1'b1;b=1'b1;c=1'b0;d=1'b1;
    #10;
end
endmodule