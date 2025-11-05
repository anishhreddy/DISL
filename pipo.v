module pipo(clk,clr,D,Q);

input clk,clr,[3:0]D;
output reg [3:0]Q;

always @(posedge clk , posedge clr) begin
    if (clr) begin
        Q<=0;
    end
    else begin
    Q<=D;
    end
end

endmodule