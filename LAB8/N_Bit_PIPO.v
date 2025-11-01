module N_Bit_PIPO(D,clk,Q);

parameter n = 4;
input [n-1:0]D;
input clk;
output reg [n-1:0]Q;

always@(posedge clk)begin
    Q<=D;
end
endmodule