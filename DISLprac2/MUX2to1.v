module MUX2to1(w,s,f);

input [0:1]w;
input s;
output reg f;

always @(*) begin
    f = s?w[1]:w[0];
end
endmodule