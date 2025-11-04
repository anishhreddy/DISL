module q3(A,B,x,y,clk,reset);

input clk,reset,x;
output A,B,y;

wire Sa,Ra,Sb,Rb;

assign Sa = ((~x) & (~A) & (~B)) | (x & B);
assign Ra = ((~x) & A & (~B));
assign Sb = (x | ~A);
assign Rb = ((~x) & A);
assign y = (~x) | (A & B);

SRFF SRFFa(Sa,Ra,clk,reset,A);
SRFF SRFFb(Sb,Rb,clk,reset,B);

endmodule

module SRFF(S,R,clk,reset,Q);

input S,R,clk,reset;
output reg Q;

always @(posedge clk,posedge reset) begin
    if(reset)begin
        Q<=0;
    end
    else if(S==0) begin
        if (R==0) begin
            Q<=Q;
        end
        else begin
            Q<=0;
        end
    end
    else begin
        if (R==0) begin
            Q<=1;
        end
        else begin
            Q<=1'bx;
        end
    end
end

endmodule