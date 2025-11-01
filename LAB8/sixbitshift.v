module sixbitshift(w,clk,clr,Q);

input w,clk,clr;
output [5:0]Q;

DFF stage0(w,clk,clr,Q[5]);
DFF stage1(Q[5],clk,clr,Q[4]);
DFF stage2(Q[4],clk,clr,Q[3]);
DFF stage3(Q[3],clk,clr,Q[2]);
DFF stage4(Q[2],clk,clr,Q[1]);
DFF stage5(Q[1],clk,clr,Q[0]);

endmodule



module DFF(D,clk,reset,Q);

input D,clk,reset;
output reg Q;

always @(posedge clk,negedge reset) begin
    if(!reset) begin
        Q<=0;
    end
    else begin
        Q<=D;
    end
end

endmodule