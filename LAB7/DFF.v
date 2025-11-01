module DFF(D,clk,reset,Q);

input D,clk,reset;
output reg Q;

always @(posedge clk,posedge reset) begin
    if(reset)begin
        Q<=0;
    end
    else begin
        Q<=D;
    end
end

endmodule