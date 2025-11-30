module siso(w,clk,reset,Q);

input clk,reset,w;
output [3:0]Q;

DFF DFFa(w,clk,reset,Q[3]);
DFF DFFb(Q[3],clk,reset,Q[2]);
DFF DFFc(Q[2],clk,reset,Q[1]);
DFF DFFd(Q[1],clk,reset,Q[0]);

endmodule

module DFF(D,clk,reset,Q);

input D,clk,reset;
output reg Q;

always @(posedge clk , posedge reset) begin
    if(reset)begin
        Q<=0;
    end
    else if begin
        Q<=D;
    end
end

endmodule