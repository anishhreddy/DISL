module q1(E,x,A,B,clk,reset);

input E,x,clk,reset;
output A,B;

wire Ja,Ka,Jb,Kb;

assign Ja = (E&x&B) | (E&~(x)&~(B));
assign Ka = (E&x&B) | (E&~(x)&~(B));
assign Jb = E;
assign Kb = E;

JKFF stagea(Ja,Ka,clk,reset,A);
JKFF stageb(Jb,Kb,clk,reset,B);

endmodule


module JKFF(J,K,clk,reset,Q);

input J,K,clk,reset;
output reg Q;

always @(posedge clk) begin
    if(reset) begin
        Q<=0;
    end
    else if(J==0) begin
        if(K==0) begin
            Q<=Q;
        end
        else begin
            Q<=0;
        end
    end
    else begin
        if(K==0) begin
            Q<=1;
        end
        else begin
            Q<=~Q;
        end
    end
end

endmodule