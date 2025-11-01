module TFF(T,clk,reset,Q);

input T,clk,reset;
output reg Q;

always @(negedge clk,negedge reset) begin
    if(!reset) begin
        Q<=0;
    end
    else begin
        if(T==0) begin
            Q<=Q;
        end
        else begin
            Q<=~Q;
        end
    end
end

endmodule