module q(x,A,B,clk,reset);

input clk,reset,x;
output A,B;

wire Ta,Tb;

assign Ta = ((~A) & B) | ((~x) & B);
assign Tb = ((~x) & (~B)) | ((~x) & A) | (x & (~A) & B);

TFF TFFa(Ta,clk,reset,A);
TFF TFFb(Tb,clk,reset,B);

endmodule



module TFF(T,clk,reset,Q);

input T,clk,reset;
output reg Q;

always @(posedge clk,posedge reset) begin
    if (reset) begin
        Q<=0;
    end
    else if (T==0) begin
        Q<=Q;
    end
    else begin
        Q<=~Q;
    end
end

endmodule