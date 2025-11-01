module q2(x,A,B,clk,reset);

input x,clk,reset;
output A,B;

wire Ta,Tb;

assign Ta = (~(x) & B) | (~(A) & B);
assign Tb = (x & ~(A) & B) | (~(x) & ~(B)) | (~(x) & A);

TFF TFFa(Ta,clk,reset,A);
TFF TFFb(Tb,clk,reset,B);

endmodule

module TFF(T,clk,reset,Q);

input T,clk,reset;
output reg Q;

always @(posedge clk , posedge reset) begin
    if(reset)begin
        Q<=0;
    end
    else begin
        if(T==0)begin
            Q<=Q;
        end
        else begin
            Q<=~Q;
        end
    end
end

endmodule