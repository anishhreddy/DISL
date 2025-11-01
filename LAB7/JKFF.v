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