module johnson_counter_5bit(Q,clk,clr);

input clk,clr;
output reg [4:0]Q;

always @(posedge clk,posedge clr)begin
    if(clr) Q<=5'b00000;
    else begin
        Q[4]<=~Q[0];
        Q[3]<=Q[4];
        Q[2]<=Q[3];
        Q[1]<=Q[2];
        Q[0]<=Q[1];
    end
end
endmodule