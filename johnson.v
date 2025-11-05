module johnson(clk,clr,Q);

input clk,clr;
output reg [3:0]Q;

always @(posedge clk, posedge clr) begin
    
    if (clr) begin
        Q<=4'b0000;
    end
    else begin
        Q[3]<=~Q[0];
        Q[2]<=Q[3];
        Q[1]<=Q[2];
        Q[0]<=Q[1];
    end
end

endmodule