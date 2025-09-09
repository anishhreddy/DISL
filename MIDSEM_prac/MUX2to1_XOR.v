module MUX2to1_XOR(s,f);

input [1:0]s;

output f;

MUX2to1 MUX2to1xor({s[0] , ~(s[0])},s[1],f);

endmodule



module MUX2to1(w,s,f);

input [0:1]w;
input s;
output reg f;

always @(*) begin
    f = s?w[1]:w[0];
end
endmodule

