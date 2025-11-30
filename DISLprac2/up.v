module up(A,B,C,clk,reset);

input clk,reset;
output A,B,C;

wire Ta,Tb,Tc;

assign Ta = B&C;
assign Tb = C;
assign Tc = 1;

TFF TFFa(Ta,clk,reset,A);
TFF TFFb(Tb,clk,reset,B);
TFF TFFc(Tc,clk,reset,C);

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