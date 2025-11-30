module MUX2to1_XOR3(a,b,c,f);

input a,b,c;
output f;
wire [0:1]d;

MUX2to1 stage0a({c,~c},b,d[0]);
MUX2to1 stage0b({~c,c},b,d[1]);

MUX2to1 stage1(d,a,f);

endmodule

module MUX2to1(w,s,f);

input [1:0]w;
input s;

output reg f;

always @(*) begin
    f = s?w[1]:w[0];
end
endmodule